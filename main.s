	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	call	___main
	movb	$58, 20(%esp)
	movb	$38, 21(%esp)
	movb	$39, 22(%esp)
	movb	$8, 23(%esp)
	leal	28(%esp), %eax
	movl	%eax, 32(%esp)
	movl	$0, 44(%esp)
	movl	$0, 40(%esp)
	jmp	L2
L3:
	leal	20(%esp), %edx
	movl	40(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	44(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_write
	addl	$1, 44(%esp)
	addl	$1, 40(%esp)
L2:
	cmpl	$3, 40(%esp)
	jle	L3
	movl	$0, 44(%esp)
	movl	$0, 36(%esp)
	jmp	L4
L5:
	leal	24(%esp), %edx
	movl	36(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	44(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_read
	addl	$1, 44(%esp)
	addl	$1, 36(%esp)
L4:
	cmpl	$3, 36(%esp)
	jle	L5
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_write;	.scl	2;	.type	32;	.endef
	.def	_read;	.scl	2;	.type	32;	.endef
