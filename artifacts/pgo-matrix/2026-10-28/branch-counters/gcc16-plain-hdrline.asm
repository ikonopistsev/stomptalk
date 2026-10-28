000000000000ba90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
    ba90:	endbr64
    ba94:	sub    $0x58,%rsp
    ba98:	mov    %rbx,0x28(%rsp)
    ba9d:	mov    %rsi,%rbx
    baa0:	cmp    %rdx,%rsi
    baa3:	jae    c338 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a8>
    baa9:	mov    %rbp,0x30(%rsp)
    baae:	mov    %rdi,%rbp
    bab1:	mov    %r12,0x38(%rsp)
    bab6:	mov    %rdx,%r12
    bab9:	cmpb   $0x0,0x10a(%rdi)
    bac0:	je     bb2c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c>
    bac2:	movsbl (%rbx),%esi
    bac5:	cmp    $0x6e,%sil
    bac9:	je     bc90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x200>
    bacf:	jg     bc20 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x190>
    bad5:	cmp    $0x5c,%sil
    bad9:	je     baea <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a>
    badb:	cmp    $0x63,%sil
    badf:	jne    bc48 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b8>
    bae5:	mov    $0x3a,%esi
    baea:	mov    %rbx,%rdx
    baed:	mov    %rbp,%rdi
    baf0:	call   5520 <stomptalk::parser::append(char, char const*)>
    baf5:	test   %al,%al
    baf7:	jne    bb18 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88>
    baf9:	mov    0x128(%rbp),%rax
    bb00:	mov    0x38(%rsp),%r12
    bb05:	mov    0x30(%rsp),%rbp
    bb0a:	mov    0x28(%rsp),%rbx
    bb0f:	add    $0x58,%rsp
    bb13:	ret
    bb14:	nopl   0x0(%rax)
    bb18:	add    $0x1,%rbx
    bb1c:	movb   $0x0,0x10a(%rbp)
    bb23:	cmp    %r12,%rbx
    bb26:	jae    c04b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5bb>
    bb2c:	cmpq   $0x0,0xc8(%rbp)
    bb34:	mov    %r12,%rax
    bb37:	movzbl 0x10b(%rbp),%r9d
    bb3f:	sete   %cl
    bb42:	sub    %rbx,%rax
    bb45:	cmp    $0xf,%rax
    bb49:	jle    c30f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x87f>
    bb4f:	mov    $0xa0a0a0a,%eax
    bb54:	pxor   %xmm6,%xmm6
    bb58:	xor    %r10d,%r10d
    bb5b:	movd   %eax,%xmm3
    bb5f:	mov    $0xd0d0d0d,%eax
    bb64:	movd   %eax,%xmm2
    bb68:	mov    $0x3a3a3a3a,%eax
    bb6d:	pshufd $0x0,%xmm3,%xmm4
    bb72:	movd   %eax,%xmm5
    bb76:	pshufd $0x0,%xmm2,%xmm2
    bb7b:	mov    %rbx,%rax
    bb7e:	pshufd $0x0,%xmm5,%xmm5
    bb83:	test   %r9b,%r9b
    bb86:	jne    bcb0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x220>
    bb8c:	mov    $0x5c5c5c5c,%edi
    bb91:	movdqa %xmm2,%xmm3
    bb95:	movd   %edi,%xmm7
    bb99:	pshufd $0x0,%xmm7,%xmm7
    bb9e:	jmp    bbd6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x146>
    bba0:	test   %edx,%edx
    bba2:	jne    be80 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3f0>
    bba8:	xor    %r10d,%r10d
    bbab:	lea    -0x1(%rsi),%edx
    bbae:	xor    %ecx,%ecx
    bbb0:	tzcnt  %esi,%r10d
    bbb5:	and    %edx,%esi
    bbb7:	add    %rax,%r10
    bbba:	test   %esi,%esi
    bbbc:	jne    c550 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xac0>
    bbc2:	add    $0x10,%rax
    bbc6:	mov    %r12,%rdx
    bbc9:	sub    %rax,%rdx
    bbcc:	cmp    $0xf,%rdx
    bbd0:	jle    c110 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x680>
    bbd6:	movdqu (%rax),%xmm0
    bbda:	movdqa %xmm0,%xmm1
    bbde:	movdqa %xmm0,%xmm2
    bbe2:	pcmpeqb %xmm5,%xmm1
    bbe6:	pcmpeqb %xmm6,%xmm2
    bbea:	pmovmskb %xmm1,%esi
    bbee:	movdqa %xmm0,%xmm1
    bbf2:	pcmpeqb %xmm7,%xmm1
    bbf6:	por    %xmm2,%xmm1
    bbfa:	movdqa %xmm0,%xmm2
    bbfe:	pcmpeqb %xmm3,%xmm2
    bc02:	pcmpeqb %xmm4,%xmm0
    bc06:	por    %xmm2,%xmm0
    bc0a:	por    %xmm1,%xmm0
    bc0e:	pmovmskb %xmm0,%edx
    bc12:	test   %esi,%esi
    bc14:	je     bc1a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x18a>
    bc16:	test   %cl,%cl
    bc18:	jne    bba0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
    bc1a:	or     %edx,%esi
    bc1c:	jmp    bbba <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x12a>
    bc1e:	xchg   %ax,%ax
    bc20:	cmp    $0x72,%sil
    bc24:	jne    bc48 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b8>
    bc26:	mov    $0xd,%esi
    bc2b:	mov    %rbx,%rdx
    bc2e:	mov    %rbp,%rdi
    bc31:	call   5520 <stomptalk::parser::append(char, char const*)>
    bc36:	test   %al,%al
    bc38:	je     baf9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
    bc3e:	jmp    bb18 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88>
    bc43:	nopl   0x0(%rax,%rax,1)
    bc48:	movabs $0x800000003,%rax
    bc52:	mov    0x38(%rsp),%r12
    bc57:	mov    %rax,0x110(%rbp)
    bc5e:	mov    %rbx,%rax
    bc61:	sub    0x120(%rbp),%rax
    bc68:	mov    %rax,0x118(%rbp)
    bc6f:	lea    0x1(%rbx),%rax
    bc73:	mov    0x28(%rsp),%rbx
    bc78:	mov    %rax,0x128(%rbp)
    bc7f:	mov    0x30(%rsp),%rbp
    bc84:	add    $0x58,%rsp
    bc88:	ret
    bc89:	nopl   0x0(%rax)
    bc90:	mov    $0xa,%esi
    bc95:	mov    %rbx,%rdx
    bc98:	mov    %rbp,%rdi
    bc9b:	call   5520 <stomptalk::parser::append(char, char const*)>
    bca0:	test   %al,%al
    bca2:	je     baf9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
    bca8:	jmp    bb18 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88>
    bcad:	nopl   (%rax)
    bcb0:	movdqa %xmm4,%xmm3
    bcb4:	movdqa %xmm6,%xmm4
    bcb8:	nopl   0x0(%rax,%rax,1)
    bcc0:	movdqu (%rax),%xmm0
    bcc4:	movdqa %xmm0,%xmm1
    bcc8:	movdqa %xmm0,%xmm6
    bccc:	pcmpeqb %xmm5,%xmm1
    bcd0:	pcmpeqb %xmm2,%xmm6
    bcd4:	pmovmskb %xmm1,%edi
    bcd8:	movdqa %xmm0,%xmm1
    bcdc:	pcmpeqb %xmm3,%xmm1
    bce0:	pcmpeqb %xmm4,%xmm0
    bce4:	por    %xmm6,%xmm1
    bce8:	por    %xmm1,%xmm0
    bcec:	pmovmskb %xmm0,%edx
    bcf0:	mov    %edx,%esi
    bcf2:	test   %edi,%edi
    bcf4:	je     bd20 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x290>
    bcf6:	test   %cl,%cl
    bcf8:	je     bd20 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x290>
    bcfa:	test   %edx,%edx
    bcfc:	je     be70 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
    bd02:	tzcnt  %edi,%edi
    bd06:	tzcnt  %edx,%edx
    bd0a:	cmp    %edi,%edx
    bd0c:	jg     bfd0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x540>
    bd12:	lea    (%rax,%rdx,1),%rcx
    bd16:	mov    %r10,%rdi
    bd19:	jmp    be5c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3cc>
    bd1e:	xchg   %ax,%ax
    bd20:	test   %edx,%edx
    bd22:	jne    c550 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xac0>
    bd28:	add    $0x10,%rax
    bd2c:	mov    %r12,%rdx
    bd2f:	sub    %rax,%rdx
    bd32:	cmp    $0xf,%rdx
    bd36:	jg     bcc0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x230>
    bd38:	cmp    $0x7,%rdx
    bd3c:	jle    c370 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8e0>
    bd42:	mov    %r13,0x40(%rsp)
    bd47:	movq   $0x0,0x8(%rsp)
    bd50:	movabs $0x7f7f7f7f7f7f7f7f,%rdi
    bd5a:	jmp    bda4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x314>
    bd5c:	nopl   0x0(%rax)
    bd60:	test   %cl,%cl
    bd62:	je     be1d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x38d>
    bd68:	test   %rsi,%rsi
    bd6b:	jne    be30 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a0>
    bd71:	tzcnt  %rdx,%rdx
    bd76:	sar    $0x3,%edx
    bd79:	lea    (%rax,%rdx,1),%rcx
    bd7d:	mov    %rcx,0x8(%rsp)
    bd82:	xor    %ecx,%ecx
    bd84:	nop
    bd85:	data16 cs nopw 0x0(%rax,%rax,1)
    bd90:	add    $0x8,%rax
    bd94:	mov    %r12,%rdx
    bd97:	sub    %rax,%rdx
    bd9a:	cmp    $0x7,%rdx
    bd9e:	jle    c08a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5fa>
    bda4:	movabs $0x3a3a3a3a3a3a3a3a,%rdx
    bdae:	mov    (%rax),%r11
    bdb1:	movabs $0xd0d0d0d0d0d0d0d,%r13
    bdbb:	xor    %r11,%rdx
    bdbe:	xor    %r11,%r13
    bdc1:	mov    %rdx,%r8
    bdc4:	and    %rdi,%r8
    bdc7:	add    %rdi,%r8
    bdca:	or     %rdx,%r8
    bdcd:	movabs $0xa0a0a0a0a0a0a0a,%rdx
    bdd7:	xor    %r11,%rdx
    bdda:	or     %rdi,%r8
    bddd:	mov    %rdx,%rsi
    bde0:	and    %rdi,%rsi
    bde3:	add    %rdi,%rsi
    bde6:	or     %rdx,%rsi
    bde9:	mov    %r13,%rdx
    bdec:	and    %rdi,%rdx
    bdef:	add    %rdi,%rdx
    bdf2:	or     %r13,%rdx
    bdf5:	and    %rdx,%rsi
    bdf8:	mov    %r11,%rdx
    bdfb:	and    %rdi,%rdx
    bdfe:	add    %rdi,%rdx
    be01:	or     %r11,%rdx
    be04:	and    %rdx,%rsi
    be07:	mov    %r8,%rdx
    be0a:	or     %rdi,%rsi
    be0d:	not    %rdx
    be10:	not    %rsi
    be13:	cmp    $0xffffffffffffffff,%r8
    be17:	jne    bd60 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2d0>
    be1d:	test   %rsi,%rsi
    be20:	je     bd90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x300>
    be26:	tzcnt  %rsi,%rsi
    be2b:	jmp    be46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b6>
    be2d:	nopl   (%rax)
    be30:	xor    %ecx,%ecx
    be32:	tzcnt  %rdx,%rdx
    be37:	tzcnt  %rsi,%rcx
    be3c:	mov    %ecx,%esi
    be3e:	cmp    %ecx,%edx
    be40:	jl     c060 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d0>
    be46:	sar    $0x3,%esi
    be49:	mov    0x8(%rsp),%rdi
    be4e:	mov    0x40(%rsp),%r13
    be53:	lea    (%rax,%rsi,1),%rcx
    be57:	test   %r10,%r10
    be5a:	jne    bea6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
    be5c:	test   %rdi,%rdi
    be5f:	je     bf42 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b2>
    be65:	mov    %rdi,%r10
    be68:	jmp    bea6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
    be6a:	nopw   0x0(%rax,%rax,1)
    be70:	tzcnt  %edi,%edi
    be74:	xor    %ecx,%ecx
    be76:	lea    (%rax,%rdi,1),%r10
    be7a:	jmp    bd28 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x298>
    be7f:	nop
    be80:	xor    %ecx,%ecx
    be82:	xor    %edi,%edi
    be84:	tzcnt  %esi,%ecx
    be88:	tzcnt  %edx,%edi
    be8c:	cmp    %ecx,%edi
    be8e:	jle    bfc5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x535>
    be94:	lea    (%rax,%rcx,1),%r10
    be98:	lea    -0x1(%rsi),%ecx
    be9b:	and    %esi,%ecx
    be9d:	or     %edx,%ecx
    be9f:	tzcnt  %ecx,%ecx
    bea3:	add    %rax,%rcx
    bea6:	mov    %r10,%r8
    bea9:	sub    %rbx,%r8
    beac:	je     bee2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x452>
    beae:	mov    %r8,%rdx
    beb1:	mov    %rbx,%rsi
    beb4:	mov    %rbp,%rdi
    beb7:	mov    %r10,0x18(%rsp)
    bebc:	mov    %rcx,0x10(%rsp)
    bec1:	mov    %r8,0x8(%rsp)
    bec6:	call   4b20 <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]>
    becb:	mov    0x8(%rsp),%r8
    bed0:	mov    0x10(%rsp),%rcx
    bed5:	test   %al,%al
    bed7:	mov    0x18(%rsp),%r10
    bedc:	je     baf9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
    bee2:	mov    0xd8(%rbp),%rax
    bee9:	test   %rax,%rax
    beec:	je     c4a4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa14>
    bef2:	mov    0x78(%rbp),%edx
    bef5:	mov    0xd0(%rbp),%rsi
    befc:	cmp    $0xe,%rax
    bf00:	mov    %rax,0xc8(%rbp)
    bf07:	sete   %al
    bf0a:	movb   $0x0,0x10d(%rbp)
    bf11:	not    %edx
    bf13:	mov    %rsi,0xc0(%rbp)
    bf1a:	movq   $0x0,0xd0(%rbp)
    bf25:	movq   $0x0,0xd8(%rbp)
    bf30:	and    %dl,%al
    bf32:	jne    c2c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x830>
    bf38:	mov    %al,0x10c(%rbp)
    bf3e:	lea    0x1(%r10),%rbx
    bf42:	mov    %rcx,%rdx
    bf45:	sub    %rbx,%rdx
    bf48:	je     bf67 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d7>
    bf4a:	mov    %rbx,%rsi
    bf4d:	mov    %rbp,%rdi
    bf50:	mov    %rcx,0x8(%rsp)
    bf55:	call   4b20 <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]>
    bf5a:	mov    0x8(%rsp),%rcx
    bf5f:	test   %al,%al
    bf61:	je     baf9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
    bf67:	cmp    %rcx,%r12
    bf6a:	je     c398 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x908>
    bf70:	movzbl (%rcx),%eax
    bf73:	cmp    $0x5c,%al
    bf75:	jne    c3aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x91a>
    bf7b:	cmpb   $0x0,0x10b(%rbp)
    bf82:	je     bfe0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x550>
    bf84:	movabs $0x700000003,%rax
    bf8e:	mov    0x38(%rsp),%r12
    bf93:	mov    0x28(%rsp),%rbx
    bf98:	mov    %rax,0x110(%rbp)
    bf9f:	mov    %rcx,%rax
    bfa2:	sub    0x120(%rbp),%rax
    bfa9:	mov    %rax,0x118(%rbp)
    bfb0:	lea    0x1(%rcx),%rax
    bfb4:	mov    %rax,0x128(%rbp)
    bfbb:	mov    0x30(%rsp),%rbp
    bfc0:	add    $0x58,%rsp
    bfc4:	ret
    bfc5:	or     %esi,%edx
    bfc7:	tzcnt  %edx,%edx
    bfcb:	jmp    bd12 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x282>
    bfd0:	lea    (%rax,%rdi,1),%r10
    bfd4:	lea    (%rax,%rdx,1),%rcx
    bfd8:	jmp    bea6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
    bfdd:	nopl   (%rax)
    bfe0:	cmpb   $0x0,0x10d(%rbp)
    bfe7:	jne    c037 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a7>
    bfe9:	mov    %rbp,%rdi
    bfec:	mov    %rcx,0x8(%rsp)
    bff1:	call   5140 <stomptalk::parser::own_metadata()>
    bff6:	mov    0x48(%rbp),%rdi
    bffa:	mov    0x50(%rbp),%rax
    bffe:	mov    0xd8(%rbp),%rbx
    c005:	mov    0x8(%rsp),%rcx
    c00a:	sub    %rdi,%rax
    c00d:	cmp    %rbx,%rax
    c010:	jb     c2b5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x825>
    c016:	mov    %rdi,%rax
    c019:	test   %rbx,%rbx
    c01c:	jne    c340 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8b0>
    c022:	add    %rbx,%rax
    c025:	mov    %rax,0x48(%rbp)
    c029:	mov    %rdi,0xd0(%rbp)
    c030:	movb   $0x1,0x10d(%rbp)
    c037:	lea    0x1(%rcx),%rbx
    c03b:	movb   $0x1,0x10a(%rbp)
    c042:	cmp    %r12,%rbx
    c045:	jb     bac2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x32>
    c04b:	mov    0x30(%rsp),%rbp
    c050:	mov    0x38(%rsp),%r12
    c055:	mov    %rbx,%rax
    c058:	jmp    bb0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
    c05d:	nopl   (%rax)
    c060:	sar    $0x3,%ecx
    c063:	sar    $0x3,%edx
    c066:	mov    0x40(%rsp),%r13
    c06b:	add    %rax,%rdx
    c06e:	add    %rax,%rcx
    c071:	test   %r10,%r10
    c074:	cmove  %rdx,%r10
    c078:	jmp    bea6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
    c07d:	nopl   (%rax)
    c080:	mov    0x48(%rsp),%r14
    c085:	mov    0x50(%rsp),%r15
    c08a:	cmp    %r12,%rax
    c08d:	jae    c4fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa6b>
    c093:	mov    0x40(%rsp),%r13
    c098:	xor    %edi,%edi
    c09a:	mov    $0x2401,%r8d
    c0a0:	jmp    c0b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x626>
    c0a2:	nopw   0x0(%rax,%rax,1)
    c0a8:	mov    %rax,%rdi
    c0ab:	xor    %ecx,%ecx
    c0ad:	add    $0x1,%rax
    c0b1:	cmp    %r12,%rax
    c0b4:	jae    c0d4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x644>
    c0b6:	movzbl (%rax),%edx
    c0b9:	cmp    $0x3a,%dl
    c0bc:	sete   %sil
    c0c0:	test   %cl,%cl
    c0c2:	je     c0c9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x639>
    c0c4:	test   %sil,%sil
    c0c7:	jne    c0a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x618>
    c0c9:	cmp    $0xd,%dl
    c0cc:	ja     c0f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x668>
    c0ce:	bt     %rdx,%r8
    c0d2:	jae    c0ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61d>
    c0d4:	mov    %rax,%rcx
    c0d7:	cmpq   $0x0,0x8(%rsp)
    c0dd:	je     be57 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c7>
    c0e3:	test   %r10,%r10
    c0e6:	cmove  0x8(%rsp),%r10
    c0ec:	jmp    bea6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
    c0f1:	nopl   0x0(%rax)
    c0f8:	cmp    $0x5c,%dl
    c0fb:	sete   %dl
    c0fe:	or     %sil,%dl
    c101:	je     c0ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61d>
    c103:	mov    %r9d,%esi
    c106:	xor    $0x1,%sil
    c10a:	je     c0ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61d>
    c10c:	jmp    c0d4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x644>
    c10e:	xchg   %ax,%ax
    c110:	cmp    $0x7,%rdx
    c114:	jle    c370 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8e0>
    c11a:	mov    %r13,0x40(%rsp)
    c11f:	mov    %r14,0x48(%rsp)
    c124:	mov    %r15,0x50(%rsp)
    c129:	movq   $0x0,0x8(%rsp)
    c132:	movabs $0x7f7f7f7f7f7f7f7f,%rdx
    c13c:	jmp    c196 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x706>
    c13e:	xchg   %ax,%ax
    c140:	test   %cl,%cl
    c142:	je     c228 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
    c148:	mov    %rsi,%rcx
    c14b:	or     %rdx,%rcx
    c14e:	xor    $0xffffffffffffffff,%rcx
    c152:	jne    c240 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b0>
    c158:	xor    %ecx,%ecx
    c15a:	mov    $0xfffffffffffffffe,%rsi
    c161:	tzcnt  %rdi,%rcx
    c166:	sub    %r11,%rsi
    c169:	sar    $0x3,%ecx
    c16c:	and    %rdi,%rsi
    c16f:	add    %rax,%rcx
    c172:	mov    %rcx,0x8(%rsp)
    c177:	xor    %ecx,%ecx
    c179:	test   %rsi,%rsi
    c17c:	jne    c55b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xacb>
    c182:	add    $0x8,%rax
    c186:	mov    %r12,%rsi
    c189:	sub    %rax,%rsi
    c18c:	cmp    $0x7,%rsi
    c190:	jle    c080 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f0>
    c196:	movabs $0x3a3a3a3a3a3a3a3a,%rsi
    c1a0:	mov    (%rax),%rdi
    c1a3:	movabs $0xd0d0d0d0d0d0d0d,%r14
    c1ad:	movabs $0xa0a0a0a0a0a0a0a,%r15
    c1b7:	movabs $0x5c5c5c5c5c5c5c5c,%r13
    c1c1:	xor    %rdi,%rsi
    c1c4:	xor    %rdi,%r14
    c1c7:	xor    %rdi,%r15
    c1ca:	xor    %rdi,%r13
    c1cd:	mov    %rsi,%r8
    c1d0:	and    %rdx,%r8
    c1d3:	add    %rdx,%r8
    c1d6:	or     %rsi,%r8
    c1d9:	mov    %r14,%rsi
    c1dc:	and    %rdx,%rsi
    c1df:	mov    %r8,%r11
    c1e2:	add    %rdx,%rsi
    c1e5:	or     %rdx,%r11
    c1e8:	or     %r14,%rsi
    c1eb:	mov    %r15,%r14
    c1ee:	and    %rdx,%r14
    c1f1:	add    %rdx,%r14
    c1f4:	or     %r15,%r14
    c1f7:	and    %r14,%rsi
    c1fa:	mov    %rdi,%r14
    c1fd:	and    %rdx,%r14
    c200:	add    %rdx,%r14
    c203:	or     %r14,%rdi
    c206:	and    %rdi,%rsi
    c209:	mov    %r13,%rdi
    c20c:	and    %rdx,%rdi
    c20f:	add    %rdx,%rdi
    c212:	or     %r13,%rdi
    c215:	and    %rdi,%rsi
    c218:	mov    %r11,%rdi
    c21b:	not    %rdi
    c21e:	cmp    $0xffffffffffffffff,%r11
    c222:	jne    c140 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b0>
    c228:	and    %r8,%rsi
    c22b:	or     %rdx,%rsi
    c22e:	not    %rsi
    c231:	jmp    c179 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6e9>
    c236:	cs nopw 0x0(%rax,%rax,1)
    c240:	xor    %r9d,%r9d
    c243:	xor    %r15d,%r15d
    c246:	tzcnt  %rdi,%r9
    c24b:	tzcnt  %rcx,%r15
    c250:	cmp    %r9d,%r15d
    c253:	jle    c298 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x808>
    c255:	mov    $0xfffffffffffffffe,%rdx
    c25c:	sar    $0x3,%r9d
    c260:	mov    0x40(%rsp),%r13
    c265:	mov    0x48(%rsp),%r14
    c26a:	sub    %r11,%rdx
    c26d:	add    %rax,%r9
    c270:	mov    0x50(%rsp),%r15
    c275:	and    %rdi,%rdx
    c278:	or     %rdx,%rcx
    c27b:	tzcnt  %rcx,%rcx
    c280:	sar    $0x3,%ecx
    c283:	add    %rax,%rcx
    c286:	test   %r10,%r10
    c289:	cmove  %r9,%r10
    c28d:	jmp    bea6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
    c292:	nopw   0x0(%rax,%rax,1)
    c298:	and    %r8,%rsi
    c29b:	mov    0x48(%rsp),%r14
    c2a0:	mov    0x50(%rsp),%r15
    c2a5:	or     %rdx,%rsi
    c2a8:	not    %rsi
    c2ab:	tzcnt  %rsi,%rsi
    c2b0:	jmp    be46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b6>
    c2b5:	mov    0x40(%rbp),%rax
    c2b9:	jmp    c025 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x595>
    c2be:	xchg   %ax,%ax
    c2c0:	cmp    %rbx,0x120(%rbp)
    c2c7:	jae    c2cf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x83f>
    c2c9:	cmp    $0xe,%r8
    c2cd:	je     c2f1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x861>
    c2cf:	movabs $0x2d746e65746e6f63,%rax
    c2d9:	cmp    %rax,(%rsi)
    c2dc:	je     c4e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa50>
    c2e2:	mov    $0x1,%eax
    c2e7:	test   %eax,%eax
    c2e9:	sete   %al
    c2ec:	jmp    bf38 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4a8>
    c2f1:	movdqu -0x1(%rbx),%xmm0
    c2f6:	pcmpeqb 0x5282(%rip),%xmm0        # 11580 <stomptalk::detail::backend::content_length_wire+0x80>
    c2fe:	pmovmskb %xmm0,%eax
    c302:	cmp    $0xffff,%eax
    c307:	sete   %al
    c30a:	jmp    bf38 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4a8>
    c30f:	cmp    $0x7,%rax
    c313:	jle    c530 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaa0>
    c319:	mov    %r13,0x40(%rsp)
    c31e:	test   %r9b,%r9b
    c321:	jne    c365 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8d5>
    c323:	mov    %r14,0x48(%rsp)
    c328:	mov    %rbx,%rax
    c32b:	xor    %r10d,%r10d
    c32e:	mov    %r15,0x50(%rsp)
    c333:	jmp    c129 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x699>
    c338:	mov    %rsi,%rax
    c33b:	jmp    bb0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
    c340:	mov    0xd0(%rbp),%rsi
    c347:	mov    %rbx,%rdx
    c34a:	mov    %rcx,0x8(%rsp)
    c34f:	call   2330 <memcpy@plt>
    c354:	mov    0x8(%rsp),%rcx
    c359:	mov    %rax,%rdi
    c35c:	mov    0x48(%rbp),%rax
    c360:	jmp    c022 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x592>
    c365:	mov    %rbx,%rax
    c368:	xor    %r10d,%r10d
    c36b:	jmp    bd47 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2b7>
    c370:	movq   $0x0,0x8(%rsp)
    c379:	cmp    %r12,%rax
    c37c:	jb     c098 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x608>
    c382:	mov    %rax,%rcx
    c385:	test   %r10,%r10
    c388:	jne    bea6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
    c38e:	jmp    bf42 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b2>
    c393:	nopl   0x0(%rax,%rax,1)
    c398:	mov    %r12,%rax
    c39b:	mov    0x30(%rsp),%rbp
    c3a0:	mov    0x38(%rsp),%r12
    c3a5:	jmp    bb0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
    c3aa:	cmpq   $0x0,0xc8(%rbp)
    c3b2:	je     bf84 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f4>
    c3b8:	cmp    $0xd,%al
    c3ba:	je     c3c4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x934>
    c3bc:	cmp    $0xa,%al
    c3be:	jne    bf84 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f4>
    c3c4:	mov    %rcx,%rsi
    c3c7:	mov    %rbp,%rdi
    c3ca:	mov    %rcx,0x8(%rsp)
    c3cf:	call   5a30 <stomptalk::parser::finish_value(char const*)>
    c3d4:	mov    0x8(%rsp),%rcx
    c3d9:	test   %al,%al
    c3db:	je     baf9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
    c3e1:	lea    0x1(%rcx),%rax
    c3e5:	cmpb   $0xa,(%rcx)
    c3e8:	je     c461 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9d1>
    c3ea:	lea    0x2ef(%rip),%rbx        # c6e0 <char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)>
    c3f1:	movq   $0x0,0x68(%rbp)
    c3f9:	mov    %rbx,0x60(%rbp)
    c3fd:	cmp    %r12,%rax
    c400:	jae    c452 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
    c402:	mov    0x110(%rbp),%edx
    c408:	test   %edx,%edx
    c40a:	jne    c452 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
    c40c:	lea    0x2(%rcx),%rsi
    c410:	cmpb   $0xa,0x1(%rcx)
    c414:	je     c514 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa84>
    c41a:	sub    0x120(%rbp),%rax
    c421:	mov    %rsi,0x128(%rbp)
    c428:	movabs $0x900000003,%rdx
    c432:	mov    %rdx,0x110(%rbp)
    c439:	mov    %rax,0x118(%rbp)
    c440:	mov    0x30(%rsp),%rbp
    c445:	mov    0x38(%rsp),%r12
    c44a:	mov    %rsi,%rax
    c44d:	jmp    bb0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
    c452:	mov    0x30(%rsp),%rbp
    c457:	mov    0x38(%rsp),%r12
    c45c:	jmp    bb0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
    c461:	lea    0x108(%rip),%rbx        # c570 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    c468:	movq   $0x0,0x68(%rbp)
    c470:	mov    %rbx,0x60(%rbp)
    c474:	cmp    %r12,%rax
    c477:	jae    c452 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
    c479:	mov    0x110(%rbp),%ecx
    c47f:	test   %ecx,%ecx
    c481:	jne    c452 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
    c483:	mov    %r12,%rdx
    c486:	mov    %rax,%rsi
    c489:	mov    0x38(%rsp),%r12
    c48e:	mov    0x28(%rsp),%rbx
    c493:	mov    %rbp,%rdi
    c496:	mov    0x30(%rsp),%rbp
    c49b:	add    $0x58,%rsp
    c49f:	jmp    c570 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    c4a4:	movabs $0x700000003,%rax
    c4ae:	mov    0x38(%rsp),%r12
    c4b3:	mov    %rax,0x110(%rbp)
    c4ba:	mov    %r10,%rax
    c4bd:	sub    0x120(%rbp),%rax
    c4c4:	mov    %rax,0x118(%rbp)
    c4cb:	lea    0x1(%r10),%rax
    c4cf:	mov    %rax,0x128(%rbp)
    c4d6:	mov    0x30(%rsp),%rbp
    c4db:	jmp    bb0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
    c4e0:	movabs $0x6874676e656c2d74,%rax
    c4ea:	cmp    %rax,0x6(%rsi)
    c4ee:	jne    c2e2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x852>
    c4f4:	xor    %eax,%eax
    c4f6:	jmp    c2e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x857>
    c4fb:	mov    0x40(%rsp),%r13
    c500:	mov    %rax,%rcx
    c503:	cmpq   $0x0,0x8(%rsp)
    c509:	jne    c0e3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x653>
    c50f:	jmp    c385 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8f5>
    c514:	lea    0x55(%rip),%rax        # c570 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    c51b:	mov    %rax,0x60(%rbp)
    c51f:	cmp    %r12,%rsi
    c522:	jae    c440 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9b0>
    c528:	mov    %r12,%rdx
    c52b:	jmp    c489 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9f9>
    c530:	movq   $0x0,0x8(%rsp)
    c539:	mov    %rbx,%rax
    c53c:	xor    %r10d,%r10d
    c53f:	cmp    %r12,%rbx
    c542:	jb     c098 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x608>
    c548:	mov    %rbx,%rcx
    c54b:	jmp    bf67 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d7>
    c550:	xor    %edx,%edx
    c552:	tzcnt  %esi,%edx
    c556:	jmp    bd12 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x282>
    c55b:	mov    0x48(%rsp),%r14
    c560:	mov    0x50(%rsp),%r15
    c565:	jmp    be26 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x396>
    c56a:	nopw   0x0(%rax,%rax,1)

