0000000000000650 <stomptalk::parser::own_metadata()>:
     650:	f3 0f 1e fa          	endbr64
     654:	48 83 ec 28          	sub    $0x28,%rsp
     658:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
     65d:	48 8b af a8 00 00 00 	mov    0xa8(%rdi),%rbp
     664:	48 89 1c 24          	mov    %rbx,(%rsp)
     668:	48 89 fb             	mov    %rdi,%rbx
     66b:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
     670:	48 85 ed             	test   %rbp,%rbp
     673:	74 18                	je     68d <stomptalk::parser::own_metadata()+0x3d>
     675:	48 8b b7 a0 00 00 00 	mov    0xa0(%rdi),%rsi
     67c:	48 89 f0             	mov    %rsi,%rax
     67f:	48 2b 47 40          	sub    0x40(%rdi),%rax
     683:	48 3b 47 10          	cmp    0x10(%rdi),%rax
     687:	0f 83 03 01 00 00    	jae    790 <stomptalk::parser::own_metadata()+0x140>
     68d:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     694:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     69b:	0f 83 97 00 00 00    	jae    738 <stomptalk::parser::own_metadata()+0xe8>
     6a1:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
     6a6:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
     6ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     6b0:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     6b4:	4d 89 e6             	mov    %r12,%r14
     6b7:	49 c1 e6 05          	shl    $0x5,%r14
     6bb:	4c 01 f5             	add    %r14,%rbp
     6be:	4c 8b 6d 08          	mov    0x8(%rbp),%r13
     6c2:	4d 85 ed             	test   %r13,%r13
     6c5:	74 2c                	je     6f3 <stomptalk::parser::own_metadata()+0xa3>
     6c7:	48 8b 75 00          	mov    0x0(%rbp),%rsi
     6cb:	48 89 f0             	mov    %rsi,%rax
     6ce:	48 2b 43 40          	sub    0x40(%rbx),%rax
     6d2:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     6d6:	72 1b                	jb     6f3 <stomptalk::parser::own_metadata()+0xa3>
     6d8:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     6dc:	4c 89 ea             	mov    %r13,%rdx
     6df:	e8 00 00 00 00       	call   6e4 <stomptalk::parser::own_metadata()+0x94>
			6e0: R_X86_64_PLT32	memcpy-0x4
     6e4:	4c 03 73 38          	add    0x38(%rbx),%r14
     6e8:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     6ec:	48 89 45 00          	mov    %rax,0x0(%rbp)
     6f0:	4c 89 f5             	mov    %r14,%rbp
     6f3:	4c 8b 6d 18          	mov    0x18(%rbp),%r13
     6f7:	4d 85 ed             	test   %r13,%r13
     6fa:	74 25                	je     721 <stomptalk::parser::own_metadata()+0xd1>
     6fc:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     700:	48 89 f0             	mov    %rsi,%rax
     703:	48 2b 43 40          	sub    0x40(%rbx),%rax
     707:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     70b:	72 14                	jb     721 <stomptalk::parser::own_metadata()+0xd1>
     70d:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     711:	4c 89 ea             	mov    %r13,%rdx
     714:	e8 00 00 00 00       	call   719 <stomptalk::parser::own_metadata()+0xc9>
			715: R_X86_64_PLT32	memcpy-0x4
     719:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     71d:	48 89 45 10          	mov    %rax,0x10(%rbp)
     721:	49 83 c4 01          	add    $0x1,%r12
     725:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     72c:	72 82                	jb     6b0 <stomptalk::parser::own_metadata()+0x60>
     72e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
     733:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
     738:	48 8b ab c8 00 00 00 	mov    0xc8(%rbx),%rbp
     73f:	48 85 ed             	test   %rbp,%rbp
     742:	74 14                	je     758 <stomptalk::parser::own_metadata()+0x108>
     744:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     74b:	48 89 f0             	mov    %rsi,%rax
     74e:	48 2b 43 40          	sub    0x40(%rbx),%rax
     752:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     756:	73 18                	jae    770 <stomptalk::parser::own_metadata()+0x120>
     758:	48 8b 1c 24          	mov    (%rsp),%rbx
     75c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
     761:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
     766:	48 83 c4 28          	add    $0x28,%rsp
     76a:	c3                   	ret
     76b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     770:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     774:	48 89 ea             	mov    %rbp,%rdx
     777:	e8 00 00 00 00       	call   77c <stomptalk::parser::own_metadata()+0x12c>
			778: R_X86_64_PLT32	memcpy-0x4
     77c:	48 01 6b 48          	add    %rbp,0x48(%rbx)
     780:	48 89 83 c0 00 00 00 	mov    %rax,0xc0(%rbx)
     787:	eb cf                	jmp    758 <stomptalk::parser::own_metadata()+0x108>
     789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     790:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
     794:	48 89 ea             	mov    %rbp,%rdx
     797:	e8 00 00 00 00       	call   79c <stomptalk::parser::own_metadata()+0x14c>
			798: R_X86_64_PLT32	memcpy-0x4
     79c:	48 01 6b 48          	add    %rbp,0x48(%rbx)
     7a0:	48 89 83 a0 00 00 00 	mov    %rax,0xa0(%rbx)
     7a7:	e9 e1 fe ff ff       	jmp    68d <stomptalk::parser::own_metadata()+0x3d>
     7ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000007b0 <stomptalk::parser::own_token()>:
     7b0:	f3 0f 1e fa          	endbr64
     7b4:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     7bb:	74 03                	je     7c0 <stomptalk::parser::own_token()+0x10>
     7bd:	c3                   	ret
     7be:	66 90                	xchg   %ax,%ax
     7c0:	53                   	push   %rbx
     7c1:	48 89 fb             	mov    %rdi,%rbx
     7c4:	48 83 ec 10          	sub    $0x10,%rsp
     7c8:	e8 00 00 00 00       	call   7cd <stomptalk::parser::own_token()+0x1d>
			7c9: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     7cd:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
     7d4:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     7d8:	48 85 d2             	test   %rdx,%rdx
     7db:	75 1b                	jne    7f8 <stomptalk::parser::own_token()+0x48>
     7dd:	48 89 8b d0 00 00 00 	mov    %rcx,0xd0(%rbx)
     7e4:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     7eb:	48 83 c4 10          	add    $0x10,%rsp
     7ef:	5b                   	pop    %rbx
     7f0:	c3                   	ret
     7f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     7f8:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     7ff:	48 89 cf             	mov    %rcx,%rdi
     802:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
     807:	e8 00 00 00 00       	call   80c <stomptalk::parser::own_token()+0x5c>
			808: R_X86_64_PLT32	memcpy-0x4
     80c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
     811:	48 01 53 48          	add    %rdx,0x48(%rbx)
     815:	48 89 c1             	mov    %rax,%rcx
     818:	eb c3                	jmp    7dd <stomptalk::parser::own_token()+0x2d>
     81a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000e20 <stomptalk::parser::finish_value(char const*)>:
     e20:	f3 0f 1e fa          	endbr64
     e24:	48 83 ec 68          	sub    $0x68,%rsp
     e28:	49 89 f0             	mov    %rsi,%r8
     e2b:	48 89 fa             	mov    %rdi,%rdx
     e2e:	48 8b b7 d0 00 00 00 	mov    0xd0(%rdi),%rsi
     e35:	48 8b 8f d8 00 00 00 	mov    0xd8(%rdi),%rcx
     e3c:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
     e43:	00 00 00 00
     e47:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
     e4e:	00 00 00 00
     e52:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     e59:	80 bf 0c 01 00 00 00 	cmpb   $0x0,0x10c(%rdi)
     e60:	75 6e                	jne    ed0 <stomptalk::parser::finish_value(char const*)+0xb0>
     e62:	48 8b 82 e8 00 00 00 	mov    0xe8(%rdx),%rax
     e69:	4c 8b 82 c0 00 00 00 	mov    0xc0(%rdx),%r8
     e70:	48 8d 78 01          	lea    0x1(%rax),%rdi
     e74:	48 c1 e0 05          	shl    $0x5,%rax
     e78:	48 03 42 38          	add    0x38(%rdx),%rax
     e7c:	48 89 ba e8 00 00 00 	mov    %rdi,0xe8(%rdx)
     e83:	48 8b ba c8 00 00 00 	mov    0xc8(%rdx),%rdi
     e8a:	4c 89 00             	mov    %r8,(%rax)
     e8d:	48 89 78 08          	mov    %rdi,0x8(%rax)
     e91:	48 89 70 10          	mov    %rsi,0x10(%rax)
     e95:	48 89 48 18          	mov    %rcx,0x18(%rax)
     e99:	b8 01 00 00 00       	mov    $0x1,%eax
     e9e:	48 83 82 80 00 00 00 	addq   $0x1,0x80(%rdx)
     ea5:	01
     ea6:	48 c7 82 c0 00 00 00 	movq   $0x0,0xc0(%rdx)
     ead:	00 00 00 00
     eb1:	48 c7 82 c8 00 00 00 	movq   $0x0,0xc8(%rdx)
     eb8:	00 00 00 00
     ebc:	c6 82 0c 01 00 00 00 	movb   $0x0,0x10c(%rdx)
     ec3:	48 83 c4 68          	add    $0x68,%rsp
     ec7:	c3                   	ret
     ec8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     ecf:	00
     ed0:	48 89 cf             	mov    %rcx,%rdi
     ed3:	48 89 f0             	mov    %rsi,%rax
     ed6:	48 83 f9 14          	cmp    $0x14,%rcx
     eda:	77 16                	ja     ef2 <stomptalk::parser::finish_value(char const*)+0xd2>
     edc:	eb 4d                	jmp    f2b <stomptalk::parser::finish_value(char const*)+0x10b>
     ede:	66 90                	xchg   %ax,%ax
     ee0:	48 83 ef 01          	sub    $0x1,%rdi
     ee4:	48 83 c0 01          	add    $0x1,%rax
     ee8:	48 83 ff 14          	cmp    $0x14,%rdi
     eec:	0f 84 86 00 00 00    	je     f78 <stomptalk::parser::finish_value(char const*)+0x158>
     ef2:	80 38 30             	cmpb   $0x30,(%rax)
     ef5:	74 e9                	je     ee0 <stomptalk::parser::finish_value(char const*)+0xc0>
     ef7:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
     efe:	00 00 00
     f01:	48 89 82 10 01 00 00 	mov    %rax,0x110(%rdx)
     f08:	4c 89 c0             	mov    %r8,%rax
     f0b:	49 83 c0 01          	add    $0x1,%r8
     f0f:	48 2b 82 20 01 00 00 	sub    0x120(%rdx),%rax
     f16:	48 89 82 18 01 00 00 	mov    %rax,0x118(%rdx)
     f1d:	31 c0                	xor    %eax,%eax
     f1f:	4c 89 82 28 01 00 00 	mov    %r8,0x128(%rdx)
     f26:	48 83 c4 68          	add    $0x68,%rsp
     f2a:	c3                   	ret
     f2b:	48 8d 79 ff          	lea    -0x1(%rcx),%rdi
     f2f:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
     f34:	48 89 6c 24 40       	mov    %rbp,0x40(%rsp)
     f39:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
     f3e:	4c 89 6c 24 50       	mov    %r13,0x50(%rsp)
     f43:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
     f48:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
     f4d:	48 83 ff 13          	cmp    $0x13,%rdi
     f51:	0f 87 88 13 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
     f57:	48 83 f9 12          	cmp    $0x12,%rcx
     f5b:	0f 87 fd 14 00 00    	ja     245e <stomptalk::parser::finish_value(char const*)+0x163e>
     f61:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # f68 <stomptalk::parser::finish_value(char const*)+0x148>
			f64: R_X86_64_PC32	.rodata-0x4
     f68:	48 63 04 8f          	movslq (%rdi,%rcx,4),%rax
     f6c:	48 01 f8             	add    %rdi,%rax
     f6f:	3e ff e0             	notrack jmp *%rax
     f72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     f78:	44 0f b6 08          	movzbl (%rax),%r9d
     f7c:	41 83 e9 30          	sub    $0x30,%r9d
     f80:	41 83 f9 09          	cmp    $0x9,%r9d
     f84:	0f 87 6d ff ff ff    	ja     ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
     f8a:	0f b6 78 01          	movzbl 0x1(%rax),%edi
     f8e:	83 ef 30             	sub    $0x30,%edi
     f91:	83 ff 09             	cmp    $0x9,%edi
     f94:	0f 87 5d ff ff ff    	ja     ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
     f9a:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
     f9e:	4e 8d 0c 4f          	lea    (%rdi,%r9,2),%r9
     fa2:	bf 02 00 00 00       	mov    $0x2,%edi
     fa7:	48 01 c7             	add    %rax,%rdi
     faa:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
     faf:	48 89 14 24          	mov    %rdx,(%rsp)
     fb3:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
     fb8:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
     fbd:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
     fc2:	e8 39 f0 ff ff       	call   0 <stomptalk::detail::(anonymous namespace)::antout<long, 18ul>::conv(char const*)>
     fc7:	48 8b 14 24          	mov    (%rsp),%rdx
     fcb:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
     fd0:	48 85 c0             	test   %rax,%rax
     fd3:	0f 88 1e ff ff ff    	js     ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
     fd9:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
     fde:	49 83 f9 12          	cmp    $0x12,%r9
     fe2:	0f 87 0f ff ff ff    	ja     ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
     fe8:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
     fed:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
     ff2:	75 13                	jne    1007 <stomptalk::parser::finish_value(char const*)+0x1e7>
     ff4:	48 bf ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rdi
     ffb:	27 33 06
     ffe:	48 39 c7             	cmp    %rax,%rdi
    1001:	0f 82 f0 fe ff ff    	jb     ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
    1007:	48 bf 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rdi
    100e:	b6 e0 0d
    1011:	4c 0f af cf          	imul   %rdi,%r9
    1015:	4c 01 c8             	add    %r9,%rax
    1018:	48 39 42 20          	cmp    %rax,0x20(%rdx)
    101c:	0f 82 ae 12 00 00    	jb     22d0 <stomptalk::parser::finish_value(char const*)+0x14b0>
    1022:	83 4a 78 01          	orl    $0x1,0x78(%rdx)
    1026:	48 89 82 88 00 00 00 	mov    %rax,0x88(%rdx)
    102d:	e9 30 fe ff ff       	jmp    e62 <stomptalk::parser::finish_value(char const*)+0x42>
    1032:	48 89 f7             	mov    %rsi,%rdi
    1035:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    103a:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    103f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1044:	48 89 34 24          	mov    %rsi,(%rsp)
    1048:	e8 b3 ef ff ff       	call   0 <stomptalk::detail::(anonymous namespace)::antout<long, 18ul>::conv(char const*)>
    104d:	48 8b 34 24          	mov    (%rsp),%rsi
    1051:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    1056:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    105b:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    1060:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    1065:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    106a:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    106f:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    1074:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    1079:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    107e:	48 85 c0             	test   %rax,%rax
    1081:	79 95                	jns    1018 <stomptalk::parser::finish_value(char const*)+0x1f8>
    1083:	e9 6f fe ff ff       	jmp    ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
    1088:	48 0f be 06          	movsbq (%rsi),%rax
    108c:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1090:	48 83 fb 09          	cmp    $0x9,%rbx
    1094:	0f 87 45 12 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    109a:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    109f:	49 83 eb 30          	sub    $0x30,%r11
    10a3:	49 83 fb 09          	cmp    $0x9,%r11
    10a7:	0f 87 32 12 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    10ad:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    10b2:	49 83 ea 30          	sub    $0x30,%r10
    10b6:	49 83 fa 09          	cmp    $0x9,%r10
    10ba:	0f 87 1f 12 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    10c0:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    10c5:	49 83 e9 30          	sub    $0x30,%r9
    10c9:	49 83 f9 09          	cmp    $0x9,%r9
    10cd:	0f 87 0c 12 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    10d3:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    10d8:	48 83 ef 30          	sub    $0x30,%rdi
    10dc:	48 83 ff 09          	cmp    $0x9,%rdi
    10e0:	0f 87 f9 11 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    10e6:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    10eb:	48 83 e8 30          	sub    $0x30,%rax
    10ef:	48 83 f8 09          	cmp    $0x9,%rax
    10f3:	0f 87 e6 11 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    10f9:	49 be 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r14
    1100:	8d 03 00
    1103:	49 0f af de          	imul   %r14,%rbx
    1107:	49 89 df             	mov    %rbx,%r15
    110a:	48 bb 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rbx
    1111:	5a 00 00
    1114:	4c 0f af db          	imul   %rbx,%r11
    1118:	4c 89 dd             	mov    %r11,%rbp
    111b:	49 bb 00 a0 72 4e 18 	movabs $0x9184e72a000,%r11
    1122:	09 00 00
    1125:	4d 0f af d3          	imul   %r11,%r10
    1129:	4d 89 d4             	mov    %r10,%r12
    112c:	49 ba 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r10
    1133:	00 00 00
    1136:	4d 0f af ca          	imul   %r10,%r9
    113a:	4d 89 cd             	mov    %r9,%r13
    113d:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
    1144:	00 00 00
    1147:	49 0f af f9          	imul   %r9,%rdi
    114b:	48 89 3c 24          	mov    %rdi,(%rsp)
    114f:	48 bf 00 e4 0b 54 02 	movabs $0x2540be400,%rdi
    1156:	00 00 00
    1159:	48 0f af c7          	imul   %rdi,%rax
    115d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1162:	48 0f be 46 06       	movsbq 0x6(%rsi),%rax
    1167:	48 83 e8 30          	sub    $0x30,%rax
    116b:	48 83 f8 09          	cmp    $0x9,%rax
    116f:	0f 87 d0 11 00 00    	ja     2345 <stomptalk::parser::finish_value(char const*)+0x1525>
    1175:	48 0f be 7e 07       	movsbq 0x7(%rsi),%rdi
    117a:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    1181:	48 83 ef 30          	sub    $0x30,%rdi
    1185:	48 83 ff 09          	cmp    $0x9,%rdi
    1189:	0f 87 67 12 00 00    	ja     23f6 <stomptalk::parser::finish_value(char const*)+0x15d6>
    118f:	4c 0f be 4e 08       	movsbq 0x8(%rsi),%r9
    1194:	48 69 ff 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rdi
    119b:	49 83 e9 30          	sub    $0x30,%r9
    119f:	49 83 f9 09          	cmp    $0x9,%r9
    11a3:	0f 87 a6 12 00 00    	ja     244f <stomptalk::parser::finish_value(char const*)+0x162f>
    11a9:	4c 0f be 56 09       	movsbq 0x9(%rsi),%r10
    11ae:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    11b5:	49 83 ea 30          	sub    $0x30,%r10
    11b9:	49 83 fa 09          	cmp    $0x9,%r10
    11bd:	0f 87 7d 12 00 00    	ja     2440 <stomptalk::parser::finish_value(char const*)+0x1620>
    11c3:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    11c8:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    11cf:	49 83 eb 30          	sub    $0x30,%r11
    11d3:	49 83 fb 09          	cmp    $0x9,%r11
    11d7:	0f 87 54 12 00 00    	ja     2431 <stomptalk::parser::finish_value(char const*)+0x1611>
    11dd:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    11e4:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    11e9:	49 83 eb 30          	sub    $0x30,%r11
    11ed:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    11f2:	49 83 fb 09          	cmp    $0x9,%r11
    11f6:	0f 87 26 12 00 00    	ja     2422 <stomptalk::parser::finish_value(char const*)+0x1602>
    11fc:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1203:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    1208:	49 83 eb 30          	sub    $0x30,%r11
    120c:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    1211:	49 83 fb 09          	cmp    $0x9,%r11
    1215:	0f 87 be 11 00 00    	ja     23d9 <stomptalk::parser::finish_value(char const*)+0x15b9>
    121b:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1222:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    1227:	49 83 eb 30          	sub    $0x30,%r11
    122b:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    1230:	49 83 fb 09          	cmp    $0x9,%r11
    1234:	0f 87 90 11 00 00    	ja     23ca <stomptalk::parser::finish_value(char const*)+0x15aa>
    123a:	49 6b db 64          	imul   $0x64,%r11,%rbx
    123e:	4c 0f be 5e 0e       	movsbq 0xe(%rsi),%r11
    1243:	49 83 eb 30          	sub    $0x30,%r11
    1247:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    124c:	49 83 fb 09          	cmp    $0x9,%r11
    1250:	0f 87 bd 11 00 00    	ja     2413 <stomptalk::parser::finish_value(char const*)+0x15f3>
    1256:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    125d:	00 00 80
    1260:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1264:	4c 0f be 5e 0f       	movsbq 0xf(%rsi),%r11
    1269:	49 83 eb 30          	sub    $0x30,%r11
    126d:	49 83 fb 0a          	cmp    $0xa,%r11
    1271:	4d 0f 43 de          	cmovae %r14,%r11
    1275:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1279:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    127e:	49 01 db             	add    %rbx,%r11
    1281:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1286:	49 01 db             	add    %rbx,%r11
    1289:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    128e:	49 01 db             	add    %rbx,%r11
    1291:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    1296:	49 01 db             	add    %rbx,%r11
    1299:	4d 01 da             	add    %r11,%r10
    129c:	4d 01 d1             	add    %r10,%r9
    129f:	4c 01 cf             	add    %r9,%rdi
    12a2:	48 01 f8             	add    %rdi,%rax
    12a5:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    12aa:	48 01 d8             	add    %rbx,%rax
    12ad:	48 03 04 24          	add    (%rsp),%rax
    12b1:	4c 01 e8             	add    %r13,%rax
    12b4:	4c 01 e0             	add    %r12,%rax
    12b7:	48 01 e8             	add    %rbp,%rax
    12ba:	4c 01 f8             	add    %r15,%rax
    12bd:	e9 9e fd ff ff       	jmp    1060 <stomptalk::parser::finish_value(char const*)+0x240>
    12c2:	48 0f be 06          	movsbq (%rsi),%rax
    12c6:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    12ca:	48 83 fb 09          	cmp    $0x9,%rbx
    12ce:	0f 87 0b 10 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    12d4:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    12d9:	49 83 eb 30          	sub    $0x30,%r11
    12dd:	49 83 fb 09          	cmp    $0x9,%r11
    12e1:	0f 87 f8 0f 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    12e7:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    12ec:	49 83 ea 30          	sub    $0x30,%r10
    12f0:	49 83 fa 09          	cmp    $0x9,%r10
    12f4:	0f 87 e5 0f 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    12fa:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    12ff:	49 83 e9 30          	sub    $0x30,%r9
    1303:	49 83 f9 09          	cmp    $0x9,%r9
    1307:	0f 87 d2 0f 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    130d:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1312:	48 83 ef 30          	sub    $0x30,%rdi
    1316:	48 83 ff 09          	cmp    $0x9,%rdi
    131a:	0f 87 bf 0f 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1320:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1325:	48 83 e8 30          	sub    $0x30,%rax
    1329:	48 83 f8 09          	cmp    $0x9,%rax
    132d:	0f 87 ac 0f 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1333:	49 be 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r14
    133a:	5a 00 00
    133d:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    1344:	49 0f af de          	imul   %r14,%rbx
    1348:	49 89 df             	mov    %rbx,%r15
    134b:	48 bb 00 a0 72 4e 18 	movabs $0x9184e72a000,%rbx
    1352:	09 00 00
    1355:	4c 0f af db          	imul   %rbx,%r11
    1359:	4c 89 dd             	mov    %r11,%rbp
    135c:	49 bb 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r11
    1363:	00 00 00
    1366:	4d 0f af d3          	imul   %r11,%r10
    136a:	4d 89 d4             	mov    %r10,%r12
    136d:	49 ba 00 e8 76 48 17 	movabs $0x174876e800,%r10
    1374:	00 00 00
    1377:	4d 0f af ca          	imul   %r10,%r9
    137b:	4d 89 cd             	mov    %r9,%r13
    137e:	49 b9 00 e4 0b 54 02 	movabs $0x2540be400,%r9
    1385:	00 00 00
    1388:	49 0f af f9          	imul   %r9,%rdi
    138c:	48 89 3c 24          	mov    %rdi,(%rsp)
    1390:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1395:	48 83 ef 30          	sub    $0x30,%rdi
    1399:	48 83 ff 09          	cmp    $0x9,%rdi
    139d:	0f 87 0a 10 00 00    	ja     23ad <stomptalk::parser::finish_value(char const*)+0x158d>
    13a3:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    13a8:	48 69 ff 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rdi
    13af:	49 83 e9 30          	sub    $0x30,%r9
    13b3:	49 83 f9 09          	cmp    $0x9,%r9
    13b7:	0f 87 e1 0f 00 00    	ja     239e <stomptalk::parser::finish_value(char const*)+0x157e>
    13bd:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    13c2:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    13c9:	49 83 ea 30          	sub    $0x30,%r10
    13cd:	49 83 fa 09          	cmp    $0x9,%r10
    13d1:	0f 87 b8 0f 00 00    	ja     238f <stomptalk::parser::finish_value(char const*)+0x156f>
    13d7:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    13dc:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    13e3:	49 83 eb 30          	sub    $0x30,%r11
    13e7:	49 83 fb 09          	cmp    $0x9,%r11
    13eb:	0f 87 8f 0f 00 00    	ja     2380 <stomptalk::parser::finish_value(char const*)+0x1560>
    13f1:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    13f8:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    13fd:	49 83 eb 30          	sub    $0x30,%r11
    1401:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    1406:	49 83 fb 09          	cmp    $0x9,%r11
    140a:	0f 87 61 0f 00 00    	ja     2371 <stomptalk::parser::finish_value(char const*)+0x1551>
    1410:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1417:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    141c:	49 83 eb 30          	sub    $0x30,%r11
    1420:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    1425:	49 83 fb 09          	cmp    $0x9,%r11
    1429:	0f 87 33 0f 00 00    	ja     2362 <stomptalk::parser::finish_value(char const*)+0x1542>
    142f:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1436:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    143b:	49 83 eb 30          	sub    $0x30,%r11
    143f:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    1444:	49 83 fb 09          	cmp    $0x9,%r11
    1448:	0f 87 05 0f 00 00    	ja     2353 <stomptalk::parser::finish_value(char const*)+0x1533>
    144e:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1452:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    1457:	49 83 eb 30          	sub    $0x30,%r11
    145b:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    1460:	49 83 fb 09          	cmp    $0x9,%r11
    1464:	0f 87 51 0f 00 00    	ja     23bb <stomptalk::parser::finish_value(char const*)+0x159b>
    146a:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1471:	00 00 80
    1474:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1478:	4c 0f be 5e 0e       	movsbq 0xe(%rsi),%r11
    147d:	49 83 eb 30          	sub    $0x30,%r11
    1481:	49 83 fb 0a          	cmp    $0xa,%r11
    1485:	4d 0f 43 de          	cmovae %r14,%r11
    1489:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    148d:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1492:	49 01 db             	add    %rbx,%r11
    1495:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    149a:	49 01 db             	add    %rbx,%r11
    149d:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    14a2:	49 01 db             	add    %rbx,%r11
    14a5:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    14aa:	49 01 db             	add    %rbx,%r11
    14ad:	4d 01 da             	add    %r11,%r10
    14b0:	4d 01 d1             	add    %r10,%r9
    14b3:	4c 01 cf             	add    %r9,%rdi
    14b6:	48 01 f8             	add    %rdi,%rax
    14b9:	e9 ef fd ff ff       	jmp    12ad <stomptalk::parser::finish_value(char const*)+0x48d>
    14be:	48 0f be 06          	movsbq (%rsi),%rax
    14c2:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    14c6:	48 83 fb 09          	cmp    $0x9,%rbx
    14ca:	0f 87 0f 0e 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    14d0:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    14d5:	49 83 eb 30          	sub    $0x30,%r11
    14d9:	49 83 fb 09          	cmp    $0x9,%r11
    14dd:	0f 87 fc 0d 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    14e3:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    14e8:	49 83 ea 30          	sub    $0x30,%r10
    14ec:	49 83 fa 09          	cmp    $0x9,%r10
    14f0:	0f 87 e9 0d 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    14f6:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    14fb:	49 83 e9 30          	sub    $0x30,%r9
    14ff:	49 83 f9 09          	cmp    $0x9,%r9
    1503:	0f 87 d6 0d 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1509:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    150e:	48 83 ef 30          	sub    $0x30,%rdi
    1512:	48 83 ff 09          	cmp    $0x9,%rdi
    1516:	0f 87 c3 0d 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    151c:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1521:	48 83 e8 30          	sub    $0x30,%rax
    1525:	48 83 f8 09          	cmp    $0x9,%rax
    1529:	0f 87 b0 0d 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    152f:	49 be 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r14
    1536:	86 23 00
    1539:	49 0f af de          	imul   %r14,%rbx
    153d:	49 89 df             	mov    %rbx,%r15
    1540:	48 bb 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rbx
    1547:	8d 03 00
    154a:	4c 0f af db          	imul   %rbx,%r11
    154e:	4c 89 dd             	mov    %r11,%rbp
    1551:	49 bb 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r11
    1558:	5a 00 00
    155b:	4d 0f af d3          	imul   %r11,%r10
    155f:	4d 89 d4             	mov    %r10,%r12
    1562:	49 ba 00 a0 72 4e 18 	movabs $0x9184e72a000,%r10
    1569:	09 00 00
    156c:	4d 0f af ca          	imul   %r10,%r9
    1570:	4d 89 cd             	mov    %r9,%r13
    1573:	49 b9 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r9
    157a:	00 00 00
    157d:	49 0f af f9          	imul   %r9,%rdi
    1581:	48 89 3c 24          	mov    %rdi,(%rsp)
    1585:	48 bf 00 e8 76 48 17 	movabs $0x174876e800,%rdi
    158c:	00 00 00
    158f:	48 0f af c7          	imul   %rdi,%rax
    1593:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1598:	48 0f be 46 06       	movsbq 0x6(%rsi),%rax
    159d:	48 83 e8 30          	sub    $0x30,%rax
    15a1:	48 83 f8 09          	cmp    $0x9,%rax
    15a5:	0f 87 9a 0d 00 00    	ja     2345 <stomptalk::parser::finish_value(char const*)+0x1525>
    15ab:	48 bf 00 e4 0b 54 02 	movabs $0x2540be400,%rdi
    15b2:	00 00 00
    15b5:	48 0f af c7          	imul   %rdi,%rax
    15b9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    15be:	48 0f be 46 07       	movsbq 0x7(%rsi),%rax
    15c3:	48 83 e8 30          	sub    $0x30,%rax
    15c7:	48 83 f8 09          	cmp    $0x9,%rax
    15cb:	0f 87 bf 0f 00 00    	ja     2590 <stomptalk::parser::finish_value(char const*)+0x1770>
    15d1:	48 0f be 7e 08       	movsbq 0x8(%rsi),%rdi
    15d6:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    15dd:	48 83 ef 30          	sub    $0x30,%rdi
    15e1:	48 83 ff 09          	cmp    $0x9,%rdi
    15e5:	0f 87 97 0f 00 00    	ja     2582 <stomptalk::parser::finish_value(char const*)+0x1762>
    15eb:	4c 0f be 4e 09       	movsbq 0x9(%rsi),%r9
    15f0:	48 69 ff 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rdi
    15f7:	49 83 e9 30          	sub    $0x30,%r9
    15fb:	49 83 f9 09          	cmp    $0x9,%r9
    15ff:	0f 87 6e 0f 00 00    	ja     2573 <stomptalk::parser::finish_value(char const*)+0x1753>
    1605:	4c 0f be 56 0a       	movsbq 0xa(%rsi),%r10
    160a:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    1611:	49 83 ea 30          	sub    $0x30,%r10
    1615:	49 83 fa 09          	cmp    $0x9,%r10
    1619:	0f 87 45 0f 00 00    	ja     2564 <stomptalk::parser::finish_value(char const*)+0x1744>
    161f:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1624:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    162b:	49 83 eb 30          	sub    $0x30,%r11
    162f:	49 83 fb 09          	cmp    $0x9,%r11
    1633:	0f 87 1c 0f 00 00    	ja     2555 <stomptalk::parser::finish_value(char const*)+0x1735>
    1639:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    1640:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    1645:	49 83 eb 30          	sub    $0x30,%r11
    1649:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    164e:	49 83 fb 09          	cmp    $0x9,%r11
    1652:	0f 87 ee 0e 00 00    	ja     2546 <stomptalk::parser::finish_value(char const*)+0x1726>
    1658:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    165f:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    1664:	49 83 eb 30          	sub    $0x30,%r11
    1668:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    166d:	49 83 fb 09          	cmp    $0x9,%r11
    1671:	0f 87 c0 0e 00 00    	ja     2537 <stomptalk::parser::finish_value(char const*)+0x1717>
    1677:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    167e:	4c 0f be 5e 0e       	movsbq 0xe(%rsi),%r11
    1683:	49 83 eb 30          	sub    $0x30,%r11
    1687:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    168c:	49 83 fb 09          	cmp    $0x9,%r11
    1690:	0f 87 92 0e 00 00    	ja     2528 <stomptalk::parser::finish_value(char const*)+0x1708>
    1696:	49 6b db 64          	imul   $0x64,%r11,%rbx
    169a:	4c 0f be 5e 0f       	movsbq 0xf(%rsi),%r11
    169f:	49 83 eb 30          	sub    $0x30,%r11
    16a3:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    16a8:	49 83 fb 09          	cmp    $0x9,%r11
    16ac:	0f 87 52 0d 00 00    	ja     2404 <stomptalk::parser::finish_value(char const*)+0x15e4>
    16b2:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    16b9:	00 00 80
    16bc:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    16c0:	4c 0f be 5e 10       	movsbq 0x10(%rsi),%r11
    16c5:	49 83 eb 30          	sub    $0x30,%r11
    16c9:	49 83 fb 0a          	cmp    $0xa,%r11
    16cd:	4d 0f 43 de          	cmovae %r14,%r11
    16d1:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    16d5:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    16da:	49 01 db             	add    %rbx,%r11
    16dd:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    16e2:	49 01 db             	add    %rbx,%r11
    16e5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    16ea:	49 01 db             	add    %rbx,%r11
    16ed:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    16f2:	49 01 db             	add    %rbx,%r11
    16f5:	4d 01 da             	add    %r11,%r10
    16f8:	4d 01 d1             	add    %r10,%r9
    16fb:	4c 01 cf             	add    %r9,%rdi
    16fe:	48 01 f8             	add    %rdi,%rax
    1701:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    1706:	48 01 d8             	add    %rbx,%rax
    1709:	e9 97 fb ff ff       	jmp    12a5 <stomptalk::parser::finish_value(char const*)+0x485>
    170e:	48 0f be 06          	movsbq (%rsi),%rax
    1712:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1716:	48 83 fb 09          	cmp    $0x9,%rbx
    171a:	0f 87 bf 0b 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1720:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1725:	49 83 eb 30          	sub    $0x30,%r11
    1729:	49 83 fb 09          	cmp    $0x9,%r11
    172d:	0f 87 ac 0b 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1733:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    1738:	49 83 ea 30          	sub    $0x30,%r10
    173c:	49 83 fa 09          	cmp    $0x9,%r10
    1740:	0f 87 99 0b 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1746:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    174b:	49 83 e9 30          	sub    $0x30,%r9
    174f:	49 83 f9 09          	cmp    $0x9,%r9
    1753:	0f 87 86 0b 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1759:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    175e:	48 83 ef 30          	sub    $0x30,%rdi
    1762:	48 83 ff 09          	cmp    $0x9,%rdi
    1766:	0f 87 73 0b 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    176c:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1771:	48 83 e8 30          	sub    $0x30,%rax
    1775:	48 83 f8 09          	cmp    $0x9,%rax
    1779:	0f 87 60 0b 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    177f:	49 be 00 a0 72 4e 18 	movabs $0x9184e72a000,%r14
    1786:	09 00 00
    1789:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
    1790:	49 0f af de          	imul   %r14,%rbx
    1794:	49 89 df             	mov    %rbx,%r15
    1797:	48 bb 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%rbx
    179e:	00 00 00
    17a1:	4c 0f af db          	imul   %rbx,%r11
    17a5:	48 69 df 00 ca 9a 3b 	imul   $0x3b9aca00,%rdi,%rbx
    17ac:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    17b1:	4c 89 dd             	mov    %r11,%rbp
    17b4:	48 83 ef 30          	sub    $0x30,%rdi
    17b8:	49 bb 00 e8 76 48 17 	movabs $0x174876e800,%r11
    17bf:	00 00 00
    17c2:	4d 0f af d3          	imul   %r11,%r10
    17c6:	48 89 1c 24          	mov    %rbx,(%rsp)
    17ca:	4d 89 d4             	mov    %r10,%r12
    17cd:	49 ba 00 e4 0b 54 02 	movabs $0x2540be400,%r10
    17d4:	00 00 00
    17d7:	4d 0f af ca          	imul   %r10,%r9
    17db:	4d 89 cd             	mov    %r9,%r13
    17de:	48 83 ff 09          	cmp    $0x9,%rdi
    17e2:	0f 87 c5 0b 00 00    	ja     23ad <stomptalk::parser::finish_value(char const*)+0x158d>
    17e8:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    17ed:	48 69 ff 80 96 98 00 	imul   $0x989680,%rdi,%rdi
    17f4:	49 83 e9 30          	sub    $0x30,%r9
    17f8:	49 83 f9 09          	cmp    $0x9,%r9
    17fc:	0f 87 9c 0b 00 00    	ja     239e <stomptalk::parser::finish_value(char const*)+0x157e>
    1802:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    1807:	4d 69 c9 40 42 0f 00 	imul   $0xf4240,%r9,%r9
    180e:	49 83 ea 30          	sub    $0x30,%r10
    1812:	49 83 fa 09          	cmp    $0x9,%r10
    1816:	0f 87 73 0b 00 00    	ja     238f <stomptalk::parser::finish_value(char const*)+0x156f>
    181c:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    1821:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    1828:	49 83 eb 30          	sub    $0x30,%r11
    182c:	49 83 fb 09          	cmp    $0x9,%r11
    1830:	0f 87 4a 0b 00 00    	ja     2380 <stomptalk::parser::finish_value(char const*)+0x1560>
    1836:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    183d:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    1842:	49 83 eb 30          	sub    $0x30,%r11
    1846:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    184b:	49 83 fb 09          	cmp    $0x9,%r11
    184f:	0f 87 1c 0b 00 00    	ja     2371 <stomptalk::parser::finish_value(char const*)+0x1551>
    1855:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    185c:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1861:	49 83 eb 30          	sub    $0x30,%r11
    1865:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    186a:	49 83 fb 09          	cmp    $0x9,%r11
    186e:	0f 87 ee 0a 00 00    	ja     2362 <stomptalk::parser::finish_value(char const*)+0x1542>
    1874:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1878:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    187d:	49 83 eb 30          	sub    $0x30,%r11
    1881:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    1886:	49 83 fb 09          	cmp    $0x9,%r11
    188a:	0f 87 c3 0a 00 00    	ja     2353 <stomptalk::parser::finish_value(char const*)+0x1533>
    1890:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1897:	00 00 80
    189a:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    189e:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    18a3:	49 83 eb 30          	sub    $0x30,%r11
    18a7:	49 83 fb 0a          	cmp    $0xa,%r11
    18ab:	4d 0f 43 de          	cmovae %r14,%r11
    18af:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    18b3:	e9 dd fb ff ff       	jmp    1495 <stomptalk::parser::finish_value(char const*)+0x675>
    18b8:	4c 0f be 0e          	movsbq (%rsi),%r9
    18bc:	49 83 e9 30          	sub    $0x30,%r9
    18c0:	49 83 f9 09          	cmp    $0x9,%r9
    18c4:	0f 87 15 0a 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    18ca:	4c 0f be 56 01       	movsbq 0x1(%rsi),%r10
    18cf:	49 83 ea 30          	sub    $0x30,%r10
    18d3:	49 83 fa 09          	cmp    $0x9,%r10
    18d7:	0f 87 02 0a 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    18dd:	4c 0f be 5e 02       	movsbq 0x2(%rsi),%r11
    18e2:	49 83 eb 30          	sub    $0x30,%r11
    18e6:	49 83 fb 09          	cmp    $0x9,%r11
    18ea:	0f 87 ef 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    18f0:	48 0f be 7e 03       	movsbq 0x3(%rsi),%rdi
    18f5:	48 83 ef 30          	sub    $0x30,%rdi
    18f9:	48 83 ff 09          	cmp    $0x9,%rdi
    18fd:	0f 87 dc 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1903:	48 0f be 46 04       	movsbq 0x4(%rsi),%rax
    1908:	48 83 e8 30          	sub    $0x30,%rax
    190c:	48 83 f8 09          	cmp    $0x9,%rax
    1910:	0f 87 c9 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1916:	48 0f be 5e 05       	movsbq 0x5(%rsi),%rbx
    191b:	48 83 eb 30          	sub    $0x30,%rbx
    191f:	48 83 fb 09          	cmp    $0x9,%rbx
    1923:	0f 87 b6 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1929:	48 6b ff 64          	imul   $0x64,%rdi,%rdi
    192d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1931:	4d 69 db e8 03 00 00 	imul   $0x3e8,%r11,%r11
    1938:	48 8d 04 43          	lea    (%rbx,%rax,2),%rax
    193c:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    1943:	4d 69 c9 a0 86 01 00 	imul   $0x186a0,%r9,%r9
    194a:	48 01 f8             	add    %rdi,%rax
    194d:	4c 01 d8             	add    %r11,%rax
    1950:	4c 01 d0             	add    %r10,%rax
    1953:	4c 01 c8             	add    %r9,%rax
    1956:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    195b:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    1960:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    1965:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    196a:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    196f:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    1974:	e9 9f f6 ff ff       	jmp    1018 <stomptalk::parser::finish_value(char const*)+0x1f8>
    1979:	48 0f be 3e          	movsbq (%rsi),%rdi
    197d:	48 83 ef 30          	sub    $0x30,%rdi
    1981:	48 83 ff 09          	cmp    $0x9,%rdi
    1985:	0f 87 54 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    198b:	4c 0f be 4e 01       	movsbq 0x1(%rsi),%r9
    1990:	4d 8d 59 d0          	lea    -0x30(%r9),%r11
    1994:	49 83 fb 09          	cmp    $0x9,%r11
    1998:	0f 87 41 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    199e:	4c 0f be 4e 02       	movsbq 0x2(%rsi),%r9
    19a3:	49 83 e9 30          	sub    $0x30,%r9
    19a7:	49 83 f9 09          	cmp    $0x9,%r9
    19ab:	0f 87 2e 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    19b1:	48 0f be 46 03       	movsbq 0x3(%rsi),%rax
    19b6:	48 83 e8 30          	sub    $0x30,%rax
    19ba:	48 83 f8 09          	cmp    $0x9,%rax
    19be:	0f 87 1b 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    19c4:	4c 0f be 56 04       	movsbq 0x4(%rsi),%r10
    19c9:	49 83 ea 30          	sub    $0x30,%r10
    19cd:	49 83 fa 09          	cmp    $0x9,%r10
    19d1:	0f 87 08 09 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    19d7:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    19db:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    19df:	48 69 ff 10 27 00 00 	imul   $0x2710,%rdi,%rdi
    19e6:	49 8d 04 42          	lea    (%r10,%rax,2),%rax
    19ea:	4c 01 c8             	add    %r9,%rax
    19ed:	4d 69 cb e8 03 00 00 	imul   $0x3e8,%r11,%r9
    19f4:	4c 01 c8             	add    %r9,%rax
    19f7:	48 01 f8             	add    %rdi,%rax
    19fa:	e9 57 ff ff ff       	jmp    1956 <stomptalk::parser::finish_value(char const*)+0xb36>
    19ff:	48 0f be 3e          	movsbq (%rsi),%rdi
    1a03:	48 83 ef 30          	sub    $0x30,%rdi
    1a07:	48 83 ff 09          	cmp    $0x9,%rdi
    1a0b:	0f 87 ce 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1a11:	4c 0f be 4e 01       	movsbq 0x1(%rsi),%r9
    1a16:	49 83 e9 30          	sub    $0x30,%r9
    1a1a:	49 83 f9 09          	cmp    $0x9,%r9
    1a1e:	0f 87 bb 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1a24:	48 0f be 46 02       	movsbq 0x2(%rsi),%rax
    1a29:	48 83 e8 30          	sub    $0x30,%rax
    1a2d:	48 83 f8 09          	cmp    $0x9,%rax
    1a31:	0f 87 a8 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1a37:	4c 0f be 56 03       	movsbq 0x3(%rsi),%r10
    1a3c:	49 83 ea 30          	sub    $0x30,%r10
    1a40:	49 83 fa 09          	cmp    $0x9,%r10
    1a44:	0f 87 95 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1a4a:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    1a4e:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1a52:	48 69 ff e8 03 00 00 	imul   $0x3e8,%rdi,%rdi
    1a59:	49 8d 04 42          	lea    (%r10,%rax,2),%rax
    1a5d:	4c 01 c8             	add    %r9,%rax
    1a60:	48 01 f8             	add    %rdi,%rax
    1a63:	e9 ee fe ff ff       	jmp    1956 <stomptalk::parser::finish_value(char const*)+0xb36>
    1a68:	48 0f be 3e          	movsbq (%rsi),%rdi
    1a6c:	48 83 ef 30          	sub    $0x30,%rdi
    1a70:	48 83 ff 09          	cmp    $0x9,%rdi
    1a74:	0f 87 65 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1a7a:	48 0f be 46 01       	movsbq 0x1(%rsi),%rax
    1a7f:	48 83 e8 30          	sub    $0x30,%rax
    1a83:	48 83 f8 09          	cmp    $0x9,%rax
    1a87:	0f 87 52 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1a8d:	4c 0f be 4e 02       	movsbq 0x2(%rsi),%r9
    1a92:	49 83 e9 30          	sub    $0x30,%r9
    1a96:	49 83 f9 09          	cmp    $0x9,%r9
    1a9a:	0f 87 3f 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1aa0:	48 6b ff 64          	imul   $0x64,%rdi,%rdi
    1aa4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1aa8:	49 8d 04 41          	lea    (%r9,%rax,2),%rax
    1aac:	48 01 f8             	add    %rdi,%rax
    1aaf:	e9 a2 fe ff ff       	jmp    1956 <stomptalk::parser::finish_value(char const*)+0xb36>
    1ab4:	48 0f be 06          	movsbq (%rsi),%rax
    1ab8:	48 83 e8 30          	sub    $0x30,%rax
    1abc:	48 83 f8 09          	cmp    $0x9,%rax
    1ac0:	0f 87 19 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1ac6:	48 0f be 7e 01       	movsbq 0x1(%rsi),%rdi
    1acb:	48 83 ef 30          	sub    $0x30,%rdi
    1acf:	48 83 ff 09          	cmp    $0x9,%rdi
    1ad3:	0f 87 06 08 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1ad9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1add:	48 8d 04 47          	lea    (%rdi,%rax,2),%rax
    1ae1:	e9 70 fe ff ff       	jmp    1956 <stomptalk::parser::finish_value(char const*)+0xb36>
    1ae6:	4c 0f be 16          	movsbq (%rsi),%r10
    1aea:	49 83 ea 30          	sub    $0x30,%r10
    1aee:	49 83 fa 09          	cmp    $0x9,%r10
    1af2:	0f 87 e7 07 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1af8:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1afd:	49 83 eb 30          	sub    $0x30,%r11
    1b01:	49 83 fb 09          	cmp    $0x9,%r11
    1b05:	0f 87 d4 07 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1b0b:	48 0f be 46 02       	movsbq 0x2(%rsi),%rax
    1b10:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1b14:	48 83 fb 09          	cmp    $0x9,%rbx
    1b18:	0f 87 c1 07 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1b1e:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1b23:	49 83 e9 30          	sub    $0x30,%r9
    1b27:	49 83 f9 09          	cmp    $0x9,%r9
    1b2b:	0f 87 ae 07 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1b31:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1b36:	48 83 ef 30          	sub    $0x30,%rdi
    1b3a:	48 83 ff 09          	cmp    $0x9,%rdi
    1b3e:	0f 87 9b 07 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1b44:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1b49:	48 83 e8 30          	sub    $0x30,%rax
    1b4d:	48 83 f8 09          	cmp    $0x9,%rax
    1b51:	0f 87 88 07 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1b57:	4c 69 e7 a0 86 01 00 	imul   $0x186a0,%rdi,%r12
    1b5e:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1b63:	4d 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r10
    1b6a:	48 83 ef 30          	sub    $0x30,%rdi
    1b6e:	4d 69 db 00 e1 f5 05 	imul   $0x5f5e100,%r11,%r11
    1b75:	4c 69 fb 80 96 98 00 	imul   $0x989680,%rbx,%r15
    1b7c:	49 69 e9 40 42 0f 00 	imul   $0xf4240,%r9,%rbp
    1b83:	48 69 c0 10 27 00 00 	imul   $0x2710,%rax,%rax
    1b8a:	48 83 ff 09          	cmp    $0x9,%rdi
    1b8e:	0f 87 4b 09 00 00    	ja     24df <stomptalk::parser::finish_value(char const*)+0x16bf>
    1b94:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    1b99:	48 69 ff e8 03 00 00 	imul   $0x3e8,%rdi,%rdi
    1ba0:	49 83 e9 30          	sub    $0x30,%r9
    1ba4:	49 83 f9 09          	cmp    $0x9,%r9
    1ba8:	0f 87 22 09 00 00    	ja     24d0 <stomptalk::parser::finish_value(char const*)+0x16b0>
    1bae:	4d 6b e9 64          	imul   $0x64,%r9,%r13
    1bb2:	4c 0f be 4e 08       	movsbq 0x8(%rsi),%r9
    1bb7:	49 83 e9 30          	sub    $0x30,%r9
    1bbb:	49 83 f9 09          	cmp    $0x9,%r9
    1bbf:	0f 87 d4 08 00 00    	ja     2499 <stomptalk::parser::finish_value(char const*)+0x1679>
    1bc5:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1bcc:	00 00 80
    1bcf:	4b 8d 1c 89          	lea    (%r9,%r9,4),%rbx
    1bd3:	4c 0f be 4e 09       	movsbq 0x9(%rsi),%r9
    1bd8:	49 83 e9 30          	sub    $0x30,%r9
    1bdc:	49 83 f9 0a          	cmp    $0xa,%r9
    1be0:	4d 0f 43 ce          	cmovae %r14,%r9
    1be4:	4d 8d 0c 59          	lea    (%r9,%rbx,2),%r9
    1be8:	4d 01 e9             	add    %r13,%r9
    1beb:	4c 01 cf             	add    %r9,%rdi
    1bee:	48 01 f8             	add    %rdi,%rax
    1bf1:	4c 01 e0             	add    %r12,%rax
    1bf4:	48 01 e8             	add    %rbp,%rax
    1bf7:	4c 01 f8             	add    %r15,%rax
    1bfa:	4c 01 d8             	add    %r11,%rax
    1bfd:	4c 01 d0             	add    %r10,%rax
    1c00:	e9 5b f4 ff ff       	jmp    1060 <stomptalk::parser::finish_value(char const*)+0x240>
    1c05:	4c 0f be 0e          	movsbq (%rsi),%r9
    1c09:	49 83 e9 30          	sub    $0x30,%r9
    1c0d:	49 83 f9 09          	cmp    $0x9,%r9
    1c11:	0f 87 c8 06 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1c17:	4c 0f be 56 01       	movsbq 0x1(%rsi),%r10
    1c1c:	49 83 ea 30          	sub    $0x30,%r10
    1c20:	49 83 fa 09          	cmp    $0x9,%r10
    1c24:	0f 87 b5 06 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1c2a:	4c 0f be 5e 02       	movsbq 0x2(%rsi),%r11
    1c2f:	49 83 eb 30          	sub    $0x30,%r11
    1c33:	49 83 fb 09          	cmp    $0x9,%r11
    1c37:	0f 87 a2 06 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1c3d:	48 0f be 46 03       	movsbq 0x3(%rsi),%rax
    1c42:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1c46:	48 83 fb 09          	cmp    $0x9,%rbx
    1c4a:	0f 87 8f 06 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1c50:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1c55:	48 83 ef 30          	sub    $0x30,%rdi
    1c59:	48 83 ff 09          	cmp    $0x9,%rdi
    1c5d:	0f 87 7c 06 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1c63:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1c68:	48 83 e8 30          	sub    $0x30,%rax
    1c6c:	48 83 f8 09          	cmp    $0x9,%rax
    1c70:	0f 87 69 06 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1c76:	48 69 ef 10 27 00 00 	imul   $0x2710,%rdi,%rbp
    1c7d:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1c82:	4d 69 c9 00 e1 f5 05 	imul   $0x5f5e100,%r9,%r9
    1c89:	48 83 ef 30          	sub    $0x30,%rdi
    1c8d:	4d 69 d2 80 96 98 00 	imul   $0x989680,%r10,%r10
    1c94:	4d 69 db 40 42 0f 00 	imul   $0xf4240,%r11,%r11
    1c9b:	4c 69 fb a0 86 01 00 	imul   $0x186a0,%rbx,%r15
    1ca2:	48 69 c0 e8 03 00 00 	imul   $0x3e8,%rax,%rax
    1ca9:	48 83 ff 09          	cmp    $0x9,%rdi
    1cad:	0f 87 84 06 00 00    	ja     2337 <stomptalk::parser::finish_value(char const*)+0x1517>
    1cb3:	4c 6b e7 64          	imul   $0x64,%rdi,%r12
    1cb7:	48 0f be 7e 07       	movsbq 0x7(%rsi),%rdi
    1cbc:	48 83 ef 30          	sub    $0x30,%rdi
    1cc0:	48 83 ff 09          	cmp    $0x9,%rdi
    1cc4:	0f 87 1e 07 00 00    	ja     23e8 <stomptalk::parser::finish_value(char const*)+0x15c8>
    1cca:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1cd1:	00 00 80
    1cd4:	48 8d 1c bf          	lea    (%rdi,%rdi,4),%rbx
    1cd8:	48 0f be 7e 08       	movsbq 0x8(%rsi),%rdi
    1cdd:	48 83 ef 30          	sub    $0x30,%rdi
    1ce1:	48 83 ff 0a          	cmp    $0xa,%rdi
    1ce5:	49 0f 43 fe          	cmovae %r14,%rdi
    1ce9:	48 8d 3c 5f          	lea    (%rdi,%rbx,2),%rdi
    1ced:	4c 01 e7             	add    %r12,%rdi
    1cf0:	48 01 f8             	add    %rdi,%rax
    1cf3:	48 01 e8             	add    %rbp,%rax
    1cf6:	4c 01 f8             	add    %r15,%rax
    1cf9:	4c 01 d8             	add    %r11,%rax
    1cfc:	4c 01 d0             	add    %r10,%rax
    1cff:	4c 01 c8             	add    %r9,%rax
    1d02:	e9 59 f3 ff ff       	jmp    1060 <stomptalk::parser::finish_value(char const*)+0x240>
    1d07:	4c 0f be 0e          	movsbq (%rsi),%r9
    1d0b:	49 83 e9 30          	sub    $0x30,%r9
    1d0f:	49 83 f9 09          	cmp    $0x9,%r9
    1d13:	0f 87 c6 05 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1d19:	4c 0f be 56 01       	movsbq 0x1(%rsi),%r10
    1d1e:	49 83 ea 30          	sub    $0x30,%r10
    1d22:	49 83 fa 09          	cmp    $0x9,%r10
    1d26:	0f 87 b3 05 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1d2c:	4c 0f be 5e 02       	movsbq 0x2(%rsi),%r11
    1d31:	49 83 eb 30          	sub    $0x30,%r11
    1d35:	49 83 fb 09          	cmp    $0x9,%r11
    1d39:	0f 87 a0 05 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1d3f:	48 0f be 46 03       	movsbq 0x3(%rsi),%rax
    1d44:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1d48:	48 83 fb 09          	cmp    $0x9,%rbx
    1d4c:	0f 87 8d 05 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1d52:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1d57:	48 83 ef 30          	sub    $0x30,%rdi
    1d5b:	48 83 ff 09          	cmp    $0x9,%rdi
    1d5f:	0f 87 7a 05 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1d65:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1d6a:	48 83 e8 30          	sub    $0x30,%rax
    1d6e:	48 83 f8 09          	cmp    $0x9,%rax
    1d72:	0f 87 67 05 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1d78:	48 69 ef e8 03 00 00 	imul   $0x3e8,%rdi,%rbp
    1d7f:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1d84:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    1d8b:	48 83 ef 30          	sub    $0x30,%rdi
    1d8f:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    1d96:	4d 69 db a0 86 01 00 	imul   $0x186a0,%r11,%r11
    1d9d:	4c 69 fb 10 27 00 00 	imul   $0x2710,%rbx,%r15
    1da4:	48 6b c0 64          	imul   $0x64,%rax,%rax
    1da8:	48 83 ff 09          	cmp    $0x9,%rdi
    1dac:	0f 87 85 05 00 00    	ja     2337 <stomptalk::parser::finish_value(char const*)+0x1517>
    1db2:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1db9:	00 00 80
    1dbc:	48 8d 1c bf          	lea    (%rdi,%rdi,4),%rbx
    1dc0:	48 0f be 7e 07       	movsbq 0x7(%rsi),%rdi
    1dc5:	48 83 ef 30          	sub    $0x30,%rdi
    1dc9:	48 83 ff 0a          	cmp    $0xa,%rdi
    1dcd:	49 0f 43 fe          	cmovae %r14,%rdi
    1dd1:	48 8d 3c 5f          	lea    (%rdi,%rbx,2),%rdi
    1dd5:	e9 16 ff ff ff       	jmp    1cf0 <stomptalk::parser::finish_value(char const*)+0xed0>
    1dda:	4c 0f be 16          	movsbq (%rsi),%r10
    1dde:	49 83 ea 30          	sub    $0x30,%r10
    1de2:	49 83 fa 09          	cmp    $0x9,%r10
    1de6:	0f 87 f3 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1dec:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1df1:	49 83 eb 30          	sub    $0x30,%r11
    1df5:	49 83 fb 09          	cmp    $0x9,%r11
    1df9:	0f 87 e0 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1dff:	48 0f be 46 02       	movsbq 0x2(%rsi),%rax
    1e04:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1e08:	48 83 fb 09          	cmp    $0x9,%rbx
    1e0c:	0f 87 cd 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1e12:	48 0f be 7e 03       	movsbq 0x3(%rsi),%rdi
    1e17:	48 83 ef 30          	sub    $0x30,%rdi
    1e1b:	48 83 ff 09          	cmp    $0x9,%rdi
    1e1f:	0f 87 ba 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1e25:	48 0f be 46 04       	movsbq 0x4(%rsi),%rax
    1e2a:	48 83 e8 30          	sub    $0x30,%rax
    1e2e:	48 83 f8 09          	cmp    $0x9,%rax
    1e32:	0f 87 a7 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1e38:	4c 0f be 4e 05       	movsbq 0x5(%rsi),%r9
    1e3d:	49 83 e9 30          	sub    $0x30,%r9
    1e41:	49 83 f9 09          	cmp    $0x9,%r9
    1e45:	0f 87 94 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1e4b:	4c 6b f0 64          	imul   $0x64,%rax,%r14
    1e4f:	48 0f be 46 06       	movsbq 0x6(%rsi),%rax
    1e54:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
    1e58:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    1e5f:	00 00 80
    1e62:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    1e69:	48 83 e8 30          	sub    $0x30,%rax
    1e6d:	4d 69 db a0 86 01 00 	imul   $0x186a0,%r11,%r11
    1e74:	48 69 db 10 27 00 00 	imul   $0x2710,%rbx,%rbx
    1e7b:	48 69 ff e8 03 00 00 	imul   $0x3e8,%rdi,%rdi
    1e82:	48 83 f8 0a          	cmp    $0xa,%rax
    1e86:	49 0f 43 c7          	cmovae %r15,%rax
    1e8a:	4a 8d 04 48          	lea    (%rax,%r9,2),%rax
    1e8e:	4c 01 f0             	add    %r14,%rax
    1e91:	48 01 f8             	add    %rdi,%rax
    1e94:	48 01 d8             	add    %rbx,%rax
    1e97:	4c 01 d8             	add    %r11,%rax
    1e9a:	4c 01 d0             	add    %r10,%rax
    1e9d:	e9 be f1 ff ff       	jmp    1060 <stomptalk::parser::finish_value(char const*)+0x240>
    1ea2:	48 0f be 06          	movsbq (%rsi),%rax
    1ea6:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1eaa:	48 83 fb 09          	cmp    $0x9,%rbx
    1eae:	0f 87 2b 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1eb4:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1eb9:	49 83 eb 30          	sub    $0x30,%r11
    1ebd:	49 83 fb 09          	cmp    $0x9,%r11
    1ec1:	0f 87 18 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1ec7:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    1ecc:	49 83 ea 30          	sub    $0x30,%r10
    1ed0:	49 83 fa 09          	cmp    $0x9,%r10
    1ed4:	0f 87 05 04 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1eda:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1edf:	49 83 e9 30          	sub    $0x30,%r9
    1ee3:	49 83 f9 09          	cmp    $0x9,%r9
    1ee7:	0f 87 f2 03 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1eed:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1ef2:	48 83 ef 30          	sub    $0x30,%rdi
    1ef6:	48 83 ff 09          	cmp    $0x9,%rdi
    1efa:	0f 87 df 03 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1f00:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1f05:	48 83 e8 30          	sub    $0x30,%rax
    1f09:	48 83 f8 09          	cmp    $0x9,%rax
    1f0d:	0f 87 cc 03 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    1f13:	49 be 00 e8 76 48 17 	movabs $0x174876e800,%r14
    1f1a:	00 00 00
    1f1d:	4d 69 e2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r12
    1f24:	49 0f af de          	imul   %r14,%rbx
    1f28:	4d 69 e9 00 e1 f5 05 	imul   $0x5f5e100,%r9,%r13
    1f2f:	48 69 c0 40 42 0f 00 	imul   $0xf4240,%rax,%rax
    1f36:	49 89 df             	mov    %rbx,%r15
    1f39:	48 bb 00 e4 0b 54 02 	movabs $0x2540be400,%rbx
    1f40:	00 00 00
    1f43:	4c 0f af db          	imul   %rbx,%r11
    1f47:	48 69 df 80 96 98 00 	imul   $0x989680,%rdi,%rbx
    1f4e:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1f53:	48 83 ef 30          	sub    $0x30,%rdi
    1f57:	4c 89 dd             	mov    %r11,%rbp
    1f5a:	48 89 1c 24          	mov    %rbx,(%rsp)
    1f5e:	48 83 ff 09          	cmp    $0x9,%rdi
    1f62:	0f 87 45 04 00 00    	ja     23ad <stomptalk::parser::finish_value(char const*)+0x158d>
    1f68:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    1f6d:	48 69 ff a0 86 01 00 	imul   $0x186a0,%rdi,%rdi
    1f74:	49 83 e9 30          	sub    $0x30,%r9
    1f78:	49 83 f9 09          	cmp    $0x9,%r9
    1f7c:	0f 87 1c 04 00 00    	ja     239e <stomptalk::parser::finish_value(char const*)+0x157e>
    1f82:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    1f87:	4d 69 c9 10 27 00 00 	imul   $0x2710,%r9,%r9
    1f8e:	49 83 ea 30          	sub    $0x30,%r10
    1f92:	49 83 fa 09          	cmp    $0x9,%r10
    1f96:	0f 87 f3 03 00 00    	ja     238f <stomptalk::parser::finish_value(char const*)+0x156f>
    1f9c:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    1fa1:	4d 69 d2 e8 03 00 00 	imul   $0x3e8,%r10,%r10
    1fa8:	49 83 eb 30          	sub    $0x30,%r11
    1fac:	49 83 fb 09          	cmp    $0x9,%r11
    1fb0:	0f 87 ca 03 00 00    	ja     2380 <stomptalk::parser::finish_value(char const*)+0x1560>
    1fb6:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1fba:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    1fbf:	49 83 eb 30          	sub    $0x30,%r11
    1fc3:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    1fc8:	49 83 fb 09          	cmp    $0x9,%r11
    1fcc:	0f 87 9f 03 00 00    	ja     2371 <stomptalk::parser::finish_value(char const*)+0x1551>
    1fd2:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1fd9:	00 00 80
    1fdc:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1fe0:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1fe5:	49 83 eb 30          	sub    $0x30,%r11
    1fe9:	49 83 fb 0a          	cmp    $0xa,%r11
    1fed:	4d 0f 43 de          	cmovae %r14,%r11
    1ff1:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1ff5:	e9 ab f4 ff ff       	jmp    14a5 <stomptalk::parser::finish_value(char const*)+0x685>
    1ffa:	48 0f be 06          	movsbq (%rsi),%rax
    1ffe:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    2002:	48 83 fb 09          	cmp    $0x9,%rbx
    2006:	0f 87 d3 02 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    200c:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    2011:	49 83 eb 30          	sub    $0x30,%r11
    2015:	49 83 fb 09          	cmp    $0x9,%r11
    2019:	0f 87 c0 02 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    201f:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    2024:	49 83 ea 30          	sub    $0x30,%r10
    2028:	49 83 fa 09          	cmp    $0x9,%r10
    202c:	0f 87 ad 02 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    2032:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    2037:	49 83 e9 30          	sub    $0x30,%r9
    203b:	49 83 f9 09          	cmp    $0x9,%r9
    203f:	0f 87 9a 02 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    2045:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    204a:	48 83 ef 30          	sub    $0x30,%rdi
    204e:	48 83 ff 09          	cmp    $0x9,%rdi
    2052:	0f 87 87 02 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    2058:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    205d:	48 83 e8 30          	sub    $0x30,%rax
    2061:	48 83 f8 09          	cmp    $0x9,%rax
    2065:	0f 87 74 02 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    206b:	49 be 00 e4 0b 54 02 	movabs $0x2540be400,%r14
    2072:	00 00 00
    2075:	4c 69 ef 40 42 0f 00 	imul   $0xf4240,%rdi,%r13
    207c:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    2081:	49 0f af de          	imul   %r14,%rbx
    2085:	48 83 ef 30          	sub    $0x30,%rdi
    2089:	4d 69 db 00 ca 9a 3b 	imul   $0x3b9aca00,%r11,%r11
    2090:	49 69 ea 00 e1 f5 05 	imul   $0x5f5e100,%r10,%rbp
    2097:	4d 69 e1 80 96 98 00 	imul   $0x989680,%r9,%r12
    209e:	49 89 df             	mov    %rbx,%r15
    20a1:	48 69 c0 a0 86 01 00 	imul   $0x186a0,%rax,%rax
    20a8:	48 83 ff 09          	cmp    $0x9,%rdi
    20ac:	0f 87 68 04 00 00    	ja     251a <stomptalk::parser::finish_value(char const*)+0x16fa>
    20b2:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    20b7:	48 69 ff 10 27 00 00 	imul   $0x2710,%rdi,%rdi
    20be:	49 83 e9 30          	sub    $0x30,%r9
    20c2:	49 83 f9 09          	cmp    $0x9,%r9
    20c6:	0f 87 3f 04 00 00    	ja     250b <stomptalk::parser::finish_value(char const*)+0x16eb>
    20cc:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    20d1:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    20d8:	49 83 ea 30          	sub    $0x30,%r10
    20dc:	49 83 fa 09          	cmp    $0x9,%r10
    20e0:	0f 87 16 04 00 00    	ja     24fc <stomptalk::parser::finish_value(char const*)+0x16dc>
    20e6:	49 6b da 64          	imul   $0x64,%r10,%rbx
    20ea:	4c 0f be 56 09       	movsbq 0x9(%rsi),%r10
    20ef:	49 83 ea 30          	sub    $0x30,%r10
    20f3:	48 89 1c 24          	mov    %rbx,(%rsp)
    20f7:	49 83 fa 09          	cmp    $0x9,%r10
    20fb:	0f 87 ec 03 00 00    	ja     24ed <stomptalk::parser::finish_value(char const*)+0x16cd>
    2101:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    2108:	00 00 80
    210b:	4b 8d 1c 92          	lea    (%r10,%r10,4),%rbx
    210f:	4c 0f be 56 0a       	movsbq 0xa(%rsi),%r10
    2114:	49 83 ea 30          	sub    $0x30,%r10
    2118:	49 83 fa 0a          	cmp    $0xa,%r10
    211c:	4d 0f 43 d6          	cmovae %r14,%r10
    2120:	4d 8d 14 5a          	lea    (%r10,%rbx,2),%r10
    2124:	48 8b 1c 24          	mov    (%rsp),%rbx
    2128:	49 01 da             	add    %rbx,%r10
    212b:	4d 01 d1             	add    %r10,%r9
    212e:	4c 01 cf             	add    %r9,%rdi
    2131:	48 01 f8             	add    %rdi,%rax
    2134:	4c 01 e8             	add    %r13,%rax
    2137:	4c 01 e0             	add    %r12,%rax
    213a:	48 01 e8             	add    %rbp,%rax
    213d:	4c 01 d8             	add    %r11,%rax
    2140:	4c 01 f8             	add    %r15,%rax
    2143:	e9 18 ef ff ff       	jmp    1060 <stomptalk::parser::finish_value(char const*)+0x240>
    2148:	48 0f be 06          	movsbq (%rsi),%rax
    214c:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    2150:	48 83 fb 09          	cmp    $0x9,%rbx
    2154:	0f 87 85 01 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    215a:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    215f:	49 83 eb 30          	sub    $0x30,%r11
    2163:	49 83 fb 09          	cmp    $0x9,%r11
    2167:	0f 87 72 01 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    216d:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    2172:	49 83 ea 30          	sub    $0x30,%r10
    2176:	49 83 fa 09          	cmp    $0x9,%r10
    217a:	0f 87 5f 01 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    2180:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    2185:	49 83 e9 30          	sub    $0x30,%r9
    2189:	49 83 f9 09          	cmp    $0x9,%r9
    218d:	0f 87 4c 01 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    2193:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    2198:	48 83 ef 30          	sub    $0x30,%rdi
    219c:	48 83 ff 09          	cmp    $0x9,%rdi
    21a0:	0f 87 39 01 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    21a6:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    21ab:	48 83 e8 30          	sub    $0x30,%rax
    21af:	48 83 f8 09          	cmp    $0x9,%rax
    21b3:	0f 87 26 01 00 00    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    21b9:	49 be 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r14
    21c0:	00 00 00
    21c3:	4d 69 e9 00 ca 9a 3b 	imul   $0x3b9aca00,%r9,%r13
    21ca:	49 0f af de          	imul   %r14,%rbx
    21ce:	48 69 c0 80 96 98 00 	imul   $0x989680,%rax,%rax
    21d5:	49 89 df             	mov    %rbx,%r15
    21d8:	48 bb 00 e8 76 48 17 	movabs $0x174876e800,%rbx
    21df:	00 00 00
    21e2:	4c 0f af db          	imul   %rbx,%r11
    21e6:	48 69 df 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rbx
    21ed:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    21f2:	4c 89 dd             	mov    %r11,%rbp
    21f5:	48 83 ef 30          	sub    $0x30,%rdi
    21f9:	49 bb 00 e4 0b 54 02 	movabs $0x2540be400,%r11
    2200:	00 00 00
    2203:	4d 0f af d3          	imul   %r11,%r10
    2207:	48 89 1c 24          	mov    %rbx,(%rsp)
    220b:	4d 89 d4             	mov    %r10,%r12
    220e:	48 83 ff 09          	cmp    $0x9,%rdi
    2212:	0f 87 95 01 00 00    	ja     23ad <stomptalk::parser::finish_value(char const*)+0x158d>
    2218:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    221d:	48 69 ff 40 42 0f 00 	imul   $0xf4240,%rdi,%rdi
    2224:	49 83 e9 30          	sub    $0x30,%r9
    2228:	49 83 f9 09          	cmp    $0x9,%r9
    222c:	0f 87 6c 01 00 00    	ja     239e <stomptalk::parser::finish_value(char const*)+0x157e>
    2232:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    2237:	4d 69 c9 a0 86 01 00 	imul   $0x186a0,%r9,%r9
    223e:	49 83 ea 30          	sub    $0x30,%r10
    2242:	49 83 fa 09          	cmp    $0x9,%r10
    2246:	0f 87 43 01 00 00    	ja     238f <stomptalk::parser::finish_value(char const*)+0x156f>
    224c:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    2251:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    2258:	49 83 eb 30          	sub    $0x30,%r11
    225c:	49 83 fb 09          	cmp    $0x9,%r11
    2260:	0f 87 1a 01 00 00    	ja     2380 <stomptalk::parser::finish_value(char const*)+0x1560>
    2266:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    226d:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    2272:	49 83 eb 30          	sub    $0x30,%r11
    2276:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    227b:	49 83 fb 09          	cmp    $0x9,%r11
    227f:	0f 87 ec 00 00 00    	ja     2371 <stomptalk::parser::finish_value(char const*)+0x1551>
    2285:	49 6b db 64          	imul   $0x64,%r11,%rbx
    2289:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    228e:	49 83 eb 30          	sub    $0x30,%r11
    2292:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    2297:	49 83 fb 09          	cmp    $0x9,%r11
    229b:	0f 87 c1 00 00 00    	ja     2362 <stomptalk::parser::finish_value(char const*)+0x1542>
    22a1:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    22a8:	00 00 80
    22ab:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    22af:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    22b4:	49 83 eb 30          	sub    $0x30,%r11
    22b8:	49 83 fb 0a          	cmp    $0xa,%r11
    22bc:	4d 0f 43 de          	cmovae %r14,%r11
    22c0:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    22c4:	e9 d4 f1 ff ff       	jmp    149d <stomptalk::parser::finish_value(char const*)+0x67d>
    22c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    22d0:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    22d7:	00 00 00
    22da:	e9 22 ec ff ff       	jmp    f01 <stomptalk::parser::finish_value(char const*)+0xe1>
    22df:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    22e4:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    22e9:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    22ee:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    22f3:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    22f8:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    22fd:	e9 f5 eb ff ff       	jmp    ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2302:	48 0f be 06          	movsbq (%rsi),%rax
    2306:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    230b:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    2310:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    2315:	48 83 e8 30          	sub    $0x30,%rax
    2319:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    231e:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    2323:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    2328:	48 83 f8 09          	cmp    $0x9,%rax
    232c:	0f 86 e6 ec ff ff    	jbe    1018 <stomptalk::parser::finish_value(char const*)+0x1f8>
    2332:	e9 c0 eb ff ff       	jmp    ef7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2337:	bf 01 00 00 00       	mov    $0x1,%edi
    233c:	48 c1 e7 3f          	shl    $0x3f,%rdi
    2340:	e9 ab f9 ff ff       	jmp    1cf0 <stomptalk::parser::finish_value(char const*)+0xed0>
    2345:	b8 01 00 00 00       	mov    $0x1,%eax
    234a:	48 c1 e0 3f          	shl    $0x3f,%rax
    234e:	e9 52 ef ff ff       	jmp    12a5 <stomptalk::parser::finish_value(char const*)+0x485>
    2353:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    235a:	00 00 80
    235d:	e9 33 f1 ff ff       	jmp    1495 <stomptalk::parser::finish_value(char const*)+0x675>
    2362:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2369:	00 00 80
    236c:	e9 2c f1 ff ff       	jmp    149d <stomptalk::parser::finish_value(char const*)+0x67d>
    2371:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2378:	00 00 80
    237b:	e9 25 f1 ff ff       	jmp    14a5 <stomptalk::parser::finish_value(char const*)+0x685>
    2380:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2387:	00 00 80
    238a:	e9 1e f1 ff ff       	jmp    14ad <stomptalk::parser::finish_value(char const*)+0x68d>
    238f:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2396:	00 00 80
    2399:	e9 12 f1 ff ff       	jmp    14b0 <stomptalk::parser::finish_value(char const*)+0x690>
    239e:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    23a5:	00 00 80
    23a8:	e9 06 f1 ff ff       	jmp    14b3 <stomptalk::parser::finish_value(char const*)+0x693>
    23ad:	bf 01 00 00 00       	mov    $0x1,%edi
    23b2:	48 c1 e7 3f          	shl    $0x3f,%rdi
    23b6:	e9 fb f0 ff ff       	jmp    14b6 <stomptalk::parser::finish_value(char const*)+0x696>
    23bb:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23c2:	00 00 80
    23c5:	e9 c3 f0 ff ff       	jmp    148d <stomptalk::parser::finish_value(char const*)+0x66d>
    23ca:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23d1:	00 00 80
    23d4:	e9 a8 ee ff ff       	jmp    1281 <stomptalk::parser::finish_value(char const*)+0x461>
    23d9:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23e0:	00 00 80
    23e3:	e9 a1 ee ff ff       	jmp    1289 <stomptalk::parser::finish_value(char const*)+0x469>
    23e8:	bf 01 00 00 00       	mov    $0x1,%edi
    23ed:	48 c1 e7 3f          	shl    $0x3f,%rdi
    23f1:	e9 f7 f8 ff ff       	jmp    1ced <stomptalk::parser::finish_value(char const*)+0xecd>
    23f6:	bf 01 00 00 00       	mov    $0x1,%edi
    23fb:	48 c1 e7 3f          	shl    $0x3f,%rdi
    23ff:	e9 9e ee ff ff       	jmp    12a2 <stomptalk::parser::finish_value(char const*)+0x482>
    2404:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    240b:	00 00 80
    240e:	e9 c2 f2 ff ff       	jmp    16d5 <stomptalk::parser::finish_value(char const*)+0x8b5>
    2413:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    241a:	00 00 80
    241d:	e9 57 ee ff ff       	jmp    1279 <stomptalk::parser::finish_value(char const*)+0x459>
    2422:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2429:	00 00 80
    242c:	e9 60 ee ff ff       	jmp    1291 <stomptalk::parser::finish_value(char const*)+0x471>
    2431:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2438:	00 00 80
    243b:	e9 59 ee ff ff       	jmp    1299 <stomptalk::parser::finish_value(char const*)+0x479>
    2440:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2447:	00 00 80
    244a:	e9 4d ee ff ff       	jmp    129c <stomptalk::parser::finish_value(char const*)+0x47c>
    244f:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2456:	00 00 80
    2459:	e9 41 ee ff ff       	jmp    129f <stomptalk::parser::finish_value(char const*)+0x47f>
    245e:	44 0f b6 0e          	movzbl (%rsi),%r9d
    2462:	41 83 e9 30          	sub    $0x30,%r9d
    2466:	41 83 f9 09          	cmp    $0x9,%r9d
    246a:	0f 87 6f fe ff ff    	ja     22df <stomptalk::parser::finish_value(char const*)+0x14bf>
    2470:	48 83 f9 14          	cmp    $0x14,%rcx
    2474:	75 32                	jne    24a8 <stomptalk::parser::finish_value(char const*)+0x1688>
    2476:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    247b:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    2480:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    2485:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    248a:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    248f:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    2494:	e9 f1 ea ff ff       	jmp    f8a <stomptalk::parser::finish_value(char const*)+0x16a>
    2499:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    24a0:	00 00 80
    24a3:	e9 40 f7 ff ff       	jmp    1be8 <stomptalk::parser::finish_value(char const*)+0xdc8>
    24a8:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    24ad:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    24b2:	bf 01 00 00 00       	mov    $0x1,%edi
    24b7:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    24bc:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    24c1:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    24c6:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    24cb:	e9 d7 ea ff ff       	jmp    fa7 <stomptalk::parser::finish_value(char const*)+0x187>
    24d0:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    24d7:	00 00 80
    24da:	e9 0c f7 ff ff       	jmp    1beb <stomptalk::parser::finish_value(char const*)+0xdcb>
    24df:	bf 01 00 00 00       	mov    $0x1,%edi
    24e4:	48 c1 e7 3f          	shl    $0x3f,%rdi
    24e8:	e9 01 f7 ff ff       	jmp    1bee <stomptalk::parser::finish_value(char const*)+0xdce>
    24ed:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    24f4:	00 00 80
    24f7:	e9 28 fc ff ff       	jmp    2124 <stomptalk::parser::finish_value(char const*)+0x1304>
    24fc:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2503:	00 00 80
    2506:	e9 20 fc ff ff       	jmp    212b <stomptalk::parser::finish_value(char const*)+0x130b>
    250b:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2512:	00 00 80
    2515:	e9 14 fc ff ff       	jmp    212e <stomptalk::parser::finish_value(char const*)+0x130e>
    251a:	bf 01 00 00 00       	mov    $0x1,%edi
    251f:	48 c1 e7 3f          	shl    $0x3f,%rdi
    2523:	e9 09 fc ff ff       	jmp    2131 <stomptalk::parser::finish_value(char const*)+0x1311>
    2528:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    252f:	00 00 80
    2532:	e9 a6 f1 ff ff       	jmp    16dd <stomptalk::parser::finish_value(char const*)+0x8bd>
    2537:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    253e:	00 00 80
    2541:	e9 9f f1 ff ff       	jmp    16e5 <stomptalk::parser::finish_value(char const*)+0x8c5>
    2546:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    254d:	00 00 80
    2550:	e9 98 f1 ff ff       	jmp    16ed <stomptalk::parser::finish_value(char const*)+0x8cd>
    2555:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    255c:	00 00 80
    255f:	e9 91 f1 ff ff       	jmp    16f5 <stomptalk::parser::finish_value(char const*)+0x8d5>
    2564:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    256b:	00 00 80
    256e:	e9 85 f1 ff ff       	jmp    16f8 <stomptalk::parser::finish_value(char const*)+0x8d8>
    2573:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    257a:	00 00 80
    257d:	e9 79 f1 ff ff       	jmp    16fb <stomptalk::parser::finish_value(char const*)+0x8db>
    2582:	bf 01 00 00 00       	mov    $0x1,%edi
    2587:	48 c1 e7 3f          	shl    $0x3f,%rdi
    258b:	e9 6e f1 ff ff       	jmp    16fe <stomptalk::parser::finish_value(char const*)+0x8de>
    2590:	b8 01 00 00 00       	mov    $0x1,%eax
    2595:	48 c1 e0 3f          	shl    $0x3f,%rax
    2599:	e9 63 f1 ff ff       	jmp    1701 <stomptalk::parser::finish_value(char const*)+0x8e1>
    259e:	66 90                	xchg   %ax,%ax

