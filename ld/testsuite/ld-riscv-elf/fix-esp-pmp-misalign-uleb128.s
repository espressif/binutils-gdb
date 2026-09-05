# The inserts double the length of the padded code, so the difference the
# assembler encoded in the one uleb128 byte it left room for no longer fits.

	.text
	.option norvc
	.globl	_start
_start:
.Lstart:
	.rept	15
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr
.Lend:
	ret

	.section	.debug_rnglists,"",@progbits
	.uleb128	.Lend-.Lstart
