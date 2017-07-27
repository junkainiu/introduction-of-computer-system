	.file	"act2.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"15213"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	movslq	%edi, %rdi
	movq	-8(%rsi,%rdi,8), %rsi
	movl	$.LC0, %edi
	call	stc
	movq	$0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