0000000000000000 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	49 89 f1             	mov    %rsi,%r9
   7:	48 39 d6             	cmp    %rdx,%rsi
   a:	0f 83 30 09 00 00    	jae    940 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x940>
  10:	48 83 ec 48          	sub    $0x48,%rsp
  14:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  19:	48 89 fb             	mov    %rdi,%rbx
  1c:	4c 89 7c 24 40       	mov    %r15,0x40(%rsp)
  21:	49 89 d7             	mov    %rdx,%r15
  24:	80 bb 0a 01 00 00 00 	cmpb   $0x0,0x10a(%rbx)
  2b:	0f 84 cf 00 00 00    	je     100 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x100>
  31:	41 0f b6 01          	movzbl (%r9),%eax
  35:	3c 6e                	cmp    $0x6e,%al
  37:	0f 84 53 05 00 00    	je     590 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x590>
  3d:	0f 8f 5d 04 00 00    	jg     4a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4a0>
  43:	3c 5c                	cmp    $0x5c,%al
  45:	74 0d                	je     54 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54>
  47:	3c 63                	cmp    $0x63,%al
  49:	0f 85 01 05 00 00    	jne    550 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x550>
  4f:	b8 3a 00 00 00       	mov    $0x3a,%eax
  54:	48 8b 93 00 01 00 00 	mov    0x100(%rbx),%rdx
  5b:	48 85 d2             	test   %rdx,%rdx
  5e:	75 30                	jne    90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x90>
  60:	b8 02 00 00 00       	mov    $0x2,%eax
  65:	48 83 bb f8 00 00 00 	cmpq   $0x0,0xf8(%rbx)
  6c:	00
  6d:	74 61                	je     d0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd0>
  6f:	4c 89 8b 28 01 00 00 	mov    %r9,0x128(%rbx)
  76:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
  7c:	4c 89 c8             	mov    %r9,%rax
  7f:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  84:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
  89:	48 83 c4 48          	add    $0x48,%rsp
  8d:	c3                   	ret
  8e:	66 90                	xchg   %ax,%ax
  90:	48 83 ea 01          	sub    $0x1,%rdx
  94:	49 83 c1 01          	add    $0x1,%r9
  98:	48 89 93 00 01 00 00 	mov    %rdx,0x100(%rbx)
  9f:	48 8b 53 48          	mov    0x48(%rbx),%rdx
  a3:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  a7:	48 89 4b 48          	mov    %rcx,0x48(%rbx)
  ab:	88 02                	mov    %al,(%rdx)
  ad:	31 c0                	xor    %eax,%eax
  af:	48 83 83 d8 00 00 00 	addq   $0x1,0xd8(%rbx)
  b6:	01
  b7:	88 83 0a 01 00 00    	mov    %al,0x10a(%rbx)
  bd:	4d 39 f9             	cmp    %r15,%r9
  c0:	0f 82 5e ff ff ff    	jb     24 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x24>
  c6:	4c 89 c8             	mov    %r9,%rax
  c9:	eb b4                	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
  cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  d0:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
  d7:	00 00 00
  da:	4c 89 c8             	mov    %r9,%rax
  dd:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
  e4:	49 83 c1 01          	add    $0x1,%r9
  e8:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
  ef:	b8 03 00 00 00       	mov    $0x3,%eax
  f4:	e9 76 ff ff ff       	jmp    6f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f>
  f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 100:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 107:	00
 108:	4c 89 f8             	mov    %r15,%rax
 10b:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
 110:	4c 89 ca             	mov    %r9,%rdx
 113:	41 0f 94 c0          	sete   %r8b
 117:	4c 29 c8             	sub    %r9,%rax
 11a:	48 89 6c 24 20       	mov    %rbp,0x20(%rsp)
 11f:	44 0f b6 9b 0b 01 00 	movzbl 0x10b(%rbx),%r11d
 126:	00
 127:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
 12c:	45 31 ed             	xor    %r13d,%r13d
 12f:	48 83 f8 0f          	cmp    $0xf,%rax
 133:	0f 8e dd 07 00 00    	jle    916 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x916>
 139:	b8 3a 3a 3a 3a       	mov    $0x3a3a3a3a,%eax
 13e:	66 0f ef f6          	pxor   %xmm6,%xmm6
 142:	66 0f 6e e8          	movd   %eax,%xmm5
 146:	b8 0a 0a 0a 0a       	mov    $0xa0a0a0a,%eax
 14b:	66 0f 6e e0          	movd   %eax,%xmm4
 14f:	b8 0d 0d 0d 0d       	mov    $0xd0d0d0d,%eax
 154:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
 159:	66 0f 6e d8          	movd   %eax,%xmm3
 15d:	b8 5c 5c 5c 5c       	mov    $0x5c5c5c5c,%eax
 162:	66 0f 70 e4 00       	pshufd $0x0,%xmm4,%xmm4
 167:	66 0f 6e f8          	movd   %eax,%xmm7
 16b:	66 0f 70 db 00       	pshufd $0x0,%xmm3,%xmm3
 170:	66 0f 70 ff 00       	pshufd $0x0,%xmm7,%xmm7
 175:	eb 50                	jmp    1c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c7>
 177:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 17e:	00 00
 180:	66 0f 74 cf          	pcmpeqb %xmm7,%xmm1
 184:	66 0f eb c1          	por    %xmm1,%xmm0
 188:	66 0f d7 f0          	pmovmskb %xmm0,%esi
 18c:	84 c0                	test   %al,%al
 18e:	0f 84 d4 01 00 00    	je     368 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x368>
 194:	85 f6                	test   %esi,%esi
 196:	0f 85 d4 01 00 00    	jne    370 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x370>
 19c:	45 31 ed             	xor    %r13d,%r13d
 19f:	8d 77 ff             	lea    -0x1(%rdi),%esi
 1a2:	45 31 c0             	xor    %r8d,%r8d
 1a5:	f3 44 0f bc ef       	tzcnt  %edi,%r13d
 1aa:	21 fe                	and    %edi,%esi
 1ac:	49 01 d5             	add    %rdx,%r13
 1af:	85 f6                	test   %esi,%esi
 1b1:	0f 85 6e 09 00 00    	jne    b25 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb25>
 1b7:	48 83 c2 10          	add    $0x10,%rdx
 1bb:	4c 89 f8             	mov    %r15,%rax
 1be:	48 29 d0             	sub    %rdx,%rax
 1c1:	48 83 f8 0f          	cmp    $0xf,%rax
 1c5:	7e 79                	jle    240 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x240>
 1c7:	f3 0f 6f 0a          	movdqu (%rdx),%xmm1
 1cb:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 1cf:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 1d3:	66 0f 74 c5          	pcmpeqb %xmm5,%xmm0
 1d7:	66 0f 74 d3          	pcmpeqb %xmm3,%xmm2
 1db:	66 0f d7 f8          	pmovmskb %xmm0,%edi
 1df:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 1e3:	66 0f 74 c4          	pcmpeqb %xmm4,%xmm0
 1e7:	85 ff                	test   %edi,%edi
 1e9:	0f 95 c0             	setne  %al
 1ec:	44 21 c0             	and    %r8d,%eax
 1ef:	66 0f eb c2          	por    %xmm2,%xmm0
 1f3:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 1f7:	66 0f 74 d6          	pcmpeqb %xmm6,%xmm2
 1fb:	66 0f eb c2          	por    %xmm2,%xmm0
 1ff:	45 84 db             	test   %r11b,%r11b
 202:	0f 84 78 ff ff ff    	je     180 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x180>
 208:	66 0f d7 c8          	pmovmskb %xmm0,%ecx
 20c:	89 ce                	mov    %ecx,%esi
 20e:	84 c0                	test   %al,%al
 210:	74 9d                	je     1af <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1af>
 212:	85 c9                	test   %ecx,%ecx
 214:	0f 85 66 02 00 00    	jne    480 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x480>
 21a:	f3 0f bc ff          	tzcnt  %edi,%edi
 21e:	4c 89 f8             	mov    %r15,%rax
 221:	45 31 c0             	xor    %r8d,%r8d
 224:	4c 8d 2c 3a          	lea    (%rdx,%rdi,1),%r13
 228:	48 83 c2 10          	add    $0x10,%rdx
 22c:	48 29 d0             	sub    %rdx,%rax
 22f:	48 83 f8 0f          	cmp    $0xf,%rax
 233:	7f 92                	jg     1c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c7>
 235:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 23c:	00 00 00 00
 240:	48 83 f8 07          	cmp    $0x7,%rax
 244:	0f 8e fa 06 00 00    	jle    944 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x944>
 24a:	48 b9 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rcx
 251:	7f 7f 7f
 254:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
 259:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 260:	00 00
 262:	eb 4f                	jmp    2b3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2b3>
 264:	0f 1f 40 00          	nopl   0x0(%rax)
 268:	49 bc 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%r12
 26f:	5c 5c 5c
 272:	49 31 f4             	xor    %rsi,%r12
 275:	4c 89 e6             	mov    %r12,%rsi
 278:	48 21 ce             	and    %rcx,%rsi
 27b:	48 01 ce             	add    %rcx,%rsi
 27e:	4c 09 e6             	or     %r12,%rsi
 281:	48 21 f0             	and    %rsi,%rax
 284:	45 84 d2             	test   %r10b,%r10b
 287:	0f 85 bb 03 00 00    	jne    648 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x648>
 28d:	48 21 f8             	and    %rdi,%rax
 290:	48 09 c8             	or     %rcx,%rax
 293:	48 f7 d0             	not    %rax
 296:	48 85 c0             	test   %rax,%rax
 299:	0f 85 ad 08 00 00    	jne    b4c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb4c>
 29f:	48 83 c2 08          	add    $0x8,%rdx
 2a3:	4c 89 f8             	mov    %r15,%rax
 2a6:	48 29 d0             	sub    %rdx,%rax
 2a9:	48 83 f8 07          	cmp    $0x7,%rax
 2ad:	0f 8e f5 04 00 00    	jle    7a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a8>
 2b3:	48 b8 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rax
 2ba:	3a 3a 3a
 2bd:	48 8b 32             	mov    (%rdx),%rsi
 2c0:	49 ba 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r10
 2c7:	0a 0a 0a
 2ca:	49 bc 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r12
 2d1:	0d 0d 0d
 2d4:	48 31 f0             	xor    %rsi,%rax
 2d7:	49 31 f2             	xor    %rsi,%r10
 2da:	49 31 f4             	xor    %rsi,%r12
 2dd:	48 89 c7             	mov    %rax,%rdi
 2e0:	48 21 cf             	and    %rcx,%rdi
 2e3:	48 01 cf             	add    %rcx,%rdi
 2e6:	48 09 c7             	or     %rax,%rdi
 2e9:	4c 89 d0             	mov    %r10,%rax
 2ec:	48 21 c8             	and    %rcx,%rax
 2ef:	48 89 fd             	mov    %rdi,%rbp
 2f2:	48 01 c8             	add    %rcx,%rax
 2f5:	48 09 cd             	or     %rcx,%rbp
 2f8:	4c 09 d0             	or     %r10,%rax
 2fb:	4d 89 e2             	mov    %r12,%r10
 2fe:	49 89 ee             	mov    %rbp,%r14
 301:	49 21 ca             	and    %rcx,%r10
 304:	49 01 ca             	add    %rcx,%r10
 307:	4d 09 e2             	or     %r12,%r10
 30a:	4c 21 d0             	and    %r10,%rax
 30d:	49 89 f2             	mov    %rsi,%r10
 310:	49 21 ca             	and    %rcx,%r10
 313:	49 01 ca             	add    %rcx,%r10
 316:	49 09 f2             	or     %rsi,%r10
 319:	4c 21 d0             	and    %r10,%rax
 31c:	49 83 f6 ff          	xor    $0xffffffffffffffff,%r14
 320:	41 0f 95 c2          	setne  %r10b
 324:	45 21 c2             	and    %r8d,%r10d
 327:	45 84 db             	test   %r11b,%r11b
 32a:	0f 84 38 ff ff ff    	je     268 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x268>
 330:	48 09 c8             	or     %rcx,%rax
 333:	48 f7 d0             	not    %rax
 336:	45 84 d2             	test   %r10b,%r10b
 339:	0f 84 57 ff ff ff    	je     296 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x296>
 33f:	48 85 c0             	test   %rax,%rax
 342:	0f 85 38 03 00 00    	jne    680 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x680>
 348:	f3 4d 0f bc f6       	tzcnt  %r14,%r14
 34d:	45 31 c0             	xor    %r8d,%r8d
 350:	41 c1 fe 03          	sar    $0x3,%r14d
 354:	4a 8d 04 32          	lea    (%rdx,%r14,1),%rax
 358:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 35d:	e9 3d ff ff ff       	jmp    29f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x29f>
 362:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 368:	09 fe                	or     %edi,%esi
 36a:	e9 40 fe ff ff       	jmp    1af <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1af>
 36f:	90                   	nop
 370:	31 c9                	xor    %ecx,%ecx
 372:	89 f0                	mov    %esi,%eax
 374:	f3 0f bc f6          	tzcnt  %esi,%esi
 378:	f3 0f bc cf          	tzcnt  %edi,%ecx
 37c:	39 ce                	cmp    %ecx,%esi
 37e:	0f 8e 34 01 00 00    	jle    4b8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b8>
 384:	4c 8d 2c 0a          	lea    (%rdx,%rcx,1),%r13
 388:	8d 4f ff             	lea    -0x1(%rdi),%ecx
 38b:	21 f9                	and    %edi,%ecx
 38d:	09 c8                	or     %ecx,%eax
 38f:	f3 0f bc c0          	tzcnt  %eax,%eax
 393:	4c 8d 24 02          	lea    (%rdx,%rax,1),%r12
 397:	4c 89 ed             	mov    %r13,%rbp
 39a:	4c 29 cd             	sub    %r9,%rbp
 39d:	48 89 e8             	mov    %rbp,%rax
 3a0:	0f 85 39 01 00 00    	jne    4df <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4df>
 3a6:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 3ad:	48 85 c0             	test   %rax,%rax
 3b0:	0f 84 e2 06 00 00    	je     a98 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa98>
 3b6:	8b 53 78             	mov    0x78(%rbx),%edx
 3b9:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
 3c0:	48 83 f8 0e          	cmp    $0xe,%rax
 3c4:	48 89 83 c8 00 00 00 	mov    %rax,0xc8(%rbx)
 3cb:	0f 94 c0             	sete   %al
 3ce:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 3d5:	f7 d2                	not    %edx
 3d7:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
 3de:	48 c7 83 d0 00 00 00 	movq   $0x0,0xd0(%rbx)
 3e5:	00 00 00 00
 3e9:	48 c7 83 d8 00 00 00 	movq   $0x0,0xd8(%rbx)
 3f0:	00 00 00 00
 3f4:	20 d0                	and    %dl,%al
 3f6:	0f 85 a4 04 00 00    	jne    8a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a0>
 3fc:	88 83 0c 01 00 00    	mov    %al,0x10c(%rbx)
 402:	49 83 c5 01          	add    $0x1,%r13
 406:	4c 89 e5             	mov    %r12,%rbp
 409:	4c 29 ed             	sub    %r13,%rbp
 40c:	0f 84 c2 01 00 00    	je     5d4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d4>
 412:	48 8b 93 00 01 00 00 	mov    0x100(%rbx),%rdx
 419:	48 39 ea             	cmp    %rbp,%rdx
 41c:	0f 83 7e 01 00 00    	jae    5a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a0>
 422:	48 03 93 f8 00 00 00 	add    0xf8(%rbx),%rdx
 429:	4c 89 e8             	mov    %r13,%rax
 42c:	b9 02 00 00 00       	mov    $0x2,%ecx
 431:	48 39 ea             	cmp    %rbp,%rdx
 434:	73 27                	jae    45d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x45d>
 436:	4c 01 ea             	add    %r13,%rdx
 439:	b9 03 00 00 00       	mov    $0x3,%ecx
 43e:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 445:	00 00 00
 448:	48 89 d0             	mov    %rdx,%rax
 44b:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 452:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 459:	48 8d 42 01          	lea    0x1(%rdx),%rax
 45d:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 462:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 467:	89 8b 10 01 00 00    	mov    %ecx,0x110(%rbx)
 46d:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 474:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 479:	e9 01 fc ff ff       	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
 47e:	66 90                	xchg   %ax,%ax
 480:	31 c0                	xor    %eax,%eax
 482:	f3 0f bc c9          	tzcnt  %ecx,%ecx
 486:	f3 0f bc c7          	tzcnt  %edi,%eax
 48a:	39 c1                	cmp    %eax,%ecx
 48c:	7f 3a                	jg     4c8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c8>
 48e:	4c 8d 24 0a          	lea    (%rdx,%rcx,1),%r12
 492:	4c 89 ee             	mov    %r13,%rsi
 495:	e9 15 02 00 00       	jmp    6af <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6af>
 49a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 4a0:	3c 72                	cmp    $0x72,%al
 4a2:	0f 85 a8 00 00 00    	jne    550 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x550>
 4a8:	b8 0d 00 00 00       	mov    $0xd,%eax
 4ad:	e9 a2 fb ff ff       	jmp    54 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54>
 4b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 4b8:	09 f8                	or     %edi,%eax
 4ba:	31 c9                	xor    %ecx,%ecx
 4bc:	f3 0f bc c8          	tzcnt  %eax,%ecx
 4c0:	eb cc                	jmp    48e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x48e>
 4c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 4c8:	4c 8d 2c 02          	lea    (%rdx,%rax,1),%r13
 4cc:	4c 8d 24 0a          	lea    (%rdx,%rcx,1),%r12
 4d0:	4c 89 ed             	mov    %r13,%rbp
 4d3:	4c 29 cd             	sub    %r9,%rbp
 4d6:	48 89 e8             	mov    %rbp,%rax
 4d9:	0f 84 c7 fe ff ff    	je     3a6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a6>
 4df:	48 8b 93 00 01 00 00 	mov    0x100(%rbx),%rdx
 4e6:	48 39 ea             	cmp    %rbp,%rdx
 4e9:	0f 83 31 03 00 00    	jae    820 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x820>
 4ef:	48 03 93 f8 00 00 00 	add    0xf8(%rbx),%rdx
 4f6:	b8 02 00 00 00       	mov    $0x2,%eax
 4fb:	48 39 ea             	cmp    %rbp,%rdx
 4fe:	73 26                	jae    526 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x526>
 500:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 507:	00 00 00
 50a:	4a 8d 04 0a          	lea    (%rdx,%r9,1),%rax
 50e:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 515:	4d 8d 4c 11 01       	lea    0x1(%r9,%rdx,1),%r9
 51a:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 521:	b8 03 00 00 00       	mov    $0x3,%eax
 526:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 52b:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 530:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
 536:	4c 89 c8             	mov    %r9,%rax
 539:	4c 89 8b 28 01 00 00 	mov    %r9,0x128(%rbx)
 540:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 545:	e9 35 fb ff ff       	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
 54a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 550:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 557:	00 00 00
 55a:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 55f:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 566:	4c 89 c8             	mov    %r9,%rax
 569:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 570:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 577:	49 8d 41 01          	lea    0x1(%r9),%rax
 57b:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 582:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 587:	48 83 c4 48          	add    $0x48,%rsp
 58b:	c3                   	ret
 58c:	0f 1f 40 00          	nopl   0x0(%rax)
 590:	b8 0a 00 00 00       	mov    $0xa,%eax
 595:	e9 ba fa ff ff       	jmp    54 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54>
 59a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 5a0:	48 29 ea             	sub    %rbp,%rdx
 5a3:	48 89 93 00 01 00 00 	mov    %rdx,0x100(%rbx)
 5aa:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 5b1:	0f 85 21 03 00 00    	jne    8d8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8d8>
 5b7:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 5be:	48 85 d2             	test   %rdx,%rdx
 5c1:	75 07                	jne    5ca <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ca>
 5c3:	4c 89 ab d0 00 00 00 	mov    %r13,0xd0(%rbx)
 5ca:	48 01 d5             	add    %rdx,%rbp
 5cd:	48 89 ab d8 00 00 00 	mov    %rbp,0xd8(%rbx)
 5d4:	4d 39 e7             	cmp    %r12,%r15
 5d7:	0f 84 a4 04 00 00    	je     a81 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa81>
 5dd:	41 0f b6 04 24       	movzbl (%r12),%eax
 5e2:	3c 5c                	cmp    $0x5c,%al
 5e4:	0f 85 86 03 00 00    	jne    970 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x970>
 5ea:	80 bb 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbx)
 5f1:	0f 84 21 01 00 00    	je     718 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x718>
 5f7:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 5fe:	00 00 00
 601:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 606:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 60b:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 612:	4c 89 e0             	mov    %r12,%rax
 615:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 61a:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 621:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 628:	49 8d 44 24 01       	lea    0x1(%r12),%rax
 62d:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 632:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 639:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 63e:	48 83 c4 48          	add    $0x48,%rsp
 642:	c3                   	ret
 643:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 648:	48 89 c6             	mov    %rax,%rsi
 64b:	48 09 ce             	or     %rcx,%rsi
 64e:	48 83 f6 ff          	xor    $0xffffffffffffffff,%rsi
 652:	75 74                	jne    6c8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6c8>
 654:	31 c0                	xor    %eax,%eax
 656:	45 31 c0             	xor    %r8d,%r8d
 659:	f3 49 0f bc c6       	tzcnt  %r14,%rax
 65e:	c1 f8 03             	sar    $0x3,%eax
 661:	48 01 d0             	add    %rdx,%rax
 664:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 669:	48 c7 c0 fe ff ff ff 	mov    $0xfffffffffffffffe,%rax
 670:	48 29 e8             	sub    %rbp,%rax
 673:	4c 21 f0             	and    %r14,%rax
 676:	e9 1b fc ff ff       	jmp    296 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x296>
 67b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 680:	f3 48 0f bc c0       	tzcnt  %rax,%rax
 685:	f3 4d 0f bc f6       	tzcnt  %r14,%r14
 68a:	89 c1                	mov    %eax,%ecx
 68c:	41 39 c6             	cmp    %eax,%r14d
 68f:	0f 8c db 00 00 00    	jl     770 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x770>
 695:	c1 f9 03             	sar    $0x3,%ecx
 698:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 69d:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 6a2:	4c 8d 24 0a          	lea    (%rdx,%rcx,1),%r12
 6a6:	4d 85 ed             	test   %r13,%r13
 6a9:	0f 85 e8 fc ff ff    	jne    397 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x397>
 6af:	4d 89 cd             	mov    %r9,%r13
 6b2:	48 85 f6             	test   %rsi,%rsi
 6b5:	0f 84 4b fd ff ff    	je     406 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x406>
 6bb:	49 89 f5             	mov    %rsi,%r13
 6be:	e9 d4 fc ff ff       	jmp    397 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x397>
 6c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 6c8:	45 31 c0             	xor    %r8d,%r8d
 6cb:	45 31 d2             	xor    %r10d,%r10d
 6ce:	f3 4d 0f bc c6       	tzcnt  %r14,%r8
 6d3:	f3 4c 0f bc d6       	tzcnt  %rsi,%r10
 6d8:	45 39 d0             	cmp    %r10d,%r8d
 6db:	0f 8d af 00 00 00    	jge    790 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x790>
 6e1:	49 c7 c4 fe ff ff ff 	mov    $0xfffffffffffffffe,%r12
 6e8:	41 c1 f8 03          	sar    $0x3,%r8d
 6ec:	49 29 ec             	sub    %rbp,%r12
 6ef:	49 01 d0             	add    %rdx,%r8
 6f2:	4d 21 f4             	and    %r14,%r12
 6f5:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 6fa:	49 09 f4             	or     %rsi,%r12
 6fd:	f3 4d 0f bc e4       	tzcnt  %r12,%r12
 702:	41 c1 fc 03          	sar    $0x3,%r12d
 706:	49 01 d4             	add    %rdx,%r12
 709:	4d 85 ed             	test   %r13,%r13
 70c:	4d 0f 44 e8          	cmove  %r8,%r13
 710:	e9 82 fc ff ff       	jmp    397 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x397>
 715:	0f 1f 00             	nopl   (%rax)
 718:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 71f:	75 2a                	jne    74b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74b>
 721:	48 89 df             	mov    %rbx,%rdi
 724:	e8 00 00 00 00       	call   729 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x729>
			725: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
 729:	48 8b ab d8 00 00 00 	mov    0xd8(%rbx),%rbp
 730:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
 734:	48 85 ed             	test   %rbp,%rbp
 737:	0f 85 43 01 00 00    	jne    880 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x880>
 73d:	48 89 8b d0 00 00 00 	mov    %rcx,0xd0(%rbx)
 744:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
 74b:	4d 8d 4c 24 01       	lea    0x1(%r12),%r9
 750:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 755:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 75a:	b8 01 00 00 00       	mov    $0x1,%eax
 75f:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 764:	e9 4e f9 ff ff       	jmp    b7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb7>
 769:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 770:	41 c1 fe 03          	sar    $0x3,%r14d
 774:	c1 f8 03             	sar    $0x3,%eax
 777:	49 01 d6             	add    %rdx,%r14
 77a:	4d 85 ed             	test   %r13,%r13
 77d:	4c 8d 24 02          	lea    (%rdx,%rax,1),%r12
 781:	4d 0f 44 ee          	cmove  %r14,%r13
 785:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 78a:	e9 08 fc ff ff       	jmp    397 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x397>
 78f:	90                   	nop
 790:	48 21 c7             	and    %rax,%rdi
 793:	48 09 f9             	or     %rdi,%rcx
 796:	48 f7 d1             	not    %rcx
 799:	f3 48 0f bc c9       	tzcnt  %rcx,%rcx
 79e:	e9 f2 fe ff ff       	jmp    695 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x695>
 7a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 7a8:	4c 39 fa             	cmp    %r15,%rdx
 7ab:	0f 83 5f 03 00 00    	jae    b10 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb10>
 7b1:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 7b6:	31 f6                	xor    %esi,%esi
 7b8:	bf 01 24 00 00       	mov    $0x2401,%edi
 7bd:	eb 10                	jmp    7cf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7cf>
 7bf:	90                   	nop
 7c0:	48 89 d6             	mov    %rdx,%rsi
 7c3:	45 31 c0             	xor    %r8d,%r8d
 7c6:	48 83 c2 01          	add    $0x1,%rdx
 7ca:	4c 39 fa             	cmp    %r15,%rdx
 7cd:	73 19                	jae    7e8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7e8>
 7cf:	0f b6 02             	movzbl (%rdx),%eax
 7d2:	3c 3a                	cmp    $0x3a,%al
 7d4:	0f 94 c1             	sete   %cl
 7d7:	75 05                	jne    7de <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7de>
 7d9:	45 84 c0             	test   %r8b,%r8b
 7dc:	75 e2                	jne    7c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c0>
 7de:	3c 0d                	cmp    $0xd,%al
 7e0:	77 26                	ja     808 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x808>
 7e2:	48 0f a3 c7          	bt     %rax,%rdi
 7e6:	73 de                	jae    7c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c6>
 7e8:	49 89 d4             	mov    %rdx,%r12
 7eb:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
 7f1:	0f 84 af fe ff ff    	je     6a6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a6>
 7f7:	4d 85 ed             	test   %r13,%r13
 7fa:	4c 0f 44 6c 24 08    	cmove  0x8(%rsp),%r13
 800:	e9 92 fb ff ff       	jmp    397 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x397>
 805:	0f 1f 00             	nopl   (%rax)
 808:	3c 5c                	cmp    $0x5c,%al
 80a:	0f 94 c0             	sete   %al
 80d:	08 c8                	or     %cl,%al
 80f:	74 b5                	je     7c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c6>
 811:	44 89 d8             	mov    %r11d,%eax
 814:	34 01                	xor    $0x1,%al
 816:	74 ae                	je     7c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c6>
 818:	eb ce                	jmp    7e8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7e8>
 81a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 820:	48 29 ea             	sub    %rbp,%rdx
 823:	48 89 93 00 01 00 00 	mov    %rdx,0x100(%rbx)
 82a:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 831:	75 18                	jne    84b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x84b>
 833:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 83a:	48 85 d2             	test   %rdx,%rdx
 83d:	75 30                	jne    86f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x86f>
 83f:	4c 89 8b d0 00 00 00 	mov    %r9,0xd0(%rbx)
 846:	e9 6b fb ff ff       	jmp    3b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b6>
 84b:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 84f:	48 89 ea             	mov    %rbp,%rdx
 852:	4c 89 ce             	mov    %r9,%rsi
 855:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
 85a:	e8 00 00 00 00       	call   85f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x85f>
			85b: R_X86_64_PLT32	memcpy-0x4
 85f:	48 01 6b 48          	add    %rbp,0x48(%rbx)
 863:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 868:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 86f:	48 8d 44 15 00       	lea    0x0(%rbp,%rdx,1),%rax
 874:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 87b:	e9 2d fb ff ff       	jmp    3ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3ad>
 880:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
 887:	48 89 cf             	mov    %rcx,%rdi
 88a:	48 89 ea             	mov    %rbp,%rdx
 88d:	e8 00 00 00 00       	call   892 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x892>
			88e: R_X86_64_PLT32	memcpy-0x4
 892:	48 01 6b 48          	add    %rbp,0x48(%rbx)
 896:	48 89 c1             	mov    %rax,%rcx
 899:	e9 9f fe ff ff       	jmp    73d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x73d>
 89e:	66 90                	xchg   %ax,%ax
 8a0:	4c 39 8b 20 01 00 00 	cmp    %r9,0x120(%rbx)
 8a7:	73 06                	jae    8af <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8af>
 8a9:	48 83 fd 0e          	cmp    $0xe,%rbp
 8ad:	74 48                	je     8f7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8f7>
 8af:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 8b6:	6e 74 2d
 8b9:	48 39 01             	cmp    %rax,(%rcx)
 8bc:	0f 84 17 02 00 00    	je     ad9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xad9>
 8c2:	b8 01 00 00 00       	mov    $0x1,%eax
 8c7:	85 c0                	test   %eax,%eax
 8c9:	0f 94 c0             	sete   %al
 8cc:	e9 2b fb ff ff       	jmp    3fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fc>
 8d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 8d8:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 8dc:	48 89 ea             	mov    %rbp,%rdx
 8df:	4c 89 ee             	mov    %r13,%rsi
 8e2:	e8 00 00 00 00       	call   8e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8e7>
			8e3: R_X86_64_PLT32	memcpy-0x4
 8e7:	48 01 6b 48          	add    %rbp,0x48(%rbx)
 8eb:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 8f2:	e9 d3 fc ff ff       	jmp    5ca <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ca>
 8f7:	f3 41 0f 6f 41 ff    	movdqu -0x1(%r9),%xmm0
 8fd:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 905 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x905>
 904:	00
			901: R_X86_64_PC32	.LC30-0x4
 905:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 909:	3d ff ff 00 00       	cmp    $0xffff,%eax
 90e:	0f 94 c0             	sete   %al
 911:	e9 e6 fa ff ff       	jmp    3fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fc>
 916:	48 83 f8 07          	cmp    $0x7,%rax
 91a:	0f 8f 2a f9 ff ff    	jg     24a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x24a>
 920:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 927:	00 00
 929:	4d 89 cc             	mov    %r9,%r12
 92c:	4d 39 f9             	cmp    %r15,%r9
 92f:	0f 82 81 fe ff ff    	jb     7b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b6>
 935:	e9 9a fc ff ff       	jmp    5d4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d4>
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 940:	48 89 f0             	mov    %rsi,%rax
 943:	c3                   	ret
 944:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 94b:	00 00
 94d:	4c 39 fa             	cmp    %r15,%rdx
 950:	0f 82 60 fe ff ff    	jb     7b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b6>
 956:	49 89 d4             	mov    %rdx,%r12
 959:	4d 85 ed             	test   %r13,%r13
 95c:	0f 85 35 fa ff ff    	jne    397 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x397>
 962:	4d 89 cd             	mov    %r9,%r13
 965:	e9 9c fa ff ff       	jmp    406 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x406>
 96a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 970:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 977:	00
 978:	0f 84 79 fc ff ff    	je     5f7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f7>
 97e:	3c 0d                	cmp    $0xd,%al
 980:	74 08                	je     98a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x98a>
 982:	3c 0a                	cmp    $0xa,%al
 984:	0f 85 6d fc ff ff    	jne    5f7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f7>
 98a:	4c 89 e6             	mov    %r12,%rsi
 98d:	48 89 df             	mov    %rbx,%rdi
 990:	e8 00 00 00 00       	call   995 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x995>
			991: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 995:	84 c0                	test   %al,%al
 997:	74 76                	je     a0f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa0f>
 999:	49 8d 44 24 01       	lea    0x1(%r12),%rax
 99e:	41 80 3c 24 0a       	cmpb   $0xa,(%r12)
 9a3:	0f 84 95 00 00 00    	je     a3e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa3e>
 9a9:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 9b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9b0>
			9ac: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 9b0:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 9b7:	00
 9b8:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
 9bc:	4c 39 f8             	cmp    %r15,%rax
 9bf:	73 69                	jae    a2a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa2a>
 9c1:	49 8d 74 24 02       	lea    0x2(%r12),%rsi
 9c6:	41 80 7c 24 01 0a    	cmpb   $0xa,0x1(%r12)
 9cc:	0f 84 22 01 00 00    	je     af4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaf4>
 9d2:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 9d9:	48 89 b3 28 01 00 00 	mov    %rsi,0x128(%rbx)
 9e0:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 9e7:	00 00 00
 9ea:	48 89 93 10 01 00 00 	mov    %rdx,0x110(%rbx)
 9f1:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 9f8:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 9fd:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 a02:	48 89 f0             	mov    %rsi,%rax
 a05:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 a0a:	e9 70 f6 ff ff       	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
 a0f:	48 8b 83 28 01 00 00 	mov    0x128(%rbx),%rax
 a16:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 a1b:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 a20:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 a25:	e9 55 f6 ff ff       	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
 a2a:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 a2f:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 a34:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 a39:	e9 41 f6 ff ff       	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
 a3e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # a45 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa45>
			a41: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 a45:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 a4c:	00
 a4d:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
 a51:	4c 39 f8             	cmp    %r15,%rax
 a54:	73 d4                	jae    a2a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa2a>
 a56:	4c 89 fa             	mov    %r15,%rdx
 a59:	48 89 c6             	mov    %rax,%rsi
 a5c:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 a61:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 a66:	48 89 df             	mov    %rbx,%rdi
 a69:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 a6e:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 a73:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 a78:	48 83 c4 48          	add    $0x48,%rsp
 a7c:	e9 00 00 00 00       	jmp    a81 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa81>
			a7d: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 a81:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 a86:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 a8b:	4c 89 f8             	mov    %r15,%rax
 a8e:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 a93:	e9 e7 f5 ff ff       	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
 a98:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 a9f:	00 00 00
 aa2:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 aa7:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 aac:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 ab3:	4c 89 e8             	mov    %r13,%rax
 ab6:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 abd:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 ac4:	49 8d 45 01          	lea    0x1(%r13),%rax
 ac8:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 acd:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 ad4:	e9 a6 f5 ff ff       	jmp    7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f>
 ad9:	48 b8 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rax
 ae0:	67 74 68
 ae3:	48 39 41 06          	cmp    %rax,0x6(%rcx)
 ae7:	0f 85 d5 fd ff ff    	jne    8c2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8c2>
 aed:	31 c0                	xor    %eax,%eax
 aef:	e9 d3 fd ff ff       	jmp    8c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8c7>
 af4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # afb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xafb>
			af7: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 afb:	48 89 43 60          	mov    %rax,0x60(%rbx)
 aff:	4c 39 fe             	cmp    %r15,%rsi
 b02:	0f 83 f0 fe ff ff    	jae    9f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9f8>
 b08:	4c 89 fa             	mov    %r15,%rdx
 b0b:	e9 4c ff ff ff       	jmp    a5c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa5c>
 b10:	49 89 d4             	mov    %rdx,%r12
 b13:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
 b19:	74 15                	je     b30 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb30>
 b1b:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 b20:	e9 d2 fc ff ff       	jmp    7f7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f7>
 b25:	31 c9                	xor    %ecx,%ecx
 b27:	f3 0f bc ce          	tzcnt  %esi,%ecx
 b2b:	e9 5e f9 ff ff       	jmp    48e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x48e>
 b30:	4d 85 ed             	test   %r13,%r13
 b33:	74 0a                	je     b3f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb3f>
 b35:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 b3a:	e9 58 f8 ff ff       	jmp    397 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x397>
 b3f:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 b44:	4d 89 cd             	mov    %r9,%r13
 b47:	e9 ba f8 ff ff       	jmp    406 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x406>
 b4c:	31 c9                	xor    %ecx,%ecx
 b4e:	f3 48 0f bc c8       	tzcnt  %rax,%rcx
 b53:	e9 3d fb ff ff       	jmp    695 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x695>

