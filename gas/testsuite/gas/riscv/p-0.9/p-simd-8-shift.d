#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-8-shift.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_8bit_shift>:
   0:	58000077          	sra8	zero,zero,zero
   4:	583100f7          	sra8	ra,sp,gp
   8:	591807f7          	sra8	a5,a6,a7
   c:	596a8a77          	sra8	s4,s5,s6
  10:	59ff0ef7          	sra8	t4,t5,t6
  14:	78000077          	srai8	zero,zero,0
  18:	784100f7          	srai8	ra,sp,4
  1c:	787807f7          	srai8	a5,a6,7
  20:	68000077          	sra8.u	zero,zero,zero
  24:	683100f7          	sra8.u	ra,sp,gp
  28:	691807f7          	sra8.u	a5,a6,a7
  2c:	696a8a77          	sra8.u	s4,s5,s6
  30:	69ff0ef7          	sra8.u	t4,t5,t6
  34:	78800077          	srai8.u	zero,zero,0
  38:	78c100f7          	srai8.u	ra,sp,4
  3c:	78f807f7          	srai8.u	a5,a6,7
  40:	5a000077          	srl8	zero,zero,zero
  44:	5a3100f7          	srl8	ra,sp,gp
  48:	5b1807f7          	srl8	a5,a6,a7
  4c:	5b6a8a77          	srl8	s4,s5,s6
  50:	5bff0ef7          	srl8	t4,t5,t6
  54:	7a000077          	srli8	zero,zero,0
  58:	7a4100f7          	srli8	ra,sp,4
  5c:	7a7807f7          	srli8	a5,a6,7
  60:	6a000077          	srl8.u	zero,zero,zero
  64:	6a3100f7          	srl8.u	ra,sp,gp
  68:	6b1807f7          	srl8.u	a5,a6,a7
  6c:	6b6a8a77          	srl8.u	s4,s5,s6
  70:	6bff0ef7          	srl8.u	t4,t5,t6
  74:	7a800077          	srli8.u	zero,zero,0
  78:	7ac100f7          	srli8.u	ra,sp,4
  7c:	7af807f7          	srli8.u	a5,a6,7
  80:	6c000077          	ksll8	zero,zero,zero
  84:	6c3100f7          	ksll8	ra,sp,gp
  88:	6d1807f7          	ksll8	a5,a6,a7
  8c:	6d6a8a77          	ksll8	s4,s5,s6
  90:	6dff0ef7          	ksll8	t4,t5,t6
  94:	7c800077          	kslli8	zero,zero,0
  98:	7cc100f7          	kslli8	ra,sp,4
  9c:	7cf807f7          	kslli8	a5,a6,7
  a0:	5e000077          	kslra8	zero,zero,zero
  a4:	5e3100f7          	kslra8	ra,sp,gp
  a8:	5f1807f7          	kslra8	a5,a6,a7
  ac:	5f6a8a77          	kslra8	s4,s5,s6
  b0:	5fff0ef7          	kslra8	t4,t5,t6
  b4:	6e000077          	kslra8.u	zero,zero,zero
  b8:	6e3100f7          	kslra8.u	ra,sp,gp
  bc:	6f1807f7          	kslra8.u	a5,a6,a7
  c0:	6f6a8a77          	kslra8.u	s4,s5,s6
  c4:	6fff0ef7          	kslra8.u	t4,t5,t6
