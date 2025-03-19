#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-16-misc.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_misc>:
   0:	80000077          	smin16	zero,zero,zero
   4:	803100f7          	smin16	ra,sp,gp
   8:	811807f7          	smin16	a5,a6,a7
   c:	816a8a77          	smin16	s4,s5,s6
  10:	81ff0ef7          	smin16	t4,t5,t6
  14:	90000077          	umin16	zero,zero,zero
  18:	903100f7          	umin16	ra,sp,gp
  1c:	911807f7          	umin16	a5,a6,a7
  20:	916a8a77          	umin16	s4,s5,s6
  24:	91ff0ef7          	umin16	t4,t5,t6
  28:	82000077          	smax16	zero,zero,zero
  2c:	823100f7          	smax16	ra,sp,gp
  30:	831807f7          	smax16	a5,a6,a7
  34:	836a8a77          	smax16	s4,s5,s6
  38:	83ff0ef7          	smax16	t4,t5,t6
  3c:	92000077          	umax16	zero,zero,zero
  40:	923100f7          	umax16	ra,sp,gp
  44:	931807f7          	umax16	a5,a6,a7
  48:	936a8a77          	umax16	s4,s5,s6
  4c:	93ff0ef7          	umax16	t4,t5,t6
  50:	84000077          	sclip16	zero,zero,0
  54:	843100f7          	sclip16	ra,sp,3
  58:	847807f7          	sclip16	a5,a6,7
  5c:	84ba8a77          	sclip16	s4,s5,11
  60:	84ff0ef7          	sclip16	t4,t5,15
  64:	85000077          	uclip16	zero,zero,0
  68:	853100f7          	uclip16	ra,sp,3
  6c:	857807f7          	uclip16	a5,a6,7
  70:	85ba8a77          	uclip16	s4,s5,11
  74:	85ff0ef7          	uclip16	t4,t5,15
  78:	ad100077          	kabs16	zero,zero
  7c:	ad1100f7          	kabs16	ra,sp
  80:	ad1807f7          	kabs16	a5,a6
  84:	ad1a8a77          	kabs16	s4,s5
  88:	ad1f0ef7          	kabs16	t4,t5
  8c:	ae800077          	clrs16	zero,zero
  90:	ae8100f7          	clrs16	ra,sp
  94:	ae8807f7          	clrs16	a5,a6
  98:	ae8a8a77          	clrs16	s4,s5
  9c:	ae8f0ef7          	clrs16	t4,t5
  a0:	ae900077          	clz16	zero,zero
  a4:	ae9100f7          	clz16	ra,sp
  a8:	ae9807f7          	clz16	a5,a6
  ac:	ae9a8a77          	clz16	s4,s5
  b0:	ae9f0ef7          	clz16	t4,t5
  b4:	aeb00077          	clo16	zero,zero
  b8:	aeb100f7          	clo16	ra,sp
  bc:	aeb807f7          	clo16	a5,a6
  c0:	aeba8a77          	clo16	s4,s5
  c4:	aebf0ef7          	clo16	t4,t5
