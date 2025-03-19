#as: -march=rv32imap
#objdump: -d

tmpdir/p-32bit-mul-64bit-add-sub.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <p_32bit_mul_64bit_add_sub>:
   0:	84001077          	smar64	zero,zero,zero
   4:	84411177          	smar64	sp,sp,tp
   8:	85281777          	smar64	a4,a6,s2
   c:	856b1a77          	smar64	s4,s6,s6
  10:	85ef1e77          	smar64	t3,t5,t5
  14:	86001077          	smsr64	zero,zero,zero
  18:	86411177          	smsr64	sp,sp,tp
  1c:	87281777          	smsr64	a4,a6,s2
  20:	876b1a77          	smsr64	s4,s6,s6
  24:	87ef1e77          	smsr64	t3,t5,t5
  28:	a4001077          	umar64	zero,zero,zero
  2c:	a4411177          	umar64	sp,sp,tp
  30:	a5281777          	umar64	a4,a6,s2
  34:	a56b1a77          	umar64	s4,s6,s6
  38:	a5ef1e77          	umar64	t3,t5,t5
  3c:	a6001077          	umsr64	zero,zero,zero
  40:	a6411177          	umsr64	sp,sp,tp
  44:	a7281777          	umsr64	a4,a6,s2
  48:	a76b1a77          	umsr64	s4,s6,s6
  4c:	a7ef1e77          	umsr64	t3,t5,t5
  50:	94001077          	kmar64	zero,zero,zero
  54:	94411177          	kmar64	sp,sp,tp
  58:	95281777          	kmar64	a4,a6,s2
  5c:	956b1a77          	kmar64	s4,s6,s6
  60:	95ef1e77          	kmar64	t3,t5,t5
  64:	96001077          	kmsr64	zero,zero,zero
  68:	96411177          	kmsr64	sp,sp,tp
  6c:	97281777          	kmsr64	a4,a6,s2
  70:	976b1a77          	kmsr64	s4,s6,s6
  74:	97ef1e77          	kmsr64	t3,t5,t5
  78:	b4001077          	ukmar64	zero,zero,zero
  7c:	b4411177          	ukmar64	sp,sp,tp
  80:	b5281777          	ukmar64	a4,a6,s2
  84:	b56b1a77          	ukmar64	s4,s6,s6
  88:	b5ef1e77          	ukmar64	t3,t5,t5
  8c:	b6001077          	ukmsr64	zero,zero,zero
  90:	b6411177          	ukmsr64	sp,sp,tp
  94:	b7281777          	ukmsr64	a4,a6,s2
  98:	b76b1a77          	ukmsr64	s4,s6,s6
  9c:	b7ef1e77          	ukmsr64	t3,t5,t5
