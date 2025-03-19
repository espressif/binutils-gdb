#as: -march=rv64imap
#objdump: -d

tmpdir/p-partial-simd-misc.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <partial_simd_misc>:
   0:	e4000077          	sclip32	zero,zero,0
   4:	e47100f7          	sclip32	ra,sp,7
   8:	e4f807f7          	sclip32	a5,a6,15
   c:	e57a8a77          	sclip32	s4,s5,23
  10:	e5ff0ef7          	sclip32	t4,t5,31
  14:	f4000077          	uclip32	zero,zero,0
  18:	f47100f7          	uclip32	ra,sp,7
  1c:	f4f807f7          	uclip32	a5,a6,15
  20:	f57a8a77          	uclip32	s4,s5,23
  24:	f5ff0ef7          	uclip32	t4,t5,31
  28:	af800077          	clrs32	zero,zero
  2c:	af8100f7          	clrs32	ra,sp
  30:	af8807f7          	clrs32	a5,a6
  34:	af8a8a77          	clrs32	s4,s5
  38:	af8f0ef7          	clrs32	t4,t5
  3c:	af900077          	clz32	zero,zero
  40:	af9100f7          	clz32	ra,sp
  44:	af9807f7          	clz32	a5,a6
  48:	af9a8a77          	clz32	s4,s5
  4c:	af9f0ef7          	clz32	t4,t5
  50:	afb00077          	clo32	zero,zero
  54:	afb100f7          	clo32	ra,sp
  58:	afb807f7          	clo32	a5,a6
  5c:	afba8a77          	clo32	s4,s5
  60:	afbf0ef7          	clo32	t4,t5
  64:	fc000077          	pbsad	zero,zero,zero
  68:	fc3100f7          	pbsad	ra,sp,gp
  6c:	fd1807f7          	pbsad	a5,a6,a7
  70:	fd6a8a77          	pbsad	s4,s5,s6
  74:	fdff0ef7          	pbsad	t4,t5,t6
  78:	fe000077          	pbsada	zero,zero,zero
  7c:	fe3100f7          	pbsada	ra,sp,gp
  80:	ff1807f7          	pbsada	a5,a6,a7
  84:	ff6a8a77          	pbsada	s4,s5,s6
  88:	ffff0ef7          	pbsada	t4,t5,t6
