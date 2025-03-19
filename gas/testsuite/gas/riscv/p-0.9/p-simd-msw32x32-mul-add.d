#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-msw32x32-mul-add.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_msw32x32_mul_add>:
   0:	40001077          	smmul	zero,zero,zero
   4:	403110f7          	smmul	ra,sp,gp
   8:	411817f7          	smmul	a5,a6,a7
   c:	416a9a77          	smmul	s4,s5,s6
  10:	41ff1ef7          	smmul	t4,t5,t6
  14:	50001077          	smmul.u	zero,zero,zero
  18:	503110f7          	smmul.u	ra,sp,gp
  1c:	511817f7          	smmul.u	a5,a6,a7
  20:	516a9a77          	smmul.u	s4,s5,s6
  24:	51ff1ef7          	smmul.u	t4,t5,t6
  28:	60001077          	kmmac	zero,zero,zero
  2c:	603110f7          	kmmac	ra,sp,gp
  30:	611817f7          	kmmac	a5,a6,a7
  34:	616a9a77          	kmmac	s4,s5,s6
  38:	61ff1ef7          	kmmac	t4,t5,t6
  3c:	70001077          	kmmac.u	zero,zero,zero
  40:	703110f7          	kmmac.u	ra,sp,gp
  44:	711817f7          	kmmac.u	a5,a6,a7
  48:	716a9a77          	kmmac.u	s4,s5,s6
  4c:	71ff1ef7          	kmmac.u	t4,t5,t6
  50:	42001077          	kmmsb	zero,zero,zero
  54:	423110f7          	kmmsb	ra,sp,gp
  58:	431817f7          	kmmsb	a5,a6,a7
  5c:	436a9a77          	kmmsb	s4,s5,s6
  60:	43ff1ef7          	kmmsb	t4,t5,t6
  64:	52001077          	kmmsb.u	zero,zero,zero
  68:	523110f7          	kmmsb.u	ra,sp,gp
  6c:	531817f7          	kmmsb.u	a5,a6,a7
  70:	536a9a77          	kmmsb.u	s4,s5,s6
  74:	53ff1ef7          	kmmsb.u	t4,t5,t6
  78:	62001077          	kwmmul	zero,zero,zero
  7c:	623110f7          	kwmmul	ra,sp,gp
  80:	631817f7          	kwmmul	a5,a6,a7
  84:	636a9a77          	kwmmul	s4,s5,s6
  88:	63ff1ef7          	kwmmul	t4,t5,t6
  8c:	72001077          	kwmmul.u	zero,zero,zero
  90:	723110f7          	kwmmul.u	ra,sp,gp
  94:	731817f7          	kwmmul.u	a5,a6,a7
  98:	736a9a77          	kwmmul.u	s4,s5,s6
  9c:	73ff1ef7          	kwmmul.u	t4,t5,t6
