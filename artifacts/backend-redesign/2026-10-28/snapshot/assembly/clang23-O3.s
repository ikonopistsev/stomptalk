	.section	.note.gnu.property,"a",@note
	.p2align	3, 0x0
	.long	4
	.long	16
	.long	5
	.asciz	"GNU"
	.long	3221225474
	.long	4
	.long	3
	.p2align	3, 0x0
	.text
	.intel_syntax noprefix
	.file	"compare.cpp"
	.globl	packed                          # -- Begin function packed
	.prefalign	4, .Lfunc_end0, nop
	.type	packed,@function
packed:                                 # @packed
	.cfi_startproc
# %bb.0:
	endbr64
	movabs	rax, 3275364211029340003
	cmp	qword ptr [rdi], rax
	je	.LBB0_2
# %bb.1:
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	ret
.LBB0_2:
	movabs	rax, 7526754601088593268
	cmp	qword ptr [rdi + 6], rax
	sete	al
                                        # kill: def $al killed $al killed $eax
	ret
.Lfunc_end0:
	.size	packed, .Lfunc_end0-packed
	.cfi_endproc
                                        # -- End function
	.globl	plain                           # -- Begin function plain
	.prefalign	4, .Lfunc_end1, nop
	.type	plain,@function
plain:                                  # @plain
	.cfi_startproc
# %bb.0:
	endbr64
	movabs	rax, 3275364211029340003
	xor	rax, qword ptr [rdi]
	movabs	rcx, 7526754601088593268
	xor	rcx, qword ptr [rdi + 6]
	or	rcx, rax
	sete	al
	ret
.Lfunc_end1:
	.size	plain, .Lfunc_end1-plain
	.cfi_endproc
                                        # -- End function
	.globl	words                           # -- Begin function words
	.prefalign	4, .Lfunc_end2, nop
	.type	words,@function
words:                                  # @words
	.cfi_startproc
# %bb.0:
	endbr64
	movabs	rax, 3275364211029340003
	xor	rax, qword ptr [rdi]
	movabs	rcx, 7526754601088593268
	xor	rcx, qword ptr [rdi + 6]
	or	rcx, rax
	sete	al
	ret
.Lfunc_end2:
	.size	words, .Lfunc_end2-words
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 23.1.4"
	.section	".note.GNU-stack","",@progbits
