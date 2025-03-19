#as: -march=rv64imap
#objdump: -d

tmpdir/p-signed-16-mul64-add-sub.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <signed_16bit_mul64_add_sub>:
   0:	5e001077          	smal	zero,zero,zero
   4:	5e311177          	smal	sp,sp,gp
   8:	5f181777          	smal	a4,a6,a7
   c:	5f6a9a77          	smal	s4,s5,s6
  10:	5fff1e77          	smal	t3,t5,t6
