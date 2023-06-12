	.file	"simple.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	li	a5,2
	sw	a5,my_a,a4
	li	a5,3
	sw	a5,my_b,a4
	li	a5,5
	sw	a5,my_c,a4
	li	a0,0
	ret
	.size	main, .-main
	.globl	my_c
	.globl	my_b
	.globl	my_a
	.section	.sbss,"aw",@nobits
	.align	2
	.type	my_c, @object
	.size	my_c, 4
my_c:
	.zero	4
	.type	my_b, @object
	.size	my_b, 4
my_b:
	.zero	4
	.type	my_a, @object
	.size	my_a, 4
my_a:
	.zero	4
	.ident	"GCC: (GNU) 9.2.0"