0000000000000000 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	0f b6 06             	movzbl (%rsi),%eax
   7:	3c 0a                	cmp    $0xa,%al
   9:	0f 84 a9 00 00 00    	je     b8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb8>
   f:	3c 0d                	cmp    $0xd,%al
  11:	74 4d                	je     60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x60>
  13:	48 8b 47 18          	mov    0x18(%rdi),%rax
  17:	48 39 87 80 00 00 00 	cmp    %rax,0x80(%rdi)
  1e:	0f 84 cc 00 00 00    	je     f0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf0>
  24:	48 8b 47 08          	mov    0x8(%rdi),%rax
  28:	48 39 87 e8 00 00 00 	cmp    %rax,0xe8(%rdi)
  2f:	0f 84 ab 00 00 00    	je     e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe0>
  35:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3c>
			38: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
  3c:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  43:	00
  44:	48 89 47 60          	mov    %rax,0x60(%rdi)
  48:	48 39 d6             	cmp    %rdx,%rsi
  4b:	0f 83 99 00 00 00    	jae    ea <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xea>
  51:	e9 00 00 00 00       	jmp    56 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x56>
			52: R_X86_64_PLT32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
  56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  5d:	00 00 00
  60:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 67 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x67>
			63: R_X86_64_PC32	char const* stomptalk::parser::almost_done<3u>(char const*, char const*)-0x4
  67:	48 8d 46 01          	lea    0x1(%rsi),%rax
  6b:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  72:	00
  73:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
  77:	48 39 d0             	cmp    %rdx,%rax
  7a:	73 58                	jae    d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd4>
  7c:	48 8d 4e 02          	lea    0x2(%rsi),%rcx
  80:	80 7e 01 0a          	cmpb   $0xa,0x1(%rsi)
  84:	0f 84 96 00 00 00    	je     120 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x120>
  8a:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  91:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
  98:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
  9f:	00 00 00
  a2:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
  a9:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  b0:	48 89 c8             	mov    %rcx,%rax
  b3:	c3                   	ret
  b4:	0f 1f 40 00          	nopl   0x0(%rax)
  b8:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # bf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xbf>
			bb: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  bf:	48 8d 46 01          	lea    0x1(%rsi),%rax
  c3:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  ca:	00
  cb:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
  cf:	48 39 d0             	cmp    %rdx,%rax
  d2:	72 04                	jb     d8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd8>
  d4:	c3                   	ret
  d5:	0f 1f 00             	nopl   (%rax)
  d8:	48 89 c6             	mov    %rax,%rsi
  db:	e9 00 00 00 00       	jmp    e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe0>
			dc: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  e0:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  e7:	00 00 00
  ea:	48 89 f0             	mov    %rsi,%rax
  ed:	c3                   	ret
  ee:	66 90                	xchg   %ax,%ax
  f0:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
  f7:	00 00 00
  fa:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 101:	48 89 f0             	mov    %rsi,%rax
 104:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 10b:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 112:	48 8d 46 01          	lea    0x1(%rsi),%rax
 116:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 11d:	c3                   	ret
 11e:	66 90                	xchg   %ax,%ax
 120:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 127 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x127>
			123: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
 127:	48 89 47 60          	mov    %rax,0x60(%rdi)
 12b:	48 39 d1             	cmp    %rdx,%rcx
 12e:	73 80                	jae    b0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb0>
 130:	48 89 ce             	mov    %rcx,%rsi
 133:	e9 00 00 00 00       	jmp    138 <.LC67+0x7>
			134: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4

