	.file	"compare.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	"packed"
	.type	"packed", @function
"packed":
.LFB591:
	.cfi_startproc
	endbr64
	movabs	rdx, 3275364211029340003
	xor	eax, eax
	cmp	QWORD PTR [rdi], rdx
	je	.L5
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	movabs	rax, 7526754601088593268
	cmp	QWORD PTR 6[rdi], rax
	sete	al
	ret
	.cfi_endproc
.LFE591:
	.size	"packed", .-"packed"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"content-length"
	.text
	.p2align 4
	.globl	"plain"
	.type	"plain", @function
"plain":
.LFB592:
	.cfi_startproc
	endbr64
	movabs	rax, 3275364211029340003
	cmp	QWORD PTR [rdi], rax
	je	.L9
.L7:
	mov	eax, 1
	test	eax, eax
	sete	al
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	movabs	rax, 7526754601088593268
	cmp	QWORD PTR 6[rdi], rax
	jne	.L7
	xor	eax, eax
	test	eax, eax
	sete	al
	ret
	.cfi_endproc
.LFE592:
	.size	"plain", .-"plain"
	.p2align 4
	.globl	"words"
	.type	"words", @function
"words":
.LFB593:
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
.LFE593:
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