000000000000c570 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
    c570:	endbr64
    c574:	movzbl (%rsi),%eax
    c577:	cmp    $0xa,%al
    c579:	je     c640 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd0>
    c57f:	cmp    $0xd,%al
    c581:	je     c5d8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x68>
    c583:	mov    0x18(%rdi),%rax
    c587:	cmp    %rax,0x80(%rdi)
    c58e:	je     c688 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x118>
    c594:	mov    0x8(%rdi),%rax
    c598:	cmp    %rax,0xe8(%rdi)
    c59f:	je     c660 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf0>
    c5a5:	lea    -0xb1c(%rip),%rax        # ba90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    c5ac:	movq   $0x0,0x68(%rdi)
    c5b4:	mov    %rax,0x60(%rdi)
    c5b8:	cmp    %rdx,%rsi
    c5bb:	jae    c66a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfa>
    c5c1:	mov    0x110(%rdi),%eax
    c5c7:	test   %eax,%eax
    c5c9:	jne    c66a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfa>
    c5cf:	jmp    ba90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    c5d4:	nopl   0x0(%rax)
    c5d8:	lea    0xec1(%rip),%rcx        # d4a0 <char const* stomptalk::parser::almost_done<3u>(char const*, char const*)>
    c5df:	lea    0x1(%rsi),%rax
    c5e3:	movq   $0x0,0x68(%rdi)
    c5eb:	mov    %rcx,0x60(%rdi)
    c5ef:	cmp    %rdx,%rax
    c5f2:	jae    c65c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xec>
    c5f4:	mov    0x110(%rdi),%ecx
    c5fa:	test   %ecx,%ecx
    c5fc:	jne    c65c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xec>
    c5fe:	lea    0x2(%rsi),%rcx
    c602:	cmpb   $0xa,0x1(%rsi)
    c606:	je     c6c0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x150>
    c60c:	sub    0x120(%rdi),%rax
    c613:	mov    %rcx,0x128(%rdi)
    c61a:	movabs $0x900000003,%rdx
    c624:	mov    %rdx,0x110(%rdi)
    c62b:	mov    %rax,0x118(%rdi)
    c632:	mov    %rcx,%rax
    c635:	ret
    c636:	cs nopw 0x0(%rax,%rax,1)
    c640:	lea    0xd99(%rip),%rcx        # d3e0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    c647:	lea    0x1(%rsi),%rax
    c64b:	movq   $0x0,0x68(%rdi)
    c653:	mov    %rcx,0x60(%rdi)
    c657:	cmp    %rdx,%rax
    c65a:	jb     c670 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x100>
    c65c:	ret
    c65d:	nopl   (%rax)
    c660:	movl   $0x2,0x110(%rdi)
    c66a:	mov    %rsi,%rax
    c66d:	ret
    c66e:	xchg   %ax,%ax
    c670:	mov    0x110(%rdi),%esi
    c676:	test   %esi,%esi
    c678:	jne    c65c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xec>
    c67a:	mov    %rax,%rsi
    c67d:	jmp    d3e0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    c682:	nopw   0x0(%rax,%rax,1)
    c688:	movabs $0xc00000003,%rax
    c692:	mov    %rax,0x110(%rdi)
    c699:	mov    %rsi,%rax
    c69c:	sub    0x120(%rdi),%rax
    c6a3:	mov    %rax,0x118(%rdi)
    c6aa:	lea    0x1(%rsi),%rax
    c6ae:	mov    %rax,0x128(%rdi)
    c6b5:	ret
    c6b6:	cs nopw 0x0(%rax,%rax,1)
    c6c0:	lea    0xd19(%rip),%rax        # d3e0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    c6c7:	mov    %rax,0x60(%rdi)
    c6cb:	cmp    %rdx,%rcx
    c6ce:	jae    c632 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc2>
    c6d4:	mov    %rcx,%rsi
    c6d7:	jmp    d3e0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    c6dc:	nopl   0x0(%rax)