0000000000000000 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 83 ec 28          	sub    $0x28,%rsp
   8:	49 89 f9             	mov    %rdi,%r9
   b:	49 89 d0             	mov    %rdx,%r8
   e:	48 89 f1             	mov    %rsi,%rcx
  11:	48 39 d6             	cmp    %rdx,%rsi
  14:	72 13                	jb     29 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x29>
  16:	eb 23                	jmp    3b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3b>
  18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1f:	00
  20:	48 83 c1 01          	add    $0x1,%rcx
  24:	49 39 c8             	cmp    %rcx,%r8
  27:	74 67                	je     90 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x90>
  29:	0f b6 01             	movzbl (%rcx),%eax
  2c:	83 e8 41             	sub    $0x41,%eax
  2f:	3c 19                	cmp    $0x19,%al
  31:	76 ed                	jbe    20 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20>
  33:	48 89 ca             	mov    %rcx,%rdx
  36:	48 29 f2             	sub    %rsi,%rdx
  39:	75 5b                	jne    96 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x96>
  3b:	49 39 c8             	cmp    %rcx,%r8
  3e:	0f 84 1f 02 00 00    	je     263 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x263>
  44:	0f b6 39             	movzbl (%rcx),%edi
  47:	48 8d 41 01          	lea    0x1(%rcx),%rax
  4b:	40 80 ff 0a          	cmp    $0xa,%dil
  4f:	40 0f 95 c6          	setne  %sil
  53:	40 80 ff 0d          	cmp    $0xd,%dil
  57:	0f 95 c2             	setne  %dl
  5a:	40 20 d6             	and    %dl,%sil
  5d:	74 79                	je     d8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xd8>
  5f:	49 2b 89 20 01 00 00 	sub    0x120(%r9),%rcx
  66:	49 89 81 28 01 00 00 	mov    %rax,0x128(%r9)
  6d:	48 ba 03 00 00 00 06 	movabs $0x600000003,%rdx
  74:	00 00 00
  77:	49 89 91 10 01 00 00 	mov    %rdx,0x110(%r9)
  7e:	49 89 89 18 01 00 00 	mov    %rcx,0x118(%r9)
  85:	48 83 c4 28          	add    $0x28,%rsp
  89:	c3                   	ret
  8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  90:	4c 89 c2             	mov    %r8,%rdx
  93:	48 29 f2             	sub    %rsi,%rdx
  96:	49 8b 81 00 01 00 00 	mov    0x100(%r9),%rax
  9d:	48 39 d0             	cmp    %rdx,%rax
  a0:	0f 83 22 01 00 00    	jae    1c8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1c8>
  a6:	49 03 81 f8 00 00 00 	add    0xf8(%r9),%rax
  ad:	48 39 d0             	cmp    %rdx,%rax
  b0:	0f 82 52 01 00 00    	jb     208 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x208>
  b6:	48 89 f0             	mov    %rsi,%rax
  b9:	ba 02 00 00 00       	mov    $0x2,%edx
  be:	41 89 91 10 01 00 00 	mov    %edx,0x110(%r9)
  c5:	49 89 81 28 01 00 00 	mov    %rax,0x128(%r9)
  cc:	48 83 c4 28          	add    $0x28,%rsp
  d0:	c3                   	ret
  d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  d8:	49 8b 91 d8 00 00 00 	mov    0xd8(%r9),%rdx
  df:	4d 8b 91 d0 00 00 00 	mov    0xd0(%r9),%r10
  e6:	49 c7 81 d8 00 00 00 	movq   $0x0,0xd8(%r9)
  ed:	00 00 00 00
  f1:	49 c7 81 d0 00 00 00 	movq   $0x0,0xd0(%r9)
  f8:	00 00 00 00
  fc:	49 89 91 a8 00 00 00 	mov    %rdx,0xa8(%r9)
 103:	48 83 ea 03          	sub    $0x3,%rdx
 107:	41 c6 81 0d 01 00 00 	movb   $0x0,0x10d(%r9)
 10e:	00
 10f:	4d 89 91 a0 00 00 00 	mov    %r10,0xa0(%r9)
 116:	48 83 fa 08          	cmp    $0x8,%rdx
 11a:	77 34                	ja     150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 11c:	4c 8d 1d 00 00 00 00 	lea    0x0(%rip),%r11        # 123 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x123>
			11f: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_-0x4
 123:	49 63 14 93          	movslq (%r11,%rdx,4),%rdx
 127:	4c 01 da             	add    %r11,%rdx
 12a:	3e ff e2             	notrack jmp *%rdx
 12d:	48 ba 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rdx
 134:	4e 4e 45
 137:	49 39 12             	cmp    %rdx,(%r10)
 13a:	75 14                	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 13c:	ba 07 00 00 00       	mov    $0x7,%edx
 141:	66 41 81 7a 08 43 54 	cmpw   $0x5443,0x8(%r10)
 148:	74 0d                	je     157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 14a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 150:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
 157:	49 89 51 70          	mov    %rdx,0x70(%r9)
 15b:	41 88 b1 0b 01 00 00 	mov    %sil,0x10b(%r9)
 162:	40 80 ff 0a          	cmp    $0xa,%dil
 166:	0f 84 c9 00 00 00    	je     235 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x235>
 16c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 173 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x173>
			16f: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 173:	49 c7 41 68 00 00 00 	movq   $0x0,0x68(%r9)
 17a:	00
 17b:	49 89 79 60          	mov    %rdi,0x60(%r9)
 17f:	4c 39 c0             	cmp    %r8,%rax
 182:	0f 83 fd fe ff ff    	jae    85 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x85>
 188:	48 8d 79 02          	lea    0x2(%rcx),%rdi
 18c:	80 79 01 0a          	cmpb   $0xa,0x1(%rcx)
 190:	0f 84 9e 02 00 00    	je     434 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x434>
 196:	49 2b 81 20 01 00 00 	sub    0x120(%r9),%rax
 19d:	49 89 b9 28 01 00 00 	mov    %rdi,0x128(%r9)
 1a4:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 1ab:	00 00 00
 1ae:	49 89 91 10 01 00 00 	mov    %rdx,0x110(%r9)
 1b5:	49 89 81 18 01 00 00 	mov    %rax,0x118(%r9)
 1bc:	48 89 f8             	mov    %rdi,%rax
 1bf:	e9 c1 fe ff ff       	jmp    85 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x85>
 1c4:	0f 1f 40 00          	nopl   0x0(%rax)
 1c8:	48 29 d0             	sub    %rdx,%rax
 1cb:	49 89 81 00 01 00 00 	mov    %rax,0x100(%r9)
 1d2:	41 80 b9 0d 01 00 00 	cmpb   $0x0,0x10d(%r9)
 1d9:	00
 1da:	0f 85 90 00 00 00    	jne    270 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x270>
 1e0:	49 8b 81 d8 00 00 00 	mov    0xd8(%r9),%rax
 1e7:	48 85 c0             	test   %rax,%rax
 1ea:	75 07                	jne    1f3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1f3>
 1ec:	49 89 b1 d0 00 00 00 	mov    %rsi,0xd0(%r9)
 1f3:	48 01 d0             	add    %rdx,%rax
 1f6:	49 89 81 d8 00 00 00 	mov    %rax,0xd8(%r9)
 1fd:	e9 39 fe ff ff       	jmp    3b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3b>
 202:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 208:	48 01 c6             	add    %rax,%rsi
 20b:	ba 03 00 00 00       	mov    $0x3,%edx
 210:	41 c7 81 14 01 00 00 	movl   $0xd,0x114(%r9)
 217:	0d 00 00 00
 21b:	48 89 f0             	mov    %rsi,%rax
 21e:	49 2b 81 20 01 00 00 	sub    0x120(%r9),%rax
 225:	49 89 81 18 01 00 00 	mov    %rax,0x118(%r9)
 22c:	48 8d 46 01          	lea    0x1(%rsi),%rax
 230:	e9 89 fe ff ff       	jmp    be <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xbe>
 235:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 23c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x23c>
			238: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 23c:	49 c7 41 68 00 00 00 	movq   $0x0,0x68(%r9)
 243:	00
 244:	49 89 79 60          	mov    %rdi,0x60(%r9)
 248:	4c 39 c0             	cmp    %r8,%rax
 24b:	0f 83 34 fe ff ff    	jae    85 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x85>
 251:	4c 89 c2             	mov    %r8,%rdx
 254:	48 89 c6             	mov    %rax,%rsi
 257:	4c 89 cf             	mov    %r9,%rdi
 25a:	48 83 c4 28          	add    $0x28,%rsp
 25e:	e9 00 00 00 00       	jmp    263 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x263>
			25f: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 263:	4c 89 c0             	mov    %r8,%rax
 266:	48 83 c4 28          	add    $0x28,%rsp
 26a:	c3                   	ret
 26b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 270:	49 8b 79 48          	mov    0x48(%r9),%rdi
 274:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
 279:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
 27e:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
 283:	48 89 14 24          	mov    %rdx,(%rsp)
 287:	e8 00 00 00 00       	call   28c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x28c>
			288: R_X86_64_PLT32	memcpy-0x4
 28c:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 291:	48 8b 14 24          	mov    (%rsp),%rdx
 295:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
 29a:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 29f:	49 8b 81 d8 00 00 00 	mov    0xd8(%r9),%rax
 2a6:	49 01 51 48          	add    %rdx,0x48(%r9)
 2aa:	48 01 d0             	add    %rdx,%rax
 2ad:	49 89 81 d8 00 00 00 	mov    %rax,0xd8(%r9)
 2b4:	e9 82 fd ff ff       	jmp    3b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3b>
 2b9:	41 81 3a 43 4f 4d 4d 	cmpl   $0x4d4d4f43,(%r10)
 2c0:	0f 85 8a fe ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 2c6:	ba 04 00 00 00       	mov    $0x4,%edx
 2cb:	66 41 81 7a 04 49 54 	cmpw   $0x5449,0x4(%r10)
 2d2:	0f 85 78 fe ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 2d8:	e9 7a fe ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 2dd:	41 0f b6 12          	movzbl (%r10),%edx
 2e1:	83 fa 43             	cmp    $0x43,%edx
 2e4:	0f 84 ac 01 00 00    	je     496 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x496>
 2ea:	83 fa 4d             	cmp    $0x4d,%edx
 2ed:	0f 84 cd 01 00 00    	je     4c0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4c0>
 2f3:	83 fa 52             	cmp    $0x52,%edx
 2f6:	0f 85 54 fe ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 2fc:	41 81 3a 52 45 43 45 	cmpl   $0x45434552,(%r10)
 303:	0f 85 47 fe ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 309:	ba 0b 00 00 00       	mov    $0xb,%edx
 30e:	41 81 7a 03 45 49 50 	cmpl   $0x54504945,0x3(%r10)
 315:	54
 316:	0f 85 34 fe ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 31c:	e9 36 fe ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 321:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 328:	48 ba 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rdx
 32f:	43 54 45
 332:	49 39 12             	cmp    %rdx,(%r10)
 335:	0f 84 41 01 00 00    	je     47c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x47c>
 33b:	48 ba 53 55 42 53 43 	movabs $0x4249524353425553,%rdx
 342:	52 49 42
 345:	49 39 12             	cmp    %rdx,(%r10)
 348:	0f 85 02 fe ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 34e:	ba 0e 00 00 00       	mov    $0xe,%edx
 353:	41 80 7a 08 45       	cmpb   $0x45,0x8(%r10)
 358:	0f 85 f2 fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 35e:	e9 f4 fd ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 363:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 368:	45 8b 12             	mov    (%r10),%r10d
 36b:	ba 0a 00 00 00       	mov    $0xa,%edx
 370:	41 81 fa 4e 41 43 4b 	cmp    $0x4b43414e,%r10d
 377:	0f 84 da fd ff ff    	je     157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 37d:	41 81 fa 53 45 4e 44 	cmp    $0x444e4553,%r10d
 384:	ba 0c 00 00 00       	mov    $0xc,%edx
 389:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
 390:	49 0f 45 d2          	cmovne %r10,%rdx
 394:	e9 be fd ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 399:	41 0f b6 12          	movzbl (%r10),%edx
 39d:	83 fa 41             	cmp    $0x41,%edx
 3a0:	0f 84 b4 00 00 00    	je     45a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x45a>
 3a6:	83 fa 42             	cmp    $0x42,%edx
 3a9:	0f 84 36 01 00 00    	je     4e5 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4e5>
 3af:	83 fa 45             	cmp    $0x45,%edx
 3b2:	0f 84 4f 01 00 00    	je     507 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x507>
 3b8:	83 fa 53             	cmp    $0x53,%edx
 3bb:	0f 85 8f fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 3c1:	41 81 3a 53 54 4f 4d 	cmpl   $0x4d4f5453,(%r10)
 3c8:	0f 85 82 fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 3ce:	ba 0d 00 00 00       	mov    $0xd,%edx
 3d3:	41 80 7a 04 50       	cmpb   $0x50,0x4(%r10)
 3d8:	0f 85 72 fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 3de:	e9 74 fd ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 3e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 3e8:	48 ba 55 4e 53 55 42 	movabs $0x5243534255534e55,%rdx
 3ef:	53 43 52
 3f2:	49 39 12             	cmp    %rdx,(%r10)
 3f5:	0f 85 55 fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 3fb:	ba 0f 00 00 00       	mov    $0xf,%edx
 400:	41 81 7a 07 52 49 42 	cmpl   $0x45424952,0x7(%r10)
 407:	45
 408:	0f 85 42 fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 40e:	e9 44 fd ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 413:	66 41 81 3a 41 43    	cmpw   $0x4341,(%r10)
 419:	0f 85 31 fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 41f:	ba 02 00 00 00       	mov    $0x2,%edx
 424:	41 80 7a 02 4b       	cmpb   $0x4b,0x2(%r10)
 429:	0f 85 21 fd ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 42f:	e9 23 fd ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 434:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 43b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x43b>
			437: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 43b:	49 89 41 60          	mov    %rax,0x60(%r9)
 43f:	4c 39 c7             	cmp    %r8,%rdi
 442:	0f 83 74 fd ff ff    	jae    1bc <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1bc>
 448:	48 89 fe             	mov    %rdi,%rsi
 44b:	4c 89 c2             	mov    %r8,%rdx
 44e:	4c 89 cf             	mov    %r9,%rdi
 451:	48 83 c4 28          	add    $0x28,%rsp
 455:	e9 00 00 00 00       	jmp    45a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x45a>
			456: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 45a:	41 81 3a 41 42 4f 52 	cmpl   $0x524f4241,(%r10)
 461:	0f 85 e9 fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 467:	ba 01 00 00 00       	mov    $0x1,%edx
 46c:	41 80 7a 04 54       	cmpb   $0x54,0x4(%r10)
 471:	0f 85 d9 fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 477:	e9 db fc ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 47c:	41 80 7a 08 44       	cmpb   $0x44,0x8(%r10)
 481:	0f 85 b4 fe ff ff    	jne    33b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x33b>
 487:	be 01 00 00 00       	mov    $0x1,%esi
 48c:	ba 06 00 00 00       	mov    $0x6,%edx
 491:	e9 c1 fc ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 496:	41 81 3a 43 4f 4e 4e 	cmpl   $0x4e4e4f43,(%r10)
 49d:	0f 85 ad fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 4a3:	41 81 7a 03 4e 45 43 	cmpl   $0x5443454e,0x3(%r10)
 4aa:	54
 4ab:	0f 85 9f fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 4b1:	be 01 00 00 00       	mov    $0x1,%esi
 4b6:	ba 05 00 00 00       	mov    $0x5,%edx
 4bb:	e9 97 fc ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 4c0:	41 81 3a 4d 45 53 53 	cmpl   $0x5353454d,(%r10)
 4c7:	0f 85 83 fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 4cd:	ba 09 00 00 00       	mov    $0x9,%edx
 4d2:	41 81 7a 03 53 41 47 	cmpl   $0x45474153,0x3(%r10)
 4d9:	45
 4da:	0f 85 70 fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 4e0:	e9 72 fc ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 4e5:	41 81 3a 42 45 47 49 	cmpl   $0x49474542,(%r10)
 4ec:	0f 85 5e fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 4f2:	ba 03 00 00 00       	mov    $0x3,%edx
 4f7:	41 80 7a 04 4e       	cmpb   $0x4e,0x4(%r10)
 4fc:	0f 85 4e fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 502:	e9 50 fc ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>
 507:	41 81 3a 45 52 52 4f 	cmpl   $0x4f525245,(%r10)
 50e:	0f 85 3c fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 514:	ba 08 00 00 00       	mov    $0x8,%edx
 519:	41 80 7a 04 52       	cmpb   $0x52,0x4(%r10)
 51e:	0f 85 2c fc ff ff    	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
 524:	e9 2e fc ff ff       	jmp    157 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x157>

