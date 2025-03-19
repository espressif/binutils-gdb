#as: -march=rv64gc_xxtccef
#objdump: -d

.*:[ 	]+file format .*


Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+4001402b[ 	]+fcpx0[ 	]+1,ft2
[ 	]+[0-9a-f]+:[ 	]+400151ab[ 	]+fcpx1[ 	]+1,ft3,ft2
[ 	]+[0-9a-f]+:[ 	]+4211402b[ 	]+fcpx2[ 	]+1,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+421151ab[ 	]+fcpx3[ 	]+1,ft3,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+441141ab[ 	]+fcpx4[ 	]+1,ft3,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+441151ab[ 	]+fcpx5[ 	]+1,ft3,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+461451ab[ 	]+fcpx6[ 	]+1,ft3,ft1,8
[ 	]+[0-9a-f]+:[ 	]+4001402b[ 	]+fcpx0[ 	]+1,ft2
[ 	]+[0-9a-f]+:[ 	]+400151ab[ 	]+fcpx1[ 	]+1,ft3,ft2
[ 	]+[0-9a-f]+:[ 	]+4211402b[ 	]+fcpx2[ 	]+1,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+421151ab[ 	]+fcpx3[ 	]+1,ft3,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+441141ab[ 	]+fcpx4[ 	]+1,ft3,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+441151ab[ 	]+fcpx5[ 	]+1,ft3,ft2,ft1
[ 	]+[0-9a-f]+:[ 	]+461451ab[ 	]+fcpx6[ 	]+1,ft3,ft1,8
