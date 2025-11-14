	.file	"rho_algorithm.cpp"
	.text
	.section .rdata,"dr"
_ZStL6ignore:
	.space 1
_ZStL19piecewise_construct:
	.space 1
	.text
	.globl	_Z11helper_funciii
	.def	_Z11helper_funciii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11helper_funciii
_Z11helper_funciii:
.LFB1761:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	16(%rbp), %eax
	imull	32(%rbp), %eax
	cltd
	idivl	24(%rbp)
	movl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z10checkPrimei
	.def	_Z10checkPrimei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10checkPrimei
_Z10checkPrimei:
.LFB1762:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movl	$2, -4(%rbp)
	jmp	.L6
.L8:
	movl	16(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L5
.L7:
	addl	$1, -4(%rbp)
.L6:
	movl	-4(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L8
	movl	$1, %eax
.L5:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z10computeGCDii
	.def	_Z10computeGCDii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10computeGCDii
_Z10computeGCDii:
.LFB1763:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$0, 16(%rbp)
	jne	.L10
	movl	24(%rbp), %eax
	jmp	.L11
.L10:
	movl	24(%rbp), %eax
	cltd
	idivl	16(%rbp)
	movl	%edx, %ecx
	movl	16(%rbp), %eax
	movl	%eax, %edx
	call	_Z10computeGCDii
	nop
.L11:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z19pollardRhoAlgorithmi
	.def	_Z19pollardRhoAlgorithmi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19pollardRhoAlgorithmi
_Z19pollardRhoAlgorithmi:
.LFB1764:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	$2, -4(%rbp)
	movl	$2, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L13
.L14:
	movl	-16(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	_Z11helper_funciii
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	_Z11helper_funciii
	movl	%eax, %ecx
	movl	-16(%rbp), %edx
	movl	16(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	call	_Z11helper_funciii
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	16(%rbp), %edx
	movl	%eax, %ecx
	call	_Z10computeGCDii
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax
	jne	.L13
	addl	$1, -16(%rbp)
.L13:
	cmpl	$1, -12(%rbp)
	je	.L14
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax
	je	.L14
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Enter a number for Pollard rho factorization\12\0"
.LC1:
	.ascii "pollardRhoFactorization(\0"
.LC2:
	.ascii ")=\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1765:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	movl	$1, -4(%rbp)
	cmpl	$1, 16(%rbp)
	jle	.L17
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, -16(%rbp)
	jmp	.L18
.L17:
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-16(%rbp), %rdx
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSirsERi
.L18:
	cmpl	$2, 16(%rbp)
	jle	.L19
	movq	24(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	atoi
	movl	%eax, -4(%rbp)
.L19:
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L20
.L21:
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	call	_Z19pollardRhoAlgorithmi
	movl	%eax, -8(%rbp)
	addl	$1, -12(%rbp)
.L20:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L21
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
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
