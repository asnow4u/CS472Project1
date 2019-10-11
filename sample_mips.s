	.file	1 "composite_number.c"
	.section .mdebug.abiN32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.ent	main
	.type	main, @function
main:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,2			# 0x2
	.option	pic0
	j	.L2
	.option	pic2
	li	$3,94			# 0x5e

.L4:
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$4
	bnel	$4,$0,.L2
	addiu	$2,$2,1

	bnel	$2,$3,.L3
	addiu	$5,$5,1

.L3:
	addiu	$2,$2,1
.L2:
	slt	$4,$2,10
	bne	$4,$0,.L4
	nop

	blez	$5,.L6
	nop

	j	$31
	li	$2,1			# 0x1

.L6:
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
