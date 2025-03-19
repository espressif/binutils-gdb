#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-8-mul.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_8bit_mul>:
   0:	a8000077          	smul8	zero,zero,zero
   4:	a83100f7          	smul8	ra,sp,gp
   8:	a91807f7          	smul8	a5,a6,a7
   c:	a96a8a77          	smul8	s4,s5,s6
  10:	a9ff0ef7          	smul8	t4,t5,t6
  14:	aa000077          	smulx8	zero,zero,zero
  18:	aa3100f7          	smulx8	ra,sp,gp
  1c:	ab1807f7          	smulx8	a5,a6,a7
  20:	ab6a8a77          	smulx8	s4,s5,s6
  24:	abff0ef7          	smulx8	t4,t5,t6
  28:	b8000077          	umul8	zero,zero,zero
  2c:	b83100f7          	umul8	ra,sp,gp
  30:	b91807f7          	umul8	a5,a6,a7
  34:	b96a8a77          	umul8	s4,s5,s6
  38:	b9ff0ef7          	umul8	t4,t5,t6
  3c:	ba000077          	umulx8	zero,zero,zero
  40:	ba3100f7          	umulx8	ra,sp,gp
  44:	bb1807f7          	umulx8	a5,a6,a7
  48:	bb6a8a77          	umulx8	s4,s5,s6
  4c:	bbff0ef7          	umulx8	t4,t5,t6
  50:	8e000077          	khm8	zero,zero,zero
  54:	8e3100f7          	khm8	ra,sp,gp
  58:	8f1807f7          	khm8	a5,a6,a7
  5c:	8f6a8a77          	khm8	s4,s5,s6
  60:	8fff0ef7          	khm8	t4,t5,t6
  64:	9e000077          	khmx8	zero,zero,zero
  68:	9e3100f7          	khmx8	ra,sp,gp
  6c:	9f1807f7          	khmx8	a5,a6,a7
  70:	9f6a8a77          	khmx8	s4,s5,s6
  74:	9fff0ef7          	khmx8	t4,t5,t6