0000000000000000 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 39 d6             	cmp    %rdx,%rsi
   7:	0f 83 52 01 00 00    	jae    15f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x15f>
   d:	0f b6 06             	movzbl (%rsi),%eax
  10:	3c 0a                	cmp    $0xa,%al
  12:	0f 84 50 01 00 00    	je     168 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x168>
  18:	3c 0d                	cmp    $0xd,%al
  1a:	0f 84 f0 00 00 00    	je     110 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x110>
  20:	83 e8 41             	sub    $0x41,%eax
  23:	3c 19                	cmp    $0x19,%al
  25:	0f 87 b5 00 00 00    	ja     e0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xe0>
  2b:	48 8b 07             	mov    (%rdi),%rax
  2e:	48 39 87 e0 00 00 00 	cmp    %rax,0xe0(%rdi)
  35:	0f 84 45 01 00 00    	je     180 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x180>
  3b:	48 8b 4f 48          	mov    0x48(%rdi),%rcx
  3f:	31 c0                	xor    %eax,%eax
  41:	66 0f ef c0          	pxor   %xmm0,%xmm0
  45:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
  4c:	00 00 00 00
  50:	66 89 87 0c 01 00 00 	mov    %ax,0x10c(%rdi)
  57:	48 89 c8             	mov    %rcx,%rax
  5a:	48 2b 47 40          	sub    0x40(%rdi),%rax
  5e:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
  65:	00 00 00 00
  69:	48 89 87 f8 00 00 00 	mov    %rax,0xf8(%rdi)
  70:	48 8b 47 50          	mov    0x50(%rdi),%rax
  74:	0f 11 47 70          	movups %xmm0,0x70(%rdi)
  78:	48 29 c8             	sub    %rcx,%rax
  7b:	0f 11 87 80 00 00 00 	movups %xmm0,0x80(%rdi)
  82:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
  89:	48 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%rax
  90:	0f 11 87 90 00 00 00 	movups %xmm0,0x90(%rdi)
  97:	48 89 87 f0 00 00 00 	mov    %rax,0xf0(%rdi)
  9e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a5 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xa5>
			a1: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
  a5:	0f 11 87 a0 00 00 00 	movups %xmm0,0xa0(%rdi)
  ac:	0f 11 87 b0 00 00 00 	movups %xmm0,0xb0(%rdi)
  b3:	f3 0f 6f 87 d0 00 00 	movdqu 0xd0(%rdi),%xmm0
  ba:	00
  bb:	c7 87 08 01 00 00 01 	movl   $0x1,0x108(%rdi)
  c2:	00 00 00
  c5:	48 89 47 60          	mov    %rax,0x60(%rdi)
  c9:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  d0:	00
  d1:	0f 11 87 c0 00 00 00 	movups %xmm0,0xc0(%rdi)
  d8:	e9 00 00 00 00       	jmp    dd <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xdd>
			d9: R_X86_64_PLT32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
  dd:	0f 1f 00             	nopl   (%rax)
  e0:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
  e7:	00 00 00
  ea:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  f1:	48 89 f0             	mov    %rsi,%rax
  f4:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  fb:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 102:	48 8d 46 01          	lea    0x1(%rsi),%rax
 106:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 10d:	c3                   	ret
 10e:	66 90                	xchg   %ax,%ax
 110:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 117 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x117>
			113: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
 117:	48 8d 46 01          	lea    0x1(%rsi),%rax
 11b:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 122:	00
 123:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 127:	48 39 d0             	cmp    %rdx,%rax
 12a:	73 36                	jae    162 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x162>
 12c:	0f b6 4e 01          	movzbl 0x1(%rsi),%ecx
 130:	48 83 c6 02          	add    $0x2,%rsi
 134:	80 f9 0a             	cmp    $0xa,%cl
 137:	74 57                	je     190 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x190>
 139:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 140:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 147:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 14e:	00 00 00
 151:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
 158:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 15f:	48 89 f0             	mov    %rsi,%rax
 162:	c3                   	ret
 163:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 168:	48 83 c6 01          	add    $0x1,%rsi
 16c:	48 39 f2             	cmp    %rsi,%rdx
 16f:	0f 85 98 fe ff ff    	jne    d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd>
 175:	48 89 d0             	mov    %rdx,%rax
 178:	c3                   	ret
 179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 180:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
 187:	00 00 00
 18a:	48 89 f0             	mov    %rsi,%rax
 18d:	c3                   	ret
 18e:	66 90                	xchg   %ax,%ax
 190:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 197 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x197>
			193: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 197:	48 89 47 60          	mov    %rax,0x60(%rdi)
 19b:	48 39 d6             	cmp    %rdx,%rsi
 19e:	0f 82 69 fe ff ff    	jb     d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd>
 1a4:	eb b9                	jmp    15f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x15f>

