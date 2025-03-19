#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-8-misc.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_misc>:
   0:	88000077          	smin8	zero,zero,zero
   4:	883100f7          	smin8	ra,sp,gp
   8:	891807f7          	smin8	a5,a6,a7
   c:	896a8a77          	smin8	s4,s5,s6
  10:	89ff0ef7          	smin8	t4,t5,t6
  14:	98000077          	umin8	zero,zero,zero
  18:	983100f7          	umin8	ra,sp,gp
  1c:	991807f7          	umin8	a5,a6,a7
  20:	996a8a77          	umin8	s4,s5,s6
  24:	99ff0ef7          	umin8	t4,t5,t6
  28:	8a000077          	smax8	zero,zero,zero
  2c:	8a3100f7          	smax8	ra,sp,gp
  30:	8b1807f7          	smax8	a5,a6,a7
  34:	8b6a8a77          	smax8	s4,s5,s6
  38:	8bff0ef7          	smax8	t4,t5,t6
  3c:	9a000077          	umax8	zero,zero,zero
  40:	9a3100f7          	umax8	ra,sp,gp
  44:	9b1807f7          	umax8	a5,a6,a7
  48:	9b6a8a77          	umax8	s4,s5,s6
  4c:	9bff0ef7          	umax8	t4,t5,t6
  50:	8c000077          	sclip8	zero,zero,0
  54:	8c3100f7          	sclip8	ra,sp,3
  58:	8c7807f7          	sclip8	a5,a6,7
  5c:	8d000077          	uclip8	zero,zero,0
  60:	8d3100f7          	uclip8	ra,sp,3
  64:	8d7807f7          	uclip8	a5,a6,7
  68:	ad000077          	kabs8	zero,zero
  6c:	ad0100f7          	kabs8	ra,sp
  70:	ad0807f7          	kabs8	a5,a6
  74:	ad0a8a77          	kabs8	s4,s5
  78:	ad0f0ef7          	kabs8	t4,t5
  7c:	ae000077          	clrs8	zero,zero
  80:	ae0100f7          	clrs8	ra,sp
  84:	ae0807f7          	clrs8	a5,a6
  88:	ae0a8a77          	clrs8	s4,s5
  8c:	ae0f0ef7          	clrs8	t4,t5
  90:	ae100077          	clz8	zero,zero
  94:	ae1100f7          	clz8	ra,sp
  98:	ae1807f7          	clz8	a5,a6
  9c:	ae1a8a77          	clz8	s4,s5
  a0:	ae1f0ef7          	clz8	t4,t5
  a4:	ae300077          	clo8	zero,zero
  a8:	ae3100f7          	clo8	ra,sp
  ac:	ae3807f7          	clo8	a5,a6
  b0:	ae3a8a77          	clo8	s4,s5
  b4:	ae3f0ef7          	clo8	t4,t5
