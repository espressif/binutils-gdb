# Pass 0 relaxes call to JAL.  Padding plus one PMP insert then pushes
# dest just past the JAL ±1MiB range; the linker must restore AUIPC+JALR.

	.section	.text.start, "ax", @progbits
	.globl	_start
_start:
	call	dest

	.section	.text.pad, "ax", @progbits
	.space	0xfffec
	lw	a0, 0(a1)
	sw	a0, 0(a2)

	.section	.text.dest, "ax", @progbits
	.globl	dest
dest:
	ret
