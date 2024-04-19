// Code example showing how to create a Bundle from a UInt using asTypeOf

import chisel3._

class MyBundle extends Bundle {
  val foo = UInt(4.W)
  val bar = UInt(4.W)
}

class Foo extends Module {
  val uint = 0xb4.U
  val bundle = uint.asTypeOf(new MyBundle)

  printf(cf"$bundle") // Bundle(foo -> 11, bar -> 4)

  // Test
  assert(bundle.foo === 0xb.U)
  assert(bundle.bar === 0x4.U)
}
