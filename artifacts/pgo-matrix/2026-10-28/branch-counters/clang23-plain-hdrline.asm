0000000000009710 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
    9710:	endbr64
    9714:	movzbl (%rsi),%eax
    9717:	cmp    $0xd,%eax
    971a:	je     976b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5b>
    971c:	cmp    $0xa,%eax
    971f:	jne    97c6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb6>
    9725:	inc    %rsi
    9728:	lea    0x1d1(%rip),%rax        # 9900 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    972f:	mov    %rax,0x60(%rdi)
    9733:	movq   $0x0,0x68(%rdi)
    973b:	cmp    %rdx,%rsi
    973e:	jae    9881 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
    9744:	cmpl   $0x0,0x110(%rdi)
    974b:	jne    9881 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
    9751:	testb  $0x1,0x78(%rdi)
    9755:	jne    981e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10e>
    975b:	lea    0xe5e(%rip),%rax        # a5c0 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>
    9762:	mov    %rax,0x60(%rdi)
    9766:	jmp    a5c0 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>
    976b:	lea    0x1(%rsi),%rax
    976f:	lea    0x35a(%rip),%rcx        # 9ad0 <char const* stomptalk::parser::almost_done<3u>(char const*, char const*)>
    9776:	mov    %rcx,0x60(%rdi)
    977a:	movq   $0x0,0x68(%rdi)
    9782:	cmp    %rdx,%rax
    9785:	jae    981d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10d>
    978b:	cmpl   $0x0,0x110(%rdi)
    9792:	jne    981d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10d>
    9798:	cmpb   $0xa,(%rax)
    979b:	jne    982e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11e>
    97a1:	add    $0x2,%rsi
    97a5:	lea    0x154(%rip),%rax        # 9900 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    97ac:	mov    %rax,0x60(%rdi)
    97b0:	movq   $0x0,0x68(%rdi)
    97b8:	cmp    %rdx,%rsi
    97bb:	jae    9881 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
    97c1:	jmp    9900 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    97c6:	mov    0x80(%rdi),%rax
    97cd:	cmp    0x18(%rdi),%rax
    97d1:	jne    9803 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf3>
    97d3:	movabs $0xc00000003,%rax
    97dd:	mov    %rax,0x110(%rdi)
    97e4:	mov    %rsi,%rax
    97e7:	sub    0x120(%rdi),%rax
    97ee:	mov    %rax,0x118(%rdi)
    97f5:	inc    %rsi
    97f8:	mov    %rsi,0x128(%rdi)
    97ff:	mov    %rsi,%rax
    9802:	ret
    9803:	mov    0xe8(%rdi),%rax
    980a:	cmp    0x8(%rdi),%rax
    980e:	jne    985c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14c>
    9810:	movl   $0x2,0x110(%rdi)
    981a:	mov    %rsi,%rax
    981d:	ret
    981e:	lea    0xc0b(%rip),%rax        # a430 <char const* stomptalk::parser::body_read<3u>(char const*, char const*)>
    9825:	mov    %rax,0x60(%rdi)
    9829:	jmp    a430 <char const* stomptalk::parser::body_read<3u>(char const*, char const*)>
    982e:	movabs $0x900000003,%rcx
    9838:	mov    %rcx,0x110(%rdi)
    983f:	sub    0x120(%rdi),%rax
    9846:	mov    %rax,0x118(%rdi)
    984d:	add    $0x2,%rsi
    9851:	mov    %rsi,0x128(%rdi)
    9858:	mov    %rsi,%rax
    985b:	ret
    985c:	lea    0x2dd(%rip),%rax        # 9b40 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    9863:	mov    %rax,0x60(%rdi)
    9867:	movq   $0x0,0x68(%rdi)
    986f:	cmp    %rdx,%rsi
    9872:	jae    9881 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
    9874:	cmpl   $0x0,0x110(%rdi)
    987b:	je     9b40 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    9881:	mov    %rsi,%rax
    9884:	ret
    9885:	cs nopw 0x0(%rax,%rax,1)
    988f:	nop

