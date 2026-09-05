OUTPUT_ARCH(riscv)
ENTRY(_start)
MEMORY
{
  iram (rwx) : ORIGIN = 0x10000, LENGTH = 0x100
  loader (rwx) : ORIGIN = 0x10100, LENGTH = 0x100
}
SECTIONS
{
  .text.low : ALIGN(4) { *(.text.low) } > iram
  .text.high : ALIGN(4) { *(.text.high) } > loader
  /DISCARD/ : { *(.riscv.attributes) }
}
