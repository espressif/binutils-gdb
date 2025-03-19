#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-16-mul.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_mul>:
   0:	a0000077          	smul16	zero,zero,zero
   4:	a03100f7          	smul16	ra,sp,gp
   8:	a11807f7          	smul16	a5,a6,a7
   c:	a16a8a77          	smul16	s4,s5,s6
  10:	a1ff0ef7          	smul16	t4,t5,t6
  14:	a2000077          	smulx16	zero,zero,zero
  18:	a23100f7          	smulx16	ra,sp,gp
  1c:	a31807f7          	smulx16	a5,a6,a7
  20:	a36a8a77          	smulx16	s4,s5,s6
  24:	a3ff0ef7          	smulx16	t4,t5,t6
  28:	b0000077          	umul16	zero,zero,zero
  2c:	b03100f7          	umul16	ra,sp,gp
  30:	b11807f7          	umul16	a5,a6,a7
  34:	b16a8a77          	umul16	s4,s5,s6
  38:	b1ff0ef7          	umul16	t4,t5,t6
  3c:	b2000077          	umulx16	zero,zero,zero
  40:	b23100f7          	umulx16	ra,sp,gp
  44:	b31807f7          	umulx16	a5,a6,a7
  48:	b36a8a77          	umulx16	s4,s5,s6
  4c:	b3ff0ef7          	umulx16	t4,t5,t6
  50:	86000077          	khm16	zero,zero,zero
  54:	863100f7          	khm16	ra,sp,gp
  58:	871807f7          	khm16	a5,a6,a7
  5c:	876a8a77          	khm16	s4,s5,s6
  60:	87ff0ef7          	khm16	t4,t5,t6
  64:	96000077          	khmx16	zero,zero,zero
  68:	963100f7          	khmx16	ra,sp,gp
  6c:	971807f7          	khmx16	a5,a6,a7
  70:	976a8a77          	khmx16	s4,s5,s6
  74:	97ff0ef7          	khmx16	t4,t5,t6
