#as: -march=rv64imap
#objdump: -d

tmpdir/p-non-simd-q15-saturation.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <non_simd_q15_saturation>:
   0:	04001077          	kaddh	zero,zero,zero
   4:	043110f7          	kaddh	ra,sp,gp
   8:	051817f7          	kaddh	a5,a6,a7
   c:	056a9a77          	kaddh	s4,s5,s6
  10:	05ff1ef7          	kaddh	t4,t5,t6
  14:	06001077          	ksubh	zero,zero,zero
  18:	063110f7          	ksubh	ra,sp,gp
  1c:	071817f7          	ksubh	a5,a6,a7
  20:	076a9a77          	ksubh	s4,s5,s6
  24:	07ff1ef7          	ksubh	t4,t5,t6
  28:	0c001077          	khmbb	zero,zero,zero
  2c:	0c3110f7          	khmbb	ra,sp,gp
  30:	0d1817f7          	khmbb	a5,a6,a7
  34:	0d6a9a77          	khmbb	s4,s5,s6
  38:	0dff1ef7          	khmbb	t4,t5,t6
  3c:	1c001077          	khmbt	zero,zero,zero
  40:	1c3110f7          	khmbt	ra,sp,gp
  44:	1d1817f7          	khmbt	a5,a6,a7
  48:	1d6a9a77          	khmbt	s4,s5,s6
  4c:	1dff1ef7          	khmbt	t4,t5,t6
  50:	2c001077          	khmtt	zero,zero,zero
  54:	2c3110f7          	khmtt	ra,sp,gp
  58:	2d1817f7          	khmtt	a5,a6,a7
  5c:	2d6a9a77          	khmtt	s4,s5,s6
  60:	2dff1ef7          	khmtt	t4,t5,t6
  64:	14001077          	ukaddh	zero,zero,zero
  68:	143110f7          	ukaddh	ra,sp,gp
  6c:	151817f7          	ukaddh	a5,a6,a7
  70:	156a9a77          	ukaddh	s4,s5,s6
  74:	15ff1ef7          	ukaddh	t4,t5,t6
  78:	16001077          	uksubh	zero,zero,zero
  7c:	163110f7          	uksubh	ra,sp,gp
  80:	171817f7          	uksubh	a5,a6,a7
  84:	176a9a77          	uksubh	s4,s5,s6
  88:	17ff1ef7          	uksubh	t4,t5,t6
