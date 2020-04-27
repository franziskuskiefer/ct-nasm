	.text
	.file	"mul-test.c"
	.globl	run                     # -- Begin function run
	.p2align	4, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movl	%edi, %ebp
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	leaq	.L.str(%rip), %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	printf@PLT              # TAILCALL
.Lfunc_end0:
	.size	run, .Lfunc_end0-run
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	leaq	.L.str(%rip), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, %rbx
	callq	clock@PLT
	subq	%rbx, %rax
	movq	%r14, %rdi
	movl	$2, %esi
	movl	$2, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%u*%u took %lu XXX to execute \n"
	.size	.L.str, 32


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
