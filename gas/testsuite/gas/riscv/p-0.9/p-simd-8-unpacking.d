#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-8-unpacking.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_8bit_unpacking>:
   0:	ac800077          	sunpkd810	zero,zero
   4:	ac8100f7          	sunpkd810	ra,sp
   8:	ac8807f7          	sunpkd810	a5,a6
   c:	ac8a8a77          	sunpkd810	s4,s5
  10:	ac8f0ef7          	sunpkd810	t4,t5
  14:	ac900077          	sunpkd820	zero,zero
  18:	ac9100f7          	sunpkd820	ra,sp
  1c:	ac9807f7          	sunpkd820	a5,a6
  20:	ac9a8a77          	sunpkd820	s4,s5
  24:	ac9f0ef7          	sunpkd820	t4,t5
  28:	aca00077          	sunpkd830	zero,zero
  2c:	aca100f7          	sunpkd830	ra,sp
  30:	aca807f7          	sunpkd830	a5,a6
  34:	acaa8a77          	sunpkd830	s4,s5
  38:	acaf0ef7          	sunpkd830	t4,t5
  3c:	acb00077          	sunpkd831	zero,zero
  40:	acb100f7          	sunpkd831	ra,sp
  44:	acb807f7          	sunpkd831	a5,a6
  48:	acba8a77          	sunpkd831	s4,s5
  4c:	acbf0ef7          	sunpkd831	t4,t5
  50:	ad300077          	sunpkd832	zero,zero
  54:	ad3100f7          	sunpkd832	ra,sp
  58:	ad3807f7          	sunpkd832	a5,a6
  5c:	ad3a8a77          	sunpkd832	s4,s5
  60:	ad3f0ef7          	sunpkd832	t4,t5
  64:	acc00077          	zunpkd810	zero,zero
  68:	acc100f7          	zunpkd810	ra,sp
  6c:	acc807f7          	zunpkd810	a5,a6
  70:	acca8a77          	zunpkd810	s4,s5
  74:	accf0ef7          	zunpkd810	t4,t5
  78:	acd00077          	zunpkd820	zero,zero
  7c:	acd100f7          	zunpkd820	ra,sp
  80:	acd807f7          	zunpkd820	a5,a6
  84:	acda8a77          	zunpkd820	s4,s5
  88:	acdf0ef7          	zunpkd820	t4,t5
  8c:	ace00077          	zunpkd830	zero,zero
  90:	ace100f7          	zunpkd830	ra,sp
  94:	ace807f7          	zunpkd830	a5,a6
  98:	acea8a77          	zunpkd830	s4,s5
  9c:	acef0ef7          	zunpkd830	t4,t5
  a0:	acf00077          	zunpkd831	zero,zero
  a4:	acf100f7          	zunpkd831	ra,sp
  a8:	acf807f7          	zunpkd831	a5,a6
  ac:	acfa8a77          	zunpkd831	s4,s5
  b0:	acff0ef7          	zunpkd831	t4,t5
  b4:	ad700077          	zunpkd832	zero,zero
  b8:	ad7100f7          	zunpkd832	ra,sp
  bc:	ad7807f7          	zunpkd832	a5,a6
  c0:	ad7a8a77          	zunpkd832	s4,s5
  c4:	ad7f0ef7          	zunpkd832	t4,t5