0000000000000000 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 83 ec 28          	sub    $0x28,%rsp
   8:	48 89 f1             	mov    %rsi,%rcx
   b:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  10:	48 89 fb             	mov    %rdi,%rbx
  13:	48 89 6c 24 18       	mov    %rbp,0x18(%rsp)
  18:	48 89 d5             	mov    %rdx,%rbp
  1b:	80 3e 00             	cmpb   $0x0,(%rsi)
  1e:	75 30                	jne    50 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x50>
  20:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 27 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x27>
			23: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  27:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  2e:	00
  2f:	48 89 47 60          	mov    %rax,0x60(%rdi)
  33:	48 39 d6             	cmp    %rdx,%rsi
  36:	0f 82 cc 00 00 00    	jb     108 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x108>
  3c:	48 89 f0             	mov    %rsi,%rax
  3f:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  44:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
  49:	48 83 c4 28          	add    $0x28,%rsp
  4d:	c3                   	ret
  4e:	66 90                	xchg   %ax,%ax
  50:	48 89 d0             	mov    %rdx,%rax
  53:	48 89 cf             	mov    %rcx,%rdi
  56:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
  5b:	48 29 f0             	sub    %rsi,%rax
  5e:	31 f6                	xor    %esi,%esi
  60:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  65:	48 89 c2             	mov    %rax,%rdx
  68:	49 89 c6             	mov    %rax,%r14
  6b:	e8 00 00 00 00       	call   70 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x70>
			6c: R_X86_64_PLT32	memchr-0x4
  70:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  75:	48 85 c0             	test   %rax,%rax
  78:	0f 84 1a 01 00 00    	je     198 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x198>
  7e:	48 89 c6             	mov    %rax,%rsi
  81:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  85:	48 2b 93 90 00 00 00 	sub    0x90(%rbx),%rdx
  8c:	48 29 ce             	sub    %rcx,%rsi
  8f:	48 39 f2             	cmp    %rsi,%rdx
  92:	0f 82 b8 00 00 00    	jb     150 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x150>
  98:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 9f <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x9f>
			9b: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  9f:	48 89 8b b8 00 00 00 	mov    %rcx,0xb8(%rbx)
  a6:	48 89 b3 98 00 00 00 	mov    %rsi,0x98(%rbx)
  ad:	48 89 7b 60          	mov    %rdi,0x60(%rbx)
  b1:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
  b8:	00
  b9:	48 39 e8             	cmp    %rbp,%rax
  bc:	0f 83 bd 00 00 00    	jae    17f <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x17f>
  c2:	48 8d 48 01          	lea    0x1(%rax),%rcx
  c6:	80 38 00             	cmpb   $0x0,(%rax)
  c9:	0f 84 49 01 00 00    	je     218 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x218>
  cf:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
  d6:	48 89 8b 28 01 00 00 	mov    %rcx,0x128(%rbx)
  dd:	48 ba 03 00 00 00 0b 	movabs $0xb00000003,%rdx
  e4:	00 00 00
  e7:	48 89 93 10 01 00 00 	mov    %rdx,0x110(%rbx)
  ee:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
  f5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
  fa:	48 89 c8             	mov    %rcx,%rax
  fd:	e9 3d ff ff ff       	jmp    3f <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x3f>
 102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 108:	48 8d 46 01          	lea    0x1(%rsi),%rax
 10c:	80 3e 00             	cmpb   $0x0,(%rsi)
 10f:	0f 84 b3 00 00 00    	je     1c8 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x1c8>
 115:	48 2b 8f 20 01 00 00 	sub    0x120(%rdi),%rcx
 11c:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 123:	48 ba 03 00 00 00 0b 	movabs $0xb00000003,%rdx
 12a:	00 00 00
 12d:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
 134:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
 139:	48 89 8f 18 01 00 00 	mov    %rcx,0x118(%rdi)
 140:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
 145:	48 83 c4 28          	add    $0x28,%rsp
 149:	c3                   	ret
 14a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 150:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
 157:	00 00 00
 15a:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 161:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
 165:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 16c:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 173:	48 8d 44 11 01       	lea    0x1(%rcx,%rdx,1),%rax
 178:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 17f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
 184:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
 189:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
 18e:	48 83 c4 28          	add    $0x28,%rsp
 192:	c3                   	ret
 193:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 198:	48 8b 53 20          	mov    0x20(%rbx),%rdx
 19c:	48 2b 93 90 00 00 00 	sub    0x90(%rbx),%rdx
 1a3:	4c 39 f2             	cmp    %r14,%rdx
 1a6:	72 a8                	jb     150 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x150>
 1a8:	4c 89 b3 98 00 00 00 	mov    %r14,0x98(%rbx)
 1af:	48 89 e8             	mov    %rbp,%rax
 1b2:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
 1b7:	48 89 8b b8 00 00 00 	mov    %rcx,0xb8(%rbx)
 1be:	e9 7c fe ff ff       	jmp    3f <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x3f>
 1c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1c8:	be 01 00 00 00       	mov    $0x1,%esi
 1cd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 1d2:	e8 00 00 00 00       	call   1d7 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x1d7>
			1d3: R_X86_64_PLT32	stomptalk::parser::publish(bool)-0x4
 1d7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1de <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x1de>
			1da: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 1de:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 1e5:	00
 1e6:	48 89 47 60          	mov    %rax,0x60(%rdi)
 1ea:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 1ef:	48 39 e8             	cmp    %rbp,%rax
 1f2:	0f 83 47 fe ff ff    	jae    3f <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x3f>
 1f8:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
 1fd:	48 89 ea             	mov    %rbp,%rdx
 200:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
 205:	48 89 c6             	mov    %rax,%rsi
 208:	48 83 c4 28          	add    $0x28,%rsp
 20c:	e9 00 00 00 00       	jmp    211 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x211>
			20d: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 211:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 218:	be 01 00 00 00       	mov    $0x1,%esi
 21d:	48 89 df             	mov    %rbx,%rdi
 220:	e8 00 00 00 00       	call   225 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x225>
			221: R_X86_64_PLT32	stomptalk::parser::publish(bool)-0x4
 225:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 22c <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x22c>
			228: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 22c:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 233:	00
 234:	48 89 43 60          	mov    %rax,0x60(%rbx)
 238:	48 39 e9             	cmp    %rbp,%rcx
 23b:	0f 83 b4 fe ff ff    	jae    f5 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xf5>
 241:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
 246:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
 24b:	48 89 ea             	mov    %rbp,%rdx
 24e:	48 89 ce             	mov    %rcx,%rsi
 251:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
 256:	48 83 c4 28          	add    $0x28,%rsp
 25a:	e9 00 00 00 00       	jmp    25f <.LC87+0x1c>
			25b: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
