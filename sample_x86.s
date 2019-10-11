	.file	"composite_number.c"
	.text
	.globl	main
	.type	main, @function
main:
	movl	$2, %ecx
	movl	$94, %esi
	jmp	.L2
.L4:
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L3
	cmpl	$94, %ecx
	je	.L3
	addl	$1, %edi
.L3:
	addl	$1, %ecx
.L2:
	cmpl	$9, %ecx
	jle	.L4
	testl	%edi, %edi
	jle	.L6
	movl	$1, %eax
	ret
.L6:
	movl	$0, %eax
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
