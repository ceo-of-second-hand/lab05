	.file	"prime_divisor.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1525:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4
	.globl	_Z11helper_funciii
	.def	_Z11helper_funciii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11helper_funciii
_Z11helper_funciii:
.LFB1774:
	.seh_endprologue
	movl	%ecx, %eax
	movl	%edx, %r9d
	imull	%r8d, %eax
	cltd
	idivl	%r9d
	movl	%edx, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z10checkPrimei
	.def	_Z10checkPrimei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10checkPrimei
_Z10checkPrimei:
.LFB1775:
	.seh_endprologue
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	.L4
	cmpl	$2, %ecx
	jle	.L8
	movl	$2, %r8d
	jmp	.L6
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L12:
	addl	$1, %r8d
	cmpl	%r8d, %ecx
	je	.L8
.L6:
	movl	%ecx, %eax
	cltd
	idivl	%r8d
	testl	%edx, %edx
	jne	.L12
	xorl	%eax, %eax
.L4:
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movl	$1, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z10computeGCDii
	.def	_Z10computeGCDii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10computeGCDii
_Z10computeGCDii:
.LFB1776:
	.seh_endprologue
	movl	%edx, %eax
	testl	%ecx, %ecx
	jne	.L14
	jmp	.L21
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L22:
	movl	%edx, %ecx
.L14:
	cltd
	idivl	%ecx
	movl	%ecx, %eax
	testl	%edx, %edx
	jne	.L22
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	movl	%edx, %ecx
	movl	%ecx, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z16findPrimeDivisori
	.def	_Z16findPrimeDivisori;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z16findPrimeDivisori
_Z16findPrimeDivisori:
.LFB1777:
	.seh_endprologue
	cmpl	$2, %ecx
	jle	.L28
	movl	$2, %r9d
	testb	$1, %cl
	je	.L23
	.p2align 5
	.p2align 4
	.p2align 3
.L27:
	addl	$1, %r9d
	cmpl	%r9d, %ecx
	je	.L23
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	testl	%edx, %edx
	jne	.L27
	movl	$2, %r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L26:
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	testl	%edx, %edx
	je	.L27
	addl	$1, %r8d
	cmpl	%r9d, %r8d
	jne	.L26
.L23:
	movl	%r9d, %eax
	ret
.L28:
	movl	%ecx, %r9d
	jmp	.L23
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Enter a number for simple factorization\12\0"
.LC1:
	.ascii "simpleFactorization(\0"
.LC2:
	.ascii ")=\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1778:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	%ecx, %ebx
	movq	%rdx, %rsi
	call	__main
	cmpl	$1, %ebx
	jle	.L37
	movq	8(%rsi), %rcx
	call	atoi
	movl	%eax, 44(%rsp)
	cmpl	$2, %ebx
	je	.L64
	movq	16(%rsi), %rcx
	call	atoi
	movl	%eax, %r10d
	testl	%eax, %eax
	jle	.L52
	movq	.refptr._ZSt4cout(%rip), %rsi
.L39:
	movl	44(%rsp), %ebx
	xorl	%r9d, %r9d
	movl	%ebx, %r11d
	andl	$1, %r11d
	cmpl	$2, %ebx
	jle	.L41
	.p2align 4
	.p2align 3
.L47:
	testl	%r11d, %r11d
	jne	.L54
.L62:
	addl	$1, %r9d
	cmpl	%r9d, %r10d
	jne	.L62
	movl	$2, %ebx
	jmp	.L41
.L64:
	movq	.refptr._ZSt4cout(%rip), %rsi
.L40:
	movl	$1, %r10d
	jmp	.L39
.L54:
	movl	$2, %r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L48:
	addl	$1, %r8d
	cmpl	%r8d, %ebx
	je	.L65
	movl	%ebx, %eax
	cltd
	idivl	%r8d
	testl	%edx, %edx
	jne	.L48
	movl	$2, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
.L45:
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L48
	addl	$1, %ecx
	cmpl	%ecx, %r8d
	jne	.L45
	addl	$1, %r9d
	cmpl	%r9d, %r10d
	jne	.L47
	movl	%r8d, %ebx
.L41:
	movl	$20, %r8d
	movq	%rsi, %rcx
	leaq	.LC1(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	44(%rsp), %edx
	movq	%rsi, %rcx
	call	_ZNSolsEi
	movl	$2, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	%ebx, %edx
	movq	%rsi, %rcx
	call	_ZNSolsEi
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L66
	cmpb	$0, 56(%rbx)
	je	.L50
	movzbl	67(%rbx), %eax
.L51:
	movsbl	%al, %edx
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	addl	$1, %r9d
	cmpl	%r9d, %r10d
	jne	.L47
	jmp	.L41
.L50:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %r8
	movl	$10, %eax
	cmpq	%rdx, %r8
	je	.L51
	movl	$10, %edx
	movq	%rbx, %rcx
	call	*%r8
	jmp	.L51
.L37:
	movq	.refptr._ZSt4cout(%rip), %rsi
	movl	$40, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt3cin(%rip), %rcx
	leaq	44(%rsp), %rdx
	call	_ZNSirsERi
	jmp	.L40
.L52:
	movq	.refptr._ZSt4cout(%rip), %rsi
	xorl	%ebx, %ebx
	jmp	.L41
.L66:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
