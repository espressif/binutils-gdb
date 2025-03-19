#as: -march=rv64i_xtheadlpw
#source: x-thead-lpw.s
#objdump: -dr

.*:[ 	]+file format .*

Disassembly of section .text:

0+000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+01c0000b[ 	]+th.wfe