0000000000009b40 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
    9b40:	endbr64
    9b44:	push   %rbp
    9b45:	push   %r15
    9b47:	push   %r14
    9b49:	push   %r13
    9b4b:	push   %r12
    9b4d:	push   %rbx
    9b4e:	sub    $0x18,%rsp
    9b52:	mov    %rsi,%rbp
    9b55:	cmp    %rdx,%rsi
    9b58:	jae    a353 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x813>
    9b5e:	mov    %rdx,%r13
    9b61:	mov    %rdi,%rbx
    9b64:	movabs $0x7f7f7f7f7f7f7f7f,%r11
    9b6e:	movzbl 0x10a(%rdi),%r14d
    9b76:	movdqa 0x44c2(%rip),%xmm4        # e040 <_IO_stdin_used+0x40>
    9b7e:	movdqa 0x44ca(%rip),%xmm5        # e050 <_IO_stdin_used+0x50>
    9b86:	movdqa 0x44d2(%rip),%xmm6        # e060 <_IO_stdin_used+0x60>
    9b8e:	movdqa 0x44da(%rip),%xmm7        # e070 <_IO_stdin_used+0x70>
    9b96:	mov    %rdx,0x10(%rsp)
    9b9b:	jmp    9bf8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb8>
    9b9d:	mov    0x40(%rbx),%rax
    9ba1:	mov    0x10(%rsp),%r13
    9ba6:	mov    %rax,0x48(%rbx)
    9baa:	mov    %r12,0xd0(%rbx)
    9bb1:	movb   $0x1,0x10d(%rbx)
    9bb8:	movabs $0x7f7f7f7f7f7f7f7f,%r11
    9bc2:	movdqa 0x4476(%rip),%xmm4        # e040 <_IO_stdin_used+0x40>
    9bca:	movdqa 0x447e(%rip),%xmm5        # e050 <_IO_stdin_used+0x50>
    9bd2:	movdqa 0x4486(%rip),%xmm6        # e060 <_IO_stdin_used+0x60>
    9bda:	movdqa 0x448e(%rip),%xmm7        # e070 <_IO_stdin_used+0x70>
    9be2:	mov    %r14b,0x10a(%rbx)
    9be9:	inc    %r15
    9bec:	mov    %r15,%rbp
    9bef:	cmp    %r13,%r15
    9bf2:	jae    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    9bf8:	cmp    $0x1,%r14b
    9bfc:	jne    9c50 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
    9bfe:	movzbl 0x0(%rbp),%eax
    9c02:	add    $0xa4,%al
    9c04:	cmp    $0x17,%al
    9c06:	jae    a23b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6fb>
    9c0c:	movzbl %al,%eax
    9c0f:	mov    $0x440081,%ecx
    9c14:	bt     %eax,%ecx
    9c17:	jae    a23b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6fb>
    9c1d:	lea    0x49ac(%rip),%rcx        # e5d0 <_IO_stdin_used+0x5d0>
    9c24:	movsbl (%rax,%rcx,1),%esi
    9c28:	mov    %rbx,%rdi
    9c2b:	mov    %rbp,%rdx
    9c2e:	call   51b0 <stomptalk::parser::append(char, char const*)>
    9c33:	test   %al,%al
    9c35:	je     a2d8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
    9c3b:	xor    %r14d,%r14d
    9c3e:	mov    %rbp,%r15
    9c41:	jmp    9bb8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78>
    9c46:	cs nopw 0x0(%rax,%rax,1)
    9c50:	cmpq   $0x0,0xc8(%rbx)
    9c58:	sete   %al
    9c5b:	movzbl 0x10b(%rbx),%ecx
    9c62:	mov    %r13,%rdx
    9c65:	sub    %rbp,%rdx
    9c68:	cmp    $0x10,%rdx
    9c6c:	movabs $0x8080808080808080,%r14
    9c76:	jl     9ea0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x360>
    9c7c:	mov    %rbp,%r15
    9c7f:	xor    %r12d,%r12d
    9c82:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    9c90:	movdqu (%r15),%xmm0
    9c95:	pxor   %xmm1,%xmm1
    9c99:	pxor   %xmm2,%xmm2
    9c9d:	test   %cl,%cl
    9c9f:	jne    9ca9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x169>
    9ca1:	movdqa %xmm0,%xmm2
    9ca5:	pcmpeqb %xmm7,%xmm2
    9ca9:	movdqa %xmm0,%xmm3
    9cad:	pcmpeqb %xmm4,%xmm3
    9cb1:	pmovmskb %xmm3,%esi
    9cb5:	pcmpeqb %xmm0,%xmm1
    9cb9:	movdqa %xmm0,%xmm3
    9cbd:	pcmpeqb %xmm5,%xmm3
    9cc1:	pcmpeqb %xmm6,%xmm0
    9cc5:	por    %xmm3,%xmm0
    9cc9:	por    %xmm1,%xmm0
    9ccd:	por    %xmm2,%xmm0
    9cd1:	pmovmskb %xmm0,%edi
    9cd5:	test   %esi,%esi
    9cd7:	je     9d04 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c4>
    9cd9:	test   $0x1,%al
    9cdb:	je     9d04 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c4>
    9cdd:	tzcnt  %esi,%r8d
    9ce2:	test   %edi,%edi
    9ce4:	je     9cf2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b2>
    9ce6:	tzcnt  %edi,%r9d
    9ceb:	mov    $0x1,%al
    9ced:	cmp    %r9d,%r8d
    9cf0:	jae    9d04 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c4>
    9cf2:	mov    %r8d,%r12d
    9cf5:	add    %r15,%r12
    9cf8:	lea    -0x1(%rsi),%r8d
    9cfc:	and    %esi,%r8d
    9cff:	xor    %eax,%eax
    9d01:	mov    %r8d,%esi
    9d04:	test   %cl,%cl
    9d06:	mov    $0x0,%r8d
    9d0c:	cmovne %r8d,%esi
    9d10:	or     %edi,%esi
    9d12:	jne    9ed0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x390>
    9d18:	add    $0x10,%r15
    9d1c:	add    $0xfffffffffffffff0,%rdx
    9d20:	cmp    $0xf,%rdx
    9d24:	jg     9c90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x150>
    9d2a:	mov    %r13,%rsi
    9d2d:	sub    %r15,%rsi
    9d30:	cmp    $0x8,%rsi
    9d34:	jl     9eb6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x376>
    9d3a:	movq   $0x0,0x8(%rsp)
    9d43:	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    9d50:	mov    (%r15),%r9
    9d53:	mov    %r9,%r8
    9d56:	and    %r11,%r8
    9d59:	lea    (%r8,%r11,1),%rdi
    9d5d:	or     %r9,%rdi
    9d60:	not    %rdi
    9d63:	mov    %r8,%r10
    9d66:	movabs $0xa0a0a0a0a0a0a0a,%rdx
    9d70:	xor    %rdx,%r10
    9d73:	add    %r11,%r10
    9d76:	or     %r9,%r10
    9d79:	not    %r10
    9d7c:	or     %rdi,%r10
    9d7f:	mov    %r8,%rdi
    9d82:	movabs $0xd0d0d0d0d0d0d0d,%rdx
    9d8c:	xor    %rdx,%rdi
    9d8f:	add    %r11,%rdi
    9d92:	or     %r9,%rdi
    9d95:	not    %rdi
    9d98:	or     %r10,%rdi
    9d9b:	and    %r14,%rdi
    9d9e:	test   %cl,%cl
    9da0:	jne    9dc1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x281>
    9da2:	mov    %r8,%r10
    9da5:	movabs $0x5c5c5c5c5c5c5c5c,%rdx
    9daf:	xor    %rdx,%r10
    9db2:	add    %r11,%r10
    9db5:	or     %r9,%r10
    9db8:	not    %r10
    9dbb:	and    %r14,%r10
    9dbe:	or     %r10,%rdi
    9dc1:	movabs $0x3a3a3a3a3a3a3a3a,%r10
    9dcb:	xor    %r10,%r8
    9dce:	add    %r11,%r8
    9dd1:	or     %r9,%r8
    9dd4:	and    %r14,%r8
    9dd7:	mov    %r8,%r9
    9dda:	xor    %r14,%r9
    9ddd:	cmp    %r14,%r8
    9de0:	je     9e1d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2dd>
    9de2:	test   $0x1,%al
    9de4:	je     9e1d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2dd>
    9de6:	tzcnt  %r9,%r10
    9deb:	test   %rdi,%rdi
    9dee:	je     9e06 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c6>
    9df0:	tzcnt  %rdi,%r11
    9df5:	mov    $0x1,%al
    9df7:	cmp    %r11d,%r10d
    9dfa:	movabs $0x7f7f7f7f7f7f7f7f,%r11
    9e04:	jae    9e1d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2dd>
    9e06:	shr    $0x3,%r10d
    9e0a:	add    %r15,%r10
    9e0d:	not    %r8
    9e10:	add    %r14,%r8
    9e13:	and    %r8,%r9
    9e16:	xor    %eax,%eax
    9e18:	mov    %r10,0x8(%rsp)
    9e1d:	test   %cl,%cl
    9e1f:	mov    $0x0,%r8d
    9e25:	cmove  %r9,%r8
    9e29:	or     %rdi,%r8
    9e2c:	jne    9ef1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b1>
    9e32:	add    $0x8,%r15
    9e36:	add    $0xfffffffffffffff8,%rsi
    9e3a:	cmp    $0x7,%rsi
    9e3e:	jg     9d50 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x210>
    9e44:	cmp    %r13,%r15
    9e47:	jae    9ec4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x384>
    9e49:	test   %cl,%cl
    9e4b:	je     9f0f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3cf>
    9e51:	xor    %ecx,%ecx
    9e53:	mov    0x8(%rsp),%r8
    9e58:	jmp    9e71 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x331>
    9e5a:	nopw   0x0(%rax,%rax,1)
    9e60:	xor    %eax,%eax
    9e62:	mov    %r15,%rcx
    9e65:	inc    %r15
    9e68:	cmp    %r13,%r15
    9e6b:	jae    9f69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x429>
    9e71:	movzbl (%r15),%esi
    9e75:	cmp    $0x3a,%esi
    9e78:	jne    9e7e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x33e>
    9e7a:	test   $0x1,%al
    9e7c:	jne    9e60 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x320>
    9e7e:	cmp    $0xd,%esi
    9e81:	ja     9e65 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x325>
    9e83:	mov    $0x2401,%edx
    9e88:	bt     %esi,%edx
    9e8b:	jae    9e65 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x325>
    9e8d:	jmp    9f70 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
    9e92:	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    9ea0:	xor    %r12d,%r12d
    9ea3:	mov    %rbp,%r15
    9ea6:	mov    %r13,%rsi
    9ea9:	sub    %r15,%rsi
    9eac:	cmp    $0x8,%rsi
    9eb0:	jge    9d3a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1fa>
    9eb6:	movq   $0x0,0x8(%rsp)
    9ebf:	cmp    %r13,%r15
    9ec2:	jb     9e49 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x309>
    9ec4:	xor    %ecx,%ecx
    9ec6:	mov    0x8(%rsp),%r8
    9ecb:	jmp    9f70 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
    9ed0:	tzcnt  %esi,%eax
    9ed4:	add    %rax,%r15
    9ed7:	test   %r12,%r12
    9eda:	jne    9f87 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x447>
    9ee0:	mov    %rbp,%r12
    9ee3:	cmp    %rbp,%r15
    9ee6:	jne    a101 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c1>
    9eec:	jmp    a1bf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x67f>
    9ef1:	tzcnt  %r8,%rax
    9ef6:	shr    $0x3,%eax
    9ef9:	add    %rax,%r15
    9efc:	mov    0x8(%rsp),%r8
    9f01:	test   %r12,%r12
    9f04:	cmove  %r8,%r12
    9f08:	test   %r12,%r12
    9f0b:	jne    9f87 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x447>
    9f0d:	jmp    9ee0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a0>
    9f0f:	xor    %ecx,%ecx
    9f11:	mov    0x8(%rsp),%r8
    9f16:	jmp    9f2d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3ed>
    9f18:	nopl   0x0(%rax,%rax,1)
    9f20:	cmp    $0x5c,%esi
    9f23:	je     9f70 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
    9f25:	inc    %r15
    9f28:	cmp    %r13,%r15
    9f2b:	jae    9f69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x429>
    9f2d:	movzbl (%r15),%esi
    9f31:	cmp    $0x3a,%esi
    9f34:	jne    9f50 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
    9f36:	test   $0x1,%al
    9f38:	je     9f50 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
    9f3a:	xor    %eax,%eax
    9f3c:	mov    %r15,%rcx
    9f3f:	inc    %r15
    9f42:	cmp    %r13,%r15
    9f45:	jb     9f2d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3ed>
    9f47:	jmp    9f69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x429>
    9f49:	nopl   0x0(%rax)
    9f50:	cmp    $0x3a,%esi
    9f53:	ja     9f20 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
    9f55:	mov    %esi,%edi
    9f57:	movabs $0x400000000002401,%rdx
    9f61:	bt     %rdi,%rdx
    9f65:	jae    9f20 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
    9f67:	jmp    9f70 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
    9f69:	mov    %r13,%r15
    9f6c:	nopl   0x0(%rax)
    9f70:	test   %r8,%r8
    9f73:	cmove  %rcx,%r8
    9f77:	test   %r12,%r12
    9f7a:	cmove  %r8,%r12
    9f7e:	test   %r12,%r12
    9f81:	je     9ee0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a0>
    9f87:	mov    %r12,%r13
    9f8a:	sub    %rbp,%r13
    9f8d:	je     9fec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4ac>
    9f8f:	mov    0x10(%rbx),%rcx
    9f93:	mov    0x100(%rbx),%rax
    9f9a:	mov    %rcx,%rdx
    9f9d:	sub    %rax,%rdx
    9fa0:	cmp    %rdx,%r13
    9fa3:	ja     a30f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7cf>
    9fa9:	mov    0xf8(%rbx),%rdx
    9fb0:	add    %rax,%rdx
    9fb3:	sub    %rdx,%rcx
    9fb6:	cmp    %rcx,%r13
    9fb9:	ja     a342 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x802>
    9fbf:	add    %r13,%rax
    9fc2:	mov    %rax,0x100(%rbx)
    9fc9:	cmpb   $0x1,0x10d(%rbx)
    9fd0:	jne    9ff5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b5>
    9fd2:	mov    0x48(%rbx),%rdi
    9fd6:	mov    0x50(%rbx),%rax
    9fda:	sub    %rdi,%rax
    9fdd:	cmp    %rax,%r13
    9fe0:	jbe    a00b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4cb>
    9fe2:	mov    0x40(%rbx),%rax
    9fe6:	mov    %rax,0x48(%rbx)
    9fea:	jmp    a044 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x504>
    9fec:	mov    0xd8(%rbx),%rdx
    9ff3:	jmp    a055 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x515>
    9ff5:	cmpq   $0x0,0xd8(%rbx)
    9ffd:	jne    a044 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x504>
    9fff:	lea    0xd0(%rbx),%rax
    a006:	mov    %rbp,(%rax)
    a009:	jmp    a044 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x504>
    a00b:	mov    %rbp,%rsi
    a00e:	mov    %r13,%rdx
    a011:	call   2280 <memcpy@plt>
    a016:	movdqa 0x4052(%rip),%xmm7        # e070 <_IO_stdin_used+0x70>
    a01e:	movdqa 0x403a(%rip),%xmm6        # e060 <_IO_stdin_used+0x60>
    a026:	movdqa 0x4022(%rip),%xmm5        # e050 <_IO_stdin_used+0x50>
    a02e:	movdqa 0x400a(%rip),%xmm4        # e040 <_IO_stdin_used+0x40>
    a036:	movabs $0x7f7f7f7f7f7f7f7f,%r11
    a040:	add    %r13,0x48(%rbx)
    a044:	mov    0xd8(%rbx),%rdx
    a04b:	add    %r13,%rdx
    a04e:	mov    %rdx,0xd8(%rbx)
    a055:	test   %rdx,%rdx
    a058:	je     a368 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x828>
    a05e:	mov    0xd0(%rbx),%rax
    a065:	movb   $0x0,0x10d(%rbx)
    a06c:	lea    0xd0(%rbx),%rcx
    a073:	pxor   %xmm0,%xmm0
    a077:	movdqu %xmm0,(%rcx)
    a07b:	mov    %rax,0xc0(%rbx)
    a082:	mov    %rdx,0xc8(%rbx)
    a089:	xor    %ecx,%ecx
    a08b:	cmp    $0xe,%rdx
    a08f:	jne    a0e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a7>
    a091:	mov    0x78(%rbx),%edx
    a094:	and    $0x1,%edx
    a097:	jne    a0e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a7>
    a099:	cmp    $0xe,%r13
    a09d:	jne    a0c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x580>
    a09f:	cmp    0x120(%rbx),%rbp
    a0a6:	jbe    a0c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x580>
    a0a8:	movdqu -0x1(%rbp),%xmm0
    a0ad:	pcmpeqb 0x3f7b(%rip),%xmm0        # e030 <_IO_stdin_used+0x30>
    a0b5:	pmovmskb %xmm0,%eax
    a0b9:	xor    $0xffff,%eax
    a0be:	jmp    a0e4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a4>
    a0c0:	mov    (%rax),%rcx
    a0c3:	movabs $0x2d746e65746e6f63,%rdx
    a0cd:	xor    %rdx,%rcx
    a0d0:	mov    0x6(%rax),%rax
    a0d4:	movabs $0x6874676e656c2d74,%rdx
    a0de:	xor    %rdx,%rax
    a0e1:	or     %rcx,%rax
    a0e4:	sete   %cl
    a0e7:	mov    %cl,0x10c(%rbx)
    a0ed:	inc    %r12
    a0f0:	mov    %r12,%rbp
    a0f3:	mov    0x10(%rsp),%r13
    a0f8:	cmp    %rbp,%r15
    a0fb:	je     a1bf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x67f>
    a101:	mov    %r15,%r13
    a104:	sub    %r12,%r13
    a107:	mov    0x10(%rbx),%rcx
    a10b:	mov    0x100(%rbx),%rax
    a112:	mov    %rcx,%rdx
    a115:	sub    %rax,%rdx
    a118:	cmp    %rdx,%r13
    a11b:	ja     a30f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7cf>
    a121:	mov    0xf8(%rbx),%rdx
    a128:	add    %rax,%rdx
    a12b:	sub    %rdx,%rcx
    a12e:	cmp    %rcx,%r13
    a131:	ja     a342 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x802>
    a137:	add    %r13,%rax
    a13a:	mov    %rax,0x100(%rbx)
    a141:	cmpb   $0x1,0x10d(%rbx)
    a148:	jne    a164 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x624>
    a14a:	mov    0x48(%rbx),%rdi
    a14e:	mov    0x50(%rbx),%rax
    a152:	sub    %rdi,%rax
    a155:	cmp    %rax,%r13
    a158:	jbe    a17a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x63a>
    a15a:	mov    0x40(%rbx),%rax
    a15e:	mov    %rax,0x48(%rbx)
    a162:	jmp    a1b3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x673>
    a164:	cmpq   $0x0,0xd8(%rbx)
    a16c:	jne    a1b3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x673>
    a16e:	lea    0xd0(%rbx),%rax
    a175:	mov    %rbp,(%rax)
    a178:	jmp    a1b3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x673>
    a17a:	mov    %rbp,%rsi
    a17d:	mov    %r13,%rdx
    a180:	call   2280 <memcpy@plt>
    a185:	movdqa 0x3ee3(%rip),%xmm7        # e070 <_IO_stdin_used+0x70>
    a18d:	movdqa 0x3ecb(%rip),%xmm6        # e060 <_IO_stdin_used+0x60>
    a195:	movdqa 0x3eb3(%rip),%xmm5        # e050 <_IO_stdin_used+0x50>
    a19d:	movdqa 0x3e9b(%rip),%xmm4        # e040 <_IO_stdin_used+0x40>
    a1a5:	movabs $0x7f7f7f7f7f7f7f7f,%r11
    a1af:	add    %r13,0x48(%rbx)
    a1b3:	add    %r13,0xd8(%rbx)
    a1ba:	mov    0x10(%rsp),%r13
    a1bf:	cmp    %r13,%r15
    a1c2:	je     a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a1c8:	movzbl (%r15),%eax
    a1cc:	cmp    $0x5c,%eax
    a1cf:	jne    a265 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
    a1d5:	cmpb   $0x0,0x10b(%rbx)
    a1dc:	jne    a265 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
    a1e2:	mov    $0x1,%r14b
    a1e5:	cmpb   $0x0,0x10d(%rbx)
    a1ec:	jne    9be2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa2>
    a1f2:	mov    %rbx,%rdi
    a1f5:	call   4e80 <stomptalk::parser::own_metadata()>
    a1fa:	mov    0x48(%rbx),%r12
    a1fe:	mov    0x50(%rbx),%rax
    a202:	mov    0xd8(%rbx),%r13
    a209:	sub    %r12,%rax
    a20c:	cmp    %rax,%r13
    a20f:	ja     9b9d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d>
    a215:	mov    %r12,%rax
    a218:	test   %r13,%r13
    a21b:	je     a233 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f3>
    a21d:	mov    0xd0(%rbx),%rsi
    a224:	mov    %r12,%rdi
    a227:	mov    %r13,%rdx
    a22a:	call   2280 <memcpy@plt>
    a22f:	mov    0x48(%rbx),%rax
    a233:	add    %r13,%rax
    a236:	jmp    9ba1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61>
    a23b:	movabs $0x800000003,%rax
    a245:	mov    %rax,0x110(%rbx)
    a24c:	mov    %rbp,%rax
    a24f:	sub    0x120(%rbx),%rax
    a256:	mov    %rax,0x118(%rbx)
    a25d:	inc    %rbp
    a260:	jmp    a34c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x80c>
    a265:	cmpq   $0x0,0xc8(%rbx)
    a26d:	je     a2e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a1>
    a26f:	cmp    $0xa,%eax
    a272:	je     a279 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x739>
    a274:	cmp    $0xd,%eax
    a277:	jne    a2e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a1>
    a279:	mov    %rbx,%rdi
    a27c:	mov    %r15,%rsi
    a27f:	call   55e0 <stomptalk::parser::finish_value(char const*)>
    a284:	test   %al,%al
    a286:	je     a2d8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
    a288:	lea    0x1(%r15),%rsi
    a28c:	cmpb   $0xa,(%r15)
    a290:	jne    a399 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x859>
    a296:	lea    -0xb8d(%rip),%rax        # 9710 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    a29d:	mov    %rax,0x60(%rbx)
    a2a1:	movq   $0x0,0x68(%rbx)
    a2a9:	cmp    %r13,%rsi
    a2ac:	jae    a3ea <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
    a2b2:	cmpl   $0x0,0x110(%rbx)
    a2b9:	jne    a3ea <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
    a2bf:	mov    %rbx,%rdi
    a2c2:	mov    %r13,%rdx
    a2c5:	add    $0x18,%rsp
    a2c9:	pop    %rbx
    a2ca:	pop    %r12
    a2cc:	pop    %r13
    a2ce:	pop    %r14
    a2d0:	pop    %r15
    a2d2:	pop    %rbp
    a2d3:	jmp    9710 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    a2d8:	mov    0x128(%rbx),%r15
    a2df:	jmp    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a2e1:	movabs $0x700000003,%rax
    a2eb:	mov    %rax,0x110(%rbx)
    a2f2:	mov    %r15,%rax
    a2f5:	sub    0x120(%rbx),%rax
    a2fc:	mov    %rax,0x118(%rbx)
    a303:	inc    %r15
    a306:	mov    %r15,0x128(%rbx)
    a30d:	jmp    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a30f:	lea    (%rdx,%rbp,1),%rax
    a313:	movabs $0xd00000003,%rcx
    a31d:	mov    %rcx,0x110(%rbx)
    a324:	sub    0x120(%rbx),%rax
    a32b:	mov    %rax,0x118(%rbx)
    a332:	lea    (%rdx,%rbp,1),%r15
    a336:	inc    %r15
    a339:	mov    %r15,0x128(%rbx)
    a340:	jmp    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a342:	movl   $0x2,0x110(%rbx)
    a34c:	mov    %rbp,0x128(%rbx)
    a353:	mov    %rbp,%r15
    a356:	mov    %r15,%rax
    a359:	add    $0x18,%rsp
    a35d:	pop    %rbx
    a35e:	pop    %r12
    a360:	pop    %r13
    a362:	pop    %r14
    a364:	pop    %r15
    a366:	pop    %rbp
    a367:	ret
    a368:	movabs $0x700000003,%rax
    a372:	mov    %rax,0x110(%rbx)
    a379:	mov    %r12,%rax
    a37c:	sub    0x120(%rbx),%rax
    a383:	mov    %rax,0x118(%rbx)
    a38a:	inc    %r12
    a38d:	mov    %r12,0x128(%rbx)
    a394:	mov    %r12,%r15
    a397:	jmp    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a399:	lea    -0xb10(%rip),%rax        # 9890 <char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)>
    a3a0:	mov    %rax,0x60(%rbx)
    a3a4:	movq   $0x0,0x68(%rbx)
    a3ac:	cmp    %r13,%rsi
    a3af:	jae    a3ea <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
    a3b1:	cmpl   $0x0,0x110(%rbx)
    a3b8:	jne    a3ea <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
    a3ba:	cmpb   $0xa,(%rsi)
    a3bd:	jne    a3f2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8b2>
    a3bf:	add    $0x2,%r15
    a3c3:	lea    -0xcba(%rip),%rax        # 9710 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    a3ca:	mov    %rax,0x60(%rbx)
    a3ce:	movq   $0x0,0x68(%rbx)
    a3d6:	cmp    %r13,%r15
    a3d9:	jae    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a3df:	mov    %rbx,%rdi
    a3e2:	mov    %r15,%rsi
    a3e5:	jmp    a2c2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x782>
    a3ea:	mov    %rsi,%r15
    a3ed:	jmp    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a3f2:	movabs $0x900000003,%rax
    a3fc:	mov    %rax,0x110(%rbx)
    a403:	sub    0x120(%rbx),%rsi
    a40a:	mov    %rsi,0x118(%rbx)
    a411:	add    $0x2,%r15
    a415:	mov    %r15,0x128(%rbx)
    a41c:	jmp    a356 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
    a421:	cs nopw 0x0(%rax,%rax,1)
    a42b:	nopl   0x0(%rax,%rax,1)

