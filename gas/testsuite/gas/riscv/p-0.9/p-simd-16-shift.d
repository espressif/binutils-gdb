#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-16-shift.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_shift>:
   0:	50000077          	sra16	zero,zero,zero
   4:	503100f7          	sra16	ra,sp,gp
   8:	511807f7          	sra16	a5,a6,a7
   c:	516a8a77          	sra16	s4,s5,s6
  10:	51ff0ef7          	sra16	t4,t5,t6
  14:	70000077          	srai16	zero,zero,0
  18:	704100f7          	srai16	ra,sp,4
  1c:	708807f7          	srai16	a5,a6,8
  20:	70ca8a77          	srai16	s4,s5,12
  24:	70ff0ef7          	srai16	t4,t5,15
  28:	60000077          	sra16.u	zero,zero,zero
  2c:	603100f7          	sra16.u	ra,sp,gp
  30:	611807f7          	sra16.u	a5,a6,a7
  34:	616a8a77          	sra16.u	s4,s5,s6
  38:	61ff0ef7          	sra16.u	t4,t5,t6
  3c:	71000077          	srai16.u	zero,zero,0
  40:	714100f7          	srai16.u	ra,sp,4
  44:	718807f7          	srai16.u	a5,a6,8
  48:	71ca8a77          	srai16.u	s4,s5,12
  4c:	71ff0ef7          	srai16.u	t4,t5,15
  50:	52000077          	srl16	zero,zero,zero
  54:	523100f7          	srl16	ra,sp,gp
  58:	531807f7          	srl16	a5,a6,a7
  5c:	536a8a77          	srl16	s4,s5,s6
  60:	53ff0ef7          	srl16	t4,t5,t6
  64:	72000077          	srli16	zero,zero,0
  68:	724100f7          	srli16	ra,sp,4
  6c:	728807f7          	srli16	a5,a6,8
  70:	72ca8a77          	srli16	s4,s5,12
  74:	72ff0ef7          	srli16	t4,t5,15
  78:	62000077          	srl16.u	zero,zero,zero
  7c:	623100f7          	srl16.u	ra,sp,gp
  80:	631807f7          	srl16.u	a5,a6,a7
  84:	636a8a77          	srl16.u	s4,s5,s6
  88:	63ff0ef7          	srl16.u	t4,t5,t6
  8c:	73000077          	srli16.u	zero,zero,0
  90:	734100f7          	srli16.u	ra,sp,4
  94:	738807f7          	srli16.u	a5,a6,8
  98:	73ca8a77          	srli16.u	s4,s5,12
  9c:	73ff0ef7          	srli16.u	t4,t5,15
  a0:	64000077          	ksll16	zero,zero,zero
  a4:	643100f7          	ksll16	ra,sp,gp
  a8:	651807f7          	ksll16	a5,a6,a7
  ac:	656a8a77          	ksll16	s4,s5,s6
  b0:	65ff0ef7          	ksll16	t4,t5,t6
  b4:	75000077          	kslli16	zero,zero,0
  b8:	754100f7          	kslli16	ra,sp,4
  bc:	758807f7          	kslli16	a5,a6,8
  c0:	75ca8a77          	kslli16	s4,s5,12
  c4:	75ff0ef7          	kslli16	t4,t5,15
  c8:	56000077          	kslra16	zero,zero,zero
  cc:	563100f7          	kslra16	ra,sp,gp
  d0:	571807f7          	kslra16	a5,a6,a7
  d4:	576a8a77          	kslra16	s4,s5,s6
  d8:	57ff0ef7          	kslra16	t4,t5,t6
  dc:	66000077          	kslra16.u	zero,zero,zero
  e0:	663100f7          	kslra16.u	ra,sp,gp
  e4:	671807f7          	kslra16.u	a5,a6,a7
  e8:	676a8a77          	kslra16.u	s4,s5,s6
  ec:	67ff0ef7          	kslra16.u	t4,t5,t6
