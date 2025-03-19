#as: -march=rv64imap
#objdump: -d

tmpdir/p-8bit-mul32_add.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <p_8bit_mul32_add>:
   0:	c8000077          	smaqa	zero,zero,zero
   4:	c83100f7          	smaqa	ra,sp,gp
   8:	c91807f7          	smaqa	a5,a6,a7
   c:	c96a8a77          	smaqa	s4,s5,s6
  10:	c9ff0ef7          	smaqa	t4,t5,t6
  14:	cc000077          	umaqa	zero,zero,zero
  18:	cc3100f7          	umaqa	ra,sp,gp
  1c:	cd1807f7          	umaqa	a5,a6,a7
  20:	cd6a8a77          	umaqa	s4,s5,s6
  24:	cdff0ef7          	umaqa	t4,t5,t6
  28:	ca000077          	smaqa.su	zero,zero,zero
  2c:	ca3100f7          	smaqa.su	ra,sp,gp
  30:	cb1807f7          	smaqa.su	a5,a6,a7
  34:	cb6a8a77          	smaqa.su	s4,s5,s6
  38:	cbff0ef7          	smaqa.su	t4,t5,t6
