0000000000009940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
    9940:	endbr64
    9944:	push   %rbp
    9945:	push   %r15
    9947:	push   %r14
    9949:	push   %r13
    994b:	push   %r12
    994d:	push   %rbx
    994e:	sub    $0x28,%rsp
    9952:	mov    %rdx,%r15
    9955:	mov    %rsi,%r8
    9958:	mov    %rdi,%rbx
    995b:	lea    0xc0(%rdi),%r11
    9962:	lea    0xd0(%rdi),%r10
    9969:	lea    0x70(%rdi),%r14
    996d:	xor    %r9d,%r9d
    9970:	xorps  %xmm4,%xmm4
    9973:	movdqa 0xcc85(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    997b:	movdqa 0xcc8d(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    9983:	movdqa 0xcc95(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    998b:	movdqa 0xcc9c(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    9994:	data16 data16 cs nopw 0x0(%rax,%rax,1)
    99a0:	movzbl (%r8),%eax
    99a4:	cmp    $0xd,%eax
    99a7:	je     9e1f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4df>
    99ad:	cmp    $0xa,%eax
    99b0:	je     ae72 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1532>
    99b6:	mov    0x80(%rbx),%rax
    99bd:	cmp    0x18(%rbx),%rax
    99c1:	je     b878 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f38>
    99c7:	mov    0xe8(%rbx),%rax
    99ce:	cmp    0x8(%rbx),%rax
    99d2:	je     bb9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x225b>
    99d8:	lea    0x8e71(%rip),%rax        # 12850 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    99df:	mov    %rax,0x60(%rbx)
    99e3:	movq   $0x0,0x68(%rbx)
    99eb:	cmpl   $0x0,0x110(%rbx)
    99f2:	sete   %al
    99f5:	cmp    %r15,%r8
    99f8:	jae    bef8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25b8>
    99fe:	test   %al,%al
    9a00:	je     b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    9a06:	movzbl 0x10a(%rbx),%eax
    9a0d:	cmp    $0x1,%al
    9a0f:	je     a1b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x879>
    9a15:	cmpq   $0x0,0xc8(%rbx)
    9a1d:	sete   %cl
    9a20:	movzbl 0x10b(%rbx),%eax
    9a27:	mov    %r15,%rdx
    9a2a:	sub    %r8,%rdx
    9a2d:	cmp    $0x10,%rdx
    9a31:	jl     b905 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fc5>
    9a37:	mov    %r8,%rsi
    9a3a:	xor    %r12d,%r12d
    9a3d:	mov    %rsi,%rbp
    9a40:	movdqu (%rsi),%xmm0
    9a44:	pxor   %xmm1,%xmm1
    9a48:	pxor   %xmm2,%xmm2
    9a4c:	test   %al,%al
    9a4e:	jne    9a59 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x119>
    9a50:	movdqa %xmm0,%xmm2
    9a54:	pcmpeqb %xmm8,%xmm2
    9a59:	movdqa %xmm0,%xmm3
    9a5d:	pcmpeqb %xmm5,%xmm3
    9a61:	pmovmskb %xmm3,%esi
    9a65:	pcmpeqb %xmm0,%xmm1
    9a69:	movdqa %xmm0,%xmm3
    9a6d:	pcmpeqb %xmm6,%xmm3
    9a71:	pcmpeqb %xmm7,%xmm0
    9a75:	por    %xmm3,%xmm0
    9a79:	por    %xmm1,%xmm0
    9a7d:	por    %xmm2,%xmm0
    9a81:	pmovmskb %xmm0,%edi
    9a85:	test   %esi,%esi
    9a87:	je     9abc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17c>
    9a89:	test   $0x1,%cl
    9a8c:	je     9abc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17c>
    9a8e:	mov    %r8,%r13
    9a91:	tzcnt  %esi,%ecx
    9a95:	test   %edi,%edi
    9a97:	je     9aa7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x167>
    9a99:	tzcnt  %edi,%r8d
    9a9e:	cmp    %r8d,%ecx
    9aa1:	jae    ab75 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1235>
    9aa7:	mov    %ecx,%r12d
    9aaa:	add    %rbp,%r12
    9aad:	lea    -0x1(%rsi),%r8d
    9ab1:	and    %esi,%r8d
    9ab4:	xor    %ecx,%ecx
    9ab6:	mov    %r8d,%esi
    9ab9:	mov    %r13,%r8
    9abc:	test   %al,%al
    9abe:	cmovne %r9d,%esi
    9ac2:	or     %edi,%esi
    9ac4:	jne    9ae0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a0>
    9ac6:	mov    %rbp,%rsi
    9ac9:	add    $0x10,%rsi
    9acd:	add    $0xfffffffffffffff0,%rdx
    9ad1:	cmp    $0xf,%rdx
    9ad5:	jg     9a3d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfd>
    9adb:	jmp    b90b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fcb>
    9ae0:	tzcnt  %esi,%eax
    9ae4:	add    %rax,%rbp
    9ae7:	test   %r12,%r12
    9aea:	je     a08b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x74b>
    9af0:	mov    %r12,%r13
    9af3:	sub    %r8,%r13
    9af6:	je     b3ac <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a6c>
    9afc:	mov    0x10(%rbx),%rcx
    9b00:	mov    0x100(%rbx),%rax
    9b07:	mov    %rcx,%rdx
    9b0a:	sub    %rax,%rdx
    9b0d:	cmp    %rdx,%r13
    9b10:	ja     b8ad <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f6d>
    9b16:	mov    0xf8(%rbx),%rdx
    9b1d:	add    %rax,%rdx
    9b20:	sub    %rdx,%rcx
    9b23:	cmp    %rcx,%r13
    9b26:	ja     b887 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f47>
    9b2c:	add    %r13,%rax
    9b2f:	mov    %rax,0x100(%rbx)
    9b36:	cmpb   $0x1,0x10d(%rbx)
    9b3d:	je     aa60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1120>
    9b43:	mov    0xd8(%rbx),%rcx
    9b4a:	test   %rcx,%rcx
    9b4d:	jne    9b54 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x214>
    9b4f:	mov    %r8,(%r10)
    9b52:	xor    %ecx,%ecx
    9b54:	add    %r13,%rcx
    9b57:	mov    %rcx,0xd8(%rbx)
    9b5e:	test   %rcx,%rcx
    9b61:	je     bc68 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2328>
    9b67:	mov    0xd0(%rbx),%rax
    9b6e:	movb   $0x0,0x10d(%rbx)
    9b75:	movups %xmm4,(%r10)
    9b79:	mov    %rax,0xc0(%rbx)
    9b80:	mov    %rcx,0xc8(%rbx)
    9b87:	xor    %edx,%edx
    9b89:	cmp    $0xe,%rcx
    9b8d:	jne    9b9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25b>
    9b8f:	mov    0x78(%rbx),%ecx
    9b92:	and    $0x1,%ecx
    9b95:	je     a3b3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa73>
    9b9b:	mov    %dl,0x10c(%rbx)
    9ba1:	inc    %r12
    9ba4:	mov    %r12,%r8
    9ba7:	cmp    %r8,%rbp
    9baa:	je     9c14 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d4>
    9bac:	mov    %rbp,%r13
    9baf:	sub    %r12,%r13
    9bb2:	mov    0x10(%rbx),%rcx
    9bb6:	mov    0x100(%rbx),%rax
    9bbd:	mov    %rcx,%rdx
    9bc0:	sub    %rax,%rdx
    9bc3:	cmp    %rdx,%r13
    9bc6:	ja     b8ad <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f6d>
    9bcc:	mov    0xf8(%rbx),%rdx
    9bd3:	add    %rax,%rdx
    9bd6:	sub    %rdx,%rcx
    9bd9:	cmp    %rcx,%r13
    9bdc:	ja     b887 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f47>
    9be2:	add    %r13,%rax
    9be5:	mov    %rax,0x100(%rbx)
    9bec:	cmpb   $0x1,0x10d(%rbx)
    9bf3:	je     a74e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe0e>
    9bf9:	mov    0xd8(%rbx),%rax
    9c00:	test   %rax,%rax
    9c03:	jne    9c0a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca>
    9c05:	mov    %r8,(%r10)
    9c08:	xor    %eax,%eax
    9c0a:	add    %r13,%rax
    9c0d:	mov    %rax,0xd8(%rbx)
    9c14:	cmp    %r15,%rbp
    9c17:	je     b43a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1afa>
    9c1d:	movzbl 0x0(%rbp),%eax
    9c21:	cmp    $0x5c,%eax
    9c24:	jne    a270 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x930>
    9c2a:	jmp    a249 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x909>
    9c2f:	nop
    9c30:	mov    0x38(%rbx),%rbp
    9c34:	mov    0x8(%rbp,%r14,1),%r13
    9c39:	test   %r13,%r13
    9c3c:	je     9d04 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3c4>
    9c42:	mov    0x0(%rbp,%r14,1),%rsi
    9c47:	mov    0x40(%rbx),%rcx
    9c4b:	mov    %rsi,%rax
    9c4e:	sub    %rcx,%rax
    9c51:	cmp    0x10(%rbx),%rax
    9c55:	jae    9c8f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x34f>
    9c57:	mov    0x18(%rbp,%r14,1),%r12
    9c5c:	test   %r12,%r12
    9c5f:	je     9d0c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3cc>
    9c65:	mov    0x10(%rbp,%r14,1),%rsi
    9c6a:	mov    0x40(%rbx),%rax
    9c6e:	mov    %rsi,%rcx
    9c71:	sub    %rax,%rcx
    9c74:	cmp    0x10(%rbx),%rcx
    9c78:	jae    9ccd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x38d>
    9c7a:	inc    %r15
    9c7d:	add    $0x20,%r14
    9c81:	cmp    0xe8(%rbx),%r15
    9c88:	jb     9c30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2f0>
    9c8a:	jmp    abcc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x128c>
    9c8f:	mov    0x48(%rbx),%r12
    9c93:	mov    0x50(%rbx),%rdx
    9c97:	sub    %r12,%rdx
    9c9a:	mov    %rbp,%rax
    9c9d:	cmp    %rdx,%r13
    9ca0:	ja     9cb8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x378>
    9ca2:	mov    %r12,%rdi
    9ca5:	mov    %r13,%rdx
    9ca8:	call   22a0 <memcpy@plt>
    9cad:	add    0x48(%rbx),%r13
    9cb1:	mov    0x38(%rbx),%rax
    9cb5:	mov    %r13,%rcx
    9cb8:	mov    %rcx,0x48(%rbx)
    9cbc:	lea    0xc0(%rbx),%r11
    9cc3:	mov    %r12,0x0(%rbp,%r14,1)
    9cc8:	mov    %rax,%rbp
    9ccb:	jmp    9c57 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x317>
    9ccd:	mov    0x48(%rbx),%r13
    9cd1:	mov    0x50(%rbx),%rcx
    9cd5:	sub    %r13,%rcx
    9cd8:	cmp    %rcx,%r12
    9cdb:	ja     9cef <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3af>
    9cdd:	mov    %r13,%rdi
    9ce0:	mov    %r12,%rdx
    9ce3:	call   22a0 <memcpy@plt>
    9ce8:	add    0x48(%rbx),%r12
    9cec:	mov    %r12,%rax
    9cef:	mov    %rax,0x48(%rbx)
    9cf3:	lea    0xc0(%rbx),%r11
    9cfa:	mov    %r13,0x10(%rbp,%r14,1)
    9cff:	jmp    9c7a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x33a>
    9d04:	mov    %rbp,%rax
    9d07:	xor    %r12d,%r12d
    9d0a:	jmp    9cc3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x383>
    9d0c:	xor    %r13d,%r13d
    9d0f:	jmp    9cfa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3ba>
    9d11:	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    9d20:	mov    0x38(%rbx),%r14
    9d24:	mov    0x8(%r14,%r12,1),%rbp
    9d29:	test   %rbp,%rbp
    9d2c:	je     9dfc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4bc>
    9d32:	mov    (%r14,%r12,1),%rsi
    9d36:	mov    0x40(%rbx),%rcx
    9d3a:	mov    %rsi,%rax
    9d3d:	sub    %rcx,%rax
    9d40:	cmp    0x10(%rbx),%rax
    9d44:	jae    9d7e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x43e>
    9d46:	mov    0x18(%r14,%r12,1),%r13
    9d4b:	test   %r13,%r13
    9d4e:	je     9e04 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4c4>
    9d54:	mov    0x10(%r14,%r12,1),%rsi
    9d59:	mov    0x40(%rbx),%rax
    9d5d:	mov    %rsi,%rcx
    9d60:	sub    %rax,%rcx
    9d63:	cmp    0x10(%rbx),%rcx
    9d67:	jae    9dc0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x480>
    9d69:	inc    %r15
    9d6c:	add    $0x20,%r12
    9d70:	cmp    0xe8(%rbx),%r15
    9d77:	jb     9d20 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3e0>
    9d79:	jmp    ace2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13a2>
    9d7e:	mov    0x48(%rbx),%r13
    9d82:	mov    0x50(%rbx),%rdx
    9d86:	sub    %r13,%rdx
    9d89:	mov    %r14,%rax
    9d8c:	cmp    %rdx,%rbp
    9d8f:	ja     9da7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x467>
    9d91:	mov    %r13,%rdi
    9d94:	mov    %rbp,%rdx
    9d97:	call   22a0 <memcpy@plt>
    9d9c:	add    0x48(%rbx),%rbp
    9da0:	mov    0x38(%rbx),%rax
    9da4:	mov    %rbp,%rcx
    9da7:	mov    %rcx,0x48(%rbx)
    9dab:	lea    0xc0(%rbx),%r11
    9db2:	mov    0x10(%rsp),%r8
    9db7:	mov    %r13,(%r14,%r12,1)
    9dbb:	mov    %rax,%r14
    9dbe:	jmp    9d46 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x406>
    9dc0:	mov    0x48(%rbx),%rbp
    9dc4:	mov    0x50(%rbx),%rcx
    9dc8:	sub    %rbp,%rcx
    9dcb:	cmp    %rcx,%r13
    9dce:	ja     9de2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4a2>
    9dd0:	mov    %rbp,%rdi
    9dd3:	mov    %r13,%rdx
    9dd6:	call   22a0 <memcpy@plt>
    9ddb:	add    0x48(%rbx),%r13
    9ddf:	mov    %r13,%rax
    9de2:	mov    %rax,0x48(%rbx)
    9de6:	lea    0xc0(%rbx),%r11
    9ded:	mov    0x10(%rsp),%r8
    9df2:	mov    %rbp,0x10(%r14,%r12,1)
    9df7:	jmp    9d69 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x429>
    9dfc:	mov    %r14,%rax
    9dff:	xor    %r13d,%r13d
    9e02:	jmp    9db7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x477>
    9e04:	xor    %ebp,%ebp
    9e06:	jmp    9df2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4b2>
    9e08:	mov    %al,0x10a(%rbx)
    9e0e:	inc    %r8
    9e11:	cmp    %r15,%r8
    9e14:	jb     9a0d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xcd>
    9e1a:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    9e1f:	lea    0x1(%r8),%rax
    9e23:	lea    0x8826(%rip),%rcx        # 12650 <char const* stomptalk::parser::almost_done<3u>(char const*, char const*)>
    9e2a:	mov    %rcx,0x60(%rbx)
    9e2e:	movq   $0x0,0x68(%rbx)
    9e36:	cmpl   $0x0,0x110(%rbx)
    9e3d:	sete   %cl
    9e40:	cmp    %r15,%rax
    9e43:	jae    b8f4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fb4>
    9e49:	test   %cl,%cl
    9e4b:	je     b7a4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e64>
    9e51:	cmpb   $0xa,(%rax)
    9e54:	jne    beff <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25bf>
    9e5a:	lea    0x2(%r8),%r13
    9e5e:	lea    0x877b(%rip),%rax        # 125e0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    9e65:	mov    %rax,0x60(%rbx)
    9e69:	movq   $0x0,0x68(%rbx)
    9e71:	cmp    %r15,%r13
    9e74:	jae    b562 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c22>
    9e7a:	testb  $0x1,0x78(%rbx)
    9e7e:	jne    a47c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb3c>
    9e84:	lea    0x9415(%rip),%rax        # 132a0 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>
    9e8b:	mov    %rax,0x60(%rbx)
    9e8f:	cmpb   $0x0,0x0(%r13)
    9e94:	jne    a7b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe79>
    9e9a:	lea    0x978f(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    9ea1:	mov    %rax,0x60(%rbx)
    9ea5:	movq   $0x0,0x68(%rbx)
    9ead:	cmpb   $0x0,0x0(%r13)
    9eb2:	jne    ba9c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x215c>
    9eb8:	mov    0xf0(%rbx),%rax
    9ebf:	shl    $0x5,%rax
    9ec3:	add    0x38(%rbx),%rax
    9ec7:	mov    0x80(%rbx),%rcx
    9ece:	test   %rcx,%rcx
    9ed1:	cmove  %rcx,%rax
    9ed5:	mov    %rax,0xb0(%rbx)
    9edc:	cmpb   $0x0,0x109(%rbx)
    9ee3:	jne    b8db <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f9b>
    9ee9:	mov    $0x6,%eax
    9eee:	mov    %eax,0x78(%rbx)
    9ef1:	mov    0x30(%rbx),%rax
    9ef5:	mov    0xe0(%rbx),%rcx
    9efc:	lea    0x1(%rcx),%rdx
    9f00:	mov    %rdx,0xe0(%rbx)
    9f07:	lea    (%rcx,%rcx,4),%rcx
    9f0b:	shl    $0x4,%rcx
    9f0f:	movups 0x40(%r14),%xmm0
    9f14:	movups %xmm0,0x40(%rax,%rcx,1)
    9f19:	movdqu (%r14),%xmm0
    9f1e:	movdqu 0x10(%r14),%xmm1
    9f24:	movdqu 0x20(%r14),%xmm2
    9f2a:	movdqu 0x30(%r14),%xmm3
    9f30:	movdqu %xmm3,0x30(%rax,%rcx,1)
    9f36:	movdqu %xmm2,0x20(%rax,%rcx,1)
    9f3c:	movdqu %xmm1,0x10(%rax,%rcx,1)
    9f42:	movdqu %xmm0,(%rax,%rcx,1)
    9f47:	mov    0x98(%rbx),%rax
    9f4e:	add    %rax,0x90(%rbx)
    9f55:	movq   $0x0,0xb8(%rbx)
    9f60:	movq   $0x0,0x98(%rbx)
    9f6b:	movw   $0x100,0x108(%rbx)
    9f74:	add    $0x3,%r8
    9f78:	lea    -0x43df(%rip),%rax        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    9f7f:	mov    %rax,0x60(%rbx)
    9f83:	movq   $0x0,0x68(%rbx)
    9f8b:	cmp    %r15,%r8
    9f8e:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    9f94:	cmpl   $0x0,0x110(%rbx)
    9f9b:	jne    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    9fa1:	mov    %r8,%rcx
    9fa4:	cmp    %r15,%r8
    9fa7:	jae    bf27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25e7>
    9fad:	mov    %r15,%rdi
    9fb0:	sub    %rcx,%rdi
    9fb3:	xor    %esi,%esi
    9fb5:	movzbl (%rcx,%rsi,1),%eax
    9fb9:	cmp    $0xd,%eax
    9fbc:	je     bac4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2184>
    9fc2:	cmp    $0xa,%eax
    9fc5:	je     bf2f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25ef>
    9fcb:	add    $0xa5,%al
    9fcd:	cmp    $0xe5,%al
    9fcf:	jbe    be2d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x24ed>
    9fd5:	mov    0xe0(%rbx),%rax
    9fdc:	cmp    (%rbx),%rax
    9fdf:	je     bb7c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x223c>
    9fe5:	lea    (%rcx,%rsi,1),%rdx
    9fe9:	lea    0x109(%rbx),%rax
    9ff0:	movb   $0x0,0x4(%rax)
    9ff4:	movl   $0x0,(%rax)
    9ffa:	movups %xmm4,0x60(%r14)
    9fff:	movups %xmm4,0x50(%r14)
    a004:	movups %xmm4,0x40(%r14)
    a009:	movups %xmm4,0x30(%r14)
    a00e:	movups %xmm4,0x20(%r14)
    a013:	movups %xmm4,0x10(%r14)
    a018:	movups %xmm4,(%r14)
    a01c:	movb   $0x1,0x108(%rbx)
    a023:	movq   $0x0,0x100(%rbx)
    a02e:	mov    0x48(%rbx),%r8
    a032:	mov    0xe8(%rbx),%rax
    a039:	sub    0x40(%rbx),%r8
    a03d:	mov    %r8,0xf8(%rbx)
    a044:	mov    %rax,0xf0(%rbx)
    a04b:	lea    0x7f9e(%rip),%rax        # 11ff0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>
    a052:	mov    %rax,0x60(%rbx)
    a056:	movq   $0x0,0x68(%rbx)
    a05e:	cmp    %r15,%rdx
    a061:	jae    b775 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e35>
    a067:	sub    %rsi,%rdi
    a06a:	add    %rdx,%rdi
    a06d:	mov    %rdx,%rax
    a070:	movzbl (%rax),%r9d
    a074:	add    $0xbf,%r9b
    a078:	cmp    $0x19,%r9b
    a07c:	ja     a093 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x753>
    a07e:	inc    %rax
    a081:	cmp    %r15,%rax
    a084:	jne    a070 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x730>
    a086:	jmp    b84d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f0d>
    a08b:	mov    %r8,%r12
    a08e:	jmp    9ba7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x267>
    a093:	cmp    %rax,%rdx
    a096:	je     b4b6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b76>
    a09c:	mov    %rax,%rdi
    a09f:	sub    %rcx,%rdi
    a0a2:	sub    %rsi,%rdi
    a0a5:	mov    0x10(%rbx),%r9
    a0a9:	cmp    %r9,%rdi
    a0ac:	ja     bd3a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23fa>
    a0b2:	sub    %r8,%r9
    a0b5:	cmp    %r9,%rdi
    a0b8:	ja     bb60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2220>
    a0be:	mov    %rdi,0x100(%rbx)
    a0c5:	mov    %rdx,0xd0(%rbx)
    a0cc:	mov    %rdi,0xd8(%rbx)
    a0d3:	xor    %r9d,%r9d
    a0d6:	cmp    %r15,%rax
    a0d9:	je     b7a4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e64>
    a0df:	movzbl (%rax),%ecx
    a0e2:	cmp    $0xd,%ecx
    a0e5:	jne    ae13 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14d3>
    a0eb:	test   %rdi,%rdi
    a0ee:	je     bf3c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25fc>
    a0f4:	mov    %rdx,%rsi
    a0f7:	movb   $0x0,0x10d(%rbx)
    a0fe:	movups %xmm4,(%r10)
    a102:	mov    %rsi,0xa0(%rbx)
    a109:	mov    %rdi,0xa8(%rbx)
    a110:	mov    $0xffffffffffffffff,%rsi
    a117:	cmp    $0x7,%rdi
    a11b:	jne    b1e1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18a1>
    a121:	movzbl (%rdx),%edi
    a124:	cmp    $0x4d,%edi
    a127:	jne    b7e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ea7>
    a12d:	mov    (%rdx),%edi
    a12f:	mov    $0x5353454d,%esi
    a134:	xor    %esi,%edi
    a136:	mov    0x3(%rdx),%edx
    a139:	mov    $0x45474153,%esi
    a13e:	xor    %esi,%edx
    a140:	mov    $0x9,%esi
    a145:	or     %edi,%edx
    a147:	jne    b21d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18dd>
    a14d:	mov    %rsi,0x70(%rbx)
    a151:	add    $0xfffffffb,%esi
    a154:	cmp    $0x2,%esi
    a157:	setb   0x10b(%rbx)
    a15e:	lea    0x1(%rax),%r8
    a162:	cmp    $0xa,%cl
    a165:	je     aa3f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10ff>
    a16b:	lea    0x83fe(%rip),%rcx        # 12570 <char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)>
    a172:	mov    %rcx,0x60(%rbx)
    a176:	movq   $0x0,0x68(%rbx)
    a17e:	cmp    %r15,%r8
    a181:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a187:	cmpb   $0xa,(%r8)
    a18b:	jne    bdd6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2496>
    a191:	add    $0x2,%rax
    a195:	lea    -0x85c(%rip),%rcx        # 9940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    a19c:	mov    %rcx,0x60(%rbx)
    a1a0:	movq   $0x0,0x68(%rbx)
    a1a8:	mov    %rax,%r8
    a1ab:	cmp    %r15,%rax
    a1ae:	jb     99a0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x60>
    a1b4:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a1b9:	movzbl (%r8),%eax
    a1bd:	add    $0xa4,%al
    a1bf:	cmp    $0x17,%al
    a1c1:	jae    b3fc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1abc>
    a1c7:	movzbl %al,%ecx
    a1ca:	mov    $0x440081,%eax
    a1cf:	bt     %ecx,%eax
    a1d2:	jae    b3fc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1abc>
    a1d8:	mov    0x10(%rbx),%rax
    a1dc:	mov    0x100(%rbx),%rdx
    a1e3:	cmp    %rdx,%rax
    a1e6:	je     bee9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25a9>
    a1ec:	mov    0xf8(%rbx),%rsi
    a1f3:	add    %rdx,%rsi
    a1f6:	cmp    %rsi,%rax
    a1f9:	je     b887 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f47>
    a1ff:	lea    0xc3ba(%rip),%rsi        # 165c0 <_IO_stdin_used+0x5c0>
    a206:	movzbl (%rcx,%rsi,1),%r12d
    a20b:	inc    %rdx
    a20e:	mov    %rdx,0x100(%rbx)
    a215:	cmpb   $0x1,0x10d(%rbx)
    a21c:	jne    ac8e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x134e>
    a222:	mov    0x48(%rbx),%rax
    a226:	cmp    0x50(%rbx),%rax
    a22a:	jae    bf43 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2603>
    a230:	lea    0x1(%rax),%rcx
    a234:	mov    %rcx,0x48(%rbx)
    a238:	mov    %r12b,(%rax)
    a23b:	incq   0xd8(%rbx)
    a242:	xor    %eax,%eax
    a244:	jmp    9e08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4c8>
    a249:	cmpb   $0x0,0x10b(%rbx)
    a250:	jne    a270 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x930>
    a252:	mov    $0x1,%al
    a254:	cmpb   $0x0,0x10d(%rbx)
    a25b:	je     ab7c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x123c>
    a261:	mov    %rbp,%r8
    a264:	jmp    9e08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4c8>
    a269:	nopl   0x0(%rax)
    a270:	cmpq   $0x0,0xc8(%rbx)
    a278:	je     b7b3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e73>
    a27e:	cmp    $0xd,%eax
    a281:	jne    a370 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa30>
    a287:	mov    0xd0(%rbx),%rdi
    a28e:	mov    0xd8(%rbx),%r12
    a295:	test   %r12,%r12
    a298:	je     b78d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e4d>
    a29e:	mov    %rdi,%r13
    a2a1:	movb   $0x0,0x10d(%rbx)
    a2a8:	movups %xmm4,(%r10)
    a2ac:	cmpb   $0x1,0x10c(%rbx)
    a2b3:	je     a3e9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xaa9>
    a2b9:	mov    0x38(%rbx),%rax
    a2bd:	mov    0xe8(%rbx),%rcx
    a2c4:	lea    0x1(%rcx),%rdx
    a2c8:	mov    %rdx,0xe8(%rbx)
    a2cf:	shl    $0x5,%rcx
    a2d3:	movdqu (%r11),%xmm0
    a2d8:	movdqu %xmm0,(%rax,%rcx,1)
    a2dd:	mov    %r13,0x10(%rax,%rcx,1)
    a2e2:	mov    %r12,0x18(%rax,%rcx,1)
    a2e7:	incq   0x80(%rbx)
    a2ee:	movb   $0x0,0x10c(%rbx)
    a2f5:	movups %xmm4,(%r11)
    a2f9:	lea    0x1(%rbp),%r8
    a2fd:	cmpb   $0xa,0x0(%rbp)
    a301:	je     a380 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa40>
    a303:	cmpl   $0x0,0x110(%rbx)
    a30a:	sete   %al
    a30d:	lea    0x825c(%rip),%rcx        # 12570 <char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)>
    a314:	mov    %rcx,0x60(%rbx)
    a318:	movq   $0x0,0x68(%rbx)
    a320:	cmp    %r15,%r8
    a323:	jae    b56a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c2a>
    a329:	test   %al,%al
    a32b:	je     b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a331:	cmpb   $0xa,(%r8)
    a335:	jne    be5c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x251c>
    a33b:	add    $0x2,%rbp
    a33f:	lea    -0xa06(%rip),%rax        # 9940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    a346:	mov    %rax,0x60(%rbx)
    a34a:	movq   $0x0,0x68(%rbx)
    a352:	mov    %rbp,%r8
    a355:	cmp    %r15,%rbp
    a358:	jb     99a0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x60>
    a35e:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a363:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    a370:	cmp    $0xa,%eax
    a373:	je     a287 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x947>
    a379:	jmp    b7b3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e73>
    a37e:	xchg   %ax,%ax
    a380:	cmpl   $0x0,0x110(%rbx)
    a387:	sete   %al
    a38a:	lea    -0xa51(%rip),%rcx        # 9940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    a391:	mov    %rcx,0x60(%rbx)
    a395:	movq   $0x0,0x68(%rbx)
    a39d:	cmp    %r15,%r8
    a3a0:	jae    b7ac <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e6c>
    a3a6:	test   %al,%al
    a3a8:	jne    99a0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x60>
    a3ae:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a3b3:	cmp    $0xe,%r13
    a3b7:	jne    b855 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f15>
    a3bd:	cmp    0x120(%rbx),%r8
    a3c4:	jbe    b855 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f15>
    a3ca:	movdqu -0x1(%r8),%xmm0
    a3d0:	pcmpeqb 0xc218(%rip),%xmm0        # 165f0 <_IO_stdin_used+0x5f0>
    a3d8:	pmovmskb %xmm0,%eax
    a3dc:	xor    $0xffff,%eax
    a3e1:	sete   %dl
    a3e4:	jmp    9b9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25b>
    a3e9:	mov    %rbp,(%rsp)
    a3ed:	cmp    $0x15,%r12
    a3f1:	jae    b589 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c49>
    a3f7:	test   %r12,%r12
    a3fa:	je     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    a400:	cmp    $0x13,%r12
    a404:	jae    bf50 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2610>
    a40a:	cmp    $0x2,%r12
    a40e:	jne    b480 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b40>
    a414:	movzbl (%rdi),%eax
    a417:	lea    -0x3a(%rax),%ecx
    a41a:	cmp    $0xf6,%cl
    a41d:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    a423:	movsbq 0x1(%rdi),%rcx
    a428:	lea    -0x3a(%rcx),%esi
    a42b:	movabs $0x8000000000000000,%rdx
    a435:	cmp    $0xf6,%sil
    a439:	jb     a442 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb02>
    a43b:	add    $0xffffffffffffffd0,%rcx
    a43f:	mov    %rcx,%rdx
    a442:	lea    (%rax,%rax,4),%rax
    a446:	lea    -0x1e0(,%rax,2),%rax
    a44e:	add    %rdx,%rax
    a451:	test   %rax,%rax
    a454:	js     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    a45a:	cmp    0x20(%rbx),%rax
    a45e:	ja     b8e5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fa5>
    a464:	mov    %rax,0x88(%rbx)
    a46b:	orb    $0x1,0x78(%rbx)
    a46f:	lea    0x70(%rbx),%r14
    a473:	mov    (%rsp),%rbp
    a477:	jmp    a2b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x979>
    a47c:	lea    0x8c6d(%rip),%rax        # 130f0 <char const* stomptalk::parser::body_read<3u>(char const*, char const*)>
    a483:	mov    %rax,0x60(%rbx)
    a487:	mov    0x88(%rbx),%rax
    a48e:	sub    0x90(%rbx),%rax
    a495:	mov    %r15,%rcx
    a498:	sub    %r13,%rcx
    a49b:	cmp    %rax,%rcx
    a49e:	mov    %rax,%r8
    a4a1:	cmovb  %rcx,%r8
    a4a5:	mov    %r13,0xb8(%rbx)
    a4ac:	mov    %r8,0x98(%rbx)
    a4b3:	add    %r13,%r8
    a4b6:	cmp    %rcx,%rax
    a4b9:	ja     b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a4bf:	lea    0x916a(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    a4c6:	mov    %rax,0x60(%rbx)
    a4ca:	cmp    %r15,%r8
    a4cd:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a4d3:	cmpb   $0x0,(%r8)
    a4d7:	jne    c07f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x273f>
    a4dd:	mov    0xf0(%rbx),%rax
    a4e4:	shl    $0x5,%rax
    a4e8:	add    0x38(%rbx),%rax
    a4ec:	mov    0x80(%rbx),%rcx
    a4f3:	test   %rcx,%rcx
    a4f6:	cmove  %rcx,%rax
    a4fa:	mov    %rax,0xb0(%rbx)
    a501:	cmpb   $0x0,0x109(%rbx)
    a508:	jne    b8fb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fbb>
    a50e:	mov    $0x7,%eax
    a513:	mov    %eax,0x78(%rbx)
    a516:	mov    0x30(%rbx),%rax
    a51a:	mov    0xe0(%rbx),%rcx
    a521:	lea    0x1(%rcx),%rdx
    a525:	mov    %rdx,0xe0(%rbx)
    a52c:	lea    (%rcx,%rcx,4),%rcx
    a530:	shl    $0x4,%rcx
    a534:	movups 0x40(%r14),%xmm0
    a539:	movups %xmm0,0x40(%rax,%rcx,1)
    a53e:	movdqu (%r14),%xmm0
    a543:	movdqu 0x10(%r14),%xmm1
    a549:	movdqu 0x20(%r14),%xmm2
    a54f:	movdqu 0x30(%r14),%xmm3
    a555:	movdqu %xmm3,0x30(%rax,%rcx,1)
    a55b:	movdqu %xmm2,0x20(%rax,%rcx,1)
    a561:	movdqu %xmm1,0x10(%rax,%rcx,1)
    a567:	movdqu %xmm0,(%rax,%rcx,1)
    a56c:	mov    0x98(%rbx),%rax
    a573:	add    %rax,0x90(%rbx)
    a57a:	movq   $0x0,0xb8(%rbx)
    a585:	movq   $0x0,0x98(%rbx)
    a590:	movw   $0x100,0x108(%rbx)
    a599:	inc    %r8
    a59c:	lea    -0x4a03(%rip),%rax        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    a5a3:	mov    %rax,0x60(%rbx)
    a5a7:	movq   $0x0,0x68(%rbx)
    a5af:	cmp    %r15,%r8
    a5b2:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a5b8:	cmpl   $0x0,0x110(%rbx)
    a5bf:	jne    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a5c5:	mov    %r8,%rcx
    a5c8:	cmp    %r15,%r8
    a5cb:	jae    bf27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25e7>
    a5d1:	mov    %r15,%rdi
    a5d4:	sub    %rcx,%rdi
    a5d7:	xor    %esi,%esi
    a5d9:	movzbl (%rcx,%rsi,1),%eax
    a5dd:	cmp    $0xd,%eax
    a5e0:	je     bbaa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x226a>
    a5e6:	cmp    $0xa,%eax
    a5e9:	je     bf58 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2618>
    a5ef:	add    $0xa5,%al
    a5f1:	cmp    $0xe5,%al
    a5f3:	jbe    be2d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x24ed>
    a5f9:	mov    0xe0(%rbx),%rax
    a600:	cmp    (%rbx),%rax
    a603:	je     bb7c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x223c>
    a609:	lea    (%rcx,%rsi,1),%rdx
    a60d:	lea    0x109(%rbx),%rax
    a614:	movb   $0x0,0x4(%rax)
    a618:	movl   $0x0,(%rax)
    a61e:	movups %xmm4,0x60(%r14)
    a623:	movups %xmm4,0x50(%r14)
    a628:	movups %xmm4,0x40(%r14)
    a62d:	movups %xmm4,0x30(%r14)
    a632:	movups %xmm4,0x20(%r14)
    a637:	movups %xmm4,0x10(%r14)
    a63c:	movups %xmm4,(%r14)
    a640:	movb   $0x1,0x108(%rbx)
    a647:	movq   $0x0,0x100(%rbx)
    a652:	mov    0x48(%rbx),%r8
    a656:	mov    0xe8(%rbx),%rax
    a65d:	sub    0x40(%rbx),%r8
    a661:	mov    %r8,0xf8(%rbx)
    a668:	mov    %rax,0xf0(%rbx)
    a66f:	lea    0x797a(%rip),%rax        # 11ff0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>
    a676:	mov    %rax,0x60(%rbx)
    a67a:	movq   $0x0,0x68(%rbx)
    a682:	cmp    %r15,%rdx
    a685:	jae    b781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e41>
    a68b:	sub    %rsi,%rdi
    a68e:	add    %rdx,%rdi
    a691:	mov    %rdx,%rax
    a694:	data16 data16 cs nopw 0x0(%rax,%rax,1)
    a6a0:	movzbl (%rax),%r9d
    a6a4:	add    $0xbf,%r9b
    a6a8:	cmp    $0x19,%r9b
    a6ac:	ja     a6bb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd7b>
    a6ae:	inc    %rax
    a6b1:	cmp    %r15,%rax
    a6b4:	jne    a6a0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd60>
    a6b6:	jmp    b896 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f56>
    a6bb:	cmp    %rax,%rdx
    a6be:	je     b571 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c31>
    a6c4:	mov    %rax,%rdi
    a6c7:	sub    %rcx,%rdi
    a6ca:	sub    %rsi,%rdi
    a6cd:	mov    0x10(%rbx),%r9
    a6d1:	cmp    %r9,%rdi
    a6d4:	ja     bd3a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23fa>
    a6da:	sub    %r8,%r9
    a6dd:	cmp    %r9,%rdi
    a6e0:	ja     bb60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2220>
    a6e6:	mov    %rdi,0x100(%rbx)
    a6ed:	mov    %rdx,0xd0(%rbx)
    a6f4:	mov    %rdi,0xd8(%rbx)
    a6fb:	xor    %r9d,%r9d
    a6fe:	cmp    %r15,%rax
    a701:	je     b7a4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e64>
    a707:	movzbl (%rax),%ecx
    a70a:	cmp    $0xd,%ecx
    a70d:	jne    b0ff <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17bf>
    a713:	test   %rdi,%rdi
    a716:	je     bf66 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2626>
    a71c:	mov    %rdx,%rsi
    a71f:	movb   $0x0,0x10d(%rbx)
    a726:	movups %xmm4,(%r10)
    a72a:	mov    %rsi,0xa0(%rbx)
    a731:	mov    %rdi,0xa8(%rbx)
    a738:	mov    $0xffffffffffffffff,%rsi
    a73f:	cmp    $0x7,%rdi
    a743:	je     a121 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e1>
    a749:	jmp    b26f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x192f>
    a74e:	mov    0x48(%rbx),%rdi
    a752:	mov    0x50(%rbx),%rax
    a756:	sub    %rdi,%rax
    a759:	cmp    %rax,%r13
    a75c:	ja     bf6d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x262d>
    a762:	mov    %r8,%rsi
    a765:	mov    %r13,%rdx
    a768:	call   22a0 <memcpy@plt>
    a76d:	mov    0x48(%rbx),%rax
    a771:	add    %r13,%rax
    a774:	mov    %rax,0x48(%rbx)
    a778:	mov    0xd8(%rbx),%rax
    a77f:	lea    0xc0(%rbx),%r11
    a786:	lea    0xd0(%rbx),%r10
    a78d:	xor    %r9d,%r9d
    a790:	xorps  %xmm4,%xmm4
    a793:	movdqa 0xbe65(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    a79b:	movdqa 0xbe6d(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    a7a3:	movdqa 0xbe75(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    a7ab:	movdqa 0xbe7c(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    a7b4:	jmp    9c0a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca>
    a7b9:	mov    %r15,%rdx
    a7bc:	sub    %r13,%rdx
    a7bf:	mov    %r13,%rdi
    a7c2:	xor    %esi,%esi
    a7c4:	call   22f0 <memchr@plt>
    a7c9:	mov    %rax,%r8
    a7cc:	mov    %r15,%rax
    a7cf:	test   %r8,%r8
    a7d2:	je     a7d7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe97>
    a7d4:	mov    %r8,%rax
    a7d7:	sub    %r13,%rax
    a7da:	mov    0x20(%rbx),%rcx
    a7de:	sub    0x90(%rbx),%rcx
    a7e5:	cmp    %rcx,%rax
    a7e8:	ja     c1bd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x287d>
    a7ee:	mov    %r13,0xb8(%rbx)
    a7f5:	mov    %rax,0x98(%rbx)
    a7fc:	test   %r8,%r8
    a7ff:	lea    0xc0(%rbx),%r11
    a806:	lea    0xd0(%rbx),%r10
    a80d:	mov    $0x0,%r9d
    a813:	xorps  %xmm4,%xmm4
    a816:	movdqa 0xbde2(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    a81e:	movdqa 0xbdea(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    a826:	movdqa 0xbdf2(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    a82e:	movdqa 0xbdf9(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    a837:	je     bf8e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x264e>
    a83d:	lea    0x8dec(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    a844:	mov    %rax,0x60(%rbx)
    a848:	movq   $0x0,0x68(%rbx)
    a850:	cmp    %r15,%r8
    a853:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a859:	cmpb   $0x0,(%r8)
    a85d:	jne    bc3e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22fe>
    a863:	mov    0xf0(%rbx),%rax
    a86a:	shl    $0x5,%rax
    a86e:	add    0x38(%rbx),%rax
    a872:	mov    0x80(%rbx),%rcx
    a879:	test   %rcx,%rcx
    a87c:	cmove  %rcx,%rax
    a880:	mov    %rax,0xb0(%rbx)
    a887:	cmpb   $0x0,0x109(%rbx)
    a88e:	jne    ba92 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2152>
    a894:	mov    $0x6,%eax
    a899:	mov    %eax,0x78(%rbx)
    a89c:	mov    0x30(%rbx),%rax
    a8a0:	mov    0xe0(%rbx),%rcx
    a8a7:	lea    0x1(%rcx),%rdx
    a8ab:	mov    %rdx,0xe0(%rbx)
    a8b2:	lea    (%rcx,%rcx,4),%rcx
    a8b6:	shl    $0x4,%rcx
    a8ba:	movups 0x40(%r14),%xmm0
    a8bf:	movups %xmm0,0x40(%rax,%rcx,1)
    a8c4:	movdqu (%r14),%xmm0
    a8c9:	movdqu 0x10(%r14),%xmm1
    a8cf:	movdqu 0x20(%r14),%xmm2
    a8d5:	movdqu 0x30(%r14),%xmm3
    a8db:	movdqu %xmm3,0x30(%rax,%rcx,1)
    a8e1:	movdqu %xmm2,0x20(%rax,%rcx,1)
    a8e7:	movdqu %xmm1,0x10(%rax,%rcx,1)
    a8ed:	movdqu %xmm0,(%rax,%rcx,1)
    a8f2:	mov    0x98(%rbx),%rax
    a8f9:	add    %rax,0x90(%rbx)
    a900:	movq   $0x0,0xb8(%rbx)
    a90b:	movq   $0x0,0x98(%rbx)
    a916:	movw   $0x100,0x108(%rbx)
    a91f:	inc    %r8
    a922:	lea    -0x4d89(%rip),%rax        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    a929:	mov    %rax,0x60(%rbx)
    a92d:	movq   $0x0,0x68(%rbx)
    a935:	cmp    %r15,%r8
    a938:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a93e:	cmpl   $0x0,0x110(%rbx)
    a945:	jne    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    a94b:	mov    %r8,%rcx
    a94e:	cmp    %r15,%r8
    a951:	jae    bf27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25e7>
    a957:	mov    %r15,%rdi
    a95a:	sub    %rcx,%rdi
    a95d:	xor    %esi,%esi
    a95f:	movzbl (%rcx,%rsi,1),%eax
    a963:	cmp    $0xd,%eax
    a966:	je     bca6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2366>
    a96c:	cmp    $0xa,%eax
    a96f:	je     bf82 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2642>
    a975:	add    $0xa5,%al
    a977:	cmp    $0xe5,%al
    a979:	jbe    be2d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x24ed>
    a97f:	mov    0xe0(%rbx),%rax
    a986:	cmp    (%rbx),%rax
    a989:	je     bb7c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x223c>
    a98f:	lea    (%rcx,%rsi,1),%rdx
    a993:	lea    0x109(%rbx),%rax
    a99a:	movb   $0x0,0x4(%rax)
    a99e:	movl   $0x0,(%rax)
    a9a4:	movups %xmm4,0x60(%r14)
    a9a9:	movups %xmm4,0x50(%r14)
    a9ae:	movups %xmm4,0x40(%r14)
    a9b3:	movups %xmm4,0x30(%r14)
    a9b8:	movups %xmm4,0x20(%r14)
    a9bd:	movups %xmm4,0x10(%r14)
    a9c2:	movups %xmm4,(%r14)
    a9c6:	movb   $0x1,0x108(%rbx)
    a9cd:	movq   $0x0,0x100(%rbx)
    a9d8:	mov    0x48(%rbx),%r8
    a9dc:	mov    0xe8(%rbx),%rax
    a9e3:	sub    0x40(%rbx),%r8
    a9e7:	mov    %r8,0xf8(%rbx)
    a9ee:	mov    %rax,0xf0(%rbx)
    a9f5:	lea    0x75f4(%rip),%rax        # 11ff0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>
    a9fc:	mov    %rax,0x60(%rbx)
    aa00:	movq   $0x0,0x68(%rbx)
    aa08:	cmp    %r15,%rdx
    aa0b:	jae    b795 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e55>
    aa11:	sub    %rsi,%rdi
    aa14:	add    %rdx,%rdi
    aa17:	mov    %rdx,%rax
    aa1a:	nopw   0x0(%rax,%rax,1)
    aa20:	movzbl (%rax),%r9d
    aa24:	add    $0xbf,%r9b
    aa28:	cmp    $0x19,%r9b
    aa2c:	ja     aadf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x119f>
    aa32:	inc    %rax
    aa35:	cmp    %r15,%rax
    aa38:	jne    aa20 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10e0>
    aa3a:	jmp    b8a5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f65>
    aa3f:	lea    -0x1106(%rip),%rax        # 9940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    aa46:	mov    %rax,0x60(%rbx)
    aa4a:	movq   $0x0,0x68(%rbx)
    aa52:	cmp    %r15,%r8
    aa55:	jb     99a0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x60>
    aa5b:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    aa60:	mov    %rbp,(%rsp)
    aa64:	mov    %r14,%rbp
    aa67:	mov    0x48(%rbx),%rdi
    aa6b:	mov    0x50(%rbx),%rax
    aa6f:	sub    %rdi,%rax
    aa72:	cmp    %rax,%r13
    aa75:	ja     bf76 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2636>
    aa7b:	mov    %r8,%r14
    aa7e:	mov    %r8,%rsi
    aa81:	mov    %r13,%rdx
    aa84:	call   22a0 <memcpy@plt>
    aa89:	mov    0x48(%rbx),%rax
    aa8d:	add    %r13,%rax
    aa90:	mov    %rax,0x48(%rbx)
    aa94:	mov    0xd8(%rbx),%rcx
    aa9b:	lea    0xc0(%rbx),%r11
    aaa2:	lea    0xd0(%rbx),%r10
    aaa9:	xor    %r9d,%r9d
    aaac:	xorps  %xmm4,%xmm4
    aaaf:	movdqa 0xbb49(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    aab7:	movdqa 0xbb51(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    aabf:	movdqa 0xbb59(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    aac7:	movdqa 0xbb60(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    aad0:	mov    %r14,%r8
    aad3:	mov    %rbp,%r14
    aad6:	mov    (%rsp),%rbp
    aada:	jmp    9b54 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x214>
    aadf:	cmp    %rax,%rdx
    aae2:	je     b57a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c3a>
    aae8:	mov    %rax,%rdi
    aaeb:	sub    %rcx,%rdi
    aaee:	sub    %rsi,%rdi
    aaf1:	mov    0x10(%rbx),%r9
    aaf5:	cmp    %r9,%rdi
    aaf8:	ja     bd3a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23fa>
    aafe:	sub    %r8,%r9
    ab01:	cmp    %r9,%rdi
    ab04:	ja     bb60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2220>
    ab0a:	mov    %rdi,0x100(%rbx)
    ab11:	mov    %rdx,0xd0(%rbx)
    ab18:	mov    %rdi,0xd8(%rbx)
    ab1f:	mov    %rax,%rsi
    ab22:	xor    %r9d,%r9d
    ab25:	cmp    %r15,%rax
    ab28:	je     b7a4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e64>
    ab2e:	movzbl (%rax),%ecx
    ab31:	cmp    $0xd,%ecx
    ab34:	jne    b242 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1902>
    ab3a:	test   %rdi,%rdi
    ab3d:	je     bf96 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2656>
    ab43:	mov    %rdx,%rsi
    ab46:	movb   $0x0,0x10d(%rbx)
    ab4d:	movups %xmm4,(%r10)
    ab51:	mov    %rsi,0xa0(%rbx)
    ab58:	mov    %rdi,0xa8(%rbx)
    ab5f:	mov    $0xffffffffffffffff,%rsi
    ab66:	cmp    $0x7,%rdi
    ab6a:	je     a121 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e1>
    ab70:	jmp    b3b8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a78>
    ab75:	mov    $0x1,%cl
    ab77:	jmp    9ab9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x179>
    ab7c:	mov    %rbp,(%rsp)
    ab80:	mov    0xa8(%rbx),%r12
    ab87:	test   %r12,%r12
    ab8a:	je     b43f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1aff>
    ab90:	mov    0x40(%rbx),%rax
    ab94:	mov    0xa0(%rbx),%rsi
    ab9b:	mov    %rsi,%rcx
    ab9e:	sub    %rax,%rcx
    aba1:	cmp    0x10(%rbx),%rcx
    aba5:	jae    b2bc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x197c>
    abab:	mov    %r15,0x8(%rsp)
    abb0:	mov    0xf0(%rbx),%r15
    abb7:	cmp    0xe8(%rbx),%r15
    abbe:	jae    abcc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x128c>
    abc0:	mov    %r15,%r14
    abc3:	shl    $0x5,%r14
    abc7:	jmp    9c30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2f0>
    abcc:	mov    0xc8(%rbx),%r13
    abd3:	mov    0x48(%rbx),%r12
    abd7:	mov    0x50(%rbx),%rax
    abdb:	test   %r13,%r13
    abde:	je     b447 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b07>
    abe4:	mov    0x40(%rbx),%rcx
    abe8:	mov    0xc0(%rbx),%rsi
    abef:	mov    %rsi,%rdx
    abf2:	sub    %rcx,%rdx
    abf5:	cmp    0x10(%rbx),%rdx
    abf9:	mov    0x8(%rsp),%r15
    abfe:	jae    b2f5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19b5>
    ac04:	lea    0x70(%rbx),%r14
    ac08:	mov    0xd8(%rbx),%r13
    ac0f:	sub    %r12,%rax
    ac12:	cmp    %rax,%r13
    ac15:	ja     c08e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x274e>
    ac1b:	mov    %r12,%rax
    ac1e:	test   %r13,%r13
    ac21:	je     ac40 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1300>
    ac23:	mov    0xd0(%rbx),%rsi
    ac2a:	mov    %r12,%rdi
    ac2d:	mov    %r13,%rdx
    ac30:	call   22a0 <memcpy@plt>
    ac35:	lea    0xc0(%rbx),%r11
    ac3c:	mov    0x48(%rbx),%rax
    ac40:	add    %r13,%rax
    ac43:	mov    %rax,0x48(%rbx)
    ac47:	mov    %r12,0xd0(%rbx)
    ac4e:	movb   $0x1,0x10d(%rbx)
    ac55:	mov    (%rsp),%r8
    ac59:	lea    0xd0(%rbx),%r10
    ac60:	xor    %r9d,%r9d
    ac63:	xorps  %xmm4,%xmm4
    ac66:	movdqa 0xb992(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    ac6e:	movdqa 0xb99a(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    ac76:	movdqa 0xb9a2(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    ac7e:	movdqa 0xb9a9(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    ac87:	mov    $0x1,%al
    ac89:	jmp    9e08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4c8>
    ac8e:	mov    0xa8(%rbx),%r13
    ac95:	test   %r13,%r13
    ac98:	je     b45b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b1b>
    ac9e:	mov    0x40(%rbx),%rcx
    aca2:	mov    0xa0(%rbx),%rsi
    aca9:	mov    %rsi,%rdx
    acac:	sub    %rcx,%rdx
    acaf:	cmp    %rax,%rdx
    acb2:	jae    b330 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19f0>
    acb8:	mov    %r12b,(%rsp)
    acbc:	mov    %r15,0x8(%rsp)
    acc1:	mov    0xf0(%rbx),%r15
    acc8:	cmp    0xe8(%rbx),%r15
    accf:	jae    ace2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13a2>
    acd1:	mov    %r15,%r12
    acd4:	shl    $0x5,%r12
    acd8:	mov    %r8,0x10(%rsp)
    acdd:	jmp    9d20 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3e0>
    ace2:	mov    0xc8(%rbx),%rbp
    ace9:	mov    0x48(%rbx),%r13
    aced:	mov    0x50(%rbx),%rax
    acf1:	test   %rbp,%rbp
    acf4:	je     b462 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b22>
    acfa:	mov    0x40(%rbx),%rcx
    acfe:	mov    0xc0(%rbx),%rsi
    ad05:	mov    %rsi,%rdx
    ad08:	sub    %rcx,%rdx
    ad0b:	cmp    0x10(%rbx),%rdx
    ad0f:	mov    0x8(%rsp),%r15
    ad14:	lea    0x70(%rbx),%r14
    ad18:	jae    b36f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a2f>
    ad1e:	mov    %r8,%r12
    ad21:	mov    0xd8(%rbx),%rbp
    ad28:	sub    %r13,%rax
    ad2b:	cmp    %rax,%rbp
    ad2e:	ja     c097 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2757>
    ad34:	mov    %r13,%rax
    ad37:	test   %rbp,%rbp
    ad3a:	je     ad59 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1419>
    ad3c:	mov    0xd0(%rbx),%rsi
    ad43:	mov    %r13,%rdi
    ad46:	mov    %rbp,%rdx
    ad49:	call   22a0 <memcpy@plt>
    ad4e:	lea    0xc0(%rbx),%r11
    ad55:	mov    0x48(%rbx),%rax
    ad59:	add    %rbp,%rax
    ad5c:	mov    %r13,0xd0(%rbx)
    ad63:	movb   $0x1,0x10d(%rbx)
    ad6a:	lea    0xd0(%rbx),%r10
    ad71:	xor    %r9d,%r9d
    ad74:	xorps  %xmm4,%xmm4
    ad77:	movdqa 0xb881(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    ad7f:	movdqa 0xb889(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    ad87:	movdqa 0xb891(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    ad8f:	movdqa 0xb898(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    ad98:	mov    %r12,%r8
    ad9b:	movzbl (%rsp),%r12d
    ada0:	jmp    a226 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x8e6>
    ada5:	data16 cs nopw 0x0(%rax,%rax,1)
    adb0:	mov    %rdi,%rbp
    adb3:	movzbl (%rdi),%edi
    adb6:	cmp    $0x3a,%edi
    adb9:	jne    adc4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1484>
    adbb:	test   $0x1,%cl
    adbe:	jne    b476 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b36>
    adc4:	mov    %r14,%r13
    adc7:	mov    %r8,%r14
    adca:	cmp    $0xd,%edi
    adcd:	ja     addf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x149f>
    adcf:	mov    $0x2401,%r8d
    add5:	bt     %edi,%r8d
    add9:	jb     b229 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18e9>
    addf:	cmp    $0x3a,%edi
    ade2:	setne  %r8b
    ade6:	cmp    $0x5c,%edi
    ade9:	setne  %dil
    aded:	and    %r8b,%dil
    adf0:	or     %al,%dil
    adf3:	cmp    $0x1,%dil
    adf7:	mov    %r14,%r8
    adfa:	mov    %r13,%r14
    adfd:	jne    b22f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18ef>
    ae03:	mov    %rbp,%rdi
    ae06:	inc    %rdi
    ae09:	cmp    %r15,%rdi
    ae0c:	jb     adb0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1470>
    ae0e:	jmp    b4ae <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b6e>
    ae13:	cmp    $0xa,%ecx
    ae16:	je     a0eb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7ab>
    ae1c:	jmp    b108 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17c8>
    ae21:	mov    (%rdx),%rdi
    ae24:	movabs $0x455443454e4e4f43,%rsi
    ae2e:	xor    %rsi,%rdi
    ae31:	movzbl 0x8(%rdx),%r8d
    ae36:	xor    $0x44,%r8
    ae3a:	mov    $0x6,%esi
    ae3f:	or     %rdi,%r8
    ae42:	je     a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    ae48:	movabs $0x4249524353425553,%rdi
    ae52:	xor    (%rdx),%rdi
    ae55:	movzbl 0x8(%rdx),%edx
    ae59:	xor    $0x45,%rdx
    ae5d:	xor    %esi,%esi
    ae5f:	or     %rdi,%rdx
    ae62:	setne  %sil
    ae66:	neg    %rsi
    ae69:	or     $0xe,%rsi
    ae6d:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    ae72:	lea    0x1(%r8),%r13
    ae76:	lea    0x7763(%rip),%rax        # 125e0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    ae7d:	mov    %rax,0x60(%rbx)
    ae81:	movq   $0x0,0x68(%rbx)
    ae89:	cmpl   $0x0,0x110(%rbx)
    ae90:	sete   %al
    ae93:	cmp    %r15,%r13
    ae96:	jae    b89e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f5e>
    ae9c:	test   %al,%al
    ae9e:	je     b562 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c22>
    aea4:	testb  $0x1,0x78(%rbx)
    aea8:	jne    af9f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x165f>
    aeae:	lea    0x83eb(%rip),%rax        # 132a0 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>
    aeb5:	mov    %rax,0x60(%rbx)
    aeb9:	cmpb   $0x0,0x0(%r13)
    aebe:	jne    b13c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17fc>
    aec4:	lea    0x8765(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    aecb:	mov    %rax,0x60(%rbx)
    aecf:	movq   $0x0,0x68(%rbx)
    aed7:	cmpb   $0x0,0x0(%r13)
    aedc:	jne    bd7b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x243b>
    aee2:	mov    0xf0(%rbx),%rax
    aee9:	shl    $0x5,%rax
    aeed:	add    0x38(%rbx),%rax
    aef1:	mov    0x80(%rbx),%rcx
    aef8:	test   %rcx,%rcx
    aefb:	cmove  %rcx,%rax
    aeff:	mov    %rax,0xb0(%rbx)
    af06:	cmpb   $0x0,0x109(%rbx)
    af0d:	jne    bb91 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2251>
    af13:	mov    $0x6,%eax
    af18:	mov    %eax,0x78(%rbx)
    af1b:	mov    0x30(%rbx),%rax
    af1f:	mov    0xe0(%rbx),%rcx
    af26:	lea    0x1(%rcx),%rdx
    af2a:	mov    %rdx,0xe0(%rbx)
    af31:	lea    (%rcx,%rcx,4),%rcx
    af35:	shl    $0x4,%rcx
    af39:	movups 0x40(%r14),%xmm0
    af3e:	movups %xmm0,0x40(%rax,%rcx,1)
    af43:	movups (%r14),%xmm0
    af47:	movups 0x10(%r14),%xmm1
    af4c:	movups 0x20(%r14),%xmm2
    af51:	movups 0x30(%r14),%xmm3
    af56:	movups %xmm3,0x30(%rax,%rcx,1)
    af5b:	movups %xmm2,0x20(%rax,%rcx,1)
    af60:	movups %xmm1,0x10(%rax,%rcx,1)
    af65:	movups %xmm0,(%rax,%rcx,1)
    af69:	mov    0x98(%rbx),%rax
    af70:	add    %rax,0x90(%rbx)
    af77:	movq   $0x0,0xb8(%rbx)
    af82:	movq   $0x0,0x98(%rbx)
    af8d:	movw   $0x100,0x108(%rbx)
    af96:	add    $0x2,%r8
    af9a:	jmp    b0ba <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x177a>
    af9f:	lea    0x814a(%rip),%rax        # 130f0 <char const* stomptalk::parser::body_read<3u>(char const*, char const*)>
    afa6:	mov    %rax,0x60(%rbx)
    afaa:	mov    0x88(%rbx),%rax
    afb1:	sub    0x90(%rbx),%rax
    afb8:	mov    %r15,%rcx
    afbb:	sub    %r13,%rcx
    afbe:	cmp    %rax,%rcx
    afc1:	mov    %rax,%r8
    afc4:	cmovb  %rcx,%r8
    afc8:	mov    %r13,0xb8(%rbx)
    afcf:	mov    %r8,0x98(%rbx)
    afd6:	add    %r13,%r8
    afd9:	cmp    %rcx,%rax
    afdc:	setbe  %al
    afdf:	ja     bf9d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x265d>
    afe5:	cmp    %r15,%r8
    afe8:	jae    bf9d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x265d>
    afee:	lea    0x863b(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    aff5:	mov    %rax,0x60(%rbx)
    aff9:	cmpb   $0x0,(%r8)
    affd:	jne    c07f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x273f>
    b003:	mov    0xf0(%rbx),%rax
    b00a:	shl    $0x5,%rax
    b00e:	add    0x38(%rbx),%rax
    b012:	mov    0x80(%rbx),%rcx
    b019:	test   %rcx,%rcx
    b01c:	cmove  %rcx,%rax
    b020:	mov    %rax,0xb0(%rbx)
    b027:	cmpb   $0x0,0x109(%rbx)
    b02e:	jne    bc9c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x235c>
    b034:	mov    $0x7,%eax
    b039:	mov    %eax,0x78(%rbx)
    b03c:	mov    0x30(%rbx),%rax
    b040:	mov    0xe0(%rbx),%rcx
    b047:	lea    0x1(%rcx),%rdx
    b04b:	mov    %rdx,0xe0(%rbx)
    b052:	lea    (%rcx,%rcx,4),%rcx
    b056:	shl    $0x4,%rcx
    b05a:	movups 0x40(%r14),%xmm0
    b05f:	movups %xmm0,0x40(%rax,%rcx,1)
    b064:	movups (%r14),%xmm0
    b068:	movups 0x10(%r14),%xmm1
    b06d:	movups 0x20(%r14),%xmm2
    b072:	movups 0x30(%r14),%xmm3
    b077:	movups %xmm3,0x30(%rax,%rcx,1)
    b07c:	movups %xmm2,0x20(%rax,%rcx,1)
    b081:	movups %xmm1,0x10(%rax,%rcx,1)
    b086:	movups %xmm0,(%rax,%rcx,1)
    b08a:	mov    0x98(%rbx),%rax
    b091:	add    %rax,0x90(%rbx)
    b098:	movq   $0x0,0xb8(%rbx)
    b0a3:	movq   $0x0,0x98(%rbx)
    b0ae:	movw   $0x100,0x108(%rbx)
    b0b7:	inc    %r8
    b0ba:	lea    -0x5521(%rip),%rax        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    b0c1:	mov    %rax,0x60(%rbx)
    b0c5:	movq   $0x0,0x68(%rbx)
    b0cd:	cmp    %r15,%r8
    b0d0:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    b0d6:	cmpl   $0x0,0x110(%rbx)
    b0dd:	jne    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    b0e3:	mov    %rbx,%rdi
    b0e6:	mov    %r8,%rsi
    b0e9:	mov    %r15,%rdx
    b0ec:	add    $0x28,%rsp
    b0f0:	pop    %rbx
    b0f1:	pop    %r12
    b0f3:	pop    %r13
    b0f5:	pop    %r14
    b0f7:	pop    %r15
    b0f9:	pop    %rbp
    b0fa:	jmp    5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    b0ff:	cmp    $0xa,%ecx
    b102:	je     a713 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdd3>
    b108:	movabs $0x600000003,%rcx
    b112:	mov    %rcx,0x110(%rbx)
    b119:	mov    %rax,%rcx
    b11c:	sub    0x120(%rbx),%rcx
    b123:	mov    %rcx,0x118(%rbx)
    b12a:	inc    %rax
    b12d:	mov    %rax,0x128(%rbx)
    b134:	mov    %rax,%r8
    b137:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    b13c:	mov    %r15,%rdx
    b13f:	sub    %r13,%rdx
    b142:	mov    %r13,%rdi
    b145:	xor    %esi,%esi
    b147:	call   22f0 <memchr@plt>
    b14c:	mov    %rax,%r8
    b14f:	test   %rax,%rax
    b152:	je     c0a0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2760>
    b158:	cmp    %r15,%r8
    b15b:	jae    c0a0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2760>
    b161:	mov    %r8,%rcx
    b164:	sub    %r13,%rcx
    b167:	mov    0x20(%rbx),%rax
    b16b:	sub    0x90(%rbx),%rax
    b172:	cmp    %rax,%rcx
    b175:	ja     bdfe <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x24be>
    b17b:	mov    %r13,0xb8(%rbx)
    b182:	mov    %rcx,0x98(%rbx)
    b189:	lea    0x84a0(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    b190:	mov    %rax,0x60(%rbx)
    b194:	movq   $0x0,0x68(%rbx)
    b19c:	cmpb   $0x0,(%r8)
    b1a0:	jne    bc3e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22fe>
    b1a6:	mov    0xf0(%rbx),%rax
    b1ad:	shl    $0x5,%rax
    b1b1:	add    0x38(%rbx),%rax
    b1b5:	mov    0x80(%rbx),%rcx
    b1bc:	test   %rcx,%rcx
    b1bf:	cmove  %rcx,%rax
    b1c3:	mov    %rax,0xb0(%rbx)
    b1ca:	cmpb   $0x0,0x109(%rbx)
    b1d1:	jne    bd71 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2431>
    b1d7:	mov    $0x6,%eax
    b1dc:	jmp    b039 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16f9>
    b1e1:	add    $0xfffffffffffffffd,%rdi
    b1e5:	cmp    $0x8,%rdi
    b1e9:	ja     a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    b1ef:	lea    0xb522(%rip),%r8        # 16718 <_IO_stdin_used+0x718>
    b1f6:	movslq (%r8,%rdi,4),%rdi
    b1fa:	add    %r8,%rdi
    b1fd:	notrack jmp *%rdi
    b200:	cmpl   $0x4b43414e,(%rdx)
    b206:	je     c277 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2937>
    b20c:	mov    $0xc,%esi
    b211:	cmpl   $0x444e4553,(%rdx)
    b217:	je     a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    b21d:	mov    $0xffffffffffffffff,%rsi
    b224:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    b229:	mov    %r14,%r8
    b22c:	mov    %r13,%r14
    b22f:	test   %rdx,%rdx
    b232:	cmove  %rsi,%rdx
    b236:	test   %r12,%r12
    b239:	cmove  %rdx,%r12
    b23d:	jmp    9ae7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a7>
    b242:	cmp    $0xa,%ecx
    b245:	je     ab3a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11fa>
    b24b:	movabs $0x600000003,%rcx
    b255:	mov    %rcx,0x110(%rbx)
    b25c:	sub    0x120(%rbx),%rsi
    b263:	mov    %rsi,0x118(%rbx)
    b26a:	jmp    b12a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17ea>
    b26f:	add    $0xfffffffffffffffd,%rdi
    b273:	cmp    $0x8,%rdi
    b277:	ja     a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    b27d:	lea    0xb44c(%rip),%r8        # 166d0 <_IO_stdin_used+0x6d0>
    b284:	movslq (%r8,%rdi,4),%rdi
    b288:	add    %r8,%rdi
    b28b:	notrack jmp *%rdi
    b28e:	movzbl (%rdx),%edi
    b291:	cmp    $0x53,%edi
    b294:	jne    c7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ea3>
    b29a:	mov    $0x4d4f5453,%edi
    b29f:	xor    (%rdx),%edi
    b2a1:	movzbl 0x4(%rdx),%edx
    b2a5:	xor    $0x50,%edx
    b2a8:	xor    %esi,%esi
    b2aa:	or     %edi,%edx
    b2ac:	setne  %sil
    b2b0:	neg    %rsi
    b2b3:	or     $0xd,%rsi
    b2b7:	jmp    b80f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ecf>
    b2bc:	mov    0x48(%rbx),%r13
    b2c0:	mov    0x50(%rbx),%rcx
    b2c4:	sub    %r13,%rcx
    b2c7:	cmp    %rcx,%r12
    b2ca:	ja     b2de <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x199e>
    b2cc:	mov    %r13,%rdi
    b2cf:	mov    %r12,%rdx
    b2d2:	call   22a0 <memcpy@plt>
    b2d7:	add    0x48(%rbx),%r12
    b2db:	mov    %r12,%rax
    b2de:	mov    %rax,0x48(%rbx)
    b2e2:	lea    0xc0(%rbx),%r11
    b2e9:	mov    %r13,0xa0(%rbx)
    b2f0:	jmp    abab <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x126b>
    b2f5:	mov    %rax,%rdx
    b2f8:	sub    %r12,%rdx
    b2fb:	cmp    %rdx,%r13
    b2fe:	lea    0x70(%rbx),%r14
    b302:	ja     b31a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19da>
    b304:	mov    %r12,%rdi
    b307:	mov    %r13,%rdx
    b30a:	call   22a0 <memcpy@plt>
    b30f:	add    0x48(%rbx),%r13
    b313:	mov    0x50(%rbx),%rax
    b317:	mov    %r13,%rcx
    b31a:	mov    %rcx,0x48(%rbx)
    b31e:	lea    0xc0(%rbx),%r11
    b325:	mov    %r12,(%r11)
    b328:	mov    %rcx,%r12
    b32b:	jmp    ac08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12c8>
    b330:	mov    %r8,%r14
    b333:	mov    0x48(%rbx),%rbp
    b337:	mov    0x50(%rbx),%rax
    b33b:	sub    %rbp,%rax
    b33e:	cmp    %rax,%r13
    b341:	ja     b355 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a15>
    b343:	mov    %rbp,%rdi
    b346:	mov    %r13,%rdx
    b349:	call   22a0 <memcpy@plt>
    b34e:	add    0x48(%rbx),%r13
    b352:	mov    %r13,%rcx
    b355:	mov    %rcx,0x48(%rbx)
    b359:	lea    0xc0(%rbx),%r11
    b360:	mov    %r14,%r8
    b363:	mov    %rbp,0xa0(%rbx)
    b36a:	jmp    acb8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1378>
    b36f:	mov    %r8,%r12
    b372:	mov    %rax,%rdx
    b375:	sub    %r13,%rdx
    b378:	cmp    %rdx,%rbp
    b37b:	ja     b393 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a53>
    b37d:	mov    %r13,%rdi
    b380:	mov    %rbp,%rdx
    b383:	call   22a0 <memcpy@plt>
    b388:	add    0x48(%rbx),%rbp
    b38c:	mov    0x50(%rbx),%rax
    b390:	mov    %rbp,%rcx
    b393:	mov    %rcx,0x48(%rbx)
    b397:	lea    0xc0(%rbx),%r11
    b39e:	mov    %r12,%r8
    b3a1:	mov    %r13,(%r11)
    b3a4:	mov    %rcx,%r13
    b3a7:	jmp    ad1e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13de>
    b3ac:	mov    0xd8(%rbx),%rcx
    b3b3:	jmp    9b5e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21e>
    b3b8:	add    $0xfffffffffffffffd,%rdi
    b3bc:	cmp    $0x8,%rdi
    b3c0:	ja     a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    b3c6:	lea    0xb327(%rip),%r8        # 166f4 <_IO_stdin_used+0x6f4>
    b3cd:	movslq (%r8,%rdi,4),%rdi
    b3d1:	add    %r8,%rdi
    b3d4:	notrack jmp *%rdi
    b3d7:	movzwl (%rdx),%esi
    b3da:	xor    $0x4341,%esi
    b3e0:	movzbl 0x2(%rdx),%edx
    b3e4:	xor    $0x4b,%edx
    b3e7:	xor    %edi,%edi
    b3e9:	or     %si,%dx
    b3ec:	sete   %dil
    b3f0:	lea    (%rdi,%rdi,2),%rsi
    b3f4:	dec    %rsi
    b3f7:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    b3fc:	movabs $0x800000003,%rax
    b406:	mov    %rax,0x110(%rbx)
    b40d:	mov    %r8,%rax
    b410:	sub    0x120(%rbx),%rax
    b417:	mov    %rax,0x118(%rbx)
    b41e:	inc    %r8
    b421:	mov    %r8,0x128(%rbx)
    b428:	mov    %r8,%rax
    b42b:	add    $0x28,%rsp
    b42f:	pop    %rbx
    b430:	pop    %r12
    b432:	pop    %r13
    b434:	pop    %r14
    b436:	pop    %r15
    b438:	pop    %rbp
    b439:	ret
    b43a:	mov    %rbp,%r8
    b43d:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    b43f:	xor    %r13d,%r13d
    b442:	jmp    b2e9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19a9>
    b447:	mov    %r12,%rcx
    b44a:	xor    %r12d,%r12d
    b44d:	mov    0x8(%rsp),%r15
    b452:	lea    0x70(%rbx),%r14
    b456:	jmp    b325 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19e5>
    b45b:	xor    %ebp,%ebp
    b45d:	jmp    b363 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a23>
    b462:	mov    %r13,%rcx
    b465:	xor    %r13d,%r13d
    b468:	mov    0x8(%rsp),%r15
    b46d:	lea    0x70(%rbx),%r14
    b471:	jmp    b3a1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a61>
    b476:	xor    %ecx,%ecx
    b478:	mov    %rbp,%rsi
    b47b:	jmp    ae03 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14c3>
    b480:	lea    -0x1(%r12),%rax
    b485:	lea    0xb2b0(%rip),%rcx        # 1673c <_IO_stdin_used+0x73c>
    b48c:	movslq (%rcx,%rax,4),%rax
    b490:	add    %rcx,%rax
    b493:	notrack jmp *%rax
    b496:	movzbl (%rdi),%eax
    b499:	lea    -0x3a(%rax),%ecx
    b49c:	cmp    $0xf6,%cl
    b49f:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    b4a5:	add    $0xffffffffffffffd0,%rax
    b4a9:	jmp    a451 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb11>
    b4ae:	mov    %r15,%rbp
    b4b1:	jmp    b22f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18ef>
    b4b6:	xor    %edx,%edx
    b4b8:	xor    %edi,%edi
    b4ba:	jmp    a0d3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x793>
    b4bf:	movzbl (%rdi),%eax
    b4c2:	lea    -0x3a(%rax),%ecx
    b4c5:	cmp    $0xf6,%cl
    b4c8:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    b4ce:	movabs $0x8000000000000000,%rcx
    b4d8:	movzbl 0x1(%rdi),%edx
    b4dc:	lea    -0x3a(%rdx),%esi
    b4df:	cmp    $0xf6,%sil
    b4e3:	jb     b54d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c0d>
    b4e5:	movzbl 0x2(%rdi),%esi
    b4e9:	lea    -0x3a(%rsi),%r8d
    b4ed:	cmp    $0xf6,%r8b
    b4f1:	jb     c769 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e29>
    b4f7:	movzbl 0x3(%rdi),%r8d
    b4fc:	lea    -0x3a(%r8),%r9d
    b500:	cmp    $0xf6,%r9b
    b504:	jb     b52b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1beb>
    b506:	movsbq 0x4(%rdi),%rdi
    b50b:	lea    -0x3a(%rdi),%r9d
    b50f:	cmp    $0xf6,%r9b
    b513:	jb     b51c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bdc>
    b515:	add    $0xffffffffffffffd0,%rdi
    b519:	mov    %rdi,%rcx
    b51c:	lea    (%r8,%r8,4),%rdi
    b520:	lea    -0x1e0(,%rdi,2),%rdi
    b528:	add    %rdi,%rcx
    b52b:	xor    %r9d,%r9d
    b52e:	imul   $0x64,%rsi,%rsi
    b532:	add    $0xffffffffffffed40,%rsi
    b539:	add    %rsi,%rcx
    b53c:	imul   $0x3e8,%rdx,%rdx
    b543:	add    $0xffffffffffff4480,%rdx
    b54a:	add    %rdx,%rcx
    b54d:	imul   $0x2710,%rax,%rax
    b554:	add    $0xfffffffffff8ad00,%rax
    b55a:	add    %rcx,%rax
    b55d:	jmp    a451 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb11>
    b562:	mov    %r13,%r8
    b565:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    b56a:	xor    %eax,%eax
    b56c:	jmp    a329 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x9e9>
    b571:	xor    %edx,%edx
    b573:	xor    %edi,%edi
    b575:	jmp    a6fb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdbb>
    b57a:	mov    %rax,%rsi
    b57d:	mov    %rdx,%rax
    b580:	xor    %edx,%edx
    b582:	xor    %edi,%edi
    b584:	jmp    ab22 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11e2>
    b589:	add    %r12,%rdi
    b58c:	add    $0xffffffffffffffec,%rdi
    b590:	mov    %r13,%rcx
    b593:	mov    %r12,%rdx
    b596:	cmpb   $0x30,(%rcx)
    b599:	jne    c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    b59f:	inc    %rcx
    b5a2:	dec    %rdx
    b5a5:	mov    $0x14,%eax
    b5aa:	cmp    $0x14,%rdx
    b5ae:	ja     b596 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c56>
    b5b0:	lea    -0x12(%rax),%rcx
    b5b4:	xor    %r14d,%r14d
    b5b7:	xor    %edx,%edx
    b5b9:	movzbl (%rdi,%rdx,1),%esi
    b5bd:	add    $0xffffffd0,%esi
    b5c0:	cmp    $0x9,%esi
    b5c3:	ja     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    b5c9:	lea    (%r14,%r14,4),%r8
    b5cd:	mov    %esi,%esi
    b5cf:	lea    (%rsi,%r8,2),%r14
    b5d3:	inc    %rdx
    b5d6:	cmp    %rdx,%rcx
    b5d9:	jne    b5b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c79>
    b5db:	movzbl -0x12(%rdi,%rax,1),%edx
    b5e0:	lea    -0x3a(%rdx),%ecx
    b5e3:	cmp    $0xf6,%cl
    b5e6:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    b5ec:	add    %rax,%rdi
    b5ef:	movabs $0x8000000000000000,%rcx
    b5f9:	movzbl -0x11(%rdi),%esi
    b5fd:	lea    -0x3a(%rsi),%eax
    b600:	cmp    $0xf6,%al
    b602:	jb     b713 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1dd3>
    b608:	mov    %r15,0x8(%rsp)
    b60d:	movzbl -0x10(%rdi),%r8d
    b612:	lea    -0x3a(%r8),%eax
    b616:	cmp    $0xf6,%al
    b618:	jb     b6f0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1db0>
    b61e:	movzbl -0xf(%rdi),%r15d
    b623:	lea    -0x3a(%r15),%eax
    b627:	cmp    $0xf6,%al
    b629:	jb     b6d2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d92>
    b62f:	mov    %r8,0x18(%rsp)
    b634:	mov    %rsi,0x20(%rsp)
    b639:	mov    %rdx,0x10(%rsp)
    b63e:	movzbl -0xe(%rdi),%ebp
    b642:	lea    -0x3a(%rbp),%eax
    b645:	cmp    $0xf6,%al
    b647:	jb     b670 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d30>
    b649:	movabs $0x9184e72a000,%rax
    b653:	imul   %rax,%rbp
    b657:	add    $0xfffffffffffffff3,%rdi
    b65b:	call   108f0 <stomptalk::detail::(anonymous namespace)::antout<long, 13ul>::conv(char const*)>
    b660:	movabs $0xfffe4b714a820000,%rcx
    b66a:	add    %rax,%rcx
    b66d:	add    %rbp,%rcx
    b670:	movabs $0x5af3107a4000,%rax
    b67a:	imul   %rax,%r15
    b67e:	movabs $0xffeef26ce9140000,%rax
    b688:	add    %r15,%rax
    b68b:	add    %rax,%rcx
    b68e:	lea    0xc0(%rbx),%r11
    b695:	lea    0xd0(%rbx),%r10
    b69c:	xor    %r9d,%r9d
    b69f:	xorps  %xmm4,%xmm4
    b6a2:	movdqa 0xaf56(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    b6aa:	movdqa 0xaf5e(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    b6b2:	movdqa 0xaf66(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    b6ba:	movdqa 0xaf6d(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    b6c3:	mov    0x10(%rsp),%rdx
    b6c8:	mov    0x20(%rsp),%rsi
    b6cd:	mov    0x18(%rsp),%r8
    b6d2:	movabs $0x38d7ea4c68000,%rax
    b6dc:	imul   %rax,%r8
    b6e0:	movabs $0xff5578411ac80000,%rax
    b6ea:	add    %r8,%rax
    b6ed:	add    %rax,%rcx
    b6f0:	mov    0x8(%rsp),%r15
    b6f5:	movabs $0x2386f26fc10000,%rax
    b6ff:	imul   %rax,%rsi
    b703:	movabs $0xf956b28b0bd00000,%rax
    b70d:	add    %rsi,%rax
    b710:	add    %rax,%rcx
    b713:	movabs $0x16345785d8a0000,%rax
    b71d:	imul   %rax,%rdx
    b721:	movabs $0xbd62f96e76200000,%rax
    b72b:	add    %rdx,%rax
    b72e:	cmp    $0x13,%r14
    b732:	setae  %dl
    b735:	add    %rcx,%rax
    b738:	js     c771 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e31>
    b73e:	test   %dl,%dl
    b740:	jne    c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    b746:	cmp    $0x12,%r14
    b74a:	jne    b75f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e1f>
    b74c:	movabs $0x633275e3af7ffff,%rcx
    b756:	cmp    %rcx,%rax
    b759:	ja     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    b75f:	movabs $0xde0b6b3a7640000,%rcx
    b769:	imul   %rcx,%r14
    b76d:	add    %r14,%rax
    b770:	jmp    a45a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb1a>
    b775:	mov    %rdx,%rax
    b778:	xor    %edx,%edx
    b77a:	xor    %edi,%edi
    b77c:	jmp    a0d6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x796>
    b781:	mov    %rdx,%rax
    b784:	xor    %edx,%edx
    b786:	xor    %edi,%edi
    b788:	jmp    a6fe <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdbe>
    b78d:	xor    %r13d,%r13d
    b790:	jmp    a2a1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x961>
    b795:	mov    %rdx,%rax
    b798:	mov    %rdx,%rsi
    b79b:	xor    %edx,%edx
    b79d:	xor    %edi,%edi
    b79f:	jmp    ab25 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11e5>
    b7a4:	mov    %rax,%r8
    b7a7:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    b7ac:	xor    %eax,%eax
    b7ae:	jmp    a3a6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa66>
    b7b3:	movabs $0x700000003,%rax
    b7bd:	mov    %rax,0x110(%rbx)
    b7c4:	mov    %rbp,%rax
    b7c7:	sub    0x120(%rbx),%rax
    b7ce:	mov    %rax,0x118(%rbx)
    b7d5:	inc    %rbp
    b7d8:	mov    %rbp,0x128(%rbx)
    b7df:	mov    %rbp,%r8
    b7e2:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    b7e7:	cmp    $0x43,%edi
    b7ea:	jne    c778 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e38>
    b7f0:	mov    $0x4e4e4f43,%edi
    b7f5:	xor    (%rdx),%edi
    b7f7:	mov    $0x5443454e,%r8d
    b7fd:	xor    0x3(%rdx),%r8d
    b801:	mov    $0x5,%esi
    b806:	or     %edi,%r8d
    b809:	jne    bdca <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x248a>
    b80f:	lea    0x70(%rbx),%r14
    b813:	lea    0xc0(%rbx),%r11
    b81a:	lea    0xd0(%rbx),%r10
    b821:	xor    %r9d,%r9d
    b824:	xorps  %xmm4,%xmm4
    b827:	movdqa 0xadd1(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    b82f:	movdqa 0xadd9(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    b837:	movdqa 0xade1(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    b83f:	movdqa 0xade8(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    b848:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    b84d:	mov    %rdi,%rax
    b850:	jmp    a093 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x753>
    b855:	movabs $0x2d746e65746e6f63,%rcx
    b85f:	xor    (%rax),%rcx
    b862:	movabs $0x6874676e656c2d74,%rdx
    b86c:	xor    0x6(%rax),%rdx
    b870:	or     %rcx,%rdx
    b873:	jmp    a3e1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xaa1>
    b878:	movabs $0xc00000003,%rax
    b882:	jmp    b406 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ac6>
    b887:	movl   $0x2,0x110(%rbx)
    b891:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    b896:	mov    %rdi,%rax
    b899:	jmp    a6bb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd7b>
    b89e:	xor    %eax,%eax
    b8a0:	jmp    ae9c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x155c>
    b8a5:	mov    %rdi,%rax
    b8a8:	jmp    aadf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x119f>
    b8ad:	lea    (%r8,%rdx,1),%rax
    b8b1:	movabs $0xd00000003,%rcx
    b8bb:	mov    %rcx,0x110(%rbx)
    b8c2:	sub    0x120(%rbx),%rax
    b8c9:	mov    %rax,0x118(%rbx)
    b8d0:	add    %rdx,%r8
    b8d3:	inc    %r8
    b8d6:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    b8db:	mov    $0x4,%eax
    b8e0:	jmp    9eee <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5ae>
    b8e5:	movabs $0xe00000003,%rax
    b8ef:	jmp    c5f1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cb1>
    b8f4:	xor    %ecx,%ecx
    b8f6:	jmp    9e49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x509>
    b8fb:	mov    $0x5,%eax
    b900:	jmp    a513 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xbd3>
    b905:	xor    %r12d,%r12d
    b908:	mov    %r8,%rsi
    b90b:	mov    %rsi,%rdx
    b90e:	mov    %r15,%rsi
    b911:	mov    %rdx,%rdi
    b914:	sub    %rdx,%rsi
    b917:	xor    %edx,%edx
    b919:	cmp    $0x8,%rsi
    b91d:	jl     ba4b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x210b>
    b923:	mov    %r8,0x10(%rsp)
    b928:	mov    %rdi,(%rsp)
    b92c:	mov    (%rdi),%r9
    b92f:	mov    %r9,%r8
    b932:	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    b93c:	and    %rbp,%r8
    b93f:	lea    (%r8,%rbp,1),%rdi
    b943:	or     %r9,%rdi
    b946:	not    %rdi
    b949:	mov    %r8,%r10
    b94c:	movabs $0xa0a0a0a0a0a0a0a,%r13
    b956:	xor    %r13,%r10
    b959:	add    %rbp,%r10
    b95c:	or     %r9,%r10
    b95f:	not    %r10
    b962:	or     %rdi,%r10
    b965:	mov    %r8,%rdi
    b968:	movabs $0xd0d0d0d0d0d0d0d,%r13
    b972:	xor    %r13,%rdi
    b975:	add    %rbp,%rdi
    b978:	or     %r9,%rdi
    b97b:	not    %rdi
    b97e:	or     %r10,%rdi
    b981:	movabs $0x8080808080808080,%r10
    b98b:	and    %r10,%rdi
    b98e:	test   %al,%al
    b990:	jne    b9c5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2085>
    b992:	mov    %r8,%r10
    b995:	movabs $0x5c5c5c5c5c5c5c5c,%r13
    b99f:	xor    %r13,%r10
    b9a2:	add    %rbp,%r10
    b9a5:	or     %r9,%r10
    b9a8:	not    %r10
    b9ab:	movabs $0x8080808080808080,%r13
    b9b5:	and    %r13,%r10
    b9b8:	or     %r10,%rdi
    b9bb:	movabs $0x8080808080808080,%r10
    b9c5:	movabs $0x3a3a3a3a3a3a3a3a,%r13
    b9cf:	xor    %r13,%r8
    b9d2:	add    %rbp,%r8
    b9d5:	or     %r9,%r8
    b9d8:	and    %r10,%r8
    b9db:	mov    %r8,%r9
    b9de:	xor    %r10,%r9
    b9e1:	cmp    %r10,%r8
    b9e4:	lea    0xd0(%rbx),%r10
    b9eb:	je     ba27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20e7>
    b9ed:	test   $0x1,%cl
    b9f0:	je     ba27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20e7>
    b9f2:	tzcnt  %r9,%r10
    b9f7:	test   %rdi,%rdi
    b9fa:	jne    ba80 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2140>
    ba00:	shr    $0x3,%r10d
    ba04:	add    (%rsp),%r10
    ba08:	not    %r8
    ba0b:	movabs $0x8080808080808080,%rcx
    ba15:	add    %rcx,%r8
    ba18:	and    %r8,%r9
    ba1b:	xor    %ecx,%ecx
    ba1d:	mov    %r10,%rdx
    ba20:	lea    0xd0(%rbx),%r10
    ba27:	test   %al,%al
    ba29:	mov    0x10(%rsp),%r8
    ba2e:	jne    ba7b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x213b>
    ba30:	or     %rdi,%r9
    ba33:	jne    ba64 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2124>
    ba35:	mov    (%rsp),%rdi
    ba39:	add    $0x8,%rdi
    ba3d:	add    $0xfffffffffffffff8,%rsi
    ba41:	cmp    $0x7,%rsi
    ba45:	jg     b928 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fe8>
    ba4b:	mov    %rdi,%rbp
    ba4e:	xor    %esi,%esi
    ba50:	xor    %r9d,%r9d
    ba53:	cmp    %r15,%rdi
    ba56:	jae    b22f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18ef>
    ba5c:	mov    %rbp,%rdi
    ba5f:	jmp    adb0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1470>
    ba64:	tzcnt  %r9,%rax
    ba69:	shr    $0x3,%eax
    ba6c:	mov    (%rsp),%rbp
    ba70:	add    %rax,%rbp
    ba73:	xor    %r9d,%r9d
    ba76:	jmp    b236 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18f6>
    ba7b:	xor    %r9d,%r9d
    ba7e:	jmp    ba30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20f0>
    ba80:	tzcnt  %rdi,%rcx
    ba85:	cmp    %ecx,%r10d
    ba88:	jb     ba00 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20c0>
    ba8e:	mov    $0x1,%cl
    ba90:	jmp    ba20 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20e0>
    ba92:	mov    $0x4,%eax
    ba97:	jmp    a899 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf59>
    ba9c:	movabs $0xb00000003,%rax
    baa6:	mov    %rax,0x110(%rbx)
    baad:	sub    0x120(%rbx),%r13
    bab4:	mov    %r13,0x118(%rbx)
    babb:	add    $0x3,%r8
    babf:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    bac4:	lea    -0x5f2b(%rip),%rbp        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    bacb:	lea    (%rcx,%rsi,1),%rdx
    bacf:	inc    %rdx
    bad2:	lea    -0x8a89(%rip),%rax        # 3050 <char const* stomptalk::parser::start_cr<3u>(char const*, char const*)>
    bad9:	movq   %rax,%xmm0
    bade:	movdqu %xmm0,0x60(%rbx)
    bae3:	mov    %rdx,%r8
    bae6:	cmp    %r15,%rdx
    bae9:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    baef:	cmpb   $0xa,(%r8)
    baf3:	jne    be84 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2544>
    baf9:	mov    %r15,%rax
    bafc:	lea    (%rcx,%rsi,1),%r8
    bb00:	add    $0x2,%r8
    bb04:	movq   %rbp,%xmm0
    bb09:	movdqu %xmm0,0x60(%rbx)
    bb0e:	cmp    %rax,%r8
    bb11:	lea    0x70(%rbx),%r14
    bb15:	lea    0xc0(%rbx),%r11
    bb1c:	lea    0xd0(%rbx),%r10
    bb23:	mov    $0x0,%r9d
    bb29:	xorps  %xmm4,%xmm4
    bb2c:	movdqa 0xaacc(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    bb34:	movdqa 0xaad4(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    bb3c:	movdqa 0xaadc(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    bb44:	movdqa 0xaae3(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    bb4d:	jb     9fa1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x661>
    bb53:	lea    (%rcx,%rsi,1),%r8
    bb57:	add    $0x2,%r8
    bb5b:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bb60:	movl   $0x2,0x110(%rbx)
    bb6a:	add    %rsi,%rcx
    bb6d:	mov    %rcx,0x128(%rbx)
    bb74:	mov    %rcx,%r8
    bb77:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bb7c:	movl   $0x2,0x110(%rbx)
    bb86:	add    %rsi,%rcx
    bb89:	mov    %rcx,%r8
    bb8c:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bb91:	mov    $0x4,%eax
    bb96:	jmp    af18 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x15d8>
    bb9b:	movl   $0x2,0x110(%rbx)
    bba5:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bbaa:	lea    -0x6011(%rip),%rbp        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    bbb1:	lea    (%rcx,%rsi,1),%rdx
    bbb5:	inc    %rdx
    bbb8:	lea    -0x8b6f(%rip),%rax        # 3050 <char const* stomptalk::parser::start_cr<3u>(char const*, char const*)>
    bbbf:	movq   %rax,%xmm0
    bbc4:	movdqu %xmm0,0x60(%rbx)
    bbc9:	mov    %rdx,%r8
    bbcc:	cmp    %r15,%rdx
    bbcf:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bbd5:	cmpb   $0xa,(%r8)
    bbd9:	jne    beb7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2577>
    bbdf:	mov    %r15,%rax
    bbe2:	lea    (%rcx,%rsi,1),%r8
    bbe6:	add    $0x2,%r8
    bbea:	movq   %rbp,%xmm0
    bbef:	movdqu %xmm0,0x60(%rbx)
    bbf4:	cmp    %rax,%r8
    bbf7:	lea    0x70(%rbx),%r14
    bbfb:	lea    0xc0(%rbx),%r11
    bc02:	lea    0xd0(%rbx),%r10
    bc09:	mov    $0x0,%r9d
    bc0f:	xorps  %xmm4,%xmm4
    bc12:	movdqa 0xa9e6(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    bc1a:	movdqa 0xa9ee(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    bc22:	movdqa 0xa9f6(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    bc2a:	movdqa 0xa9fd(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    bc33:	jb     a5c5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc85>
    bc39:	jmp    bb53 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2213>
    bc3e:	movabs $0xb00000003,%rax
    bc48:	mov    %rax,0x110(%rbx)
    bc4f:	mov    0x120(%rbx),%rax
    bc56:	mov    %r8,%rcx
    bc59:	sub    %rax,%rcx
    bc5c:	mov    %rcx,0x118(%rbx)
    bc63:	jmp    b41e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ade>
    bc68:	movabs $0x700000003,%rax
    bc72:	mov    %rax,0x110(%rbx)
    bc79:	mov    %r12,%rax
    bc7c:	sub    0x120(%rbx),%rax
    bc83:	mov    %rax,0x118(%rbx)
    bc8a:	inc    %r12
    bc8d:	mov    %r12,0x128(%rbx)
    bc94:	mov    %r12,%r8
    bc97:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bc9c:	mov    $0x5,%eax
    bca1:	jmp    b039 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16f9>
    bca6:	lea    -0x610d(%rip),%rbp        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    bcad:	lea    (%rcx,%rsi,1),%rdx
    bcb1:	inc    %rdx
    bcb4:	lea    -0x8c6b(%rip),%rax        # 3050 <char const* stomptalk::parser::start_cr<3u>(char const*, char const*)>
    bcbb:	movq   %rax,%xmm0
    bcc0:	movdqu %xmm0,0x60(%rbx)
    bcc5:	mov    %rdx,%r8
    bcc8:	cmp    %r15,%rdx
    bccb:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bcd1:	cmpb   $0xa,(%r8)
    bcd5:	jne    beb7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2577>
    bcdb:	mov    %r15,%rax
    bcde:	lea    (%rcx,%rsi,1),%r8
    bce2:	add    $0x2,%r8
    bce6:	movq   %rbp,%xmm0
    bceb:	movdqu %xmm0,0x60(%rbx)
    bcf0:	cmp    %rax,%r8
    bcf3:	lea    0x70(%rbx),%r14
    bcf7:	lea    0xc0(%rbx),%r11
    bcfe:	lea    0xd0(%rbx),%r10
    bd05:	mov    $0x0,%r9d
    bd0b:	xorps  %xmm4,%xmm4
    bd0e:	movdqa 0xa8ea(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    bd16:	movdqa 0xa8f2(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    bd1e:	movdqa 0xa8fa(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    bd26:	movdqa 0xa901(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    bd2f:	jb     a94b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x100b>
    bd35:	jmp    bb53 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2213>
    bd3a:	movabs $0xd00000003,%rax
    bd44:	mov    %rax,0x110(%rbx)
    bd4b:	mov    %r9,%rax
    bd4e:	sub    0x120(%rbx),%rax
    bd55:	add    %rcx,%rax
    bd58:	add    %rsi,%rax
    bd5b:	mov    %rax,0x118(%rbx)
    bd62:	add    %r9,%rcx
    bd65:	lea    (%rsi,%rcx,1),%r8
    bd69:	inc    %r8
    bd6c:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    bd71:	mov    $0x4,%eax
    bd76:	jmp    b039 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16f9>
    bd7b:	movabs $0xb00000003,%rax
    bd85:	mov    %rax,0x110(%rbx)
    bd8c:	sub    0x120(%rbx),%r13
    bd93:	mov    %r13,0x118(%rbx)
    bd9a:	add    $0x2,%r8
    bd9e:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    bda3:	movzbl (%rdx),%edi
    bda6:	cmp    $0x53,%edi
    bda9:	jne    c7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ea3>
    bdaf:	mov    $0x4d4f5453,%edi
    bdb4:	xor    (%rdx),%edi
    bdb6:	movzbl 0x4(%rdx),%edx
    bdba:	xor    $0x50,%edx
    bdbd:	mov    $0xd,%esi
    bdc2:	or     %edi,%edx
    bdc4:	je     b80f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ecf>
    bdca:	mov    $0xffffffffffffffff,%rsi
    bdd1:	jmp    b80f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ecf>
    bdd6:	movabs $0x900000003,%rcx
    bde0:	mov    %rcx,0x110(%rbx)
    bde7:	sub    0x120(%rbx),%r8
    bdee:	mov    %r8,0x118(%rbx)
    bdf5:	add    $0x2,%rax
    bdf9:	jmp    b12d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17ed>
    bdfe:	lea    (%rax,%r13,1),%rcx
    be02:	movabs $0xe00000003,%rdx
    be0c:	mov    %rdx,0x110(%rbx)
    be13:	sub    0x120(%rbx),%rcx
    be1a:	mov    %rcx,0x118(%rbx)
    be21:	lea    (%rax,%r13,1),%r8
    be25:	inc    %r8
    be28:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    be2d:	movabs $0x600000003,%rax
    be37:	mov    %rax,0x110(%rbx)
    be3e:	lea    (%rcx,%rsi,1),%rax
    be42:	sub    0x120(%rbx),%rax
    be49:	mov    %rax,0x118(%rbx)
    be50:	lea    (%rcx,%rsi,1),%r8
    be54:	inc    %r8
    be57:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    be5c:	movabs $0x900000003,%rax
    be66:	mov    %rax,0x110(%rbx)
    be6d:	sub    0x120(%rbx),%r8
    be74:	mov    %r8,0x118(%rbx)
    be7b:	add    $0x2,%rbp
    be7f:	jmp    b7d8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e98>
    be84:	movabs $0x900000003,%rax
    be8e:	mov    %rax,0x110(%rbx)
    be95:	lea    (%rcx,%rsi,1),%rax
    be99:	sub    0x120(%rbx),%rax
    bea0:	inc    %rax
    bea3:	mov    %rax,0x118(%rbx)
    beaa:	lea    (%rcx,%rsi,1),%r8
    beae:	add    $0x2,%r8
    beb2:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    beb7:	lea    (%rcx,%rsi,1),%r8
    bebb:	add    $0x2,%r8
    bebf:	movabs $0x900000003,%rax
    bec9:	mov    %rax,0x110(%rbx)
    bed0:	add    %rsi,%rcx
    bed3:	sub    0x120(%rbx),%rcx
    beda:	inc    %rcx
    bedd:	mov    %rcx,0x118(%rbx)
    bee4:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    bee9:	movabs $0xd00000003,%rax
    bef3:	jmp    b406 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ac6>
    bef8:	xor    %eax,%eax
    befa:	jmp    99fe <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xbe>
    beff:	movabs $0x900000003,%rcx
    bf09:	mov    %rcx,0x110(%rbx)
    bf10:	sub    0x120(%rbx),%rax
    bf17:	mov    %rax,0x118(%rbx)
    bf1e:	add    $0x2,%r8
    bf22:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    bf27:	mov    %rcx,%r8
    bf2a:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bf2f:	inc    %rsi
    bf32:	cmp    %rsi,%rdi
    bf35:	je     bf8e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x264e>
    bf37:	jmp    9fb5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x675>
    bf3c:	xor    %esi,%esi
    bf3e:	jmp    a0f7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7b7>
    bf43:	mov    0x40(%rbx),%rax
    bf47:	mov    %rax,0x48(%rbx)
    bf4b:	jmp    a23b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x8fb>
    bf50:	mov    %r12,%rax
    bf53:	jmp    b5b0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c70>
    bf58:	inc    %rsi
    bf5b:	cmp    %rsi,%rdi
    bf5e:	jne    a5d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc99>
    bf64:	jmp    bf8e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x264e>
    bf66:	xor    %esi,%esi
    bf68:	jmp    a71f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xddf>
    bf6d:	mov    0x40(%rbx),%rax
    bf71:	jmp    a774 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe34>
    bf76:	mov    %r8,%r14
    bf79:	mov    0x40(%rbx),%rax
    bf7d:	jmp    aa90 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1150>
    bf82:	inc    %rsi
    bf85:	cmp    %rsi,%rdi
    bf88:	jne    a95f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x101f>
    bf8e:	mov    %r15,%r8
    bf91:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bf96:	xor    %esi,%esi
    bf98:	jmp    ab46 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1206>
    bf9d:	lea    -0x6404(%rip),%rbp        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    bfa4:	test   %al,%al
    bfa6:	je     b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bfac:	lea    0x767d(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    bfb3:	mov    %rax,0x60(%rbx)
    bfb7:	cmp    %r15,%r8
    bfba:	jae    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    bfc0:	cmpb   $0x0,(%r8)
    bfc4:	jne    c07f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x273f>
    bfca:	mov    0xf0(%rbx),%rax
    bfd1:	shl    $0x5,%rax
    bfd5:	add    0x38(%rbx),%rax
    bfd9:	mov    0x80(%rbx),%rcx
    bfe0:	test   %rcx,%rcx
    bfe3:	cmove  %rcx,%rax
    bfe7:	mov    0xe0(%rbx),%rcx
    bfee:	mov    %rax,0xb0(%rbx)
    bff5:	movzbl 0x109(%rbx),%eax
    bffc:	xor    $0x1,%eax
    bfff:	lea    0x5(,%rax,2),%eax
    c006:	mov    %eax,0x78(%rbx)
    c009:	lea    0x1(%rcx),%rax
    c00d:	mov    %rax,0xe0(%rbx)
    c014:	lea    (%rcx,%rcx,4),%rdi
    c018:	shl    $0x4,%rdi
    c01c:	add    0x30(%rbx),%rdi
    c020:	mov    $0xa,%ecx
    c025:	lea    0x70(%rbx),%rsi
    c029:	rep movsq (%rsi),(%rdi)
    c02c:	mov    0x98(%rbx),%rax
    c033:	add    %rax,0x90(%rbx)
    c03a:	xor    %eax,%eax
    c03c:	mov    %rax,0xb8(%rbx)
    c043:	mov    %rax,0x98(%rbx)
    c04a:	movw   $0x100,0x108(%rbx)
    c053:	inc    %r8
    c056:	mov    %rbp,0x60(%rbx)
    c05a:	mov    %rax,0x68(%rbx)
    c05e:	mov    %r8,%rsi
    c061:	cmp    %r15,%r8
    c064:	jae    c26f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x292f>
    c06a:	cmpl   $0x0,0x110(%rbx)
    c071:	jne    c26f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x292f>
    c077:	mov    %rbx,%rdi
    c07a:	jmp    b0e9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17a9>
    c07f:	movabs $0xb00000003,%rax
    c089:	jmp    b406 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ac6>
    c08e:	mov    0x40(%rbx),%rax
    c092:	jmp    ac43 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1303>
    c097:	mov    0x40(%rbx),%rax
    c09b:	jmp    ad5c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x141c>
    c0a0:	lea    -0x6507(%rip),%rbp        # 5ba0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>
    c0a7:	test   %r8,%r8
    c0aa:	mov    %r15,%rdx
    c0ad:	cmovne %r8,%r15
    c0b1:	sub    %r13,%r15
    c0b4:	mov    0x20(%rbx),%rcx
    c0b8:	sub    0x90(%rbx),%rcx
    c0bf:	cmp    %rcx,%r15
    c0c2:	ja     c1bd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x287d>
    c0c8:	mov    %r8,%r9
    c0cb:	mov    %r13,0xb8(%rbx)
    c0d2:	mov    %r15,0x98(%rbx)
    c0d9:	test   %r8,%r8
    c0dc:	je     c80a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2eca>
    c0e2:	lea    0x7547(%rip),%rax        # 13630 <char const* stomptalk::parser::frame_end<3u>(char const*, char const*)>
    c0e9:	mov    %rax,0x60(%rbx)
    c0ed:	movq   $0x0,0x68(%rbx)
    c0f5:	cmp    %rdx,%r9
    c0f8:	jae    c812 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ed2>
    c0fe:	cmpb   $0x0,(%r9)
    c102:	jne    c81a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2eda>
    c108:	mov    0xf0(%rbx),%rax
    c10f:	shl    $0x5,%rax
    c113:	add    0x38(%rbx),%rax
    c117:	mov    0x80(%rbx),%rcx
    c11e:	test   %rcx,%rcx
    c121:	cmove  %rcx,%rax
    c125:	mov    0xe0(%rbx),%rcx
    c12c:	mov    %rax,0xb0(%rbx)
    c133:	movzbl 0x109(%rbx),%eax
    c13a:	xor    $0x1,%eax
    c13d:	lea    0x4(,%rax,2),%eax
    c144:	mov    %eax,0x78(%rbx)
    c147:	lea    0x1(%rcx),%rax
    c14b:	mov    %rax,0xe0(%rbx)
    c152:	lea    (%rcx,%rcx,4),%rdi
    c156:	shl    $0x4,%rdi
    c15a:	add    0x30(%rbx),%rdi
    c15e:	mov    $0xa,%ecx
    c163:	lea    0x70(%rbx),%rsi
    c167:	rep movsq (%rsi),(%rdi)
    c16a:	mov    0x98(%rbx),%rax
    c171:	add    %rax,0x90(%rbx)
    c178:	xor    %eax,%eax
    c17a:	mov    %rax,0xb8(%rbx)
    c181:	mov    %rax,0x98(%rbx)
    c188:	movw   $0x100,0x108(%rbx)
    c191:	inc    %r9
    c194:	mov    %rbp,0x60(%rbx)
    c198:	mov    %rax,0x68(%rbx)
    c19c:	mov    %r9,%rsi
    c19f:	cmp    %rdx,%r9
    c1a2:	jae    c26f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x292f>
    c1a8:	cmpl   $0x0,0x110(%rbx)
    c1af:	jne    c26f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x292f>
    c1b5:	mov    %rbx,%rdi
    c1b8:	jmp    b0ec <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17ac>
    c1bd:	lea    (%rcx,%r13,1),%rax
    c1c1:	movabs $0xe00000003,%rdx
    c1cb:	mov    %rdx,0x110(%rbx)
    c1d2:	sub    0x120(%rbx),%rax
    c1d9:	mov    %rax,0x118(%rbx)
    c1e0:	lea    (%rcx,%r13,1),%r8
    c1e4:	inc    %r8
    c1e7:	jmp    b421 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae1>
    c1ec:	movabs $0x454e4e4f43534944,%rsi
    c1f6:	xor    (%rdx),%rsi
    c1f9:	movzwl 0x8(%rdx),%edx
    c1fd:	xor    $0x5443,%rdx
    c204:	xor    %edi,%edi
    c206:	or     %rsi,%rdx
    c209:	sete   %dil
    c20d:	lea    -0x1(,%rdi,8),%rsi
    c215:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c21a:	movabs $0x5243534255534e55,%rdi
    c224:	xor    (%rdx),%rdi
    c227:	movabs $0x4542495243534255,%r8
    c231:	xor    0x3(%rdx),%r8
    c235:	xor    %esi,%esi
    c237:	or     %rdi,%r8
    c23a:	setne  %sil
    c23e:	neg    %rsi
    c241:	or     $0xf,%rsi
    c245:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c24a:	mov    $0x4d4d4f43,%esi
    c24f:	xor    (%rdx),%esi
    c251:	movzwl 0x4(%rdx),%edx
    c255:	xor    $0x5449,%edx
    c25b:	xor    %edi,%edi
    c25d:	or     %esi,%edx
    c25f:	sete   %dil
    c263:	lea    (%rdi,%rdi,4),%rsi
    c267:	dec    %rsi
    c26a:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c26f:	mov    %rsi,%r8
    c272:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    c277:	mov    $0xa,%esi
    c27c:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c281:	movzbl (%rdi),%eax
    c284:	lea    -0x3a(%rax),%ecx
    c287:	cmp    $0xf6,%cl
    c28a:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c290:	movabs $0x8000000000000000,%rcx
    c29a:	movzbl 0x1(%rdi),%edx
    c29e:	lea    -0x3a(%rdx),%esi
    c2a1:	cmp    $0xf6,%sil
    c2a5:	jb     c2ca <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x298a>
    c2a7:	lea    (%rdx,%rdx,4),%rdx
    c2ab:	movsbq 0x2(%rdi),%rsi
    c2b0:	lea    -0x3a(%rsi),%edi
    c2b3:	add    $0xffffffffffffffd0,%rsi
    c2b7:	cmp    $0xf6,%dil
    c2bb:	cmovb  %rcx,%rsi
    c2bf:	lea    (%rsi,%rdx,2),%rcx
    c2c3:	add    $0xfffffffffffffe20,%rcx
    c2ca:	imul   $0x64,%rax,%rax
    c2ce:	add    $0xffffffffffffed40,%rax
    c2d4:	add    %rcx,%rax
    c2d7:	jmp    c72f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2def>
    c2dc:	call   2f50 <stomptalk::detail::(anonymous namespace)::antout<long, 4ul>::conv(char const*)>
    c2e1:	movdqa 0xa346(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c2ea:	movdqa 0xa32e(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c2f2:	movdqa 0xa316(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c2fa:	movdqa 0xa2fe(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c302:	xorps  %xmm4,%xmm4
    c305:	xor    %r9d,%r9d
    c308:	lea    0xd0(%rbx),%r10
    c30f:	lea    0xc0(%rbx),%r11
    c316:	jmp    a451 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb11>
    c31b:	movzbl (%rdi),%r14d
    c31f:	lea    -0x3a(%r14),%eax
    c323:	cmp    $0xf6,%al
    c325:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c32b:	mov    %r15,%rbp
    c32e:	movzbl 0x1(%rdi),%eax
    c332:	lea    -0x3a(%rax),%ecx
    c335:	cmp    $0xf6,%cl
    c338:	jae    c601 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cc1>
    c33e:	movabs $0x8000000000000000,%rcx
    c348:	jmp    c61c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cdc>
    c34d:	call   2e70 <stomptalk::detail::(anonymous namespace)::antout<long, 7ul>::conv(char const*)>
    c352:	jmp    c2e1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29a1>
    c354:	movzbl (%rdi),%eax
    c357:	lea    -0x3a(%rax),%ecx
    c35a:	cmp    $0xf6,%cl
    c35d:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c363:	imul   $0x989680,%rax,%r14
    c36a:	inc    %rdi
    c36d:	call   2e70 <stomptalk::detail::(anonymous namespace)::antout<long, 7ul>::conv(char const*)>
    c372:	movdqa 0xa2b5(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c37b:	movdqa 0xa29d(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c383:	movdqa 0xa285(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c38b:	movdqa 0xa26d(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c393:	xorps  %xmm4,%xmm4
    c396:	xor    %r9d,%r9d
    c399:	lea    0xd0(%rbx),%r10
    c3a0:	lea    0xc0(%rbx),%r11
    c3a7:	add    %r14,%rax
    c3aa:	add    $0xffffffffe363c800,%rax
    c3b0:	jmp    a451 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb11>
    c3b5:	movzbl (%rdi),%r14d
    c3b9:	lea    -0x3a(%r14),%eax
    c3bd:	cmp    $0xf6,%al
    c3bf:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c3c5:	mov    %r15,%rbp
    c3c8:	movzbl 0x1(%rdi),%eax
    c3cc:	lea    -0x3a(%rax),%ecx
    c3cf:	cmp    $0xf6,%cl
    c3d2:	jae    c62e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cee>
    c3d8:	movabs $0x8000000000000000,%rcx
    c3e2:	jmp    c649 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d09>
    c3e7:	call   2df0 <stomptalk::detail::(anonymous namespace)::antout<long, 10ul>::conv(char const*)>
    c3ec:	jmp    c2e1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29a1>
    c3f1:	movzbl (%rdi),%r14d
    c3f5:	lea    -0x3a(%r14),%eax
    c3f9:	cmp    $0xf6,%al
    c3fb:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c401:	movabs $0x2540be400,%rax
    c40b:	imul   %rax,%r14
    c40f:	inc    %rdi
    c412:	call   2df0 <stomptalk::detail::(anonymous namespace)::antout<long, 10ul>::conv(char const*)>
    c417:	movdqa 0xa210(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c420:	movdqa 0xa1f8(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c428:	movdqa 0xa1e0(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c430:	movdqa 0xa1c8(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c438:	xorps  %xmm4,%xmm4
    c43b:	xor    %r9d,%r9d
    c43e:	lea    0xd0(%rbx),%r10
    c445:	lea    0xc0(%rbx),%r11
    c44c:	mov    %rax,%rcx
    c44f:	movabs $0xffffff903dc54000,%rax
    c459:	jmp    c5ad <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c6d>
    c45e:	movzbl (%rdi),%r14d
    c462:	lea    -0x3a(%r14),%eax
    c466:	cmp    $0xf6,%al
    c468:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c46e:	mov    %r15,%rbp
    c471:	movzbl 0x1(%rdi),%r15d
    c476:	lea    -0x3a(%r15),%eax
    c47a:	cmp    $0xf6,%al
    c47c:	jae    c662 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d22>
    c482:	movabs $0x8000000000000000,%rcx
    c48c:	jmp    c689 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d49>
    c491:	call   108f0 <stomptalk::detail::(anonymous namespace)::antout<long, 13ul>::conv(char const*)>
    c496:	jmp    c2e1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29a1>
    c49b:	movzbl (%rdi),%r14d
    c49f:	lea    -0x3a(%r14),%eax
    c4a3:	cmp    $0xf6,%al
    c4a5:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c4ab:	movabs $0x9184e72a000,%rax
    c4b5:	imul   %rax,%r14
    c4b9:	inc    %rdi
    c4bc:	call   108f0 <stomptalk::detail::(anonymous namespace)::antout<long, 13ul>::conv(char const*)>
    c4c1:	movdqa 0xa166(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c4ca:	movdqa 0xa14e(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c4d2:	movdqa 0xa136(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c4da:	movdqa 0xa11e(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c4e2:	xorps  %xmm4,%xmm4
    c4e5:	xor    %r9d,%r9d
    c4e8:	lea    0xd0(%rbx),%r10
    c4ef:	lea    0xc0(%rbx),%r11
    c4f6:	mov    %rax,%rcx
    c4f9:	movabs $0xfffe4b714a820000,%rax
    c503:	jmp    c5ad <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c6d>
    c508:	movzbl (%rdi),%r14d
    c50c:	lea    -0x3a(%r14),%eax
    c510:	cmp    $0xf6,%al
    c512:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c518:	mov    %r15,%rbp
    c51b:	movzbl 0x1(%rdi),%r15d
    c520:	lea    -0x3a(%r15),%eax
    c524:	cmp    $0xf6,%al
    c526:	jae    c6a6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d66>
    c52c:	movabs $0x8000000000000000,%rcx
    c536:	jmp    c6cd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d8d>
    c53b:	call   2d40 <stomptalk::detail::(anonymous namespace)::antout<long, 16ul>::conv(char const*)>
    c540:	jmp    c2e1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29a1>
    c545:	movzbl (%rdi),%r14d
    c549:	lea    -0x3a(%r14),%eax
    c54d:	cmp    $0xf6,%al
    c54f:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c555:	movabs $0x2386f26fc10000,%rax
    c55f:	imul   %rax,%r14
    c563:	inc    %rdi
    c566:	call   2d40 <stomptalk::detail::(anonymous namespace)::antout<long, 16ul>::conv(char const*)>
    c56b:	movdqa 0xa0bc(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c574:	movdqa 0xa0a4(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c57c:	movdqa 0xa08c(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c584:	movdqa 0xa074(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c58c:	xorps  %xmm4,%xmm4
    c58f:	xor    %r9d,%r9d
    c592:	lea    0xd0(%rbx),%r10
    c599:	lea    0xc0(%rbx),%r11
    c5a0:	mov    %rax,%rcx
    c5a3:	movabs $0xf956b28b0bd00000,%rax
    c5ad:	add    %rcx,%rax
    c5b0:	add    %r14,%rax
    c5b3:	jmp    a451 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb11>
    c5b8:	movzbl (%rdi),%r14d
    c5bc:	lea    -0x3a(%r14),%eax
    c5c0:	cmp    $0xf6,%al
    c5c2:	jb     c5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    c5c4:	mov    %r15,%rbp
    c5c7:	movzbl 0x1(%rdi),%r15d
    c5cc:	lea    -0x3a(%r15),%eax
    c5d0:	cmp    $0xf6,%al
    c5d2:	jae    c6e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2da7>
    c5d8:	movabs $0x8000000000000000,%rcx
    c5e2:	jmp    c70e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2dce>
    c5e7:	movabs $0xa00000003,%rax
    c5f1:	mov    %rax,0x110(%rbx)
    c5f8:	mov    (%rsp),%r8
    c5fc:	jmp    b40d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1acd>
    c601:	imul   $0x2710,%rax,%r15
    c608:	add    $0x2,%rdi
    c60c:	call   2f50 <stomptalk::detail::(anonymous namespace)::antout<long, 4ul>::conv(char const*)>
    c611:	lea    (%r15,%rax,1),%rcx
    c615:	add    $0xfffffffffff8ad00,%rcx
    c61c:	imul   $0x186a0,%r14,%rax
    c623:	add    $0xffffffffffb6c200,%rax
    c629:	jmp    c729 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2de9>
    c62e:	imul   $0x989680,%rax,%r15
    c635:	add    $0x2,%rdi
    c639:	call   2e70 <stomptalk::detail::(anonymous namespace)::antout<long, 7ul>::conv(char const*)>
    c63e:	lea    (%r15,%rax,1),%rcx
    c642:	add    $0xffffffffe363c800,%rcx
    c649:	imul   $0x5f5e100,%r14,%rdx
    c650:	movabs $0xfffffffee1e5d000,%rax
    c65a:	add    %rdx,%rax
    c65d:	jmp    c729 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2de9>
    c662:	movabs $0x2540be400,%rax
    c66c:	imul   %rax,%r15
    c670:	add    $0x2,%rdi
    c674:	call   2df0 <stomptalk::detail::(anonymous namespace)::antout<long, 10ul>::conv(char const*)>
    c679:	movabs $0xffffff903dc54000,%rcx
    c683:	add    %rax,%rcx
    c686:	add    %r15,%rcx
    c689:	movabs $0x174876e800,%rax
    c693:	imul   %rax,%r14
    c697:	movabs $0xfffffba269b48000,%rax
    c6a1:	jmp    c726 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2de6>
    c6a6:	movabs $0x9184e72a000,%rax
    c6b0:	imul   %rax,%r15
    c6b4:	add    $0x2,%rdi
    c6b8:	call   108f0 <stomptalk::detail::(anonymous namespace)::antout<long, 13ul>::conv(char const*)>
    c6bd:	movabs $0xfffe4b714a820000,%rcx
    c6c7:	add    %rax,%rcx
    c6ca:	add    %r15,%rcx
    c6cd:	movabs $0x5af3107a4000,%rax
    c6d7:	imul   %rax,%r14
    c6db:	movabs $0xffeef26ce9140000,%rax
    c6e5:	jmp    c726 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2de6>
    c6e7:	movabs $0x2386f26fc10000,%rax
    c6f1:	imul   %rax,%r15
    c6f5:	add    $0x2,%rdi
    c6f9:	call   2d40 <stomptalk::detail::(anonymous namespace)::antout<long, 16ul>::conv(char const*)>
    c6fe:	movabs $0xf956b28b0bd00000,%rcx
    c708:	add    %rax,%rcx
    c70b:	add    %r15,%rcx
    c70e:	movabs $0x16345785d8a0000,%rax
    c718:	imul   %rax,%r14
    c71c:	movabs $0xbd62f96e76200000,%rax
    c726:	add    %r14,%rax
    c729:	add    %rcx,%rax
    c72c:	mov    %rbp,%r15
    c72f:	lea    0xc0(%rbx),%r11
    c736:	lea    0xd0(%rbx),%r10
    c73d:	xor    %r9d,%r9d
    c740:	xorps  %xmm4,%xmm4
    c743:	movdqa 0x9eb5(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c74b:	movdqa 0x9ebd(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c753:	movdqa 0x9ec5(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c75b:	movdqa 0x9ecc(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c764:	jmp    a451 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb11>
    c769:	xor    %r9d,%r9d
    c76c:	jmp    b53c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bfc>
    c771:	mov    $0x1,%dl
    c773:	jmp    b73e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1dfe>
    c778:	cmp    $0x52,%edi
    c77b:	lea    0x70(%rbx),%r14
    c77f:	lea    0xc0(%rbx),%r11
    c786:	lea    0xd0(%rbx),%r10
    c78d:	mov    $0x0,%r9d
    c793:	xorps  %xmm4,%xmm4
    c796:	movdqa 0x9e62(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c79e:	movdqa 0x9e6a(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c7a6:	movdqa 0x9e72(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c7ae:	movdqa 0x9e79(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c7b7:	jne    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c7bd:	mov    $0x45434552,%edi
    c7c2:	xor    (%rdx),%edi
    c7c4:	mov    $0x54504945,%r8d
    c7ca:	xor    0x3(%rdx),%r8d
    c7ce:	xor    %esi,%esi
    c7d0:	or     %edi,%r8d
    c7d3:	setne  %sil
    c7d7:	neg    %rsi
    c7da:	or     $0xb,%rsi
    c7de:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c7e3:	cmp    $0x45,%edi
    c7e6:	jne    c83d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2efd>
    c7e8:	mov    $0x4f525245,%esi
    c7ed:	xor    (%rdx),%esi
    c7ef:	movzbl 0x4(%rdx),%edx
    c7f3:	xor    $0x52,%edx
    c7f6:	xor    %edi,%edi
    c7f8:	or     %esi,%edx
    c7fa:	sete   %dil
    c7fe:	lea    (%rdi,%rdi,8),%rsi
    c802:	dec    %rsi
    c805:	jmp    b80f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ecf>
    c80a:	mov    %rdx,%r8
    c80d:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    c812:	mov    %r9,%r8
    c815:	jmp    b428 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ae8>
    c81a:	movabs $0xb00000003,%rax
    c824:	mov    %rax,0x110(%rbx)
    c82b:	mov    0x120(%rbx),%rax
    c832:	mov    %r9,%r8
    c835:	mov    %r9,%rcx
    c838:	jmp    bc59 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2319>
    c83d:	cmp    $0x42,%edi
    c840:	jne    c865 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2f25>
    c842:	mov    $0x49474542,%esi
    c847:	xor    (%rdx),%esi
    c849:	movzbl 0x4(%rdx),%edx
    c84d:	xor    $0x4e,%edx
    c850:	xor    %edi,%edi
    c852:	or     %esi,%edx
    c854:	sete   %dil
    c858:	lea    -0x1(,%rdi,4),%rsi
    c860:	jmp    b80f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ecf>
    c865:	cmp    $0x41,%edi
    c868:	lea    0x70(%rbx),%r14
    c86c:	lea    0xc0(%rbx),%r11
    c873:	lea    0xd0(%rbx),%r10
    c87a:	mov    $0x0,%r9d
    c880:	xorps  %xmm4,%xmm4
    c883:	movdqa 0x9d75(%rip),%xmm5        # 16600 <_IO_stdin_used+0x600>
    c88b:	movdqa 0x9d7d(%rip),%xmm6        # 16610 <_IO_stdin_used+0x610>
    c893:	movdqa 0x9d85(%rip),%xmm7        # 16620 <_IO_stdin_used+0x620>
    c89b:	movdqa 0x9d8c(%rip),%xmm8        # 16630 <_IO_stdin_used+0x630>
    c8a4:	jne    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c8aa:	mov    $0x524f4241,%esi
    c8af:	xor    (%rdx),%esi
    c8b1:	movzbl 0x4(%rdx),%edx
    c8b5:	xor    $0x54,%edx
    c8b8:	xor    %edi,%edi
    c8ba:	or     %esi,%edx
    c8bc:	sete   %dil
    c8c0:	lea    -0x1(,%rdi,2),%rsi
    c8c8:	jmp    a14d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
    c8cd:	nopl   (%rax)

0000000000012850 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   12850:	endbr64
   12854:	push   %rbp
   12855:	push   %r15
   12857:	push   %r14
   12859:	push   %r13
   1285b:	push   %r12
   1285d:	push   %rbx
   1285e:	sub    $0x18,%rsp
   12862:	cmp    %rdx,%rsi
   12865:	jae    12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   1286b:	mov    %rdx,%r14
   1286e:	mov    %rdi,%rbx
   12871:	lea    0xd0(%rdi),%r13
   12878:	movzbl 0x10a(%rdi),%eax
   1287f:	mov    $0x440081,%ecx
   12884:	lea    0x3d35(%rip),%r10        # 165c0 <_IO_stdin_used+0x5c0>
   1288b:	xor    %r11d,%r11d
   1288e:	movdqa 0x3d6a(%rip),%xmm4        # 16600 <_IO_stdin_used+0x600>
   12896:	movdqa 0x3d72(%rip),%xmm5        # 16610 <_IO_stdin_used+0x610>
   1289e:	movdqa 0x3d7a(%rip),%xmm6        # 16620 <_IO_stdin_used+0x620>
   128a6:	movdqa 0x3d82(%rip),%xmm7        # 16630 <_IO_stdin_used+0x630>
   128ae:	xorps  %xmm8,%xmm8
   128b2:	movdqa 0x3d35(%rip),%xmm9        # 165f0 <_IO_stdin_used+0x5f0>
   128bb:	cmp    $0x1,%al
   128bd:	je     12b01 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2b1>
   128c3:	cmpq   $0x0,0xc8(%rbx)
   128cb:	sete   %al
   128ce:	movzbl 0x10b(%rbx),%edx
   128d5:	mov    %r14,%rcx
   128d8:	sub    %rsi,%rcx
   128db:	cmp    $0x10,%rcx
   128df:	jl     12e76 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x626>
   128e5:	mov    %rsi,%r15
   128e8:	xor    %ebp,%ebp
   128ea:	movdqu (%r15),%xmm0
   128ef:	pxor   %xmm1,%xmm1
   128f3:	pxor   %xmm2,%xmm2
   128f7:	test   %dl,%dl
   128f9:	jne    12903 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb3>
   128fb:	movdqa %xmm0,%xmm2
   128ff:	pcmpeqb %xmm7,%xmm2
   12903:	movdqa %xmm0,%xmm3
   12907:	pcmpeqb %xmm4,%xmm3
   1290b:	pmovmskb %xmm3,%edi
   1290f:	pcmpeqb %xmm0,%xmm1
   12913:	movdqa %xmm0,%xmm3
   12917:	pcmpeqb %xmm5,%xmm3
   1291b:	pcmpeqb %xmm6,%xmm0
   1291f:	por    %xmm3,%xmm0
   12923:	por    %xmm1,%xmm0
   12927:	por    %xmm2,%xmm0
   1292b:	pmovmskb %xmm0,%r8d
   12930:	test   %edi,%edi
   12932:	je     12960 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
   12934:	test   $0x1,%al
   12936:	je     12960 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
   12938:	tzcnt  %edi,%eax
   1293c:	test   %r8d,%r8d
   1293f:	je     1294f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xff>
   12941:	tzcnt  %r8d,%r9d
   12946:	cmp    %r9d,%eax
   12949:	jae    12dac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x55c>
   1294f:	mov    %eax,%ebp
   12951:	add    %r15,%rbp
   12954:	lea    -0x1(%rdi),%r9d
   12958:	and    %edi,%r9d
   1295b:	xor    %eax,%eax
   1295d:	mov    %r9d,%edi
   12960:	test   %dl,%dl
   12962:	cmovne %r11d,%edi
   12966:	or     %r8d,%edi
   12969:	jne    12990 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x140>
   1296b:	add    $0x10,%r15
   1296f:	add    $0xfffffffffffffff0,%rcx
   12973:	cmp    $0xf,%rcx
   12977:	jg     128ea <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9a>
   1297d:	jmp    12e7b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x62b>
   12982:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   12990:	tzcnt  %edi,%eax
   12994:	add    %rax,%r15
   12997:	test   %rbp,%rbp
   1299a:	je     12af9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2a9>
   129a0:	mov    %rbp,%r12
   129a3:	sub    %rsi,%r12
   129a6:	je     12db3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x563>
   129ac:	mov    0x10(%rbx),%rcx
   129b0:	mov    0x100(%rbx),%rax
   129b7:	mov    %rcx,%rdx
   129ba:	sub    %rax,%rdx
   129bd:	cmp    %rdx,%r12
   129c0:	ja     12e48 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f8>
   129c6:	mov    0xf8(%rbx),%rdx
   129cd:	add    %rax,%rdx
   129d0:	sub    %rdx,%rcx
   129d3:	cmp    %rcx,%r12
   129d6:	ja     12e33 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e3>
   129dc:	add    %r12,%rax
   129df:	mov    %rax,0x100(%rbx)
   129e6:	cmpb   $0x1,0x10d(%rbx)
   129ed:	je     12d5b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x50b>
   129f3:	mov    0xd8(%rbx),%rcx
   129fa:	test   %rcx,%rcx
   129fd:	jne    12a05 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b5>
   129ff:	mov    %rsi,0x0(%r13)
   12a03:	xor    %ecx,%ecx
   12a05:	add    %r12,%rcx
   12a08:	mov    %rcx,0xd8(%rbx)
   12a0f:	test   %rcx,%rcx
   12a12:	je     13071 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x821>
   12a18:	mov    0xd0(%rbx),%rax
   12a1f:	movb   $0x0,0x10d(%rbx)
   12a26:	movups %xmm8,0x0(%r13)
   12a2b:	mov    %rax,0xc0(%rbx)
   12a32:	mov    %rcx,0xc8(%rbx)
   12a39:	xor    %edx,%edx
   12a3b:	cmp    $0xe,%rcx
   12a3f:	jne    12a4d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1fd>
   12a41:	mov    0x78(%rbx),%ecx
   12a44:	and    $0x1,%ecx
   12a47:	je     12cf0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4a0>
   12a4d:	mov    %dl,0x10c(%rbx)
   12a53:	inc    %rbp
   12a56:	mov    %rbp,%rsi
   12a59:	cmp    %rsi,%r15
   12a5c:	je     12ac7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x277>
   12a5e:	mov    %r15,%r12
   12a61:	sub    %rbp,%r12
   12a64:	mov    0x10(%rbx),%rcx
   12a68:	mov    0x100(%rbx),%rax
   12a6f:	mov    %rcx,%rdx
   12a72:	sub    %rax,%rdx
   12a75:	cmp    %rdx,%r12
   12a78:	ja     12e48 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f8>
   12a7e:	mov    0xf8(%rbx),%rdx
   12a85:	add    %rax,%rdx
   12a88:	sub    %rdx,%rcx
   12a8b:	cmp    %rcx,%r12
   12a8e:	ja     12e33 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e3>
   12a94:	add    %r12,%rax
   12a97:	mov    %rax,0x100(%rbx)
   12a9e:	cmpb   $0x1,0x10d(%rbx)
   12aa5:	je     12d22 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d2>
   12aab:	mov    0xd8(%rbx),%rax
   12ab2:	test   %rax,%rax
   12ab5:	jne    12abd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x26d>
   12ab7:	mov    %rsi,0x0(%r13)
   12abb:	xor    %eax,%eax
   12abd:	add    %r12,%rax
   12ac0:	mov    %rax,0xd8(%rbx)
   12ac7:	cmp    %r14,%r15
   12aca:	je     12dfd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ad>
   12ad0:	movzbl (%r15),%eax
   12ad4:	cmp    $0x5c,%eax
   12ad7:	jne    12bd2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x382>
   12add:	jmp    12b7c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x32c>
   12ae2:	mov    %al,0x10a(%rbx)
   12ae8:	inc    %rsi
   12aeb:	cmp    %r14,%rsi
   12aee:	jb     128bb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b>
   12af4:	jmp    12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   12af9:	mov    %rsi,%rbp
   12afc:	jmp    12a59 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x209>
   12b01:	movzbl (%rsi),%eax
   12b04:	add    $0xa4,%al
   12b06:	cmp    $0x17,%al
   12b08:	jae    12dbf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x56f>
   12b0e:	movzbl %al,%eax
   12b11:	bt     %eax,%ecx
   12b14:	jae    12dbf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x56f>
   12b1a:	mov    %r10,%r12
   12b1d:	movsbl (%rax,%r10,1),%eax
   12b22:	mov    %rbx,%rdi
   12b25:	mov    %rsi,%rdx
   12b28:	mov    %eax,%esi
   12b2a:	mov    %rdx,%r15
   12b2d:	call   6e10 <stomptalk::parser::append(char, char const*)>
   12b32:	test   %al,%al
   12b34:	je     12e3f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ef>
   12b3a:	xor    %eax,%eax
   12b3c:	mov    %r15,%rsi
   12b3f:	mov    $0x440081,%ecx
   12b44:	mov    %r12,%r10
   12b47:	xor    %r11d,%r11d
   12b4a:	movdqa 0x3aae(%rip),%xmm4        # 16600 <_IO_stdin_used+0x600>
   12b52:	movdqa 0x3ab6(%rip),%xmm5        # 16610 <_IO_stdin_used+0x610>
   12b5a:	movdqa 0x3abe(%rip),%xmm6        # 16620 <_IO_stdin_used+0x620>
   12b62:	movdqa 0x3ac6(%rip),%xmm7        # 16630 <_IO_stdin_used+0x630>
   12b6a:	xorps  %xmm8,%xmm8
   12b6e:	movdqa 0x3a79(%rip),%xmm9        # 165f0 <_IO_stdin_used+0x5f0>
   12b77:	jmp    12ae2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x292>
   12b7c:	cmpb   $0x1,0x10b(%rbx)
   12b83:	je     12bd2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x382>
   12b85:	mov    %rbx,%rdi
   12b88:	mov    %r10,%r12
   12b8b:	call   6ad0 <stomptalk::parser::own_token()>
   12b90:	movdqa 0x3a57(%rip),%xmm9        # 165f0 <_IO_stdin_used+0x5f0>
   12b99:	xorps  %xmm8,%xmm8
   12b9d:	movdqa 0x3a8b(%rip),%xmm7        # 16630 <_IO_stdin_used+0x630>
   12ba5:	movdqa 0x3a73(%rip),%xmm6        # 16620 <_IO_stdin_used+0x620>
   12bad:	movdqa 0x3a5b(%rip),%xmm5        # 16610 <_IO_stdin_used+0x610>
   12bb5:	movdqa 0x3a43(%rip),%xmm4        # 16600 <_IO_stdin_used+0x600>
   12bbd:	xor    %r11d,%r11d
   12bc0:	mov    %r12,%r10
   12bc3:	mov    $0x440081,%ecx
   12bc8:	mov    $0x1,%al
   12bca:	mov    %r15,%rsi
   12bcd:	jmp    12ae2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x292>
   12bd2:	cmpq   $0x0,0xc8(%rbx)
   12bda:	je     12c86 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x436>
   12be0:	cmp    $0xd,%eax
   12be3:	jne    12c7d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x42d>
   12be9:	mov    %rbx,%rdi
   12bec:	mov    %r15,%rsi
   12bef:	call   7290 <stomptalk::parser::finish_value(char const*)>
   12bf4:	test   %al,%al
   12bf6:	je     12e3f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ef>
   12bfc:	lea    0x1(%r15),%rsi
   12c00:	cmpb   $0xa,(%r15)
   12c04:	je     12cba <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46a>
   12c0a:	cmpl   $0x0,0x110(%rbx)
   12c11:	sete   %al
   12c14:	lea    -0x6ab(%rip),%rcx        # 12570 <char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)>
   12c1b:	mov    %rcx,0x60(%rbx)
   12c1f:	movq   $0x0,0x68(%rbx)
   12c27:	cmp    %r14,%rsi
   12c2a:	jae    12e02 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5b2>
   12c30:	test   %al,%al
   12c32:	je     12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   12c38:	cmpb   $0xa,(%rsi)
   12c3b:	jne    130ac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x85c>
   12c41:	add    $0x2,%r15
   12c45:	lea    -0x930c(%rip),%rax        # 9940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
   12c4c:	mov    %rax,0x60(%rbx)
   12c50:	movq   $0x0,0x68(%rbx)
   12c58:	cmp    %r14,%r15
   12c5b:	jae    12dfd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ad>
   12c61:	mov    %rbx,%rdi
   12c64:	mov    %r15,%rsi
   12c67:	mov    %r14,%rdx
   12c6a:	add    $0x18,%rsp
   12c6e:	pop    %rbx
   12c6f:	pop    %r12
   12c71:	pop    %r13
   12c73:	pop    %r14
   12c75:	pop    %r15
   12c77:	pop    %rbp
   12c78:	jmp    9940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
   12c7d:	cmp    $0xa,%eax
   12c80:	je     12be9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x399>
   12c86:	movabs $0x700000003,%rax
   12c90:	mov    %rax,0x110(%rbx)
   12c97:	mov    %r15,%rax
   12c9a:	sub    0x120(%rbx),%rax
   12ca1:	mov    %rax,0x118(%rbx)
   12ca8:	inc    %r15
   12cab:	mov    %r15,0x128(%rbx)
   12cb2:	mov    %r15,%rsi
   12cb5:	jmp    12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   12cba:	cmpl   $0x0,0x110(%rbx)
   12cc1:	sete   %al
   12cc4:	lea    -0x938b(%rip),%rcx        # 9940 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
   12ccb:	mov    %rcx,0x60(%rbx)
   12ccf:	movq   $0x0,0x68(%rbx)
   12cd7:	cmp    %r14,%rsi
   12cda:	jae    12e09 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5b9>
   12ce0:	test   %al,%al
   12ce2:	je     12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   12ce8:	mov    %rbx,%rdi
   12ceb:	jmp    12c67 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x417>
   12cf0:	cmp    $0xe,%r12
   12cf4:	jne    12e10 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c0>
   12cfa:	cmp    0x120(%rbx),%rsi
   12d01:	jbe    12e10 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c0>
   12d07:	movdqu -0x1(%rsi),%xmm0
   12d0c:	pcmpeqb %xmm9,%xmm0
   12d11:	pmovmskb %xmm0,%eax
   12d15:	xor    $0xffff,%eax
   12d1a:	sete   %dl
   12d1d:	jmp    12a4d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1fd>
   12d22:	mov    %r10,%rbp
   12d25:	mov    0x48(%rbx),%rdi
   12d29:	mov    0x50(%rbx),%rax
   12d2d:	sub    %rdi,%rax
   12d30:	cmp    %rax,%r12
   12d33:	ja     130d4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x884>
   12d39:	mov    %r12,%rdx
   12d3c:	call   22a0 <memcpy@plt>
   12d41:	mov    0x48(%rbx),%rax
   12d45:	add    %r12,%rax
   12d48:	mov    %rax,0x48(%rbx)
   12d4c:	mov    0xd8(%rbx),%rax
   12d53:	mov    %rbp,%r10
   12d56:	jmp    12abd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x26d>
   12d5b:	mov    0x48(%rbx),%rdi
   12d5f:	mov    0x50(%rbx),%rax
   12d63:	sub    %rdi,%rax
   12d66:	cmp    %rax,%r12
   12d69:	mov    %rsi,0x10(%rsp)
   12d6e:	ja     130dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88d>
   12d74:	mov    %r12,%rdx
   12d77:	call   22a0 <memcpy@plt>
   12d7c:	mov    0x48(%rbx),%rax
   12d80:	add    %r12,%rax
   12d83:	mov    %rax,0x48(%rbx)
   12d87:	mov    0xd8(%rbx),%rcx
   12d8e:	mov    0x10(%rsp),%rsi
   12d93:	lea    0x3826(%rip),%r10        # 165c0 <_IO_stdin_used+0x5c0>
   12d9a:	xorps  %xmm8,%xmm8
   12d9e:	movdqa 0x3849(%rip),%xmm9        # 165f0 <_IO_stdin_used+0x5f0>
   12da7:	jmp    12a05 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b5>
   12dac:	mov    $0x1,%al
   12dae:	jmp    12960 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
   12db3:	mov    0xd8(%rbx),%rcx
   12dba:	jmp    12a0f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1bf>
   12dbf:	movabs $0x800000003,%rax
   12dc9:	mov    %rax,0x110(%rbx)
   12dd0:	mov    %rsi,%rax
   12dd3:	sub    0x120(%rbx),%rax
   12dda:	mov    %rax,0x118(%rbx)
   12de1:	inc    %rsi
   12de4:	mov    %rsi,0x128(%rbx)
   12deb:	mov    %rsi,%rax
   12dee:	add    $0x18,%rsp
   12df2:	pop    %rbx
   12df3:	pop    %r12
   12df5:	pop    %r13
   12df7:	pop    %r14
   12df9:	pop    %r15
   12dfb:	pop    %rbp
   12dfc:	ret
   12dfd:	mov    %r15,%rsi
   12e00:	jmp    12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   12e02:	xor    %eax,%eax
   12e04:	jmp    12c30 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
   12e09:	xor    %eax,%eax
   12e0b:	jmp    12ce0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x490>
   12e10:	movabs $0x2d746e65746e6f63,%rcx
   12e1a:	xor    (%rax),%rcx
   12e1d:	movabs $0x6874676e656c2d74,%rdx
   12e27:	xor    0x6(%rax),%rdx
   12e2b:	or     %rcx,%rdx
   12e2e:	jmp    12d1a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4ca>
   12e33:	movl   $0x2,0x110(%rbx)
   12e3d:	jmp    12de4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x594>
   12e3f:	mov    0x128(%rbx),%rsi
   12e46:	jmp    12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   12e48:	lea    (%rsi,%rdx,1),%rax
   12e4c:	movabs $0xd00000003,%rcx
   12e56:	mov    %rcx,0x110(%rbx)
   12e5d:	sub    0x120(%rbx),%rax
   12e64:	mov    %rax,0x118(%rbx)
   12e6b:	add    %rdx,%rsi
   12e6e:	inc    %rsi
   12e71:	jmp    12de4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x594>
   12e76:	xor    %ebp,%ebp
   12e78:	mov    %rsi,%r15
   12e7b:	mov    %r14,%rdi
   12e7e:	sub    %r15,%rdi
   12e81:	xor    %r11d,%r11d
   12e84:	cmp    $0x8,%rdi
   12e88:	jl     12fa3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x753>
   12e8e:	mov    %r11,0x8(%rsp)
   12e93:	mov    (%r15),%r10
   12e96:	mov    %r10,%r9
   12e99:	movabs $0x7f7f7f7f7f7f7f7f,%rcx
   12ea3:	and    %rcx,%r9
   12ea6:	lea    (%r9,%rcx,1),%r8
   12eaa:	or     %r10,%r8
   12ead:	not    %r8
   12eb0:	mov    %r9,%r11
   12eb3:	movabs $0xa0a0a0a0a0a0a0a,%r12
   12ebd:	xor    %r12,%r11
   12ec0:	add    %rcx,%r11
   12ec3:	or     %r10,%r11
   12ec6:	not    %r11
   12ec9:	or     %r8,%r11
   12ecc:	mov    %r9,%r8
   12ecf:	movabs $0xd0d0d0d0d0d0d0d,%r12
   12ed9:	xor    %r12,%r8
   12edc:	add    %rcx,%r8
   12edf:	or     %r10,%r8
   12ee2:	not    %r8
   12ee5:	or     %r11,%r8
   12ee8:	movabs $0x8080808080808080,%r12
   12ef2:	and    %r12,%r8
   12ef5:	test   %dl,%dl
   12ef7:	jne    12f22 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6d2>
   12ef9:	mov    %r9,%r11
   12efc:	movabs $0x5c5c5c5c5c5c5c5c,%r12
   12f06:	xor    %r12,%r11
   12f09:	movabs $0x8080808080808080,%r12
   12f13:	add    %rcx,%r11
   12f16:	or     %r10,%r11
   12f19:	not    %r11
   12f1c:	and    %r12,%r11
   12f1f:	or     %r11,%r8
   12f22:	movabs $0x3a3a3a3a3a3a3a3a,%r11
   12f2c:	xor    %r11,%r9
   12f2f:	add    %rcx,%r9
   12f32:	or     %r10,%r9
   12f35:	and    %r12,%r9
   12f38:	mov    %r9,%r10
   12f3b:	xor    %r12,%r10
   12f3e:	cmp    %r12,%r9
   12f41:	je     13045 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f5>
   12f47:	test   $0x1,%al
   12f49:	je     13045 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f5>
   12f4f:	tzcnt  %r10,%r11
   12f54:	test   %r8,%r8
   12f57:	jne    13057 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x807>
   12f5d:	shr    $0x3,%r11d
   12f61:	add    %r15,%r11
   12f64:	not    %r9
   12f67:	movabs $0x8080808080808080,%rax
   12f71:	add    %rax,%r9
   12f74:	and    %r9,%r10
   12f77:	xor    %eax,%eax
   12f79:	test   %dl,%dl
   12f7b:	jne    1304f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7ff>
   12f81:	or     %r8,%r10
   12f84:	jne    13031 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7e1>
   12f8a:	add    $0x8,%r15
   12f8e:	add    $0xfffffffffffffff8,%rdi
   12f92:	cmp    $0x7,%rdi
   12f96:	lea    0x3623(%rip),%r10        # 165c0 <_IO_stdin_used+0x5c0>
   12f9d:	jg     12e8e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x63e>
   12fa3:	cmp    %r14,%r15
   12fa6:	jae    130a5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x855>
   12fac:	test   %dl,%dl
   12fae:	je     12fd7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x787>
   12fb0:	xor    %edx,%edx
   12fb2:	movzbl (%r15),%edi
   12fb6:	cmp    $0x3a,%edi
   12fb9:	jne    12fbf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x76f>
   12fbb:	test   $0x1,%al
   12fbd:	jne    13023 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7d3>
   12fbf:	cmp    $0xd,%edi
   12fc2:	je     13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   12fc4:	cmp    $0xa,%edi
   12fc7:	je     13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   12fc9:	test   %edi,%edi
   12fcb:	je     13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   12fcd:	inc    %r15
   12fd0:	cmp    %r14,%r15
   12fd3:	jb     12fb2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x762>
   12fd5:	jmp    1300d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7bd>
   12fd7:	xor    %edx,%edx
   12fd9:	movzbl (%r15),%edi
   12fdd:	cmp    $0x3a,%edi
   12fe0:	jne    12fe6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x796>
   12fe2:	test   $0x1,%al
   12fe4:	jne    1302a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7da>
   12fe6:	cmp    $0xc,%edi
   12fe9:	jle    12ffc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7ac>
   12feb:	cmp    $0xd,%edi
   12fee:	je     13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   12ff0:	cmp    $0x3a,%edi
   12ff3:	je     13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   12ff5:	cmp    $0x5c,%edi
   12ff8:	jne    13005 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b5>
   12ffa:	jmp    13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   12ffc:	cmp    $0xa,%edi
   12fff:	je     13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   13001:	test   %edi,%edi
   13003:	je     13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   13005:	inc    %r15
   13008:	cmp    %r14,%r15
   1300b:	jb     12fd9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x789>
   1300d:	mov    %r14,%r15
   13010:	test   %r11,%r11
   13013:	cmove  %rdx,%r11
   13017:	test   %rbp,%rbp
   1301a:	cmove  %r11,%rbp
   1301e:	jmp    12997 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x147>
   13023:	xor    %eax,%eax
   13025:	mov    %r15,%rdx
   13028:	jmp    12fcd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x77d>
   1302a:	xor    %eax,%eax
   1302c:	mov    %r15,%rdx
   1302f:	jmp    13005 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b5>
   13031:	tzcnt  %r10,%rax
   13036:	shr    $0x3,%eax
   13039:	add    %rax,%r15
   1303c:	lea    0x357d(%rip),%r10        # 165c0 <_IO_stdin_used+0x5c0>
   13043:	jmp    13017 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c7>
   13045:	mov    0x8(%rsp),%r11
   1304a:	jmp    12f79 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x729>
   1304f:	xor    %r10d,%r10d
   13052:	jmp    12f81 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x731>
   13057:	tzcnt  %r8,%rax
   1305c:	cmp    %eax,%r11d
   1305f:	jb     12f5d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x70d>
   13065:	mov    $0x1,%al
   13067:	mov    0x8(%rsp),%r11
   1306c:	jmp    12f79 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x729>
   13071:	movabs $0x700000003,%rax
   1307b:	mov    %rax,0x110(%rbx)
   13082:	mov    %rbp,%rax
   13085:	sub    0x120(%rbx),%rax
   1308c:	mov    %rax,0x118(%rbx)
   13093:	inc    %rbp
   13096:	mov    %rbp,0x128(%rbx)
   1309d:	mov    %rbp,%rsi
   130a0:	jmp    12deb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
   130a5:	xor    %edx,%edx
   130a7:	jmp    13010 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
   130ac:	movabs $0x900000003,%rax
   130b6:	mov    %rax,0x110(%rbx)
   130bd:	sub    0x120(%rbx),%rsi
   130c4:	mov    %rsi,0x118(%rbx)
   130cb:	add    $0x2,%r15
   130cf:	jmp    12cab <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x45b>
   130d4:	mov    0x40(%rbx),%rax
   130d8:	jmp    12d48 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f8>
   130dd:	mov    0x40(%rbx),%rax
   130e1:	jmp    12d83 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x533>
   130e6:	cs nopw 0x0(%rax,%rax,1)

