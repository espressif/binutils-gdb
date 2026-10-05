/* Functions compiled into .text.* input sections.  The test linker
   script places those inputs in output sections that are not named
   .text.  */
void
code_one (void)
{
  volatile int x = 1;
  (void) x;
}

void
code_two (void)
{
  volatile int x = 1;
  (void) x;
}

/* Last text symbol.  Samples here must be credited without reading
   one symbol past the table.  */
void
code_end (void)
{
  volatile int x = 1;
  (void) x;
}

/* Executable bytes without symbols must not extend the symbol below
   them, whether another symbol follows (code_gap) or not (code_stub).  */
__asm__ (".section .text.code_gap,\"ax\"\n"
	 ".byte 0\n"
	 ".byte 0\n"
	 ".previous");

__asm__ (".section .text.code_stub,\"ax\"\n"
	 ".byte 0\n"
	 ".byte 0\n"
	 ".previous");
