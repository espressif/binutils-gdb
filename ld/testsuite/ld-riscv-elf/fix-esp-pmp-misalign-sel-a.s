# This object is not named on the command line, so it keeps its hazard.
	.text
	.option norvc
	.globl	from_a
from_a:
	lw	a0, 0(a1)
	sw	a0, 0(a2)
	ret
