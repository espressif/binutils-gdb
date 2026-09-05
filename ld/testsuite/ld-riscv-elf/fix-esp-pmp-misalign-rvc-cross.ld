/* Two fixed-VMA code regions, like ESP-IDF bootloader iram vs iram_loader.
   PMP NOP deletion in the low region must not be allowed to turn a
   cross-region call into an out-of-range C.JAL.  */
OUTPUT_ARCH(riscv)
ENTRY(_start)
MEMORY
{
  iram (rwx) : ORIGIN = 0x10000, LENGTH = 0x2000
  loader (rwx) : ORIGIN = 0x12000, LENGTH = 0x1000
}
SECTIONS
{
  .text.low : ALIGN(4) { *(.text.low) } > iram
  .text.high : ALIGN(4) { *(.text.high) } > loader
  /DISCARD/ : { *(.riscv.attributes) }
}
