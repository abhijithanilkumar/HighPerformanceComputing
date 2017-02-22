	.file	"question.c"
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
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	memset
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	memset
	call	clock
	movq	%rax, begin(%rip)
	movq	$0, -48(%rbp)
	jmp	.L2
.L3:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm1
	movq	-48(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addq	$1, -48(%rbp)
.L2:
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L3
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
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	movl	$.LC1, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
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
