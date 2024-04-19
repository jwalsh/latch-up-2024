// Code example showing how to tieoff a Bundle/Vec to 0 using asTypeOf and chiselTypeOf

import chisel3._
import circt.stage.ChiselStage

class MyBundle extends Bundle {
  val foo = UInt(4.W)
  val bar = Vec(4, UInt(1.W))
}

class Foo(typ: MyBundle) extends Module {
  val bundleA = IO(Output(typ))
  val bundleB = IO(Output(typ))

  // typ is already a Chisel Data Type, so can use it directly here, but you
  // need to know that bundleA is of type typ
  bundleA := 0.U.asTypeOf(typ)

  // bundleB is a Hardware data IO(Output(...)) so need to call chiselTypeOf,
  // but this will work no matter the type of bundleB:
  bundleB := 0.U.asTypeOf(chiselTypeOf(bundleB))
}

ChiselStage.emitSystemVerilog(new Foo(new MyBundle))
