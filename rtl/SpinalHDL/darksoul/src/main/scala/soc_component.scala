package soc_component

import spinal.core._
import spinal.lib._
import axi_bus._


case class cpu_top(XLEN : Int) extends BlackBox {
  val clk = in Bool()
  val rst_n = in Bool()
  val clk_gate = out Bool()
  val m_sip = in Bool()
  val m_tip = in Bool()
  val mtime_cnt_en = out Bool()
  val axi = master(Axi(XLEN))
}



case class AxiXbarConfig(
                          WIDTH : Int ,
                          master_num : Int,
                          slave_num : Int,
                          addrMap : Seq[(Int, Int)]
                        )



case class Sram_if(XLEN : Int) extends Bundle with IMasterSlave {
  val ena = Bool().setName("ena")
  val wea = Bits(4 bits).setName("wea")
  val addra = UInt(XLEN bits).setName("addra")
  val dina = UInt(XLEN bits).setName("dina")
  
  val enb = Bool().setName("enb")
  val addrb = UInt(XLEN bits).setName("addrb")
  val doutb = UInt(XLEN bits).setName("doutb")
  
  override def asMaster(): Unit = {
    out(ena, wea, addra, dina, enb, addrb)
    in(doutb)
  }
}


case class blk_mem_gen_0() extends BlackBox {
  val clka = in Bool()
  val clkb = in Bool()
  val sram_if = slave(Sram_if(32))
}


case class clint() extends BlackBox {
  val clk = in Bool()
  val rtc_clk = in Bool()
  val rst_n = in Bool()
  val mtime_cnt_en = in Bool()
  val m_sip = out Bool()
  val m_tip = out Bool()
  val sram_if = slave(Sram_if(32))
}

