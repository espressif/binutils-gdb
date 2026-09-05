#name: Espressif PMP misalign, uleb128 difference no longer fits
#source: fix-esp-pmp-misalign-uleb128.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign
#warning: \.debug_rnglists\+0x0\): warning: final size of uleb128 value exceeds available space after Espressif PMP misalign NOP insertion, leaving the section out of the link
#objdump: -s -j .debug_rnglists

.*:[ 	]+file format .*

Contents of section \.debug_rnglists:
[ 	]+0000 00[ 	]+.*
