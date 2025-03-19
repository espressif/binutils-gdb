#as: -march=rv32imap
#objdump: -d

tmpdir/p-signed16_mul64_add_sub.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <signed_16_mul64_add_sub>:
   0:	88001077          	smalbb	zero,zero,zero
   4:	88311177          	smalbb	sp,sp,gp
   8:	89181777          	smalbb	a4,a6,a7
   c:	896a9a77          	smalbb	s4,s5,s6
  10:	89ff1e77          	smalbb	t3,t5,t6
  14:	98001077          	smalbt	zero,zero,zero
  18:	98311177          	smalbt	sp,sp,gp
  1c:	99181777          	smalbt	a4,a6,a7
  20:	996a9a77          	smalbt	s4,s5,s6
  24:	99ff1e77          	smalbt	t3,t5,t6
  28:	a8001077          	smaltt	zero,zero,zero
  2c:	a8311177          	smaltt	sp,sp,gp
  30:	a9181777          	smaltt	a4,a6,a7
  34:	a96a9a77          	smaltt	s4,s5,s6
  38:	a9ff1e77          	smaltt	t3,t5,t6
  3c:	8c001077          	smalda	zero,zero,zero
  40:	8c311177          	smalda	sp,sp,gp
  44:	8d181777          	smalda	a4,a6,a7
  48:	8d6a9a77          	smalda	s4,s5,s6
  4c:	8dff1e77          	smalda	t3,t5,t6
  50:	9c001077          	smalxda	zero,zero,zero
  54:	9c311177          	smalxda	sp,sp,gp
  58:	9d181777          	smalxda	a4,a6,a7
  5c:	9d6a9a77          	smalxda	s4,s5,s6
  60:	9dff1e77          	smalxda	t3,t5,t6
  64:	8a001077          	smalds	zero,zero,zero
  68:	8a311177          	smalds	sp,sp,gp
  6c:	8b181777          	smalds	a4,a6,a7
  70:	8b6a9a77          	smalds	s4,s5,s6
  74:	8bff1e77          	smalds	t3,t5,t6
  78:	9a001077          	smaldrs	zero,zero,zero
  7c:	9a311177          	smaldrs	sp,sp,gp
  80:	9b181777          	smaldrs	a4,a6,a7
  84:	9b6a9a77          	smaldrs	s4,s5,s6
  88:	9bff1e77          	smaldrs	t3,t5,t6
  8c:	aa001077          	smalxds	zero,zero,zero
  90:	aa311177          	smalxds	sp,sp,gp
  94:	ab181777          	smalxds	a4,a6,a7
  98:	ab6a9a77          	smalxds	s4,s5,s6
  9c:	abff1e77          	smalxds	t3,t5,t6
  a0:	ac001077          	smslda	zero,zero,zero
  a4:	ac311177          	smslda	sp,sp,gp
  a8:	ad181777          	smslda	a4,a6,a7
  ac:	ad6a9a77          	smslda	s4,s5,s6
  b0:	adff1e77          	smslda	t3,t5,t6
  b4:	bc001077          	smslxda	zero,zero,zero
  b8:	bc311177          	smslxda	sp,sp,gp
  bc:	bd181777          	smslxda	a4,a6,a7
  c0:	bd6a9a77          	smslxda	s4,s5,s6
  c4:	bdff1e77          	smslxda	t3,t5,t6
