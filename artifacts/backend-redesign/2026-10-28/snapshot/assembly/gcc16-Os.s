	.file	"compare.cpp"
	.intel_syntax noprefix
	.text
	.globl	"packed"
	.type	"packed", @function
"packed":
.LFB586:
	.cfi_startproc
	endbr64
	movabs	rdx, 3275364211029340003
	xor	eax, eax
	cmp	QWORD PTR [rdi], rdx
	jne	.L1
	movabs	rax, 7526754601088593268
	cmp	QWORD PTR 6[rdi], rax
	sete	al
.L1:
	ret
	.cfi_endproc
.LFE586:
	.size	"packed", .-"packed"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"content-length"
	.text
	.globl	"plain"
	.type	"plain", @function
"plain":
.LFB587:
	.cfi_startproc
	endbr64
	push	rax
	.cfi_def_cfa_offset 16
	mov	edx, 14
	lea	rsi, .LC0[rip]
	call	"memcmp"@PLT
	pop	rdx
	.cfi_def_cfa_offset 8
	test	eax, eax
	sete	al
	ret
	.cfi_endproc
.LFE587:
	.size	"plain", .-"plain"
	.globl	"words"
	.type	"words", @function
"words":
.LFB588:
	.cfi_startproc
	endbr64
	movabs	rax, 7526754601088593268
	cmp	QWORD PTR 6[rdi], rax
	movabs	rdx, 3275364211029340003
	sete	al
	cmp	QWORD PTR [rdi], rdx
	sete	dl
	and	eax, edx
	ret
	.cfi_endproc
.LFE588:
	.size	"words", .-"words"
	.ident	"GCC: (Gentoo 16.2.1_p20260926 p1) 16.2.1 20260926"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
