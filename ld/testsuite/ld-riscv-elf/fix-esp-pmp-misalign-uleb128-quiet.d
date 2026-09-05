#name: Espressif PMP misalign, uleb128 report turned off
#source: fix-esp-pmp-misalign-uleb128.s
#as: -march=rv32i -mno-arch-attr
#ld: -m[riscv_choose_ilp32_emul] --fix-esp-pmp-misalign --no-warn-esp-pmp-misalign --fatal-warnings
#objdump: -s -j .debug_rnglists

.*:[ 	]+file format .*

Contents of section \.debug_rnglists:
[ 	]+0000 00[ 	]+.*
