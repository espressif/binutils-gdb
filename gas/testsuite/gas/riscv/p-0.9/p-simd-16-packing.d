#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-16-packing.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_packing>:
   0:	0e001077          	pkbb16	zero,zero,zero
   4:	0e3110f7          	pkbb16	ra,sp,gp
   8:	0f1817f7          	pkbb16	a5,a6,a7
   c:	0f6a9a77          	pkbb16	s4,s5,s6
  10:	0fff1ef7          	pkbb16	t4,t5,t6
  14:	1e001077          	pkbt16	zero,zero,zero
  18:	1e3110f7          	pkbt16	ra,sp,gp
  1c:	1f1817f7          	pkbt16	a5,a6,a7
  20:	1f6a9a77          	pkbt16	s4,s5,s6
  24:	1fff1ef7          	pkbt16	t4,t5,t6
  28:	3e001077          	pktb16	zero,zero,zero
  2c:	3e3110f7          	pktb16	ra,sp,gp
  30:	3f1817f7          	pktb16	a5,a6,a7
  34:	3f6a9a77          	pktb16	s4,s5,s6
  38:	3fff1ef7          	pktb16	t4,t5,t6
  3c:	2e001077          	pktt16	zero,zero,zero
  40:	2e3110f7          	pktt16	ra,sp,gp
  44:	2f1817f7          	pktt16	a5,a6,a7
  48:	2f6a9a77          	pktt16	s4,s5,s6
  4c:	2fff1ef7          	pktt16	t4,t5,t6
