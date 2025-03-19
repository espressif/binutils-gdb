#as: -march=rv64imap
#objdump: -d

tmpdir/p-simd-16bit-add-sub.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <simd_16bit_add16>:
   0:	40000077          	add16	zero,zero,zero
   4:	403100f7          	add16	ra,sp,gp
   8:	411807f7          	add16	a5,a6,a7
   c:	416a8a77          	add16	s4,s5,s6
  10:	41ff0ef7          	add16	t4,t5,t6
  14:	00000077          	radd16	zero,zero,zero
  18:	003100f7          	radd16	ra,sp,gp
  1c:	011807f7          	radd16	a5,a6,a7
  20:	016a8a77          	radd16	s4,s5,s6
  24:	01ff0ef7          	radd16	t4,t5,t6
  28:	20000077          	uradd16	zero,zero,zero
  2c:	203100f7          	uradd16	ra,sp,gp
  30:	211807f7          	uradd16	a5,a6,a7
  34:	216a8a77          	uradd16	s4,s5,s6
  38:	21ff0ef7          	uradd16	t4,t5,t6
  3c:	10000077          	kadd16	zero,zero,zero
  40:	103100f7          	kadd16	ra,sp,gp
  44:	111807f7          	kadd16	a5,a6,a7
  48:	116a8a77          	kadd16	s4,s5,s6
  4c:	11ff0ef7          	kadd16	t4,t5,t6
  50:	30000077          	ukadd16	zero,zero,zero
  54:	303100f7          	ukadd16	ra,sp,gp
  58:	311807f7          	ukadd16	a5,a6,a7
  5c:	316a8a77          	ukadd16	s4,s5,s6
  60:	31ff0ef7          	ukadd16	t4,t5,t6

0000000000000064 <simd_16bit_sub16>:
  64:	42000077          	sub16	zero,zero,zero
  68:	423100f7          	sub16	ra,sp,gp
  6c:	431807f7          	sub16	a5,a6,a7
  70:	436a8a77          	sub16	s4,s5,s6
  74:	43ff0ef7          	sub16	t4,t5,t6
  78:	02000077          	rsub16	zero,zero,zero
  7c:	023100f7          	rsub16	ra,sp,gp
  80:	031807f7          	rsub16	a5,a6,a7
  84:	036a8a77          	rsub16	s4,s5,s6
  88:	03ff0ef7          	rsub16	t4,t5,t6
  8c:	22000077          	ursub16	zero,zero,zero
  90:	223100f7          	ursub16	ra,sp,gp
  94:	231807f7          	ursub16	a5,a6,a7
  98:	236a8a77          	ursub16	s4,s5,s6
  9c:	23ff0ef7          	ursub16	t4,t5,t6
  a0:	12000077          	ksub16	zero,zero,zero
  a4:	123100f7          	ksub16	ra,sp,gp
  a8:	131807f7          	ksub16	a5,a6,a7
  ac:	136a8a77          	ksub16	s4,s5,s6
  b0:	13ff0ef7          	ksub16	t4,t5,t6
  b4:	32000077          	uksub16	zero,zero,zero
  b8:	323100f7          	uksub16	ra,sp,gp
  bc:	331807f7          	uksub16	a5,a6,a7
  c0:	336a8a77          	uksub16	s4,s5,s6
  c4:	33ff0ef7          	uksub16	t4,t5,t6

00000000000000c8 <simd_16bit_cras16>:
  c8:	44000077          	cras16	zero,zero,zero
  cc:	443100f7          	cras16	ra,sp,gp
  d0:	451807f7          	cras16	a5,a6,a7
  d4:	456a8a77          	cras16	s4,s5,s6
  d8:	45ff0ef7          	cras16	t4,t5,t6
  dc:	04000077          	rcras16	zero,zero,zero
  e0:	043100f7          	rcras16	ra,sp,gp
  e4:	051807f7          	rcras16	a5,a6,a7
  e8:	056a8a77          	rcras16	s4,s5,s6
  ec:	05ff0ef7          	rcras16	t4,t5,t6
  f0:	24000077          	urcras16	zero,zero,zero
  f4:	243100f7          	urcras16	ra,sp,gp
  f8:	251807f7          	urcras16	a5,a6,a7
  fc:	256a8a77          	urcras16	s4,s5,s6
 100:	25ff0ef7          	urcras16	t4,t5,t6
 104:	14000077          	kcras16	zero,zero,zero
 108:	143100f7          	kcras16	ra,sp,gp
 10c:	151807f7          	kcras16	a5,a6,a7
 110:	156a8a77          	kcras16	s4,s5,s6
 114:	15ff0ef7          	kcras16	t4,t5,t6
 118:	34000077          	ukcras16	zero,zero,zero
 11c:	343100f7          	ukcras16	ra,sp,gp
 120:	351807f7          	ukcras16	a5,a6,a7
 124:	356a8a77          	ukcras16	s4,s5,s6
 128:	35ff0ef7          	ukcras16	t4,t5,t6

