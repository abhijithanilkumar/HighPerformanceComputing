	.file	"question.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%lf"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.section	.text.startup,"ax",@progbits
.LHOTB2:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB60:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$10, %edx
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movslq	%eax, %rbx
	movq	%rax, %r14
	leaq	0(,%rbx,8), %r13
	movq	%r13, %rdi
	call	malloc
	movq	%r13, %rdi
	movq	%rax, %rbp
	call	malloc
	movq	%r13, %rdi
	movq	%rax, %r12
	call	malloc
	movq	%rax, %r13
	movabsq	$72340172838076673, %rax
	movq	%rax, 0(%rbp)
	movabsq	$217020518514230019, %rax
	movq	%rax, (%r12)
	call	clock
	testl	%r14d, %r14d
	movq	%rax, begin(%rip)
	jle	.L10
	movq	%rbp, %rax
	salq	$60, %rax
	shrq	$63, %rax
	cmpq	%rbx, %rax
	cmova	%rbx, %rax
	cmpq	$3, %rbx
	cmovbe	%rbx, %rax
	testq	%rax, %rax
	je	.L4
	movsd	0(%rbp), %xmm0
	cmpq	$1, %rax
	addsd	(%r12), %xmm0
	movsd	%xmm0, 0(%r13)
	je	.L5
	movsd	8(%rbp), %xmm0
	cmpq	$3, %rax
	addsd	8(%r12), %xmm0
	movsd	%xmm0, 8(%r13)
	jne	.L5
	movsd	16(%rbp), %xmm0
	addsd	16(%r12), %xmm0
	movsd	%xmm0, 16(%r13)
.L5:
	cmpq	%rax, %rbx
	je	.L10
.L4:
	subq	%rax, %rbx
	leaq	-2(%rbx), %rdi
	shrq	%rdi
	addq	$1, %rdi
	cmpq	$1, %rbx
	je	.L10
	salq	$3, %rax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	leaq	0(%r13,%rax), %rdx
	addq	%rax, %rbp
	addq	%rax, %r12
.L8:
	movupd	(%r12,%rcx), %xmm0
	addq	$1, %rsi
	addpd	0(%rbp,%rcx), %xmm0
	movups	%xmm0, (%rdx,%rcx)
	addq	$16, %rcx
	cmpq	%rsi, %rdi
	ja	.L8
.L10:
	call	clock
	movq	%rax, end(%rip)
	subq	begin(%rip), %rax
	movl	$.LC1, %esi
	pxor	%xmm0, %xmm0
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	divsd	.LC0(%rip), %xmm0
	call	__printf_chk
	popq	%rbx
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE2:
	.section	.text.startup
.LHOTE2:
	.comm	end,8,8
	.comm	begin,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
