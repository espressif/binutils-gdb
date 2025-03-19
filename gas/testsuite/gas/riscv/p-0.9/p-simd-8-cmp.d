#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-8-cmp.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_8bit_cmp>:
   0:	4e000077          	cmpeq8	zero,zero,zero
   4:	4e3100f7          	cmpeq8	ra,sp,gp
   8:	4f1807f7          	cmpeq8	a5,a6,a7
   c:	4f6a8a77          	cmpeq8	s4,s5,s6
  10:	4fff0ef7          	cmpeq8	t4,t5,t6
  14:	0e000077          	scmplt8	zero,zero,zero
  18:	0e3100f7          	scmplt8	ra,sp,gp
  1c:	0f1807f7          	scmplt8	a5,a6,a7
  20:	0f6a8a77          	scmplt8	s4,s5,s6
  24:	0fff0ef7          	scmplt8	t4,t5,t6
  28:	1e000077          	scmple8	zero,zero,zero
  2c:	1e3100f7          	scmple8	ra,sp,gp
  30:	1f1807f7          	scmple8	a5,a6,a7
  34:	1f6a8a77          	scmple8	s4,s5,s6
  38:	1fff0ef7          	scmple8	t4,t5,t6
  3c:	2e000077          	ucmplt8	zero,zero,zero
  40:	2e3100f7          	ucmplt8	ra,sp,gp
  44:	2f1807f7          	ucmplt8	a5,a6,a7
  48:	2f6a8a77          	ucmplt8	s4,s5,s6
  4c:	2fff0ef7          	ucmplt8	t4,t5,t6
  50:	3e000077          	ucmple8	zero,zero,zero
  54:	3e3100f7          	ucmple8	ra,sp,gp
  58:	3f1807f7          	ucmple8	a5,a6,a7
  5c:	3f6a8a77          	ucmple8	s4,s5,s6
  60:	3fff0ef7          	ucmple8	t4,t5,t6
