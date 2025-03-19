#as: -march=rv64imap
#objdump: -d

tmpdir/p-non-simd-misc.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_misc>:
   0:	e0000077          	ave	zero,zero,zero
   4:	e03100f7          	ave	ra,sp,gp
   8:	e11807f7          	ave	a5,a6,a7
   c:	e16a8a77          	ave	s4,s5,s6
  10:	e1ff0ef7          	ave	t4,t5,t6
  14:	24001077          	sra.u	zero,zero,zero
  18:	243110f7          	sra.u	ra,sp,gp
  1c:	251817f7          	sra.u	a5,a6,a7
  20:	256a9a77          	sra.u	s4,s5,s6
  24:	25ff1ef7          	sra.u	t4,t5,t6
  28:	d4001077          	srai.u	zero,zero,0
  2c:	d43110f7          	srai.u	ra,sp,3
  30:	d51817f7          	srai.u	a5,a6,17
  34:	d56a9a77          	srai.u	s4,s5,22
  38:	d5ff1ef7          	srai.u	t4,t5,31
  3c:	e6000077          	bitrev	zero,zero,zero
  40:	e63100f7          	bitrev	ra,sp,gp
  44:	e71807f7          	bitrev	a5,a6,a7
  48:	e76a8a77          	bitrev	s4,s5,s6
  4c:	e7ff0ef7          	bitrev	t4,t5,t6
  50:	e8000077          	bitrevi	zero,zero,0
  54:	e83100f7          	bitrevi	ra,sp,3
  58:	e91807f7          	bitrevi	a5,a6,17
  5c:	e96a8a77          	bitrevi	s4,s5,22
  60:	e9ff0ef7          	bitrevi	t4,t5,31
  64:	ce000077          	wext	zero,zero,zero
  68:	ce3100f7          	wext	ra,sp,gp
  6c:	cf1807f7          	wext	a5,a6,a7
  70:	cf6a8a77          	wext	s4,s5,s6
  74:	cfff0ef7          	wext	t4,t5,t6
  78:	de000077          	wexti	zero,zero,0
  7c:	de3100f7          	wexti	ra,sp,3
  80:	df1807f7          	wexti	a5,a6,17
  84:	df6a8a77          	wexti	s4,s5,22
  88:	dfff0ef7          	wexti	t4,t5,31
  8c:	00003077          	bpick	zero,zero,zero,zero
  90:	203130f7          	bpick	ra,sp,gp,tp
  94:	911837f7          	bpick	a5,a6,a7,s2
  98:	b96aba77          	bpick	s4,s5,s6,s7
  9c:	79ff3ef7          	bpick	t4,t5,t6,a5
  a0:	ac000077          	insb	zero,zero,0
  a4:	ac1100f7          	insb	ra,sp,1
  a8:	ac2807f7          	insb	a5,a6,2
  ac:	ac3a8a77          	insb	s4,s5,3
  b0:	ac1f0ef7          	insb	t4,t5,1
  b4:	c4001077          	maddr32	zero,zero,zero
  b8:	c43110f7          	maddr32	ra,sp,gp
  bc:	c51817f7          	maddr32	a5,a6,a7
  c0:	c56a9a77          	maddr32	s4,s5,s6
  c4:	c5ff1ef7          	maddr32	t4,t5,t6
