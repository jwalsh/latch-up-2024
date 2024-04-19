// Code example showing how to create a Vec of Bools from a UInt using VecInit and asBools

import chisel3._

class Foo extends Module {
  val uint = 0xc.U
  val vec = VecInit(uint.asBools)

  printf(cf"$vec") // Vec(0, 0, 1, 1)

  // Test
  assert(vec(0) === false.B)
  assert(vec(1) === false.B)
  assert(vec(2) === true.B)
  assert(vec(3) === true.B)
}
