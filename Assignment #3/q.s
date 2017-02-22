	.file	"question_unroll.c"
	.comm	begin,8,8
	.comm	end,8,8
	.section	.rodata
.LC1:
	.string	"%lf"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240064, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$10000, -240032(%rbp)
	leaq	-240016(%rbp), %rax
	movl	$80000, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-160016(%rbp), %rax
	movl	$80000, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	memset
	call	clock
	movq	%rax, begin(%rip)
	movq	$0, -240040(%rbp)
	jmp	.L2
.L3:
	movq	-240040(%rbp), %rax
	movsd	-240016(%rbp,%rax,8), %xmm1
	movq	-240040(%rbp), %rax
	movsd	-160016(%rbp,%rax,8), %xmm0
	addsd	%xmm1, %xmm0
	movq	-240040(%rbp), %rax
	movsd	%xmm0, -80016(%rbp,%rax,8)
	addq	$1, -240040(%rbp)
.L2:
	cmpq	$9999, -240040(%rbp)
	jle	.L3
	call	clock
	movq	%rax, end(%rip)
	movq	end(%rip), %rdx
	movq	begin(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -240024(%rbp)
	movq	-240024(%rbp), %rax
	movq	%rax, -240056(%rbp)
	movsd	-240056(%rbp), %xmm0
	movl	$.LC1, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
