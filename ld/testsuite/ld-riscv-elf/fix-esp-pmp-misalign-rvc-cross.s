# Cross-output-section call with --fix-esp-pmp-misalign.
# Inserts can grow PC-relative offsets after pass 0, so the linker must
# keep JAL rather than R_RISCV_RVC_JUMP.

	.section	.text.low, "ax", @progbits
	.option	rvc
	.globl	_start
	.globl	caller
_start:
	.space	0xc00
	.rept	320
	lw	a0, 0(a1)
	addi	a3, a3, 1
	addi	a4, a4, 1
	.endr
caller:
	call	target
	ret

	.section	.text.high, "ax", @progbits
	.globl	target
target:
	ret
