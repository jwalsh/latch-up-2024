// Code example showing how to create a UInt from a Bundle using asUInt

import chisel3._

class MyBundle extends Bundle {
  val foo = UInt(4.W)
  val bar = UInt(4.W)
}

class Foo extends Module {
  val bundle = Wire(new MyBundle)
  bundle.foo := 0xc.U
  bundle.bar := 0x3.U
  val uint = bundle.asUInt
  printf(cf"$uint") // 195

  // Test
  assert(uint === 0xc3.U)
}
