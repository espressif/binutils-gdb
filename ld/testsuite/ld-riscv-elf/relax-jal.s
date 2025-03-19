.section .text.foo
foo:
	nop
	.size foo, . - foo

.section .text.bar
.global bar
bar:
	.rept 512
	call foo
	.endr
	.size bar, . - bar
