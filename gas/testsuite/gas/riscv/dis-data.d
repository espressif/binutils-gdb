#as: -mno-arch-attr
#source: dis-data.s
#objdump: -D

.*:[ 	]+file format .*


Disassembly of section .text.byte:

0+000 <.text.byte>:
[ 	]+0:[ 	]+7f[ 	]+.byte[ 	]+0x7f

Disassembly of section .text.short:

0+000 <.text.short>:
[ 	]+0:[ 	]+ef7f[ 	]+.short[ 	]+0xef7f

Disassembly of section .text.3byte:

0+000 <.text.3byte>:
[ 	]+0:[ 	]+03ef7f[ 	]+.3byte[ 	]+0x03ef7f

Disassembly of section .text.word:

0+000 <.text.word>:
[ 	]+0:[ 	]+0403ef7f[ 	]+.insn[ 	]4,[ 	]+0x0403ef7f
