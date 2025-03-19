#as: -march=rv32imap
#objdump: -d

tmpdir/p-32-computation.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <p_32_computation>:
   0:	20001077          	raddw	zero,zero,zero
   4:	203110f7          	raddw	ra,sp,gp
   8:	211817f7          	raddw	a5,a6,a7
   c:	216a9a77          	raddw	s4,s5,s6
  10:	21ff1ef7          	raddw	t4,t5,t6
  14:	30001077          	uraddw	zero,zero,zero
  18:	303110f7          	uraddw	ra,sp,gp
  1c:	311817f7          	uraddw	a5,a6,a7
  20:	316a9a77          	uraddw	s4,s5,s6
  24:	31ff1ef7          	uraddw	t4,t5,t6
  28:	22001077          	rsubw	zero,zero,zero
  2c:	223110f7          	rsubw	ra,sp,gp
  30:	231817f7          	rsubw	a5,a6,a7
  34:	236a9a77          	rsubw	s4,s5,s6
  38:	23ff1ef7          	rsubw	t4,t5,t6
  3c:	32001077          	ursubw	zero,zero,zero
  40:	323110f7          	ursubw	ra,sp,gp
  44:	331817f7          	ursubw	a5,a6,a7
  48:	336a9a77          	ursubw	s4,s5,s6
  4c:	33ff1ef7          	ursubw	t4,t5,t6
  50:	f2000077          	maxw	zero,zero,zero
  54:	f23100f7          	maxw	ra,sp,gp
  58:	f31807f7          	maxw	a5,a6,a7
  5c:	f36a8a77          	maxw	s4,s5,s6
  60:	f3ff0ef7          	maxw	t4,t5,t6
  64:	f0000077          	minw	zero,zero,zero
  68:	f03100f7          	minw	ra,sp,gp
  6c:	f11807f7          	minw	a5,a6,a7
  70:	f16a8a77          	minw	s4,s5,s6
  74:	f1ff0ef7          	minw	t4,t5,t6
  78:	f0001077          	mulr64	zero,zero,zero
  7c:	f0211077          	mulr64	zero,sp,sp
  80:	f1281777          	mulr64	a4,a6,s2
  84:	f16b1a77          	mulr64	s4,s6,s6
  88:	f1ef1e77          	mulr64	t3,t5,t5
  8c:	e0001077          	mulsr64	zero,zero,zero
  90:	e0211077          	mulsr64	zero,sp,sp
  94:	e1281877          	mulsr64	a6,a6,s2
  98:	e16b1a77          	mulsr64	s4,s6,s6
  9c:	e1ef1e77          	mulsr64	t3,t5,t5
  a0:	c7ef1e77          	msubr32	t3,t5,t5
