package axi_bus

import spinal.core._
import spinal.lib._






case class Axi(width : Int) extends Bundle with IMasterSlave{
  val ar = Stream(AR(width))
  val r  = Stream(R(width))
  val aw = Stream(AW(width))
  val w = Stream(W(width))
  val b = Stream(B())
  
  override def asMaster(): Unit = {
    master(ar, aw, w)
    slave(r, b)
  }
}



case class AR(width : Int) extends Bundle {
  val id    = UInt(4 bits)
  val addr  = UInt(width bits)
  val len   = UInt(8 bits)
  val size  = UInt(3 bits)
  val burst = Bits(2 bits)
  val lock  = Bits(2 bits)
  val cache = Bits(4 bits)
  val prot  = Bits(3 bits)
}


case class R(width : Int) extends Bundle {
  val id    = UInt(4 bits)
  val data  = UInt(width bits)
  val resp  = Bits(2 bits)
  val last  = Bool()
}


case class AW(width : Int) extends Bundle {
  val id    = UInt(4 bits)
  val addr  = UInt(width bits)
  val len   = UInt(8 bits)
  val size  = UInt(3 bits)
  val burst = Bits(2 bits)
  val lock  = Bits(2 bits)
  val cache = Bits(4 bits)
  val prot  = Bits(3 bits)
}


case class W(width : Int) extends Bundle {
  val id = UInt(4 bits)
  val data  = UInt(width bits)
  val strb  = Bits(4 bits)
  val last  = Bool()
}

case class B() extends Bundle {
  val id    = UInt(4 bits)
  val resp  = Bits(2 bits)
}

object respType {
  def OKAY = B"2'b00"
  def EXOKAY = B"2'b01"
  def SLVERR = B"2'b10"
  def DECERR = B"2'b11"
}