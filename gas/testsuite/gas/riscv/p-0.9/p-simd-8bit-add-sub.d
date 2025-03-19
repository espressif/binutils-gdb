#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-8bit-add-sub.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_8bit_add8>:
   0:	48000077          	add8	zero,zero,zero
   4:	483100f7          	add8	ra,sp,gp
   8:	491807f7          	add8	a5,a6,a7
   c:	496a8a77          	add8	s4,s5,s6
  10:	49ff0ef7          	add8	t4,t5,t6
  14:	08000077          	radd8	zero,zero,zero
  18:	083100f7          	radd8	ra,sp,gp
  1c:	091807f7          	radd8	a5,a6,a7
  20:	096a8a77          	radd8	s4,s5,s6
  24:	09ff0ef7          	radd8	t4,t5,t6
  28:	28000077          	uradd8	zero,zero,zero
  2c:	283100f7          	uradd8	ra,sp,gp
  30:	291807f7          	uradd8	a5,a6,a7
  34:	296a8a77          	uradd8	s4,s5,s6
  38:	29ff0ef7          	uradd8	t4,t5,t6
  3c:	18000077          	kadd8	zero,zero,zero
  40:	183100f7          	kadd8	ra,sp,gp
  44:	191807f7          	kadd8	a5,a6,a7
  48:	196a8a77          	kadd8	s4,s5,s6
  4c:	19ff0ef7          	kadd8	t4,t5,t6
  50:	38000077          	ukadd8	zero,zero,zero
  54:	383100f7          	ukadd8	ra,sp,gp
  58:	391807f7          	ukadd8	a5,a6,a7
  5c:	396a8a77          	ukadd8	s4,s5,s6
  60:	39ff0ef7          	ukadd8	t4,t5,t6

0000000000000064 <simd_8bit_sub8>:
  64:	4a000077          	sub8	zero,zero,zero
  68:	4a3100f7          	sub8	ra,sp,gp
  6c:	4b1807f7          	sub8	a5,a6,a7
  70:	4b6a8a77          	sub8	s4,s5,s6
  74:	4bff0ef7          	sub8	t4,t5,t6
  78:	0a000077          	rsub8	zero,zero,zero
  7c:	0a3100f7          	rsub8	ra,sp,gp
  80:	0b1807f7          	rsub8	a5,a6,a7
  84:	0b6a8a77          	rsub8	s4,s5,s6
  88:	0bff0ef7          	rsub8	t4,t5,t6
  8c:	2a000077          	ursub8	zero,zero,zero
  90:	2a3100f7          	ursub8	ra,sp,gp
  94:	2b1807f7          	ursub8	a5,a6,a7
  98:	2b6a8a77          	ursub8	s4,s5,s6
  9c:	2bff0ef7          	ursub8	t4,t5,t6
  a0:	1a000077          	ksub8	zero,zero,zero
  a4:	1a3100f7          	ksub8	ra,sp,gp
  a8:	1b1807f7          	ksub8	a5,a6,a7
  ac:	1b6a8a77          	ksub8	s4,s5,s6
  b0:	1bff0ef7          	ksub8	t4,t5,t6
  b4:	3a000077          	uksub8	zero,zero,zero
  b8:	3a3100f7          	uksub8	ra,sp,gp
  bc:	3b1807f7          	uksub8	a5,a6,a7
  c0:	3b6a8a77          	uksub8	s4,s5,s6
  c4:	3bff0ef7          	uksub8	t4,t5,t6
