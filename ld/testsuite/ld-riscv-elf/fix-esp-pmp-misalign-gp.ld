SECTIONS
{
  .text 0x10000 : { *(.text) }
  .data 0x20000 :
  {
    *(.data)
    __global_pointer$ = .;
  }
}
