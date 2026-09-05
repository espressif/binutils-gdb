# The width of the store never mattered, so the Zcb byte and halfword stores
# arm the hazard just as c.sw does.

	.text
	.option rvc
	.globl	_start
_start:
byte_store:
	lw	a0, 0(a1)
	c.sb	a0, 0(a2)

halfword_store:
	lw	a0, 0(a1)
	c.sh	a0, 0(a2)

same_base:
	lw	a0, 0(a1)
	c.sb	a0, 0(a1)
	ret
