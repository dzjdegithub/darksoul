import spinal.core._
import spinal.lib._
import spinal.lib.fsm._
import axi_bus._
import soc_component._


case class AXI2SRAM(WIDTH : Int, myClockDomain : ClockDomain, del2low : Boolean) extends Component {
  val io = new Bundle {
    val slave_axi = slave(Axi(WIDTH))
    val sram_if = master(Sram_if(WIDTH))
  }
  noIoPrefix()
  
  val myClockingArea = new ClockingArea(myClockDomain) {
    val read_cmd = new StateMachine {
      val IDLE = makeInstantEntry()
      val READ = new State
      
      IDLE
        .whenIsActive {
          when(io.slave_axi.ar.valid & io.slave_axi.ar.ready) {goto(READ)} otherwise {goto(IDLE)}
        }
      
      READ
        .whenIsActive {
          when(io.slave_axi.r.ready & io.slave_axi.r.valid) {goto(IDLE)} otherwise {goto(READ)}
        }
      
      io.slave_axi.r.valid := isActive(READ)
      io.slave_axi.ar.ready := isActive(IDLE)
      val rid_reg = RegNextWhen(io.slave_axi.ar.id, isEntering(READ)) init(0)
      io.slave_axi.r.id := rid_reg
      io.slave_axi.r.data := io.sram_if.doutb
      io.slave_axi.r.last := True
      io.slave_axi.r.resp := respType.OKAY
      
      io.sram_if.enb := Mux(isEntering(READ), True, False)
      if(del2low) {
        io.sram_if.addrb := Cat(B"2'b00", io.slave_axi.ar.addr(WIDTH - 1 downto 2)).asUInt
      } else {
        io.sram_if.addrb := io.slave_axi.ar.addr
      }
    }
    
    val write_cmd = new StateMachine {
      val IDLE = makeInstantEntry()
      val ADDR_OK, WRITE = new State
      
      IDLE
        .whenIsActive {
          when(io.slave_axi.aw.valid & io.slave_axi.aw.ready) {goto(ADDR_OK)}
        }
      
      ADDR_OK
        .whenIsActive {
          when(io.slave_axi.w.valid & io.slave_axi.w.ready) {goto(WRITE)}
        }
      
      WRITE
        .whenIsActive {
          when(io.slave_axi.b.valid & io.slave_axi.b.ready) {goto(IDLE)}
        }
      
      io.slave_axi.aw.ready := isActive(IDLE)
      io.slave_axi.w.ready := isActive(ADDR_OK)
      val bid_reg = RegNextWhen(io.slave_axi.w.id, isEntering(WRITE)) init(1)
      io.slave_axi.b.id := bid_reg
      io.slave_axi.b.valid := isActive(WRITE)
      io.slave_axi.b.resp := respType.OKAY
      
      io.sram_if.ena := Mux(isEntering(WRITE), True, False)
      io.sram_if.wea := io.slave_axi.w.strb
      val addr_reg = RegNextWhen(io.slave_axi.aw.addr, isEntering(ADDR_OK)) init(0)
      if(del2low) {
        io.sram_if.addra := Cat(B"2'b00", addr_reg(WIDTH - 1 downto 2)).asUInt
      } else {
        io.sram_if.addra := addr_reg
      }
      io.sram_if.dina := io.slave_axi.w.data
    }
    
    
  }
  
}
