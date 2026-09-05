# Pass 0 shortens the call to C.JAL, then the padding between it and dest
# pushes dest past the ±2KiB C.JAL range, so the linker must widen it to JAL.

	.section	.text.caller, "ax", @progbits
	.option	rvc
	.globl	_start
_start:
	call	dest

	.section	.text.pad, "ax", @progbits
	.rept	400
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr

	.section	.text.dest, "ax", @progbits
	.globl	dest
dest:
	ret
