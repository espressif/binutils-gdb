#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-32-add-sub.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_32bit_add32>:
   0:	40002077          	add32	zero,zero,zero
   4:	403120f7          	add32	ra,sp,gp
   8:	411827f7          	add32	a5,a6,a7
   c:	416aaa77          	add32	s4,s5,s6
  10:	41ff2ef7          	add32	t4,t5,t6
  14:	00002077          	radd32	zero,zero,zero
  18:	003120f7          	radd32	ra,sp,gp
  1c:	011827f7          	radd32	a5,a6,a7
  20:	016aaa77          	radd32	s4,s5,s6
  24:	01ff2ef7          	radd32	t4,t5,t6
  28:	20002077          	uradd32	zero,zero,zero
  2c:	203120f7          	uradd32	ra,sp,gp
  30:	211827f7          	uradd32	a5,a6,a7
  34:	216aaa77          	uradd32	s4,s5,s6
  38:	21ff2ef7          	uradd32	t4,t5,t6
  3c:	10002077          	kadd32	zero,zero,zero
  40:	103120f7          	kadd32	ra,sp,gp
  44:	111827f7          	kadd32	a5,a6,a7
  48:	116aaa77          	kadd32	s4,s5,s6
  4c:	11ff2ef7          	kadd32	t4,t5,t6
  50:	30002077          	ukadd32	zero,zero,zero
  54:	303120f7          	ukadd32	ra,sp,gp
  58:	311827f7          	ukadd32	a5,a6,a7
  5c:	316aaa77          	ukadd32	s4,s5,s6
  60:	31ff2ef7          	ukadd32	t4,t5,t6

0000000000000064 <simd_32bit_sub32>:
  64:	42002077          	sub32	zero,zero,zero
  68:	423120f7          	sub32	ra,sp,gp
  6c:	431827f7          	sub32	a5,a6,a7
  70:	436aaa77          	sub32	s4,s5,s6
  74:	43ff2ef7          	sub32	t4,t5,t6
  78:	02002077          	rsub32	zero,zero,zero
  7c:	023120f7          	rsub32	ra,sp,gp
  80:	031827f7          	rsub32	a5,a6,a7
  84:	036aaa77          	rsub32	s4,s5,s6
  88:	03ff2ef7          	rsub32	t4,t5,t6
  8c:	22002077          	ursub32	zero,zero,zero
  90:	223120f7          	ursub32	ra,sp,gp
  94:	231827f7          	ursub32	a5,a6,a7
  98:	236aaa77          	ursub32	s4,s5,s6
  9c:	23ff2ef7          	ursub32	t4,t5,t6
  a0:	12002077          	ksub32	zero,zero,zero
  a4:	123120f7          	ksub32	ra,sp,gp
  a8:	131827f7          	ksub32	a5,a6,a7
  ac:	136aaa77          	ksub32	s4,s5,s6
  b0:	13ff2ef7          	ksub32	t4,t5,t6
  b4:	32002077          	uksub32	zero,zero,zero
  b8:	323120f7          	uksub32	ra,sp,gp
  bc:	331827f7          	uksub32	a5,a6,a7
  c0:	336aaa77          	uksub32	s4,s5,s6
  c4:	33ff2ef7          	uksub32	t4,t5,t6

00000000000000c8 <simd_32bit_cras32>:
  c8:	44002077          	cras32	zero,zero,zero
  cc:	443120f7          	cras32	ra,sp,gp
  d0:	451827f7          	cras32	a5,a6,a7
  d4:	456aaa77          	cras32	s4,s5,s6
  d8:	45ff2ef7          	cras32	t4,t5,t6
  dc:	04002077          	rcras32	zero,zero,zero
  e0:	043120f7          	rcras32	ra,sp,gp
  e4:	051827f7          	rcras32	a5,a6,a7
  e8:	056aaa77          	rcras32	s4,s5,s6
  ec:	05ff2ef7          	rcras32	t4,t5,t6
  f0:	24002077          	urcras32	zero,zero,zero
  f4:	243120f7          	urcras32	ra,sp,gp
  f8:	251827f7          	urcras32	a5,a6,a7
  fc:	256aaa77          	urcras32	s4,s5,s6
 100:	25ff2ef7          	urcras32	t4,t5,t6
 104:	14002077          	kcras32	zero,zero,zero
 108:	143120f7          	kcras32	ra,sp,gp
 10c:	151827f7          	kcras32	a5,a6,a7
 110:	156aaa77          	kcras32	s4,s5,s6
 114:	15ff2ef7          	kcras32	t4,t5,t6
 118:	34002077          	ukcras32	zero,zero,zero
 11c:	343120f7          	ukcras32	ra,sp,gp
 120:	351827f7          	ukcras32	a5,a6,a7
 124:	356aaa77          	ukcras32	s4,s5,s6
 128:	35ff2ef7          	ukcras32	t4,t5,t6

