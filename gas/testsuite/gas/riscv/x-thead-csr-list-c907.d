#as: -march=rv64imafdc_zicond_xtheadc
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

0000000000000000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+7ca02573[ 	]+csrr[ 	]+a0,mhint2h
[ 	]+[0-9a-f]+:[ 	]+7cb02573[ 	]+csrr[ 	]+a0,mccr2h
