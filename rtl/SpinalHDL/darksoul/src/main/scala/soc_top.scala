import spinal.core._
import axi_bus._
import spinal.lib._
import soc_component._








case class soc_top(XLEN : Int, axiXbarConfig : AxiXbarConfig) extends Component {
  val io = new Bundle {
    val clk     = in Bool()
    val rst_n   = in Bool()
    val rtc_clk = in Bool()
  }
  noIoPrefix()
  
  val cpu_top_inst = cpu_top((XLEN))
  cpu_top_inst.clk := io.clk
  cpu_top_inst.rst_n := io.rst_n
  
  val gateClockDomain = ClockDomain(
    clock = cpu_top_inst.clk_gate,
    reset = io.rst_n,
    config = ClockDomainConfig(
      resetKind = ASYNC,
      resetActiveLevel = LOW
    )
  )
  
  val axi_xbar_inst = axi_xbar(axiXbarConfig, gateClockDomain)
  axi_xbar_inst.io.masters <> cpu_top_inst.axi
  
  val axi2sram_inst0 = AXI2SRAM(XLEN, gateClockDomain, true)
  axi2sram_inst0.io.slave_axi <> axi_xbar_inst.io.slaves(0)
  
  val SRAM_inst = blk_mem_gen_0()
  SRAM_inst.sram_if <> axi2sram_inst0.io.sram_if
  SRAM_inst.clka := cpu_top_inst.clk_gate
  SRAM_inst.clkb := cpu_top_inst.clk_gate

  val axi2sram_inst1 = AXI2SRAM(XLEN, gateClockDomain, false)
  axi2sram_inst1.io.slave_axi <> axi_xbar_inst.io.slaves(1)
  
  val clint_inst = clint()
  clint_inst.sram_if <> axi2sram_inst1.io.sram_if
  clint_inst.clk := io.clk
  clint_inst.rtc_clk := io.rtc_clk
  clint_inst.rst_n := io.rst_n
  clint_inst.mtime_cnt_en <> cpu_top_inst.mtime_cnt_en
  clint_inst.m_sip <> cpu_top_inst.m_sip
  clint_inst.m_tip <> cpu_top_inst.m_tip
  
  
}












object socTopInst extends App {
  val axi_xbar_cfg = AxiXbarConfig(
    WIDTH = 32,
    master_num = 1,
    slave_num = 2,
    addrMap = Seq(
      (0x00000000, 0x02000000),
      (0x02000000, 0x03000000)
    )
  )
  SpinalConfig(
    _withEnumString = false,
    nameWhenByFile = false,
    genLineComments = true,
//    removePruned = true,
    //      oneFilePerComponent = true,
//    targetDirectory = "C:\\Users\\dzj0489\\Desktop\\fffff\\project\\darksoul\\rtl\\core"
  ).generateVerilog(soc_top(32, axi_xbar_cfg))
}
