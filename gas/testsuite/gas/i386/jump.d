#name: i386 jump
#objdump: -drw

.*: +file format .*i386.*

Disassembly of section .text:

0+ <.text>:
[ 	]*[a-f0-9]+:	eb fe                	jmp    0x0
[ 	]*[a-f0-9]+:	e9 fc ff ff ff       	jmp    0x3	3: R_386_PC32	xxx
[ 	]*[a-f0-9]+:	ff 25 00 00 00 00    	jmp    \*0x0	9: R_386_32	xxx
[ 	]*[a-f0-9]+:	ff e7                	jmp    \*%edi
[ 	]*[a-f0-9]+:	ff 27                	jmp    \*\(%edi\)
[ 	]*[a-f0-9]+:	ff 2c bd 00 00 00 00 	ljmp   \*0x0\(,%edi,4\)	14: R_386_32	xxx
[ 	]*[a-f0-9]+:	66 ff 2c bd 00 00 00 00 	ljmpw  \*0x0\(,%edi,4\)	1c: R_386_32	xxx
[ 	]*[a-f0-9]+:	ff 2d 00 00 00 00    	ljmp   \*0x0	22: R_386_32	xxx
[ 	]*[a-f0-9]+:	66 ff 2d 00 00 00 00 	ljmpw  \*0x0	29: R_386_32	xxx
[ 	]*[a-f0-9]+:	ea 00 00 00 00 34 12 	ljmp   \$0x1234,\$0x0	2e: R_386_32	xxx
[ 	]*[a-f0-9]+:	e8 c7 ff ff ff       	call   0x0
[ 	]*[a-f0-9]+:	e8 fc ff ff ff       	call   0x3a	3a: R_386_PC32	xxx
[ 	]*[a-f0-9]+:	ff 15 00 00 00 00    	call   \*0x0	40: R_386_32	xxx
[ 	]*[a-f0-9]+:	ff d7                	call   \*%edi
[ 	]*[a-f0-9]+:	ff 17                	call   \*\(%edi\)
[ 	]*[a-f0-9]+:	ff 1c bd 00 00 00 00 	lcall  \*0x0\(,%edi,4\)	4b: R_386_32	xxx
[ 	]*[a-f0-9]+:	66 ff 1c bd 00 00 00 00 	lcallw \*0x0\(,%edi,4\)	53: R_386_32	xxx
[ 	]*[a-f0-9]+:	ff 1d 00 00 00 00    	lcall  \*0x0	59: R_386_32	xxx
[ 	]*[a-f0-9]+:	66 ff 1d 00 00 00 00 	lcallw \*0x0	60: R_386_32	xxx
[ 	]*[a-f0-9]+:	9a 00 00 00 00 34 12 	lcall  \$0x1234,\$0x0	65: R_386_32	xxx
[ 	]*[a-f0-9]+:	66 ff 13             	callw  \*\(%ebx\)
[ 	]*[a-f0-9]+:	ff 13                	call   \*\(%ebx\)
[ 	]*[a-f0-9]+:	ff 1b                	lcall  \*\(%ebx\)
[ 	]*[a-f0-9]+:	66 ff 23             	jmpw   \*\(%ebx\)
[ 	]*[a-f0-9]+:	ff 23                	jmp    \*\(%ebx\)
[ 	]*[a-f0-9]+:	ff 2b                	ljmp   \*\(%ebx\)
#pass
