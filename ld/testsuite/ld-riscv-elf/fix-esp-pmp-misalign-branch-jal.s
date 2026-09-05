# gas turns the far branch into an inverted branch over a JAL.  A PMP
# insert then pushes dest past the JAL range, so the linker restores
# AUIPC+JALR and must widen the guard branch skip from 8 to 12: the skip
# is baked into the instruction, so reloc fixups cannot grow it.

	.section	.text.start, "ax", @progbits
	.globl	_start
_start:
	bne	a0, a1, dest

	.section	.text.pad, "ax", @progbits
	.space	0x100000
	lw	a0, 0(a1)
	sw	a0, 0(a2)

	.section	.text.dest, "ax", @progbits
	.globl	dest
dest:
	ret
