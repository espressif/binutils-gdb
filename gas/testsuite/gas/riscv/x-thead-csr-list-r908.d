#as: -march=rv32imac_zicsr_xtheadfpp -mcsr-check
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

00000000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+bc002573[ 	]+csrr[ 	]+a0,mfppcr
