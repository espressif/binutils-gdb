#as: -march=rv64i_xtheadvfcvt
#source: x-thead-vfcvt.s
#objdump: -dr

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+ca18600b[ 	]+th.vfncvt.e4.h[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c818600b[ 	]+th.vfncvt.e4.h[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca18e00b[ 	]+th.vfncvt.e5.h[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c818e00b[ 	]+th.vfncvt.e5.h[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca19600b[ 	]+th.vfncvt.e4.bf16[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c819600b[ 	]+th.vfncvt.e4.bf16[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca19e00b[ 	]+th.vfncvt.e5.bf16[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c819e00b[ 	]+th.vfncvt.e5.bf16[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca1be00b[ 	]+th.vfncvt.rod.bf16.s[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c81be00b[ 	]+th.vfncvt.rod.bf16.s[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca1c600b[ 	]+th.vfwcvt.h.e4[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c81c600b[ 	]+th.vfwcvt.h.e4[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca1ce00b[ 	]+th.vfwcvt.h.e5[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c81ce00b[ 	]+th.vfwcvt.h.e5[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca1d600b[ 	]+th.vfwcvt.bf16.e4[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c81d600b[ 	]+th.vfwcvt.bf16.e4[ 	]+v0,v1,v0.t
[ 	]+[0-9a-f]+:[ 	]+ca1de00b[ 	]+th.vfwcvt.bf16.e5[ 	]+v0,v1
[ 	]+[0-9a-f]+:[ 	]+c81de00b[ 	]+th.vfwcvt.bf16.e5[ 	]+v0,v1,v0.t