000000000000012c <simd_16bit_crsa16>:
 12c:	46000077          	crsa16	zero,zero,zero
 130:	463100f7          	crsa16	ra,sp,gp
 134:	471807f7          	crsa16	a5,a6,a7
 138:	476a8a77          	crsa16	s4,s5,s6
 13c:	47ff0ef7          	crsa16	t4,t5,t6
 140:	06000077          	rcrsa16	zero,zero,zero
 144:	063100f7          	rcrsa16	ra,sp,gp
 148:	071807f7          	rcrsa16	a5,a6,a7
 14c:	076a8a77          	rcrsa16	s4,s5,s6
 150:	07ff0ef7          	rcrsa16	t4,t5,t6
 154:	26000077          	urcrsa16	zero,zero,zero
 158:	263100f7          	urcrsa16	ra,sp,gp
 15c:	271807f7          	urcrsa16	a5,a6,a7
 160:	276a8a77          	urcrsa16	s4,s5,s6
 164:	27ff0ef7          	urcrsa16	t4,t5,t6
 168:	16000077          	kcrsa16	zero,zero,zero
 16c:	163100f7          	kcrsa16	ra,sp,gp
 170:	171807f7          	kcrsa16	a5,a6,a7
 174:	176a8a77          	kcrsa16	s4,s5,s6
 178:	17ff0ef7          	kcrsa16	t4,t5,t6
 17c:	36000077          	ukcrsa16	zero,zero,zero
 180:	363100f7          	ukcrsa16	ra,sp,gp
 184:	371807f7          	ukcrsa16	a5,a6,a7
 188:	376a8a77          	ukcrsa16	s4,s5,s6
 18c:	37ff0ef7          	ukcrsa16	t4,t5,t6

0000000000000190 <simd_16bit_stas16>:
 190:	f4002077          	stas16	zero,zero,zero
 194:	f43120f7          	stas16	ra,sp,gp
 198:	f51827f7          	stas16	a5,a6,a7
 19c:	f56aaa77          	stas16	s4,s5,s6
 1a0:	f5ff2ef7          	stas16	t4,t5,t6
 1a4:	b4002077          	rstas16	zero,zero,zero
 1a8:	b43120f7          	rstas16	ra,sp,gp
 1ac:	b51827f7          	rstas16	a5,a6,a7
 1b0:	b56aaa77          	rstas16	s4,s5,s6
 1b4:	b5ff2ef7          	rstas16	t4,t5,t6
 1b8:	d4002077          	urstas16	zero,zero,zero
 1bc:	d43120f7          	urstas16	ra,sp,gp
 1c0:	d51827f7          	urstas16	a5,a6,a7
 1c4:	d56aaa77          	urstas16	s4,s5,s6
 1c8:	d5ff2ef7          	urstas16	t4,t5,t6
 1cc:	c4002077          	kstas16	zero,zero,zero
 1d0:	c43120f7          	kstas16	ra,sp,gp
 1d4:	c51827f7          	kstas16	a5,a6,a7
 1d8:	c56aaa77          	kstas16	s4,s5,s6
 1dc:	c5ff2ef7          	kstas16	t4,t5,t6
 1e0:	e4002077          	ukstas16	zero,zero,zero
 1e4:	e43120f7          	ukstas16	ra,sp,gp
 1e8:	e51827f7          	ukstas16	a5,a6,a7
 1ec:	e56aaa77          	ukstas16	s4,s5,s6
 1f0:	e5ff2ef7          	ukstas16	t4,t5,t6

00000000000001f4 <simd_16bit_stsa16>:
 1f4:	f6002077          	stsa16	zero,zero,zero
 1f8:	f63120f7          	stsa16	ra,sp,gp
 1fc:	f71827f7          	stsa16	a5,a6,a7
 200:	f76aaa77          	stsa16	s4,s5,s6
 204:	f7ff2ef7          	stsa16	t4,t5,t6
 208:	b6002077          	rstsa16	zero,zero,zero
 20c:	b63120f7          	rstsa16	ra,sp,gp
 210:	b71827f7          	rstsa16	a5,a6,a7
 214:	b76aaa77          	rstsa16	s4,s5,s6
 218:	b7ff2ef7          	rstsa16	t4,t5,t6
 21c:	d6002077          	urstsa16	zero,zero,zero
 220:	d63120f7          	urstsa16	ra,sp,gp
 224:	d71827f7          	urstsa16	a5,a6,a7
 228:	d76aaa77          	urstsa16	s4,s5,s6
 22c:	d7ff2ef7          	urstsa16	t4,t5,t6
 230:	c6002077          	kstsa16	zero,zero,zero
 234:	c63120f7          	kstsa16	ra,sp,gp
 238:	c71827f7          	kstsa16	a5,a6,a7
 23c:	c76aaa77          	kstsa16	s4,s5,s6
 240:	c7ff2ef7          	kstsa16	t4,t5,t6
 244:	e6002077          	ukstsa16	zero,zero,zero
 248:	e63120f7          	ukstsa16	ra,sp,gp
 24c:	e71827f7          	ukstsa16	a5,a6,a7
 250:	e76aaa77          	ukstsa16	s4,s5,s6
 254:	e7ff2ef7          	ukstsa16	t4,t5,t6
