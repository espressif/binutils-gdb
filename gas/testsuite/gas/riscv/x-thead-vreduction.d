#as: -march=rv64i_xtheadvreduction
#source: x-thead-vreduction.s
#objdump: -dr

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+c81de00b[ 	]+th.vfredsum.dup.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d010e00b[ 	]+th.vfredsum.dup.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d011600b[ 	]+th.vfredmax.dup.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d011e00b[ 	]+th.vfredmax.dup.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d012600b[ 	]+th.vfredmin.dup.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d012e00b[ 	]+th.vfredmin.dup.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d018600b[ 	]+th.vfredsum.c.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d018e00b[ 	]+th.vfredsum.c.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d019600b[ 	]+th.vfredmax.c.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d019e00b[ 	]+th.vfredmax.c.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d01a600b[ 	]+th.vfredmin.c.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d01ae00b[ 	]+th.vfredmin.c.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d410600b[ 	]+th.vbfredsum.dup.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d410e00b[ 	]+th.vbfredsum.dup.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d411600b[ 	]+th.vbfredmax.dup.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d411e00b[ 	]+th.vbfredmax.dup.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d412600b[ 	]+th.vbfredmin.dup.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d412e00b[ 	]+th.vbfredmin.dup.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d418600b[ 	]+th.vbfredsum.c.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d418e00b[ 	]+th.vbfredsum.c.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d419600b[ 	]+th.vbfredmax.c.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d419e00b[ 	]+th.vbfredmax.c.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d41a600b[ 	]+th.vbfredmin.c.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d41ae00b[ 	]+th.vbfredmin.c.64[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d014600b[ 	]+th.varydup.32[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+d014e00b[ 	]+th.varydup.64[ 	]+v0,v1
