	.section	.rodata.str1.1,"aMS",@progbits,1
.LS0:
	.string	"{\"v\":7}"
	.global	gs
gs:
.LS1:
	.string	"v"

	.text
	.literal .LC0, .LS0+8
	.literal .LC1, .LS1
	.literal .LC2, .LS1
	.literal .LC3, gs
	.align	4
	.global	_start
_start:
	entry	a1, 16
	l32r	a2, .LC0
	l32r	a3, .LC1
	l32r	a4, .LC2
	l32r	a5, .LC3
	retw
