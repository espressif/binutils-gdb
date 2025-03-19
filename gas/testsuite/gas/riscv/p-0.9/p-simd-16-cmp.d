#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-16-cmp.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_cmp>:
   0:	4c000077          	cmpeq16	zero,zero,zero
   4:	4c3100f7          	cmpeq16	ra,sp,gp
   8:	4d1807f7          	cmpeq16	a5,a6,a7
   c:	4d6a8a77          	cmpeq16	s4,s5,s6
  10:	4dff0ef7          	cmpeq16	t4,t5,t6
  14:	0c000077          	scmplt16	zero,zero,zero
  18:	0c3100f7          	scmplt16	ra,sp,gp
  1c:	0d1807f7          	scmplt16	a5,a6,a7
  20:	0d6a8a77          	scmplt16	s4,s5,s6
  24:	0dff0ef7          	scmplt16	t4,t5,t6
  28:	1c000077          	scmple16	zero,zero,zero
  2c:	1c3100f7          	scmple16	ra,sp,gp
  30:	1d1807f7          	scmple16	a5,a6,a7
  34:	1d6a8a77          	scmple16	s4,s5,s6
  38:	1dff0ef7          	scmple16	t4,t5,t6
  3c:	2c000077          	ucmplt16	zero,zero,zero
  40:	2c3100f7          	ucmplt16	ra,sp,gp
  44:	2d1807f7          	ucmplt16	a5,a6,a7
  48:	2d6a8a77          	ucmplt16	s4,s5,s6
  4c:	2dff0ef7          	ucmplt16	t4,t5,t6
  50:	3c000077          	ucmple16	zero,zero,zero
  54:	3c3100f7          	ucmple16	ra,sp,gp
  58:	3d1807f7          	ucmple16	a5,a6,a7
  5c:	3d6a8a77          	ucmple16	s4,s5,s6
  60:	3dff0ef7          	ucmple16	t4,t5,t6
