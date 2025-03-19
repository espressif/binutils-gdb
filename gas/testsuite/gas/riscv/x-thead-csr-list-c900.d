#as: -march=rv64imafdc_zfh_xtheadc
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0000000000000000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+5e202573[ 	]+csrr[ 	]+a0,shpmcounter2
