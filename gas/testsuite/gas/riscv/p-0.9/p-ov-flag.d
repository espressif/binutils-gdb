#as: -march=rv64imap
#objdump: -d

tmpdir/p-ov-flag.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <ov_flags>:
   0:	00902073          	rdov	zero
   4:	009023f3          	rdov	t2
   8:	009027f3          	rdov	a5
   c:	00902bf3          	rdov	s7
  10:	00902ff3          	rdov	t6
  14:	0090f073          	clrov
