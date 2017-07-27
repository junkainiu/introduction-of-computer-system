	.file	"act3.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"usage: %s num1 num2\n"
.LC1:
	.string	"good args!"
.LC2:
	.string	"bad numbers, try harder!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, %rbx
	cmpl	$3, %edi
	je	.L2
	movq	(%rsi), %rdx
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	$-1, %edi
	call	exit
.L2:
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
	movq	%rax, %rbp
	movq	16(%rbx), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
	movl	%eax, %esi
	movl	%ebp, %edi
	call	compare
	cmpl	$1, %eax
	jne	.L3
	movl	$.LC1, %edi
	call	puts
	jmp	.L4
.L3:
	movl	$.LC2, %edi
	call	puts
.L4:
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
