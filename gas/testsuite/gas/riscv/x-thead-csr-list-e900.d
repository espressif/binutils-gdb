#as: -march=rv32imac_zicsr_xtheade
#objdump: -dr

.*:[ 	]+file format .*


Disassembly of section .text:

00000000 <.text>:
[ 	]+[0-9a-f]+:[ 	]+35002573[ 	]+csrr[ 	]+a0,mclicbase
[ 	]+[0-9a-f]+:[ 	]+be002573[ 	]+csrr[ 	]+a0,mebr
[ 	]+[0-9a-f]+:[ 	]+be102573[ 	]+csrr[ 	]+a0,nt_mstatus
[ 	]+[0-9a-f]+:[ 	]+be302573[ 	]+csrr[ 	]+a0,nt_mtvec
[ 	]+[0-9a-f]+:[ 	]+be202573[ 	]+csrr[ 	]+a0,nt_mie
[ 	]+[0-9a-f]+:[ 	]+be402573[ 	]+csrr[ 	]+a0,nt_mtvt
[ 	]+[0-9a-f]+:[ 	]+be502573[ 	]+csrr[ 	]+a0,nt_mepc
[ 	]+[0-9a-f]+:[ 	]+be602573[ 	]+csrr[ 	]+a0,nt_mcause
[ 	]+[0-9a-f]+:[ 	]+be702573[ 	]+csrr[ 	]+a0,nt_mip
[ 	]+[0-9a-f]+:[ 	]+be802573[ 	]+csrr[ 	]+a0,nt_mintstate
[ 	]+[0-9a-f]+:[ 	]+be902573[ 	]+csrr[ 	]+a0,nt_mxstatus
[ 	]+[0-9a-f]+:[ 	]+bea02573[ 	]+csrr[ 	]+a0,nt_mebr
[ 	]+[0-9a-f]+:[ 	]+beb02573[ 	]+csrr[ 	]+a0,nt_msp
[ 	]+[0-9a-f]+:[ 	]+bec02573[ 	]+csrr[ 	]+a0,t_usp
[ 	]+[0-9a-f]+:[ 	]+bed02573[ 	]+csrr[ 	]+a0,t_mdcr
[ 	]+[0-9a-f]+:[ 	]+bee02573[ 	]+csrr[ 	]+a0,t_mpcr
[ 	]+[0-9a-f]+:[ 	]+bef02573[ 	]+csrr[ 	]+a0,pmpteecfg
