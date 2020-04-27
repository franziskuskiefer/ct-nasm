	.text
	.file	"div.7rcbfp3g-cgu.0"
	.section	.text._ZN3std2rt10lang_start17hfbf399e3200c117dE,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hfbf399e3200c117dE
	.globl	_ZN3std2rt10lang_start17hfbf399e3200c117dE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17hfbf399e3200c117dE,@function
_ZN3std2rt10lang_start17hfbf399e3200c117dE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	leaq	.L__unnamed_1(%rip), %rax
	movq	%rdi, 32(%rsp)
	leaq	32(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rsi, 24(%rsp)
	movq	%rax, %rsi
	movq	24(%rsp), %rax
	movq	%rdx, 16(%rsp)
	movq	%rax, %rdx
	movq	16(%rsp), %rcx
	callq	*_ZN3std2rt19lang_start_internal17h9cf8802361ad86c2E@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std2rt10lang_start17hfbf399e3200c117dE, .Lfunc_end0-_ZN3std2rt10lang_start17hfbf399e3200c117dE
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*(%rdi)
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba1f6d237e7131c0E
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE, .Lfunc_end1-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE
	.cfi_endproc

	.section	.text._ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04d215f2d21332a3E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04d215f2d21332a3E,@function
_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04d215f2d21332a3E:
	.cfi_startproc
	movzbl	(%rdi), %eax
	retq
.Lfunc_end2:
	.size	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04d215f2d21332a3E, .Lfunc_end2-_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04d215f2d21332a3E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h93fe0f1b6673dc3fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h93fe0f1b6673dc3fE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h93fe0f1b6673dc3fE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17hc980de0c0a426179E
	movl	%eax, 12(%rsp)
	movl	12(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h93fe0f1b6673dc3fE, .Lfunc_end3-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h93fe0f1b6673dc3fE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hc980de0c0a426179E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hc980de0c0a426179E,@function
_ZN4core3ops8function6FnOnce9call_once17hc980de0c0a426179E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB4_1
.LBB4_1:
	jmp	.LBB4_2
.LBB4_2:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB4_3:
	.cfi_def_cfa_offset 48
	jmp	.LBB4_4
.LBB4_4:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
	ud2
.LBB4_5:
.Ltmp2:
	movq	%rax, 24(%rsp)
	movl	%edx, 32(%rsp)
	jmp	.LBB4_3
.Lfunc_end4:
	.size	_ZN4core3ops8function6FnOnce9call_once17hc980de0c0a426179E, .Lfunc_end4-_ZN4core3ops8function6FnOnce9call_once17hc980de0c0a426179E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table4:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end4-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17hc9eee98e696f3902E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17hc9eee98e696f3902E,@function
_ZN4core3ptr13drop_in_place17hc9eee98e696f3902E:
	.cfi_startproc
	retq
.Lfunc_end5:
	.size	_ZN4core3ptr13drop_in_place17hc9eee98e696f3902E, .Lfunc_end5-_ZN4core3ptr13drop_in_place17hc9eee98e696f3902E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba1f6d237e7131c0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba1f6d237e7131c0E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba1f6d237e7131c0E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h952917ea561b3fc8E
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba1f6d237e7131c0E, .Lfunc_end6-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hba1f6d237e7131c0E
	.cfi_endproc

	.section	".text._ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h952917ea561b3fc8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h952917ea561b3fc8E,@function
_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h952917ea561b3fc8E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	%dil, 7(%rsp)
	leaq	7(%rsp), %rdi
	callq	_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h04d215f2d21332a3E
	movl	%eax, (%rsp)
	movl	(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h952917ea561b3fc8E, .Lfunc_end7-_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h952917ea561b3fc8E
	.cfi_endproc

	.section	.text._ZN3div4main17h578aabc7b86af36bE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3div4main17h578aabc7b86af36bE,@function
_ZN3div4main17h578aabc7b86af36bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	.L__unnamed_2(%rip), %rdi
	callq	*_ZN4test16test_main_static17h24e8d0166fc2ac54E@GOTPCREL(%rip)
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN3div4main17h578aabc7b86af36bE, .Lfunc_end8-_ZN3div4main17h578aabc7b86af36bE
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movslq	%edi, %rax
	leaq	_ZN3div4main17h578aabc7b86af36bE(%rip), %rdi
	movq	%rsi, (%rsp)
	movq	%rax, %rsi
	movq	(%rsp), %rdx
	callq	_ZN3std2rt10lang_start17hfbf399e3200c117dE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	_ZN4core3ptr13drop_in_place17hc9eee98e696f3902E
	.quad	8
	.quad	8
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h5ec050cb63b3e72eE
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h93fe0f1b6673dc3fE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_3,@object
	.section	.rodata..L__unnamed_3,"a",@progbits
	.p2align	3
.L__unnamed_3:
	.size	.L__unnamed_3, 0

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	.L__unnamed_3
	.size	.L__unnamed_2, 8

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality

	.section	".note.GNU-stack","",@progbits
