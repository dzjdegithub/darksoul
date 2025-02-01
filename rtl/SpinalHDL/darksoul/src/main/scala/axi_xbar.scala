import spinal.core._
import axi_bus._
import spinal.lib._
import soc_component._




case class axi_xbar(cfg : AxiXbarConfig, myClockDomain : ClockDomain) extends Component {
  val io = new Bundle {
//    val masters = Vec(slave(Axi(cfg.WIDTH)), cfg.master_num)
//    val aclk    = in Bool()
//    val aresetn = in Bool()
    val masters = slave(Axi(cfg.WIDTH)) //没有dma 没有多核，目前是一主多从
    val slaves  = Vec(master(Axi(cfg.WIDTH)), cfg.slave_num)
  }
  noIoPrefix()
  
  
  val myClockingArea = new ClockingArea(myClockDomain) {
    
    def addrDecoder(addr : UInt) : UInt = {
      val slaveSelect = UInt(log2Up(cfg.slave_num) bits)
      slaveSelect := 0
      for (i <- 0 until cfg.addrMap.size) {
        when(addr >= cfg.addrMap(i)._1 && addr < cfg.addrMap(i)._2) {
          slaveSelect := i
        }
      }
      slaveSelect
    }
    
    //AR
    val arSlaveSelect = addrDecoder(io.masters.ar.addr)
    for(i <- 0 until cfg.slave_num) {
      io.slaves(i).ar.valid := io.masters.ar.valid & (arSlaveSelect === i)
      io.slaves(i).ar.payload <> io.masters.ar.payload
    }
    io.masters.ar.ready := io.slaves(arSlaveSelect).ar.ready
    
    //R
    val rSlaveSelect = RegNextWhen(arSlaveSelect, io.masters.ar.valid & io.masters.ar.ready) init(0)
    io.masters.r.payload <> io.slaves(rSlaveSelect).r.payload
    io.masters.r.valid := io.slaves(rSlaveSelect).r.valid
    for(i <- 0 until cfg.slave_num) {
      io.slaves(i).r.ready := io.masters.r.ready
    }
    
    //AW W
    val awSlaveSelect = addrDecoder(io.masters.aw.addr)
    for(i <- 0 until cfg.slave_num) {
      io.slaves(i).aw.valid := io.masters.aw.valid & (awSlaveSelect === i)
      io.slaves(i).w.valid := io.masters.w.valid & (awSlaveSelect === i)
      io.slaves(i).aw.payload <> io.masters.aw.payload
      io.slaves(i).w.payload <> io.masters.w.payload
    }
    io.masters.aw.ready := io.slaves(awSlaveSelect).aw.ready
    io.masters.w.ready := io.slaves(awSlaveSelect).w.ready
    
    //B
    val bSlaveSelect = RegNextWhen(awSlaveSelect, io.masters.aw.valid & io.masters.aw.ready) init(0)
    io.masters.b.payload <> io.slaves(bSlaveSelect).b.payload
    io.masters.b.valid := io.slaves(bSlaveSelect).b.valid
    for(i <- 0 until cfg.slave_num) {
      io.slaves(i).b.ready := io.masters.b.ready
    }
  }
  

}




