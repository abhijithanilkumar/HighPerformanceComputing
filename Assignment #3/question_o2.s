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
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$10, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rsi), %rdi
	xorl	%esi, %esi
	call	strtol
	movslq	%eax, %rbx
	leaq	0(,%rbx,8), %r13
	movq	%r13, %rdi
	call	malloc
	movq	%r13, %rdi
	movq	%rax, %r12
	call	malloc
	movq	%r13, %rdi
	movq	%rax, %rbp
	call	malloc
	movq	%rax, %r13
	movabsq	$72340172838076673, %rax
	movq	%rax, (%r12)
	movabsq	$217020518514230019, %rax
	movq	%rax, 0(%rbp)
	call	clock
	testq	%rbx, %rbx
	movq	%rax, begin(%rip)
	jle	.L4
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L5:
	movsd	(%r12,%rdx,8), %xmm0
	addsd	0(%rbp,%rdx,8), %xmm0
	movsd	%xmm0, 0(%r13,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rbx
	jg	.L5
.L4:
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
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
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