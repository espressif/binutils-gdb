#as: -march=rv32imap
#objdump: -d

tmpdir/p-simd-64-add-sub.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <simd_64bit_add64>:
   0:	c0001077          	add64	zero,zero,zero
   4:	c0411177          	add64	sp,sp,tp
   8:	c1281777          	add64	a4,a6,s2
   c:	c16b1a77          	add64	s4,s6,s6
  10:	c1ef1e77          	add64	t3,t5,t5
  14:	80001077          	radd64	zero,zero,zero
  18:	80411177          	radd64	sp,sp,tp
  1c:	81281777          	radd64	a4,a6,s2
  20:	816b1a77          	radd64	s4,s6,s6
  24:	81ef1e77          	radd64	t3,t5,t5
  28:	a0001077          	uradd64	zero,zero,zero
  2c:	a0411177          	uradd64	sp,sp,tp
  30:	a1281777          	uradd64	a4,a6,s2
  34:	a16b1a77          	uradd64	s4,s6,s6
  38:	a1ef1e77          	uradd64	t3,t5,t5
  3c:	90001077          	kadd64	zero,zero,zero
  40:	90411177          	kadd64	sp,sp,tp
  44:	91281777          	kadd64	a4,a6,s2
  48:	916b1a77          	kadd64	s4,s6,s6
  4c:	91ef1e77          	kadd64	t3,t5,t5
  50:	b0001077          	ukadd64	zero,zero,zero
  54:	b0411177          	ukadd64	sp,sp,tp
  58:	b1281777          	ukadd64	a4,a6,s2
  5c:	b16b1a77          	ukadd64	s4,s6,s6
  60:	b1ef1e77          	ukadd64	t3,t5,t5

00000064 <simd_64bit_sub64>:
  64:	c2001077          	sub64	zero,zero,zero
  68:	c2411077          	sub64	zero,sp,tp
  6c:	c3281877          	sub64	a6,a6,s2
  70:	c36a1a77          	sub64	s4,s4,s6
  74:	c3ef1e77          	sub64	t3,t5,t5
  78:	82001077          	rsub64	zero,zero,zero
  7c:	82411077          	rsub64	zero,sp,tp
  80:	83281777          	rsub64	a4,a6,s2
  84:	836b1a77          	rsub64	s4,s6,s6
  88:	83ef1e77          	rsub64	t3,t5,t5
  8c:	a2001077          	ursub64	zero,zero,zero
  90:	a2211077          	ursub64	zero,sp,sp
  94:	a3281777          	ursub64	a4,a6,s2
  98:	a36b1a77          	ursub64	s4,s6,s6
  9c:	a3ef1e77          	ursub64	t3,t5,t5
  a0:	92001077          	ksub64	zero,zero,zero
  a4:	92411077          	ksub64	zero,sp,tp
  a8:	93281777          	ksub64	a4,a6,s2
  ac:	936b1a77          	ksub64	s4,s6,s6
  b0:	93ef1b77          	ksub64	s6,t5,t5
  b4:	b2001077          	uksub64	zero,zero,zero
  b8:	b2411177          	uksub64	sp,sp,tp
  bc:	b3281877          	uksub64	a6,a6,s2
  c0:	b36a1a77          	uksub64	s4,s4,s6
  c4:	b3ef1e77          	uksub64	t3,t5,t5