000000000000012c <simd_32bit_crsa32>:
 12c:	46002077          	crsa32	zero,zero,zero
 130:	463120f7          	crsa32	ra,sp,gp
 134:	471827f7          	crsa32	a5,a6,a7
 138:	476aaa77          	crsa32	s4,s5,s6
 13c:	47ff2ef7          	crsa32	t4,t5,t6
 140:	06002077          	rcrsa32	zero,zero,zero
 144:	063120f7          	rcrsa32	ra,sp,gp
 148:	071827f7          	rcrsa32	a5,a6,a7
 14c:	076aaa77          	rcrsa32	s4,s5,s6
 150:	07ff2ef7          	rcrsa32	t4,t5,t6
 154:	26002077          	urcrsa32	zero,zero,zero
 158:	263120f7          	urcrsa32	ra,sp,gp
 15c:	271827f7          	urcrsa32	a5,a6,a7
 160:	276aaa77          	urcrsa32	s4,s5,s6
 164:	27ff2ef7          	urcrsa32	t4,t5,t6
 168:	16002077          	kcrsa32	zero,zero,zero
 16c:	163120f7          	kcrsa32	ra,sp,gp
 170:	171827f7          	kcrsa32	a5,a6,a7
 174:	176aaa77          	kcrsa32	s4,s5,s6
 178:	17ff2ef7          	kcrsa32	t4,t5,t6
 17c:	36002077          	ukcrsa32	zero,zero,zero
 180:	363120f7          	ukcrsa32	ra,sp,gp
 184:	371827f7          	ukcrsa32	a5,a6,a7
 188:	376aaa77          	ukcrsa32	s4,s5,s6
 18c:	37ff2ef7          	ukcrsa32	t4,t5,t6

0000000000000190 <simd_32bit_stas32>:
 190:	f0002077          	stas32	zero,zero,zero
 194:	f03120f7          	stas32	ra,sp,gp
 198:	f11827f7          	stas32	a5,a6,a7
 19c:	f16aaa77          	stas32	s4,s5,s6
 1a0:	f1ff2ef7          	stas32	t4,t5,t6
 1a4:	b0002077          	rstas32	zero,zero,zero
 1a8:	b03120f7          	rstas32	ra,sp,gp
 1ac:	b11827f7          	rstas32	a5,a6,a7
 1b0:	b16aaa77          	rstas32	s4,s5,s6
 1b4:	b1ff2ef7          	rstas32	t4,t5,t6
 1b8:	d0002077          	urstas32	zero,zero,zero
 1bc:	d03120f7          	urstas32	ra,sp,gp
 1c0:	d11827f7          	urstas32	a5,a6,a7
 1c4:	d16aaa77          	urstas32	s4,s5,s6
 1c8:	d1ff2ef7          	urstas32	t4,t5,t6
 1cc:	c0002077          	kstas32	zero,zero,zero
 1d0:	c03120f7          	kstas32	ra,sp,gp
 1d4:	c11827f7          	kstas32	a5,a6,a7
 1d8:	c16aaa77          	kstas32	s4,s5,s6
 1dc:	c1ff2ef7          	kstas32	t4,t5,t6
 1e0:	e0002077          	ukstas32	zero,zero,zero
 1e4:	e03120f7          	ukstas32	ra,sp,gp
 1e8:	e11827f7          	ukstas32	a5,a6,a7
 1ec:	e16aaa77          	ukstas32	s4,s5,s6
 1f0:	e1ff2ef7          	ukstas32	t4,t5,t6

00000000000001f4 <simd_32bit_stsa32>:
 1f4:	f2002077          	stsa32	zero,zero,zero
 1f8:	f23120f7          	stsa32	ra,sp,gp
 1fc:	f31827f7          	stsa32	a5,a6,a7
 200:	f36aaa77          	stsa32	s4,s5,s6
 204:	f3ff2ef7          	stsa32	t4,t5,t6
 208:	b2002077          	rstsa32	zero,zero,zero
 20c:	b23120f7          	rstsa32	ra,sp,gp
 210:	b31827f7          	rstsa32	a5,a6,a7
 214:	b36aaa77          	rstsa32	s4,s5,s6
 218:	b3ff2ef7          	rstsa32	t4,t5,t6
 21c:	d2002077          	urstsa32	zero,zero,zero
 220:	d23120f7          	urstsa32	ra,sp,gp
 224:	d31827f7          	urstsa32	a5,a6,a7
 228:	d36aaa77          	urstsa32	s4,s5,s6
 22c:	d3ff2ef7          	urstsa32	t4,t5,t6
 230:	c2002077          	kstsa32	zero,zero,zero
 234:	c23120f7          	kstsa32	ra,sp,gp
 238:	c31827f7          	kstsa32	a5,a6,a7
 23c:	c36aaa77          	kstsa32	s4,s5,s6
 240:	c3ff2ef7          	kstsa32	t4,t5,t6
 244:	e2002077          	ukstsa32	zero,zero,zero
 248:	e23120f7          	ukstsa32	ra,sp,gp
 24c:	e31827f7          	ukstsa32	a5,a6,a7
 250:	e36aaa77          	ukstsa32	s4,s5,s6
 254:	e3ff2ef7          	ukstsa32	t4,t5,t6
