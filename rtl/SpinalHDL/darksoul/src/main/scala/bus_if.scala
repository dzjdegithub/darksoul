import spinal.core._
import spinal.lib._
import axi_bus._
import spinal.lib.fsm._


case class bus_if(XLEN : Int) extends Component {
  val io = new Bundle{
    val aclk            = in Bool()
    val aresetn         = in Bool()
    
    val ex_mem_we       = in Bool()
    val ex_mem_re       = in Bool()
    val ex_mem_valid    = in Bool()
    val if_id_valid     = in Bool()
    val mem_allowin     = in Bool()
    val id_allowin      = in Bool()
    val store_req_ok    = out Bool() //ex_ready_go
    val load_req_ok     = out Bool() //ex_ready_go 不要让fetch的信号影响
    val store_hand_suc  = out Bool()  //mem_ready_go
    val load_hand_suc   = out Bool() //mem_ready_go 不要让fetch的信号影响
    val fetch_hand_suc  = out Bool() //if_ready_go
    val ex_ls_addr      = in UInt(XLEN bits) //低两位
    val store_data      = in UInt(XLEN bits)
    val axi_read_data   = out UInt(XLEN bits)
    val ex_byte_we      = in Bits(4 bits)
    val size            = in UInt(2 bits) //补成三位
    val inst_req        = in Bool()
    val pc              = in UInt(XLEN bits)
    
    val wb_exp_int_flag = in Bool()
    val jump2exp        = out Bool()
    val inst_useless    = out Bool()
    val inst_valid      = out Bool() //if_ready_go
    val inst_reg        = out UInt(XLEN bits) //to id
    
    val axi             = master(Axi(XLEN))
  }
  noIoPrefix()
  
  val myClockDomain = ClockDomain(
    clock = io.aclk,
    reset = io.aresetn,
    config = ClockDomainConfig(
      resetKind = ASYNC,
      resetActiveLevel = LOW
    )
  )
  val axi = new ClockingArea(myClockDomain) {
    val grant_w = Bool()
    val grant_w_temp = Bool()
    val store_req_ok1 = False
    val store_req_ok2 = Bool()
    val store_req_ok = Bool()
    val is_reqok = Bool()
    val is_wait = Bool()
    val store_busy = Bool()
    val grant_d, grant_i = Bool()
    val is_awok, is_wok = Bool()
    
    val store_req_ok_fsm = new StateMachine {
      val IDLE = makeInstantEntry()
      val AWOK, WOK, REQOK = new State
      
      val mem_allowin_reg = RegNext(io.mem_allowin) init(True)
      
      IDLE
        .whenIsActive {
          when(io.ex_mem_we & grant_w) {
            when(io.axi.aw.ready & io.axi.w.ready) {
              goto(REQOK)
            }.elsewhen(io.axi.aw.ready) {
              goto(AWOK)
            }.elsewhen(io.axi.w.ready) {
              goto(WOK)
            }.otherwise {
              goto(IDLE)
            }
          }.otherwise {
            goto(IDLE)
          }
        }
      
      AWOK
        .whenIsActive {
          when(io.axi.w.ready) {goto(REQOK)}
        }
      
      WOK
        .whenIsActive {
          when(io.axi.aw.ready) {goto(REQOK)}
        }
      
      REQOK
        .whenIsActive {
          when(io.ex_mem_we & grant_w_temp) {
            when(~io.mem_allowin) {
              goto(REQOK)
            }.elsewhen(io.mem_allowin & (~mem_allowin_reg)) {
              goto(IDLE)
            }.otherwise {
              when(io.axi.aw.ready & io.axi.w.ready) {
                goto(REQOK)
              }.elsewhen(io.axi.aw.ready) {
                goto(AWOK)
              }.elsewhen(io.axi.w.ready) {
                goto(WOK)
              }.otherwise {
                goto(IDLE)
              }
            }
          }.otherwise {
            goto(IDLE)
          }
        }
      
      REQOK.whenIsNext(store_req_ok1 := True)
      store_req_ok2 := isActive(REQOK) & io.mem_allowin
      store_req_ok := store_req_ok1 | store_req_ok2
      is_reqok := isActive(REQOK)
      is_wok := isActive(WOK)
      is_awok := isActive(AWOK)
    }

    val store_fsm = new StateMachine {

      val IDLE = makeInstantEntry()
      val REQ, WAIT = new State
      
      IDLE
        .whenIsActive {
          when(io.ex_mem_we & (~store_req_ok)) {
            goto(REQ)
          }.elsewhen(io.ex_mem_we & store_req_ok) {
            goto(WAIT)
          }.otherwise {
            goto(IDLE)
          }
        }
      
      REQ
        .whenIsActive {
          when(store_req_ok) {goto(WAIT)} otherwise {goto(REQ)}
        }
      
      WAIT
        .whenIsActive {
          when(io.axi.b.valid & io.axi.b.ready) {
           when(io.ex_mem_we) {
             when(store_req_ok) {goto(WAIT)} otherwise {goto(REQ)}
           }.otherwise {
             goto(IDLE)
           }
          }.otherwise {
            goto(WAIT)
          }
        }
      grant_w_temp := ~(isActive(WAIT) & (~io.axi.b.valid))
      grant_w := ~(isActive(WAIT) & (~(io.axi.b.valid & io.axi.b.ready)))
      store_busy := io.ex_mem_we | (~grant_w)
      is_wait := isActive(WAIT)
    }
    io.store_hand_suc := io.axi.b.valid & io.axi.b.ready
    io.store_req_ok := store_req_ok
    //aw channel
    io.axi.aw.id := 1
    io.axi.aw.addr := io.ex_ls_addr
    io.axi.aw.len := 0
    io.axi.aw.size := Cat(False, io.size).asUInt
    io.axi.aw.burst := B"2'b01"
    io.axi.aw.lock := B"2'b00"
    io.axi.aw.cache := B"4'b0000"
    io.axi.aw.prot := B"3'b000"
    io.axi.aw.valid := io.ex_mem_we & grant_w & (~(is_wait & is_reqok & (~io.axi.b.valid))) & (~is_awok)
    
    //w channel
    io.axi.w.id := 1
    io.axi.w.data := io.store_data
    io.axi.w.strb := io.ex_byte_we
    io.axi.w.last := True
    io.axi.w.valid := io.ex_mem_we & grant_w & (~(is_wait & is_reqok & (~io.axi.b.valid))) & (~is_wok)
    
    
    val bready = Reg(Bool()) init(False)
    when(io.ex_mem_valid & io.mem_allowin) {
      bready := True
    }.elsewhen(io.ex_mem_we & grant_w) {
      bready := False
    }.otherwise {
      bready := bready
    }
    //b channel
    io.axi.b.ready := bready
    
    
    val raw_risk2fetch, raw_risk2load = Bool()
    val waddr_reg = RegNextWhen(io.ex_ls_addr(XLEN - 1 downto 2), io.ex_mem_we & grant_w) init(0)
    raw_risk2fetch := store_busy & ((io.ex_ls_addr(XLEN - 1 downto 2) === io.pc(XLEN - 1 downto 2)) | (waddr_reg === io.pc(XLEN - 1 downto 2)))
    raw_risk2load := store_busy & (waddr_reg === (io.ex_ls_addr(XLEN - 1 downto 2)))
    
    val fetch_busy, load_busy = Bool()
    
    val fetch_fsm = new StateMachine {
      val IDLE = makeInstantEntry()
      val REQ, WAIT = new State
      
      IDLE
        .whenIsActive {
          when(io.inst_req & (~raw_risk2fetch) & (~load_busy)) {
            when(io.axi.ar.ready) {goto(WAIT)} otherwise {goto(REQ)}
          }.otherwise {
            goto(IDLE)
          }
        }
      
      REQ
        .whenIsActive {
          when(io.axi.ar.ready) {goto(WAIT)} otherwise {goto(REQ)}
        }
      
      WAIT
        .whenIsActive {
          when(io.axi.r.valid & fetch_rready) {goto(IDLE)} otherwise {goto(WAIT)}
        }
      
      fetch_busy := isActive(WAIT) | isActive(REQ)
      grant_i := fetch_busy | isExiting(IDLE)
    }
    
    val load_fsm = new StateMachine {
      val IDLE = makeInstantEntry()
      val REQ, WAIT = new State
      
      IDLE
        .whenIsActive {
          when(io.ex_mem_re & (~raw_risk2load) & (~fetch_busy)) {
            when(io.axi.ar.ready) {goto(WAIT)} otherwise {goto(REQ)}
          }.otherwise {
            goto(IDLE)
          }
        }
      
      REQ
        .whenIsActive {
          when(io.axi.ar.ready) {goto(WAIT)} otherwise {goto(REQ)}
        }
      
      WAIT
        .whenIsActive {
          when(io.axi.r.valid & load_rready) {
            when(io.ex_mem_re & (~raw_risk2load) & (~fetch_busy)) {
              when(io.axi.ar.ready) {goto(WAIT)} otherwise {goto(REQ)}
            }.otherwise {
              goto(IDLE)
            }
          }.otherwise {
            goto(WAIT)
          }
        }
      
      load_busy := isActive(REQ) | isActive(WAIT) | isExiting(IDLE)
      grant_d := load_busy
    }
    
    val fetch_arvalid, load_arvalid = Bool()
    
    val load_req_ok_reg = Reg(Bool()) init(False)
    when(io.ex_mem_valid & io.mem_allowin){
      load_req_ok_reg := False
    }.elsewhen(load_arvalid & io.axi.ar.ready) {
      load_req_ok_reg := True
    }.otherwise {
      load_req_ok_reg := load_req_ok_reg
    }
    io.load_req_ok := load_req_ok_reg | (load_arvalid & io.axi.ar.ready)
    

    
    val load_arvalid_en = Reg(Bool()) init(True)
    when(io.axi.ar.valid & io.axi.ar.ready & grant_d) {
      load_arvalid_en := False
    }.elsewhen(io.load_hand_suc) {
      load_arvalid_en := True
    }
    load_arvalid := io.ex_mem_re & grant_d & (load_arvalid_en | io.load_hand_suc)
    
    val fetch_arvalid_en = Reg(Bool()) init(True)
    when(fetch_arvalid & io.axi.ar.ready) {
      fetch_arvalid_en := False
    }.elsewhen(io.if_id_valid & io.id_allowin | (io.jump2exp)) {    //bug
      fetch_arvalid_en := True
    }
    fetch_arvalid := io.inst_req & grant_i & fetch_arvalid_en
    
    val load_rready = Reg(Bool()) init(False)
    when(io.ex_mem_valid & io.mem_allowin) {
      load_rready := True
    }.elsewhen(load_arvalid) {
      load_rready := False
    }.otherwise {
      load_rready := load_rready
    }
    
    val fetch_rready = True
    
    io.load_hand_suc := load_rready & io.axi.r.valid & grant_d
    io.fetch_hand_suc := fetch_rready & io.axi.r.valid & grant_i
    
    //ar
    io.axi.ar.id := Mux(grant_d, U"b0001", Mux(grant_i, U"b0000", U"b0000"))
    io.axi.ar.addr := Mux(grant_d, io.ex_ls_addr, Mux(grant_i, io.pc, U"32'b0"))
    io.axi.ar.len := 0
    io.axi.ar.size := Mux(grant_d, Cat(False, io.size).asUInt, Mux(grant_i, U"3'b010", U"3'b000"))
    io.axi.ar.burst := B"b01"
    io.axi.ar.lock := B"b00"
    io.axi.ar.cache := B"b0000"
    io.axi.ar.prot := B"b000"
    io.axi.ar.valid := Mux(grant_d, load_arvalid, Mux(grant_i, fetch_arvalid, False))
    
    //r
    io.axi.r.ready := Mux(grant_d, load_rready, Mux(grant_i, fetch_rready, False))
    
    io.axi_read_data := io.axi.r.data
    
    
    val exp_fetch_fsm = new StateMachine {
      val IDLE = makeInstantEntry()
      val EXP, USELESS = new State
      
      IDLE
        .whenIsActive {
          when(io.wb_exp_int_flag) {
            when(io.inst_req) {
              when(io.axi.r.valid & io.axi.r.ready) {goto(EXP)} otherwise {goto(USELESS)}
            }.otherwise {
              goto(EXP)
            }
          }.otherwise {
            goto(IDLE)
          }
        }
      
      EXP
        .whenIsActive {
          when(io.axi.r.valid & io.axi.r.ready) {goto(IDLE)} otherwise {goto(EXP)}
        }
      
      USELESS
        .whenIsActive {
          when(io.axi.r.valid & io.axi.r.ready) {goto(EXP)} otherwise {goto(USELESS)}
        }
      
      io.inst_useless := isActive(USELESS)
      io.jump2exp := isEntering(EXP)
      val inst_reg = RegNextWhen(io.axi_read_data, io.fetch_hand_suc) init(0)
      io.inst_reg := inst_reg
      val inst_valid = Reg(Bool()) init(False)
      when(io.wb_exp_int_flag) {
        inst_valid := False
      }.elsewhen(inst_valid & io.id_allowin) {
        inst_valid := False
      }.elsewhen(io.fetch_hand_suc) {
        inst_valid := ~io.id_allowin
      }.otherwise {
        inst_valid := inst_valid
      }
      io.inst_valid := inst_valid
    }
   
    
    
    
    
  }
  
}



object busIfInst {
  def main(args : Array[String]) : Unit = {
    SpinalConfig(
      _withEnumString = false,
      nameWhenByFile = false,
      genLineComments = true,
//      removePruned = true,
//      oneFilePerComponent = true,
      targetDirectory = "C:\\Users\\dzj0489\\Desktop\\fffff\\project\\darksoul\\rtl\\core"
    ).generateVerilog(bus_if(32))
  }
}