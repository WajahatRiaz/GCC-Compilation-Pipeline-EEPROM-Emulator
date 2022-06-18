	.file	"other.c"
	.text
	.globl	_average
	.def	_average;	.scl	2;	.type	32;	.endef
_average:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	fildl	-20(%ebp)
	fldl	LC0
	fdivrp	%st, %st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	1073741824
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
