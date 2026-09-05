	.section	.text.low, "ax", @progbits
	.option	rvc
	.globl	_start
_start:
	call	target
	ret

	.section	.text.high, "ax", @progbits
	.globl	target
target:
	ret
