# bfd_relax_section runs from lang_size_sections, which gives an input section
# its output_offset only after relaxing it.  When the call below is measured,
# dest already reports the position the padding above pushed it to while this
# section still reports the previous trip's, so a jump to the instruction just
# ahead of it looks like it spans the whole padded block.  It stays a C.JAL.

	.section	.text.pad, "ax", @progbits
	.rept	600
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	.endr

	.section	.text.dest, "ax", @progbits
	.globl	dest
dest:
	ret

	.section	.text.caller, "ax", @progbits
	.globl	_start
_start:
	call	dest
