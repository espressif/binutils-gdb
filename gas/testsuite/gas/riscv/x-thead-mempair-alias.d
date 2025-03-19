#as: -march=rv64gc_xtheadmempair
#source: x-thead-mempair-alias.s
#objdump: -dr

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <target>:
[ 	]+[0-9a-f]+:[ 	]+f8f5c70b[ 	]+th.ldd[ 	]+a4,a5,\(a1\),0,4
[ 	]+[0-9a-f]+:[ 	]+e0f5c70b[ 	]+th.lwd[ 	]+a4,a5,\(a1\),0,3
[ 	]+[0-9a-f]+:[ 	]+f0f5c70b[ 	]+th.lwud[ 	]+a4,a5,\(a1\),0,3
[ 	]+[0-9a-f]+:[ 	]+f8f5d70b[ 	]+th.sdd[ 	]+a4,a5,\(a1\),0,4
[ 	]+[0-9a-f]+:[ 	]+e0f5d70b[ 	]+th.swd[ 	]+a4,a5,\(a1\),0,3
[ 	]+[0-9a-f]+:[ 	]+f8f5c70b[ 	]+th.ldd[ 	]+a4,a5,\(a1\),0,4
[ 	]+[0-9a-f]+:[ 	]+e0f5c70b[ 	]+th.lwd[ 	]+a4,a5,\(a1\),0,3
[ 	]+[0-9a-f]+:[ 	]+f0f5c70b[ 	]+th.lwud[ 	]+a4,a5,\(a1\),0,3
[ 	]+[0-9a-f]+:[ 	]+f8f5d70b[ 	]+th.sdd[ 	]+a4,a5,\(a1\),0,4
[ 	]+[0-9a-f]+:[ 	]+e0f5d70b[ 	]+th.swd[ 	]+a4,a5,\(a1\),0,3