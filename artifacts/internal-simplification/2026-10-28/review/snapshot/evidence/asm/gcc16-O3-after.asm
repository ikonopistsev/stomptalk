0000000000000430 <stomptalk::parser::own_metadata()>:
     430:	f3 0f 1e fa          	endbr64
     434:	48 83 ec 28          	sub    $0x28,%rsp
     438:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
     43d:	48 8b af a8 00 00 00 	mov    0xa8(%rdi),%rbp
     444:	48 89 1c 24          	mov    %rbx,(%rsp)
     448:	48 89 fb             	mov    %rdi,%rbx
     44b:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
     450:	48 85 ed             	test   %rbp,%rbp
     453:	74 18                	je     46d <stomptalk::parser::own_metadata()+0x3d>
     455:	48 8b b7 a0 00 00 00 	mov    0xa0(%rdi),%rsi
     45c:	48 89 f0             	mov    %rsi,%rax
     45f:	48 2b 47 40          	sub    0x40(%rdi),%rax
     463:	48 3b 47 10          	cmp    0x10(%rdi),%rax
     467:	0f 83 03 01 00 00    	jae    570 <stomptalk::parser::own_metadata()+0x140>
     46d:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     474:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     47b:	0f 83 97 00 00 00    	jae    518 <stomptalk::parser::own_metadata()+0xe8>
     481:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
     486:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
     48b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     490:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     494:	4d 89 e6             	mov    %r12,%r14
     497:	49 c1 e6 05          	shl    $0x5,%r14
     49b:	4c 01 f5             	add    %r14,%rbp
     49e:	4c 8b 6d 08          	mov    0x8(%rbp),%r13
     4a2:	4d 85 ed             	test   %r13,%r13
     4a5:	74 2c                	je     4d3 <stomptalk::parser::own_metadata()+0xa3>
     4a7:	48 8b 75 00          	mov    0x0(%rbp),%rsi
     4ab:	48 89 f0             	mov    %rsi,%rax
     4ae:	48 2b 43 40          	sub    0x40(%rbx),%rax
     4b2:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     4b6:	72 1b                	jb     4d3 <stomptalk::parser::own_metadata()+0xa3>
     4b8:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     4bc:	4c 89 ea             	mov    %r13,%rdx
     4bf:	e8 00 00 00 00       	call   4c4 <stomptalk::parser::own_metadata()+0x94>
			4c0: R_X86_64_PLT32	memcpy-0x4
     4c4:	4c 03 73 38          	add    0x38(%rbx),%r14
     4c8:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     4cc:	48 89 45 00          	mov    %rax,0x0(%rbp)
     4d0:	4c 89 f5             	mov    %r14,%rbp
     4d3:	4c 8b 6d 18          	mov    0x18(%rbp),%r13
     4d7:	4d 85 ed             	test   %r13,%r13
     4da:	74 25                	je     501 <stomptalk::parser::own_metadata()+0xd1>
     4dc:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     4e0:	48 89 f0             	mov    %rsi,%rax
     4e3:	48 2b 43 40          	sub    0x40(%rbx),%rax
     4e7:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     4eb:	72 14                	jb     501 <stomptalk::parser::own_metadata()+0xd1>
     4ed:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     4f1:	4c 89 ea             	mov    %r13,%rdx
     4f4:	e8 00 00 00 00       	call   4f9 <stomptalk::parser::own_metadata()+0xc9>
			4f5: R_X86_64_PLT32	memcpy-0x4
     4f9:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     4fd:	48 89 45 10          	mov    %rax,0x10(%rbp)
     501:	49 83 c4 01          	add    $0x1,%r12
     505:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     50c:	72 82                	jb     490 <stomptalk::parser::own_metadata()+0x60>
     50e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
     513:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
     518:	48 8b ab c8 00 00 00 	mov    0xc8(%rbx),%rbp
     51f:	48 85 ed             	test   %rbp,%rbp
     522:	74 14                	je     538 <stomptalk::parser::own_metadata()+0x108>
     524:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     52b:	48 89 f0             	mov    %rsi,%rax
     52e:	48 2b 43 40          	sub    0x40(%rbx),%rax
     532:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     536:	73 18                	jae    550 <stomptalk::parser::own_metadata()+0x120>
     538:	48 8b 1c 24          	mov    (%rsp),%rbx
     53c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
     541:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
     546:	48 83 c4 28          	add    $0x28,%rsp
     54a:	c3                   	ret
     54b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     550:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     554:	48 89 ea             	mov    %rbp,%rdx
     557:	e8 00 00 00 00       	call   55c <stomptalk::parser::own_metadata()+0x12c>
			558: R_X86_64_PLT32	memcpy-0x4
     55c:	48 01 6b 48          	add    %rbp,0x48(%rbx)
     560:	48 89 83 c0 00 00 00 	mov    %rax,0xc0(%rbx)
     567:	eb cf                	jmp    538 <stomptalk::parser::own_metadata()+0x108>
     569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     570:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
     574:	48 89 ea             	mov    %rbp,%rdx
     577:	e8 00 00 00 00       	call   57c <stomptalk::parser::own_metadata()+0x14c>
			578: R_X86_64_PLT32	memcpy-0x4
     57c:	48 01 6b 48          	add    %rbp,0x48(%rbx)
     580:	48 89 83 a0 00 00 00 	mov    %rax,0xa0(%rbx)
     587:	e9 e1 fe ff ff       	jmp    46d <stomptalk::parser::own_metadata()+0x3d>
     58c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000590 <stomptalk::parser::own_token()>:
     590:	f3 0f 1e fa          	endbr64
     594:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     59b:	74 03                	je     5a0 <stomptalk::parser::own_token()+0x10>
     59d:	c3                   	ret
     59e:	66 90                	xchg   %ax,%ax
     5a0:	53                   	push   %rbx
     5a1:	48 89 fb             	mov    %rdi,%rbx
     5a4:	48 83 ec 10          	sub    $0x10,%rsp
     5a8:	e8 00 00 00 00       	call   5ad <stomptalk::parser::own_token()+0x1d>
			5a9: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     5ad:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
     5b4:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     5b8:	48 85 d2             	test   %rdx,%rdx
     5bb:	75 1b                	jne    5d8 <stomptalk::parser::own_token()+0x48>
     5bd:	48 89 8b d0 00 00 00 	mov    %rcx,0xd0(%rbx)
     5c4:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     5cb:	48 83 c4 10          	add    $0x10,%rsp
     5cf:	5b                   	pop    %rbx
     5d0:	c3                   	ret
     5d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     5d8:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     5df:	48 89 cf             	mov    %rcx,%rdi
     5e2:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
     5e7:	e8 00 00 00 00       	call   5ec <stomptalk::parser::own_token()+0x5c>
			5e8: R_X86_64_PLT32	memcpy-0x4
     5ec:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
     5f1:	48 01 53 48          	add    %rdx,0x48(%rbx)
     5f5:	48 89 c1             	mov    %rax,%rcx
     5f8:	eb c3                	jmp    5bd <stomptalk::parser::own_token()+0x2d>
     5fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000920 <stomptalk::parser::finish_value(char const*)>:
     920:	f3 0f 1e fa          	endbr64
     924:	48 83 ec 30          	sub    $0x30,%rsp
     928:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     92f:	48 8b 97 d0 00 00 00 	mov    0xd0(%rdi),%rdx
     936:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
     93d:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
     944:	00 00 00 00
     948:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
     94f:	00 00 00 00
     953:	80 bf 0c 01 00 00 00 	cmpb   $0x0,0x10c(%rdi)
     95a:	75 6c                	jne    9c8 <stomptalk::parser::finish_value(char const*)+0xa8>
     95c:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
     963:	4c 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%r8
     96a:	48 8d 71 01          	lea    0x1(%rcx),%rsi
     96e:	48 c1 e1 05          	shl    $0x5,%rcx
     972:	48 03 4f 38          	add    0x38(%rdi),%rcx
     976:	48 89 b7 e8 00 00 00 	mov    %rsi,0xe8(%rdi)
     97d:	48 8b b7 c8 00 00 00 	mov    0xc8(%rdi),%rsi
     984:	48 89 41 18          	mov    %rax,0x18(%rcx)
     988:	b8 01 00 00 00       	mov    $0x1,%eax
     98d:	4c 89 01             	mov    %r8,(%rcx)
     990:	48 89 71 08          	mov    %rsi,0x8(%rcx)
     994:	48 89 51 10          	mov    %rdx,0x10(%rcx)
     998:	48 83 87 80 00 00 00 	addq   $0x1,0x80(%rdi)
     99f:	01
     9a0:	48 c7 87 c0 00 00 00 	movq   $0x0,0xc0(%rdi)
     9a7:	00 00 00 00
     9ab:	48 c7 87 c8 00 00 00 	movq   $0x0,0xc8(%rdi)
     9b2:	00 00 00 00
     9b6:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
     9bd:	48 83 c4 30          	add    $0x30,%rsp
     9c1:	c3                   	ret
     9c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     9c8:	49 89 c0             	mov    %rax,%r8
     9cb:	48 89 d1             	mov    %rdx,%rcx
     9ce:	48 83 f8 14          	cmp    $0x14,%rax
     9d2:	77 1e                	ja     9f2 <stomptalk::parser::finish_value(char const*)+0xd2>
     9d4:	eb 55                	jmp    a2b <stomptalk::parser::finish_value(char const*)+0x10b>
     9d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     9dd:	00 00 00
     9e0:	49 83 e8 01          	sub    $0x1,%r8
     9e4:	48 83 c1 01          	add    $0x1,%rcx
     9e8:	49 83 f8 14          	cmp    $0x14,%r8
     9ec:	0f 84 96 00 00 00    	je     a88 <stomptalk::parser::finish_value(char const*)+0x168>
     9f2:	80 39 30             	cmpb   $0x30,(%rcx)
     9f5:	74 e9                	je     9e0 <stomptalk::parser::finish_value(char const*)+0xc0>
     9f7:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
     9fe:	00 00 00
     a01:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     a08:	48 89 f0             	mov    %rsi,%rax
     a0b:	48 83 c6 01          	add    $0x1,%rsi
     a0f:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     a16:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     a1d:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     a24:	31 c0                	xor    %eax,%eax
     a26:	48 83 c4 30          	add    $0x30,%rsp
     a2a:	c3                   	ret
     a2b:	4c 8d 40 ff          	lea    -0x1(%rax),%r8
     a2f:	48 89 1c 24          	mov    %rbx,(%rsp)
     a33:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
     a38:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
     a3d:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
     a42:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
     a47:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
     a4c:	49 83 f8 13          	cmp    $0x13,%r8
     a50:	0f 87 48 21 00 00    	ja     2b9e <stomptalk::parser::finish_value(char const*)+0x227e>
     a56:	48 83 f8 12          	cmp    $0x12,%rax
     a5a:	0f 87 0a 21 00 00    	ja     2b6a <stomptalk::parser::finish_value(char const*)+0x224a>
     a60:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # a67 <stomptalk::parser::finish_value(char const*)+0x147>
			a63: R_X86_64_PC32	.rodata-0x4
     a67:	4c 0f be 02          	movsbq (%rdx),%r8
     a6b:	4d 63 0c 82          	movslq (%r10,%rax,4),%r9
     a6f:	49 83 e8 30          	sub    $0x30,%r8
     a73:	4d 01 d1             	add    %r10,%r9
     a76:	4c 89 c1             	mov    %r8,%rcx
     a79:	49 83 f8 09          	cmp    $0x9,%r8
     a7d:	3e 41 ff e1          	notrack jmp *%r9
     a81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     a88:	44 0f b6 01          	movzbl (%rcx),%r8d
     a8c:	41 83 e8 30          	sub    $0x30,%r8d
     a90:	41 83 f8 09          	cmp    $0x9,%r8d
     a94:	0f 87 5d ff ff ff    	ja     9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
     a9a:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
     a9f:	45 89 c4             	mov    %r8d,%r12d
     aa2:	44 0f b6 49 01       	movzbl 0x1(%rcx),%r9d
     aa7:	41 83 e9 30          	sub    $0x30,%r9d
     aab:	41 83 f9 09          	cmp    $0x9,%r9d
     aaf:	0f 87 8b 18 00 00    	ja     2340 <stomptalk::parser::finish_value(char const*)+0x1a20>
     ab5:	4f 8d 04 a4          	lea    (%r12,%r12,4),%r8
     ab9:	4f 8d 24 41          	lea    (%r9,%r8,2),%r12
     abd:	41 b9 02 00 00 00    	mov    $0x2,%r9d
     ac3:	4e 8d 04 09          	lea    (%rcx,%r9,1),%r8
     ac7:	4d 0f be 08          	movsbq (%r8),%r9
     acb:	49 83 e9 30          	sub    $0x30,%r9
     acf:	49 83 f9 09          	cmp    $0x9,%r9
     ad3:	0f 87 71 18 00 00    	ja     234a <stomptalk::parser::finish_value(char const*)+0x1a2a>
     ad9:	48 89 1c 24          	mov    %rbx,(%rsp)
     add:	49 0f be 48 01       	movsbq 0x1(%r8),%rcx
     ae2:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
     ae6:	48 83 fb 09          	cmp    $0x9,%rbx
     aea:	0f 87 64 18 00 00    	ja     2354 <stomptalk::parser::finish_value(char const*)+0x1a34>
     af0:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
     af5:	49 0f be 48 02       	movsbq 0x2(%r8),%rcx
     afa:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
     afe:	49 83 fe 09          	cmp    $0x9,%r14
     b02:	0f 87 5a 18 00 00    	ja     2362 <stomptalk::parser::finish_value(char const*)+0x1a42>
     b08:	4d 0f be 50 03       	movsbq 0x3(%r8),%r10
     b0d:	49 83 ea 30          	sub    $0x30,%r10
     b11:	49 83 fa 09          	cmp    $0x9,%r10
     b15:	0f 87 1f 19 00 00    	ja     243a <stomptalk::parser::finish_value(char const*)+0x1b1a>
     b1b:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
     b20:	49 0f be 48 04       	movsbq 0x4(%r8),%rcx
     b25:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
     b29:	49 83 ff 09          	cmp    $0x9,%r15
     b2d:	0f 87 ef 18 00 00    	ja     2422 <stomptalk::parser::finish_value(char const*)+0x1b02>
     b33:	4d 0f be 58 05       	movsbq 0x5(%r8),%r11
     b38:	49 83 eb 30          	sub    $0x30,%r11
     b3c:	49 83 fb 09          	cmp    $0x9,%r11
     b40:	0f 87 04 17 00 00    	ja     224a <stomptalk::parser::finish_value(char const*)+0x192a>
     b46:	49 0f be 48 06       	movsbq 0x6(%r8),%rcx
     b4b:	48 83 e9 30          	sub    $0x30,%rcx
     b4f:	48 83 f9 09          	cmp    $0x9,%rcx
     b53:	0f 87 b1 18 00 00    	ja     240a <stomptalk::parser::finish_value(char const*)+0x1aea>
     b59:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
     b5e:	48 bd 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rbp
     b65:	45 63 01
     b68:	4c 0f af cd          	imul   %rbp,%r9
     b6c:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
     b71:	4c 89 cd             	mov    %r9,%rbp
     b74:	49 b9 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r9
     b7b:	86 23 00
     b7e:	49 0f af d9          	imul   %r9,%rbx
     b82:	49 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r9
     b89:	8d 03 00
     b8c:	4d 0f af f1          	imul   %r9,%r14
     b90:	49 b9 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r9
     b97:	5a 00 00
     b9a:	4d 0f af d1          	imul   %r9,%r10
     b9e:	49 b9 00 a0 72 4e 18 	movabs $0x9184e72a000,%r9
     ba5:	09 00 00
     ba8:	4d 0f af f9          	imul   %r9,%r15
     bac:	49 89 dd             	mov    %rbx,%r13
     baf:	49 b9 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r9
     bb6:	00 00 00
     bb9:	4d 0f af d9          	imul   %r9,%r11
     bbd:	4c 89 74 24 b0       	mov    %r14,-0x50(%rsp)
     bc2:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
     bc9:	00 00 00
     bcc:	49 0f af c9          	imul   %r9,%rcx
     bd0:	4d 0f be 48 07       	movsbq 0x7(%r8),%r9
     bd5:	4c 89 54 24 b8       	mov    %r10,-0x48(%rsp)
     bda:	4c 89 7c 24 c0       	mov    %r15,-0x40(%rsp)
     bdf:	49 83 e9 30          	sub    $0x30,%r9
     be3:	4c 89 5c 24 c8       	mov    %r11,-0x38(%rsp)
     be8:	49 83 f9 09          	cmp    $0x9,%r9
     bec:	0f 87 09 18 00 00    	ja     23fb <stomptalk::parser::finish_value(char const*)+0x1adb>
     bf2:	49 ba 00 e4 0b 54 02 	movabs $0x2540be400,%r10
     bf9:	00 00 00
     bfc:	4d 0f af ca          	imul   %r10,%r9
     c00:	4d 0f be 50 08       	movsbq 0x8(%r8),%r10
     c05:	49 83 ea 30          	sub    $0x30,%r10
     c09:	49 83 fa 09          	cmp    $0x9,%r10
     c0d:	0f 87 d9 17 00 00    	ja     23ec <stomptalk::parser::finish_value(char const*)+0x1acc>
     c13:	4d 0f be 58 09       	movsbq 0x9(%r8),%r11
     c18:	4d 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r10
     c1f:	49 83 eb 30          	sub    $0x30,%r11
     c23:	49 83 fb 09          	cmp    $0x9,%r11
     c27:	0f 87 b0 17 00 00    	ja     23dd <stomptalk::parser::finish_value(char const*)+0x1abd>
     c2d:	49 69 db 00 e1 f5 05 	imul   $0x5f5e100,%r11,%rbx
     c34:	4d 0f be 58 0a       	movsbq 0xa(%r8),%r11
     c39:	49 83 eb 30          	sub    $0x30,%r11
     c3d:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
     c42:	49 83 fb 09          	cmp    $0x9,%r11
     c46:	0f 87 82 17 00 00    	ja     23ce <stomptalk::parser::finish_value(char const*)+0x1aae>
     c4c:	49 69 db 80 96 98 00 	imul   $0x989680,%r11,%rbx
     c53:	4d 0f be 58 0b       	movsbq 0xb(%r8),%r11
     c58:	49 83 eb 30          	sub    $0x30,%r11
     c5c:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
     c61:	49 83 fb 09          	cmp    $0x9,%r11
     c65:	0f 87 54 17 00 00    	ja     23bf <stomptalk::parser::finish_value(char const*)+0x1a9f>
     c6b:	49 69 db 40 42 0f 00 	imul   $0xf4240,%r11,%rbx
     c72:	4d 0f be 58 0c       	movsbq 0xc(%r8),%r11
     c77:	49 83 eb 30          	sub    $0x30,%r11
     c7b:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
     c80:	49 83 fb 09          	cmp    $0x9,%r11
     c84:	0f 87 26 17 00 00    	ja     23b0 <stomptalk::parser::finish_value(char const*)+0x1a90>
     c8a:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
     c91:	4d 0f be 58 0d       	movsbq 0xd(%r8),%r11
     c96:	49 83 eb 30          	sub    $0x30,%r11
     c9a:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
     c9f:	49 83 fb 09          	cmp    $0x9,%r11
     ca3:	0f 87 f8 16 00 00    	ja     23a1 <stomptalk::parser::finish_value(char const*)+0x1a81>
     ca9:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
     cb0:	4d 0f be 58 0e       	movsbq 0xe(%r8),%r11
     cb5:	49 83 eb 30          	sub    $0x30,%r11
     cb9:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
     cbe:	49 83 fb 09          	cmp    $0x9,%r11
     cc2:	0f 87 bc 16 00 00    	ja     2384 <stomptalk::parser::finish_value(char const*)+0x1a64>
     cc8:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
     ccf:	4d 0f be 58 0f       	movsbq 0xf(%r8),%r11
     cd4:	49 83 eb 30          	sub    $0x30,%r11
     cd8:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
     cdd:	49 83 fb 09          	cmp    $0x9,%r11
     ce1:	0f 87 8e 16 00 00    	ja     2375 <stomptalk::parser::finish_value(char const*)+0x1a55>
     ce7:	4d 6b f3 64          	imul   $0x64,%r11,%r14
     ceb:	4d 0f be 58 10       	movsbq 0x10(%r8),%r11
     cf0:	49 83 eb 30          	sub    $0x30,%r11
     cf4:	49 83 fb 09          	cmp    $0x9,%r11
     cf8:	0f 87 94 16 00 00    	ja     2392 <stomptalk::parser::finish_value(char const*)+0x1a72>
     cfe:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
     d05:	00 00 80
     d08:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
     d0c:	4d 0f be 58 11       	movsbq 0x11(%r8),%r11
     d11:	49 83 eb 30          	sub    $0x30,%r11
     d15:	49 83 fb 0a          	cmp    $0xa,%r11
     d19:	4d 0f 43 df          	cmovae %r15,%r11
     d1d:	4d 8d 3c 5b          	lea    (%r11,%rbx,2),%r15
     d21:	4d 01 fe             	add    %r15,%r14
     d24:	48 8b 5c 24 f8       	mov    -0x8(%rsp),%rbx
     d29:	4c 01 f3             	add    %r14,%rbx
     d2c:	4c 8b 5c 24 f0       	mov    -0x10(%rsp),%r11
     d31:	49 01 db             	add    %rbx,%r11
     d34:	48 8b 5c 24 e8       	mov    -0x18(%rsp),%rbx
     d39:	49 01 db             	add    %rbx,%r11
     d3c:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
     d41:	49 01 db             	add    %rbx,%r11
     d44:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
     d49:	49 01 db             	add    %rbx,%r11
     d4c:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
     d51:	49 01 db             	add    %rbx,%r11
     d54:	4d 01 da             	add    %r11,%r10
     d57:	4d 01 d1             	add    %r10,%r9
     d5a:	4c 01 c9             	add    %r9,%rcx
     d5d:	48 03 4c 24 c8       	add    -0x38(%rsp),%rcx
     d62:	48 03 4c 24 c0       	add    -0x40(%rsp),%rcx
     d67:	49 89 e9             	mov    %rbp,%r9
     d6a:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
     d6f:	48 03 4c 24 b0       	add    -0x50(%rsp),%rcx
     d74:	4c 01 e9             	add    %r13,%rcx
     d77:	49 01 c9             	add    %rcx,%r9
     d7a:	0f 88 75 15 00 00    	js     22f5 <stomptalk::parser::finish_value(char const*)+0x19d5>
     d80:	49 83 fc 12          	cmp    $0x12,%r12
     d84:	0f 87 49 15 00 00    	ja     22d3 <stomptalk::parser::finish_value(char const*)+0x19b3>
     d8a:	0f 85 29 15 00 00    	jne    22b9 <stomptalk::parser::finish_value(char const*)+0x1999>
     d90:	48 b9 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rcx
     d97:	27 33 06
     d9a:	4c 39 c9             	cmp    %r9,%rcx
     d9d:	0f 83 16 15 00 00    	jae    22b9 <stomptalk::parser::finish_value(char const*)+0x1999>
     da3:	48 8b 1c 24          	mov    (%rsp),%rbx
     da7:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
     dac:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
     db1:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
     db6:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
     dbb:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
     dc0:	e9 32 fc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
     dc5:	0f 87 22 21 00 00    	ja     2eed <stomptalk::parser::finish_value(char const*)+0x25cd>
     dcb:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
     dd0:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
     dd4:	48 83 fb 09          	cmp    $0x9,%rbx
     dd8:	0f 87 ed 20 00 00    	ja     2ecb <stomptalk::parser::finish_value(char const*)+0x25ab>
     dde:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
     de3:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
     de7:	49 83 fe 09          	cmp    $0x9,%r14
     deb:	0f 87 b8 20 00 00    	ja     2ea9 <stomptalk::parser::finish_value(char const*)+0x2589>
     df1:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
     df6:	49 83 eb 30          	sub    $0x30,%r11
     dfa:	49 83 fb 09          	cmp    $0x9,%r11
     dfe:	0f 87 83 20 00 00    	ja     2e87 <stomptalk::parser::finish_value(char const*)+0x2567>
     e04:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
     e09:	49 83 ea 30          	sub    $0x30,%r10
     e0d:	49 83 fa 09          	cmp    $0x9,%r10
     e11:	0f 87 4e 20 00 00    	ja     2e65 <stomptalk::parser::finish_value(char const*)+0x2545>
     e17:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
     e1c:	49 83 e9 30          	sub    $0x30,%r9
     e20:	49 83 f9 09          	cmp    $0x9,%r9
     e24:	0f 87 19 20 00 00    	ja     2e43 <stomptalk::parser::finish_value(char const*)+0x2523>
     e2a:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
     e2f:	48 83 e9 30          	sub    $0x30,%rcx
     e33:	48 83 f9 09          	cmp    $0x9,%rcx
     e37:	0f 87 e4 1f 00 00    	ja     2e21 <stomptalk::parser::finish_value(char const*)+0x2501>
     e3d:	49 bf 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%r15
     e44:	45 63 01
     e47:	4d 0f af c7          	imul   %r15,%r8
     e4b:	4c 89 c5             	mov    %r8,%rbp
     e4e:	49 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r8
     e55:	86 23 00
     e58:	49 0f af d8          	imul   %r8,%rbx
     e5c:	49 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r8
     e63:	8d 03 00
     e66:	4d 0f af f0          	imul   %r8,%r14
     e6a:	49 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r8
     e71:	5a 00 00
     e74:	4d 0f af d8          	imul   %r8,%r11
     e78:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
     e7f:	09 00 00
     e82:	4d 0f af d0          	imul   %r8,%r10
     e86:	49 89 dd             	mov    %rbx,%r13
     e89:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
     e90:	00 00 00
     e93:	4d 0f af c8          	imul   %r8,%r9
     e97:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
     e9e:	00 00 00
     ea1:	49 0f af c8          	imul   %r8,%rcx
     ea5:	4d 89 dc             	mov    %r11,%r12
     ea8:	4c 89 54 24 b0       	mov    %r10,-0x50(%rsp)
     ead:	4c 89 4c 24 b8       	mov    %r9,-0x48(%rsp)
     eb2:	48 89 4c 24 c0       	mov    %rcx,-0x40(%rsp)
     eb7:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
     ebc:	48 83 e9 30          	sub    $0x30,%rcx
     ec0:	48 83 f9 09          	cmp    $0x9,%rcx
     ec4:	0f 87 bf 15 00 00    	ja     2489 <stomptalk::parser::finish_value(char const*)+0x1b69>
     eca:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
     ed1:	00 00 00
     ed4:	49 0f af c8          	imul   %r8,%rcx
     ed8:	48 89 4c 24 c8       	mov    %rcx,-0x38(%rsp)
     edd:	48 0f be 4a 08       	movsbq 0x8(%rdx),%rcx
     ee2:	48 83 e9 30          	sub    $0x30,%rcx
     ee6:	48 83 f9 09          	cmp    $0x9,%rcx
     eea:	0f 87 88 20 00 00    	ja     2f78 <stomptalk::parser::finish_value(char const*)+0x2658>
     ef0:	4c 0f be 42 09       	movsbq 0x9(%rdx),%r8
     ef5:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
     efc:	49 83 e8 30          	sub    $0x30,%r8
     f00:	49 83 f8 09          	cmp    $0x9,%r8
     f04:	0f 87 5f 20 00 00    	ja     2f69 <stomptalk::parser::finish_value(char const*)+0x2649>
     f0a:	4c 0f be 4a 0a       	movsbq 0xa(%rdx),%r9
     f0f:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
     f16:	49 83 e9 30          	sub    $0x30,%r9
     f1a:	49 83 f9 09          	cmp    $0x9,%r9
     f1e:	0f 87 36 20 00 00    	ja     2f5a <stomptalk::parser::finish_value(char const*)+0x263a>
     f24:	4c 0f be 52 0b       	movsbq 0xb(%rdx),%r10
     f29:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
     f30:	49 83 ea 30          	sub    $0x30,%r10
     f34:	49 83 fa 09          	cmp    $0x9,%r10
     f38:	0f 87 0d 20 00 00    	ja     2f4b <stomptalk::parser::finish_value(char const*)+0x262b>
     f3e:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
     f43:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
     f4a:	49 83 eb 30          	sub    $0x30,%r11
     f4e:	49 83 fb 09          	cmp    $0x9,%r11
     f52:	0f 87 e4 1f 00 00    	ja     2f3c <stomptalk::parser::finish_value(char const*)+0x261c>
     f58:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
     f5f:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
     f64:	49 83 eb 30          	sub    $0x30,%r11
     f68:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
     f6d:	49 83 fb 09          	cmp    $0x9,%r11
     f71:	0f 87 b6 1f 00 00    	ja     2f2d <stomptalk::parser::finish_value(char const*)+0x260d>
     f77:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
     f7e:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
     f83:	49 83 eb 30          	sub    $0x30,%r11
     f87:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
     f8c:	49 83 fb 09          	cmp    $0x9,%r11
     f90:	0f 87 88 1f 00 00    	ja     2f1e <stomptalk::parser::finish_value(char const*)+0x25fe>
     f96:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
     f9d:	4c 0f be 5a 0f       	movsbq 0xf(%rdx),%r11
     fa2:	49 83 eb 30          	sub    $0x30,%r11
     fa6:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
     fab:	49 83 fb 09          	cmp    $0x9,%r11
     faf:	0f 87 5a 1f 00 00    	ja     2f0f <stomptalk::parser::finish_value(char const*)+0x25ef>
     fb5:	49 6b db 64          	imul   $0x64,%r11,%rbx
     fb9:	4c 0f be 5a 10       	movsbq 0x10(%rdx),%r11
     fbe:	49 83 eb 30          	sub    $0x30,%r11
     fc2:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
     fc7:	49 83 fb 09          	cmp    $0x9,%r11
     fcb:	0f 87 48 18 00 00    	ja     2819 <stomptalk::parser::finish_value(char const*)+0x1ef9>
     fd1:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
     fd8:	00 00 80
     fdb:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
     fdf:	4c 0f be 5a 11       	movsbq 0x11(%rdx),%r11
     fe4:	49 83 eb 30          	sub    $0x30,%r11
     fe8:	49 83 fb 0a          	cmp    $0xa,%r11
     fec:	4d 0f 43 df          	cmovae %r15,%r11
     ff0:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
     ff4:	48 8b 5c 24 e8       	mov    -0x18(%rsp),%rbx
     ff9:	49 01 db             	add    %rbx,%r11
     ffc:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    1001:	49 01 db             	add    %rbx,%r11
    1004:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    1009:	49 01 db             	add    %rbx,%r11
    100c:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    1011:	49 01 db             	add    %rbx,%r11
    1014:	4d 01 da             	add    %r11,%r10
    1017:	4d 01 d1             	add    %r10,%r9
    101a:	4d 01 c8             	add    %r9,%r8
    101d:	4c 01 c1             	add    %r8,%rcx
    1020:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    1025:	48 01 d9             	add    %rbx,%rcx
    1028:	48 8b 5c 24 c0       	mov    -0x40(%rsp),%rbx
    102d:	48 01 d9             	add    %rbx,%rcx
    1030:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
    1035:	48 03 4c 24 b0       	add    -0x50(%rsp),%rcx
    103a:	4c 01 e1             	add    %r12,%rcx
    103d:	4c 01 f1             	add    %r14,%rcx
    1040:	4c 01 e9             	add    %r13,%rcx
    1043:	48 01 e9             	add    %rbp,%rcx
    1046:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    104d:	00 00 00
    1050:	48 85 c9             	test   %rcx,%rcx
    1053:	0f 89 37 0a 00 00    	jns    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    1059:	48 8b 1c 24          	mov    (%rsp),%rbx
    105d:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    1062:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1067:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    106c:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1071:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    1076:	e9 7c f9 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    107b:	0f 87 eb 18 00 00    	ja     296c <stomptalk::parser::finish_value(char const*)+0x204c>
    1081:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    1086:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    108a:	48 83 fb 09          	cmp    $0x9,%rbx
    108e:	0f 87 b6 18 00 00    	ja     294a <stomptalk::parser::finish_value(char const*)+0x202a>
    1094:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    1099:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    109d:	49 83 fe 09          	cmp    $0x9,%r14
    10a1:	0f 87 81 18 00 00    	ja     2928 <stomptalk::parser::finish_value(char const*)+0x2008>
    10a7:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    10ac:	49 83 eb 30          	sub    $0x30,%r11
    10b0:	49 83 fb 09          	cmp    $0x9,%r11
    10b4:	0f 87 4c 18 00 00    	ja     2906 <stomptalk::parser::finish_value(char const*)+0x1fe6>
    10ba:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    10bf:	49 83 ea 30          	sub    $0x30,%r10
    10c3:	49 83 fa 09          	cmp    $0x9,%r10
    10c7:	0f 87 17 18 00 00    	ja     28e4 <stomptalk::parser::finish_value(char const*)+0x1fc4>
    10cd:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    10d2:	49 83 e9 30          	sub    $0x30,%r9
    10d6:	49 83 f9 09          	cmp    $0x9,%r9
    10da:	0f 87 e2 17 00 00    	ja     28c2 <stomptalk::parser::finish_value(char const*)+0x1fa2>
    10e0:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    10e5:	48 83 e9 30          	sub    $0x30,%rcx
    10e9:	48 83 f9 09          	cmp    $0x9,%rcx
    10ed:	0f 87 ad 17 00 00    	ja     28a0 <stomptalk::parser::finish_value(char const*)+0x1f80>
    10f3:	49 bf 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r15
    10fa:	86 23 00
    10fd:	4d 0f af c7          	imul   %r15,%r8
    1101:	4c 89 c5             	mov    %r8,%rbp
    1104:	49 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r8
    110b:	8d 03 00
    110e:	49 0f af d8          	imul   %r8,%rbx
    1112:	49 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r8
    1119:	5a 00 00
    111c:	4d 0f af f0          	imul   %r8,%r14
    1120:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    1127:	09 00 00
    112a:	4d 0f af d8          	imul   %r8,%r11
    112e:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1135:	00 00 00
    1138:	4d 0f af d0          	imul   %r8,%r10
    113c:	49 89 dd             	mov    %rbx,%r13
    113f:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1146:	00 00 00
    1149:	4d 0f af c8          	imul   %r8,%r9
    114d:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1154:	00 00 00
    1157:	49 0f af c8          	imul   %r8,%rcx
    115b:	4d 89 dc             	mov    %r11,%r12
    115e:	4c 89 54 24 b0       	mov    %r10,-0x50(%rsp)
    1163:	4c 89 4c 24 b8       	mov    %r9,-0x48(%rsp)
    1168:	48 89 4c 24 c0       	mov    %rcx,-0x40(%rsp)
    116d:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
    1172:	48 83 e9 30          	sub    $0x30,%rcx
    1176:	48 83 f9 09          	cmp    $0x9,%rcx
    117a:	0f 87 09 13 00 00    	ja     2489 <stomptalk::parser::finish_value(char const*)+0x1b69>
    1180:	4c 0f be 42 08       	movsbq 0x8(%rdx),%r8
    1185:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
    118c:	49 83 e8 30          	sub    $0x30,%r8
    1190:	49 83 f8 09          	cmp    $0x9,%r8
    1194:	0f 87 f7 16 00 00    	ja     2891 <stomptalk::parser::finish_value(char const*)+0x1f71>
    119a:	4c 0f be 4a 09       	movsbq 0x9(%rdx),%r9
    119f:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
    11a6:	49 83 e9 30          	sub    $0x30,%r9
    11aa:	49 83 f9 09          	cmp    $0x9,%r9
    11ae:	0f 87 ce 16 00 00    	ja     2882 <stomptalk::parser::finish_value(char const*)+0x1f62>
    11b4:	4c 0f be 52 0a       	movsbq 0xa(%rdx),%r10
    11b9:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    11c0:	49 83 ea 30          	sub    $0x30,%r10
    11c4:	49 83 fa 09          	cmp    $0x9,%r10
    11c8:	0f 87 a5 16 00 00    	ja     2873 <stomptalk::parser::finish_value(char const*)+0x1f53>
    11ce:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    11d3:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    11da:	49 83 eb 30          	sub    $0x30,%r11
    11de:	49 83 fb 09          	cmp    $0x9,%r11
    11e2:	0f 87 7c 16 00 00    	ja     2864 <stomptalk::parser::finish_value(char const*)+0x1f44>
    11e8:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    11ef:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    11f4:	49 83 eb 30          	sub    $0x30,%r11
    11f8:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    11fd:	49 83 fb 09          	cmp    $0x9,%r11
    1201:	0f 87 4e 16 00 00    	ja     2855 <stomptalk::parser::finish_value(char const*)+0x1f35>
    1207:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    120e:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    1213:	49 83 eb 30          	sub    $0x30,%r11
    1217:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    121c:	49 83 fb 09          	cmp    $0x9,%r11
    1220:	0f 87 20 16 00 00    	ja     2846 <stomptalk::parser::finish_value(char const*)+0x1f26>
    1226:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    122d:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
    1232:	49 83 eb 30          	sub    $0x30,%r11
    1236:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    123b:	49 83 fb 09          	cmp    $0x9,%r11
    123f:	0f 87 f2 15 00 00    	ja     2837 <stomptalk::parser::finish_value(char const*)+0x1f17>
    1245:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1249:	4c 0f be 5a 0f       	movsbq 0xf(%rdx),%r11
    124e:	49 83 eb 30          	sub    $0x30,%r11
    1252:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    1257:	49 83 fb 09          	cmp    $0x9,%r11
    125b:	0f 87 c7 15 00 00    	ja     2828 <stomptalk::parser::finish_value(char const*)+0x1f08>
    1261:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    1268:	00 00 80
    126b:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    126f:	4c 0f be 5a 10       	movsbq 0x10(%rdx),%r11
    1274:	49 83 eb 30          	sub    $0x30,%r11
    1278:	49 83 fb 0a          	cmp    $0xa,%r11
    127c:	4d 0f 43 df          	cmovae %r15,%r11
    1280:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1284:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    1289:	49 01 db             	add    %rbx,%r11
    128c:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    1291:	49 01 db             	add    %rbx,%r11
    1294:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    1299:	49 01 db             	add    %rbx,%r11
    129c:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    12a1:	49 01 db             	add    %rbx,%r11
    12a4:	4d 01 da             	add    %r11,%r10
    12a7:	4d 01 d1             	add    %r10,%r9
    12aa:	4d 01 c8             	add    %r9,%r8
    12ad:	4c 01 c1             	add    %r8,%rcx
    12b0:	e9 73 fd ff ff       	jmp    1028 <stomptalk::parser::finish_value(char const*)+0x708>
    12b5:	0f 87 ed 14 00 00    	ja     27a8 <stomptalk::parser::finish_value(char const*)+0x1e88>
    12bb:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    12c0:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    12c4:	48 83 fb 09          	cmp    $0x9,%rbx
    12c8:	0f 87 b8 14 00 00    	ja     2786 <stomptalk::parser::finish_value(char const*)+0x1e66>
    12ce:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    12d3:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    12d7:	49 83 ff 09          	cmp    $0x9,%r15
    12db:	0f 87 83 14 00 00    	ja     2764 <stomptalk::parser::finish_value(char const*)+0x1e44>
    12e1:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    12e6:	49 83 eb 30          	sub    $0x30,%r11
    12ea:	49 83 fb 09          	cmp    $0x9,%r11
    12ee:	0f 87 4e 14 00 00    	ja     2742 <stomptalk::parser::finish_value(char const*)+0x1e22>
    12f4:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    12f9:	49 83 ea 30          	sub    $0x30,%r10
    12fd:	49 83 fa 09          	cmp    $0x9,%r10
    1301:	0f 87 4d 13 00 00    	ja     2654 <stomptalk::parser::finish_value(char const*)+0x1d34>
    1307:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    130c:	49 83 e9 30          	sub    $0x30,%r9
    1310:	49 83 f9 09          	cmp    $0x9,%r9
    1314:	0f 87 18 13 00 00    	ja     2632 <stomptalk::parser::finish_value(char const*)+0x1d12>
    131a:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    131f:	48 83 e9 30          	sub    $0x30,%rcx
    1323:	48 83 f9 09          	cmp    $0x9,%rcx
    1327:	0f 87 9d 14 00 00    	ja     27ca <stomptalk::parser::finish_value(char const*)+0x1eaa>
    132d:	49 be 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r14
    1334:	8d 03 00
    1337:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
    133e:	4d 0f af c6          	imul   %r14,%r8
    1342:	4d 89 c6             	mov    %r8,%r14
    1345:	49 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r8
    134c:	5a 00 00
    134f:	49 0f af d8          	imul   %r8,%rbx
    1353:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    135a:	09 00 00
    135d:	4d 0f af f8          	imul   %r8,%r15
    1361:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1368:	00 00 00
    136b:	4d 0f af d8          	imul   %r8,%r11
    136f:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1376:	00 00 00
    1379:	4d 0f af d0          	imul   %r8,%r10
    137d:	48 89 dd             	mov    %rbx,%rbp
    1380:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1387:	00 00 00
    138a:	4d 0f af c8          	imul   %r8,%r9
    138e:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    1393:	4d 89 fd             	mov    %r15,%r13
    1396:	4d 89 dc             	mov    %r11,%r12
    1399:	49 83 e8 30          	sub    $0x30,%r8
    139d:	4c 89 54 24 b0       	mov    %r10,-0x50(%rsp)
    13a2:	4c 89 4c 24 b8       	mov    %r9,-0x48(%rsp)
    13a7:	49 83 f8 09          	cmp    $0x9,%r8
    13ab:	0f 87 e6 10 00 00    	ja     2497 <stomptalk::parser::finish_value(char const*)+0x1b77>
    13b1:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    13b6:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
    13bd:	49 83 e9 30          	sub    $0x30,%r9
    13c1:	49 83 f9 09          	cmp    $0x9,%r9
    13c5:	0f 87 af 10 00 00    	ja     247a <stomptalk::parser::finish_value(char const*)+0x1b5a>
    13cb:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    13d0:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    13d7:	49 83 ea 30          	sub    $0x30,%r10
    13db:	49 83 fa 09          	cmp    $0x9,%r10
    13df:	0f 87 86 10 00 00    	ja     246b <stomptalk::parser::finish_value(char const*)+0x1b4b>
    13e5:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    13ea:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    13f1:	49 83 eb 30          	sub    $0x30,%r11
    13f5:	49 83 fb 09          	cmp    $0x9,%r11
    13f9:	0f 87 5d 10 00 00    	ja     245c <stomptalk::parser::finish_value(char const*)+0x1b3c>
    13ff:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    1406:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    140b:	49 83 eb 30          	sub    $0x30,%r11
    140f:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    1414:	49 83 fb 09          	cmp    $0x9,%r11
    1418:	0f 87 2f 10 00 00    	ja     244d <stomptalk::parser::finish_value(char const*)+0x1b2d>
    141e:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1425:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    142a:	49 83 eb 30          	sub    $0x30,%r11
    142e:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    1433:	49 83 fb 09          	cmp    $0x9,%r11
    1437:	0f 87 69 10 00 00    	ja     24a6 <stomptalk::parser::finish_value(char const*)+0x1b86>
    143d:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1444:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    1449:	49 83 eb 30          	sub    $0x30,%r11
    144d:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1452:	49 83 fb 09          	cmp    $0x9,%r11
    1456:	0f 87 90 13 00 00    	ja     27ec <stomptalk::parser::finish_value(char const*)+0x1ecc>
    145c:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1460:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
    1465:	49 83 eb 30          	sub    $0x30,%r11
    1469:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    146e:	49 83 fb 09          	cmp    $0x9,%r11
    1472:	0f 87 92 1b 00 00    	ja     300a <stomptalk::parser::finish_value(char const*)+0x26ea>
    1478:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    147f:	00 00 80
    1482:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1486:	4c 0f be 5a 0f       	movsbq 0xf(%rdx),%r11
    148b:	49 83 eb 30          	sub    $0x30,%r11
    148f:	49 83 fb 0a          	cmp    $0xa,%r11
    1493:	4d 0f 43 df          	cmovae %r15,%r11
    1497:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    149b:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    14a0:	49 01 db             	add    %rbx,%r11
    14a3:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    14a8:	49 01 db             	add    %rbx,%r11
    14ab:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    14b0:	49 01 db             	add    %rbx,%r11
    14b3:	48 8b 5c 24 c0       	mov    -0x40(%rsp),%rbx
    14b8:	49 01 db             	add    %rbx,%r11
    14bb:	4d 01 da             	add    %r11,%r10
    14be:	4d 01 d1             	add    %r10,%r9
    14c1:	4d 01 c8             	add    %r9,%r8
    14c4:	4c 01 c1             	add    %r8,%rcx
    14c7:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
    14cc:	48 03 4c 24 b0       	add    -0x50(%rsp),%rcx
    14d1:	4c 01 e1             	add    %r12,%rcx
    14d4:	4c 01 e9             	add    %r13,%rcx
    14d7:	48 01 e9             	add    %rbp,%rcx
    14da:	4c 01 f1             	add    %r14,%rcx
    14dd:	e9 6e fb ff ff       	jmp    1050 <stomptalk::parser::finish_value(char const*)+0x730>
    14e2:	0f 87 a8 1f 00 00    	ja     3490 <stomptalk::parser::finish_value(char const*)+0x2b70>
    14e8:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    14ed:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    14f1:	48 83 fb 09          	cmp    $0x9,%rbx
    14f5:	0f 87 73 1f 00 00    	ja     346e <stomptalk::parser::finish_value(char const*)+0x2b4e>
    14fb:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    1500:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    1504:	49 83 ff 09          	cmp    $0x9,%r15
    1508:	0f 87 3e 1f 00 00    	ja     344c <stomptalk::parser::finish_value(char const*)+0x2b2c>
    150e:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1513:	49 83 eb 30          	sub    $0x30,%r11
    1517:	49 83 fb 09          	cmp    $0x9,%r11
    151b:	0f 87 09 1f 00 00    	ja     342a <stomptalk::parser::finish_value(char const*)+0x2b0a>
    1521:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1526:	49 83 ea 30          	sub    $0x30,%r10
    152a:	49 83 fa 09          	cmp    $0x9,%r10
    152e:	0f 87 a0 1f 00 00    	ja     34d4 <stomptalk::parser::finish_value(char const*)+0x2bb4>
    1534:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1539:	49 83 e9 30          	sub    $0x30,%r9
    153d:	49 83 f9 09          	cmp    $0x9,%r9
    1541:	0f 87 6b 1f 00 00    	ja     34b2 <stomptalk::parser::finish_value(char const*)+0x2b92>
    1547:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    154c:	48 83 e9 30          	sub    $0x30,%rcx
    1550:	48 83 f9 09          	cmp    $0x9,%rcx
    1554:	0f 87 ea 0f 00 00    	ja     2544 <stomptalk::parser::finish_value(char const*)+0x1c24>
    155a:	49 be 00 a0 72 4e 18 	movabs $0x9184e72a000,%r14
    1561:	09 00 00
    1564:	48 69 c9 80 96 98 00 	imul   $0x989680,%rcx,%rcx
    156b:	4d 0f af c6          	imul   %r14,%r8
    156f:	4d 89 c6             	mov    %r8,%r14
    1572:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1579:	00 00 00
    157c:	49 0f af d8          	imul   %r8,%rbx
    1580:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1587:	00 00 00
    158a:	4d 0f af f8          	imul   %r8,%r15
    158e:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1595:	00 00 00
    1598:	4d 0f af d8          	imul   %r8,%r11
    159c:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    15a1:	48 89 dd             	mov    %rbx,%rbp
    15a4:	49 69 da 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%rbx
    15ab:	49 83 e8 30          	sub    $0x30,%r8
    15af:	4d 89 fd             	mov    %r15,%r13
    15b2:	4d 89 dc             	mov    %r11,%r12
    15b5:	48 89 5c 24 b0       	mov    %rbx,-0x50(%rsp)
    15ba:	49 69 d9 00 e1 f5 05 	imul   $0x5f5e100,%r9,%rbx
    15c1:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    15c6:	49 83 f8 09          	cmp    $0x9,%r8
    15ca:	0f 87 c7 0e 00 00    	ja     2497 <stomptalk::parser::finish_value(char const*)+0x1b77>
    15d0:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    15d5:	4d 69 c0 40 42 0f 00 	imul   $0xf4240,%r8,%r8
    15dc:	49 83 e9 30          	sub    $0x30,%r9
    15e0:	49 83 f9 09          	cmp    $0x9,%r9
    15e4:	0f 87 90 0e 00 00    	ja     247a <stomptalk::parser::finish_value(char const*)+0x1b5a>
    15ea:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    15ef:	4d 69 c9 a0 86 01 00 	imul   $0x186a0,%r9,%r9
    15f6:	49 83 ea 30          	sub    $0x30,%r10
    15fa:	49 83 fa 09          	cmp    $0x9,%r10
    15fe:	0f 87 67 0e 00 00    	ja     246b <stomptalk::parser::finish_value(char const*)+0x1b4b>
    1604:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    1609:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    1610:	49 83 eb 30          	sub    $0x30,%r11
    1614:	49 83 fb 09          	cmp    $0x9,%r11
    1618:	0f 87 3e 0e 00 00    	ja     245c <stomptalk::parser::finish_value(char const*)+0x1b3c>
    161e:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1625:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    162a:	49 83 eb 30          	sub    $0x30,%r11
    162e:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    1633:	49 83 fb 09          	cmp    $0x9,%r11
    1637:	0f 87 10 0e 00 00    	ja     244d <stomptalk::parser::finish_value(char const*)+0x1b2d>
    163d:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1641:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    1646:	49 83 eb 30          	sub    $0x30,%r11
    164a:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    164f:	49 83 fb 09          	cmp    $0x9,%r11
    1653:	0f 87 4d 0e 00 00    	ja     24a6 <stomptalk::parser::finish_value(char const*)+0x1b86>
    1659:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    1660:	00 00 80
    1663:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1667:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    166c:	49 83 eb 30          	sub    $0x30,%r11
    1670:	49 83 fb 0a          	cmp    $0xa,%r11
    1674:	4d 0f 43 df          	cmovae %r15,%r11
    1678:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    167c:	e9 2a fe ff ff       	jmp    14ab <stomptalk::parser::finish_value(char const*)+0xb8b>
    1681:	0f 87 88 1b 00 00    	ja     320f <stomptalk::parser::finish_value(char const*)+0x28ef>
    1687:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    168c:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1690:	48 83 fb 09          	cmp    $0x9,%rbx
    1694:	0f 87 53 1b 00 00    	ja     31ed <stomptalk::parser::finish_value(char const*)+0x28cd>
    169a:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    169f:	49 83 eb 30          	sub    $0x30,%r11
    16a3:	49 83 fb 09          	cmp    $0x9,%r11
    16a7:	0f 87 1e 1b 00 00    	ja     31cb <stomptalk::parser::finish_value(char const*)+0x28ab>
    16ad:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    16b2:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    16b6:	49 83 ff 09          	cmp    $0x9,%r15
    16ba:	0f 87 e9 1a 00 00    	ja     31a9 <stomptalk::parser::finish_value(char const*)+0x2889>
    16c0:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    16c5:	49 83 ea 30          	sub    $0x30,%r10
    16c9:	49 83 fa 09          	cmp    $0x9,%r10
    16cd:	0f 87 b4 1a 00 00    	ja     3187 <stomptalk::parser::finish_value(char const*)+0x2867>
    16d3:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    16d8:	49 83 e9 30          	sub    $0x30,%r9
    16dc:	49 83 f9 09          	cmp    $0x9,%r9
    16e0:	0f 87 7f 1a 00 00    	ja     3165 <stomptalk::parser::finish_value(char const*)+0x2845>
    16e6:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    16eb:	48 83 e9 30          	sub    $0x30,%rcx
    16ef:	48 83 f9 09          	cmp    $0x9,%rcx
    16f3:	0f 87 4a 1a 00 00    	ja     3143 <stomptalk::parser::finish_value(char const*)+0x2823>
    16f9:	49 be 00 e8 76 48 17 	movabs $0x174876e800,%r14
    1700:	00 00 00
    1703:	4d 69 db 00 ca 9a 3b 	imul   $0x3b9aca00,%r11,%r11
    170a:	4d 0f af c6          	imul   %r14,%r8
    170e:	4d 69 ef 00 e1 f5 05 	imul   $0x5f5e100,%r15,%r13
    1715:	4d 69 e2 80 96 98 00 	imul   $0x989680,%r10,%r12
    171c:	4d 89 c6             	mov    %r8,%r14
    171f:	48 69 c9 a0 86 01 00 	imul   $0x186a0,%rcx,%rcx
    1726:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    172d:	00 00 00
    1730:	49 0f af d8          	imul   %r8,%rbx
    1734:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    1739:	49 83 e8 30          	sub    $0x30,%r8
    173d:	48 89 dd             	mov    %rbx,%rbp
    1740:	49 69 d9 40 42 0f 00 	imul   $0xf4240,%r9,%rbx
    1747:	48 89 5c 24 b0       	mov    %rbx,-0x50(%rsp)
    174c:	49 83 f8 09          	cmp    $0x9,%r8
    1750:	0f 87 de 19 00 00    	ja     3134 <stomptalk::parser::finish_value(char const*)+0x2814>
    1756:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    175b:	4d 69 c0 10 27 00 00 	imul   $0x2710,%r8,%r8
    1762:	49 83 e9 30          	sub    $0x30,%r9
    1766:	49 83 f9 09          	cmp    $0x9,%r9
    176a:	0f 87 b8 18 00 00    	ja     3028 <stomptalk::parser::finish_value(char const*)+0x2708>
    1770:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    1775:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    177c:	49 83 ea 30          	sub    $0x30,%r10
    1780:	49 83 fa 09          	cmp    $0x9,%r10
    1784:	0f 87 8f 18 00 00    	ja     3019 <stomptalk::parser::finish_value(char const*)+0x26f9>
    178a:	49 6b da 64          	imul   $0x64,%r10,%rbx
    178e:	4c 0f be 52 0a       	movsbq 0xa(%rdx),%r10
    1793:	49 83 ea 30          	sub    $0x30,%r10
    1797:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    179c:	49 83 fa 09          	cmp    $0x9,%r10
    17a0:	0f 87 8b 1a 00 00    	ja     3231 <stomptalk::parser::finish_value(char const*)+0x2911>
    17a6:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    17ad:	00 00 80
    17b0:	4b 8d 1c 92          	lea    (%r10,%r10,4),%rbx
    17b4:	4c 0f be 52 0b       	movsbq 0xb(%rdx),%r10
    17b9:	49 83 ea 30          	sub    $0x30,%r10
    17bd:	49 83 fa 0a          	cmp    $0xa,%r10
    17c1:	4d 0f 43 d7          	cmovae %r15,%r10
    17c5:	4d 8d 14 5a          	lea    (%r10,%rbx,2),%r10
    17c9:	48 8b 5c 24 b8       	mov    -0x48(%rsp),%rbx
    17ce:	49 01 da             	add    %rbx,%r10
    17d1:	4d 01 d1             	add    %r10,%r9
    17d4:	4d 01 c8             	add    %r9,%r8
    17d7:	4c 01 c1             	add    %r8,%rcx
    17da:	48 03 4c 24 b0       	add    -0x50(%rsp),%rcx
    17df:	4c 01 e1             	add    %r12,%rcx
    17e2:	4c 01 e9             	add    %r13,%rcx
    17e5:	4c 01 d9             	add    %r11,%rcx
    17e8:	48 01 e9             	add    %rbp,%rcx
    17eb:	4c 01 f1             	add    %r14,%rcx
    17ee:	e9 5d f8 ff ff       	jmp    1050 <stomptalk::parser::finish_value(char const*)+0x730>
    17f3:	0f 87 e4 15 00 00    	ja     2ddd <stomptalk::parser::finish_value(char const*)+0x24bd>
    17f9:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    17fe:	49 83 ea 30          	sub    $0x30,%r10
    1802:	49 83 fa 09          	cmp    $0x9,%r10
    1806:	0f 87 af 15 00 00    	ja     2dbb <stomptalk::parser::finish_value(char const*)+0x249b>
    180c:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    1811:	49 83 eb 30          	sub    $0x30,%r11
    1815:	49 83 fb 09          	cmp    $0x9,%r11
    1819:	0f 87 7a 15 00 00    	ja     2d99 <stomptalk::parser::finish_value(char const*)+0x2479>
    181f:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    1824:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1828:	48 83 fb 09          	cmp    $0x9,%rbx
    182c:	0f 87 45 15 00 00    	ja     2d77 <stomptalk::parser::finish_value(char const*)+0x2457>
    1832:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    1837:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    183b:	49 83 ff 09          	cmp    $0x9,%r15
    183f:	0f 87 10 15 00 00    	ja     2d55 <stomptalk::parser::finish_value(char const*)+0x2435>
    1845:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    184a:	49 83 e9 30          	sub    $0x30,%r9
    184e:	49 83 f9 09          	cmp    $0x9,%r9
    1852:	0f 87 db 14 00 00    	ja     2d33 <stomptalk::parser::finish_value(char const*)+0x2413>
    1858:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    185d:	48 83 e9 30          	sub    $0x30,%rcx
    1861:	48 83 f9 09          	cmp    $0x9,%rcx
    1865:	0f 87 a6 14 00 00    	ja     2d11 <stomptalk::parser::finish_value(char const*)+0x23f1>
    186b:	4d 69 e1 10 27 00 00 	imul   $0x2710,%r9,%r12
    1872:	4c 0f be 4a 07       	movsbq 0x7(%rdx),%r9
    1877:	4d 69 f0 00 ca 9a 3b 	imul   $0x3b9aca00,%r8,%r14
    187e:	49 83 e9 30          	sub    $0x30,%r9
    1882:	4d 69 d2 00 e1 f5 05 	imul   $0x5f5e100,%r10,%r10
    1889:	4d 69 db 80 96 98 00 	imul   $0x989680,%r11,%r11
    1890:	48 69 eb 40 42 0f 00 	imul   $0xf4240,%rbx,%rbp
    1897:	4d 69 ef a0 86 01 00 	imul   $0x186a0,%r15,%r13
    189e:	48 69 c9 e8 03 00 00 	imul   $0x3e8,%rcx,%rcx
    18a5:	49 83 f9 09          	cmp    $0x9,%r9
    18a9:	0f 87 53 14 00 00    	ja     2d02 <stomptalk::parser::finish_value(char const*)+0x23e2>
    18af:	4c 0f be 42 08       	movsbq 0x8(%rdx),%r8
    18b4:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    18b8:	49 83 e8 30          	sub    $0x30,%r8
    18bc:	49 83 f8 09          	cmp    $0x9,%r8
    18c0:	0f 87 3f 13 00 00    	ja     2c05 <stomptalk::parser::finish_value(char const*)+0x22e5>
    18c6:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    18cd:	00 00 80
    18d0:	4b 8d 1c 80          	lea    (%r8,%r8,4),%rbx
    18d4:	4c 0f be 42 09       	movsbq 0x9(%rdx),%r8
    18d9:	49 83 e8 30          	sub    $0x30,%r8
    18dd:	49 83 f8 0a          	cmp    $0xa,%r8
    18e1:	4d 0f 43 c7          	cmovae %r15,%r8
    18e5:	4d 8d 04 58          	lea    (%r8,%rbx,2),%r8
    18e9:	4d 01 c1             	add    %r8,%r9
    18ec:	4c 01 c9             	add    %r9,%rcx
    18ef:	4c 01 e1             	add    %r12,%rcx
    18f2:	4c 01 e9             	add    %r13,%rcx
    18f5:	48 01 e9             	add    %rbp,%rcx
    18f8:	4c 01 d9             	add    %r11,%rcx
    18fb:	4c 01 d1             	add    %r10,%rcx
    18fe:	4c 01 f1             	add    %r14,%rcx
    1901:	e9 4a f7 ff ff       	jmp    1050 <stomptalk::parser::finish_value(char const*)+0x730>
    1906:	0f 87 d4 13 00 00    	ja     2ce0 <stomptalk::parser::finish_value(char const*)+0x23c0>
    190c:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    1911:	49 83 e9 30          	sub    $0x30,%r9
    1915:	49 83 f9 09          	cmp    $0x9,%r9
    1919:	0f 87 9f 13 00 00    	ja     2cbe <stomptalk::parser::finish_value(char const*)+0x239e>
    191f:	4c 0f be 52 02       	movsbq 0x2(%rdx),%r10
    1924:	49 83 ea 30          	sub    $0x30,%r10
    1928:	49 83 fa 09          	cmp    $0x9,%r10
    192c:	0f 87 6a 13 00 00    	ja     2c9c <stomptalk::parser::finish_value(char const*)+0x237c>
    1932:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1937:	49 83 eb 30          	sub    $0x30,%r11
    193b:	49 83 fb 09          	cmp    $0x9,%r11
    193f:	0f 87 35 13 00 00    	ja     2c7a <stomptalk::parser::finish_value(char const*)+0x235a>
    1945:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    194a:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    194e:	48 83 fb 09          	cmp    $0x9,%rbx
    1952:	0f 87 00 13 00 00    	ja     2c58 <stomptalk::parser::finish_value(char const*)+0x2338>
    1958:	48 0f be 4a 05       	movsbq 0x5(%rdx),%rcx
    195d:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    1961:	49 83 ff 09          	cmp    $0x9,%r15
    1965:	0f 87 cb 12 00 00    	ja     2c36 <stomptalk::parser::finish_value(char const*)+0x2316>
    196b:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1970:	48 83 e9 30          	sub    $0x30,%rcx
    1974:	48 83 f9 09          	cmp    $0x9,%rcx
    1978:	0f 87 96 12 00 00    	ja     2c14 <stomptalk::parser::finish_value(char const*)+0x22f4>
    197e:	4d 69 c0 80 96 98 00 	imul   $0x989680,%r8,%r8
    1985:	4c 8d 34 89          	lea    (%rcx,%rcx,4),%r14
    1989:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
    198e:	48 bd 00 00 00 00 00 	movabs $0x8000000000000000,%rbp
    1995:	00 00 80
    1998:	4d 69 c9 40 42 0f 00 	imul   $0xf4240,%r9,%r9
    199f:	48 83 e9 30          	sub    $0x30,%rcx
    19a3:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    19aa:	4d 69 db 10 27 00 00 	imul   $0x2710,%r11,%r11
    19b1:	48 69 db e8 03 00 00 	imul   $0x3e8,%rbx,%rbx
    19b8:	4d 6b ff 64          	imul   $0x64,%r15,%r15
    19bc:	48 83 f9 0a          	cmp    $0xa,%rcx
    19c0:	48 0f 43 cd          	cmovae %rbp,%rcx
    19c4:	4a 8d 0c 71          	lea    (%rcx,%r14,2),%rcx
    19c8:	4c 01 f9             	add    %r15,%rcx
    19cb:	48 01 d9             	add    %rbx,%rcx
    19ce:	4c 01 d9             	add    %r11,%rcx
    19d1:	4c 01 d1             	add    %r10,%rcx
    19d4:	4c 01 c9             	add    %r9,%rcx
    19d7:	4c 01 c1             	add    %r8,%rcx
    19da:	e9 71 f6 ff ff       	jmp    1050 <stomptalk::parser::finish_value(char const*)+0x730>
    19df:	0f 87 a3 0b 00 00    	ja     2588 <stomptalk::parser::finish_value(char const*)+0x1c68>
    19e5:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    19ea:	49 83 ea 30          	sub    $0x30,%r10
    19ee:	49 83 fa 09          	cmp    $0x9,%r10
    19f2:	0f 87 6e 0b 00 00    	ja     2566 <stomptalk::parser::finish_value(char const*)+0x1c46>
    19f8:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    19fd:	49 83 eb 30          	sub    $0x30,%r11
    1a01:	49 83 fb 09          	cmp    $0x9,%r11
    1a05:	0f 87 05 0c 00 00    	ja     2610 <stomptalk::parser::finish_value(char const*)+0x1cf0>
    1a0b:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    1a10:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1a14:	48 83 fb 09          	cmp    $0x9,%rbx
    1a18:	0f 87 d0 0b 00 00    	ja     25ee <stomptalk::parser::finish_value(char const*)+0x1cce>
    1a1e:	4c 0f be 4a 04       	movsbq 0x4(%rdx),%r9
    1a23:	49 83 e9 30          	sub    $0x30,%r9
    1a27:	49 83 f9 09          	cmp    $0x9,%r9
    1a2b:	0f 87 9b 0b 00 00    	ja     25cc <stomptalk::parser::finish_value(char const*)+0x1cac>
    1a31:	48 0f be 4a 05       	movsbq 0x5(%rdx),%rcx
    1a36:	48 83 e9 30          	sub    $0x30,%rcx
    1a3a:	48 83 f9 09          	cmp    $0x9,%rcx
    1a3e:	0f 87 66 0b 00 00    	ja     25aa <stomptalk::parser::finish_value(char const*)+0x1c8a>
    1a44:	4c 0f be 7a 06       	movsbq 0x6(%rdx),%r15
    1a49:	4d 8d 77 d0          	lea    -0x30(%r15),%r14
    1a4d:	49 83 fe 09          	cmp    $0x9,%r14
    1a51:	0f 87 91 15 00 00    	ja     2fe8 <stomptalk::parser::finish_value(char const*)+0x26c8>
    1a57:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    1a5b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    1a5f:	4d 69 db 10 27 00 00 	imul   $0x2710,%r11,%r11
    1a66:	49 8d 0c 4e          	lea    (%r14,%rcx,2),%rcx
    1a6a:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    1a71:	4c 01 c9             	add    %r9,%rcx
    1a74:	4c 69 cb e8 03 00 00 	imul   $0x3e8,%rbx,%r9
    1a7b:	4d 69 c0 40 42 0f 00 	imul   $0xf4240,%r8,%r8
    1a82:	4c 01 c9             	add    %r9,%rcx
    1a85:	4c 01 d9             	add    %r11,%rcx
    1a88:	4c 01 d1             	add    %r10,%rcx
    1a8b:	4c 01 c1             	add    %r8,%rcx
    1a8e:	66 90                	xchg   %ax,%ax
    1a90:	48 39 4f 20          	cmp    %rcx,0x20(%rdi)
    1a94:	0f 82 ce 07 00 00    	jb     2268 <stomptalk::parser::finish_value(char const*)+0x1948>
    1a9a:	48 8b 1c 24          	mov    (%rsp),%rbx
    1a9e:	83 4f 78 01          	orl    $0x1,0x78(%rdi)
    1aa2:	48 89 8f 88 00 00 00 	mov    %rcx,0x88(%rdi)
    1aa9:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    1aae:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1ab3:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    1ab8:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1abd:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    1ac2:	e9 95 ee ff ff       	jmp    95c <stomptalk::parser::finish_value(char const*)+0x3c>
    1ac7:	0f 87 53 0c 00 00    	ja     2720 <stomptalk::parser::finish_value(char const*)+0x1e00>
    1acd:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    1ad2:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1ad6:	48 83 fb 09          	cmp    $0x9,%rbx
    1ada:	0f 87 1e 0c 00 00    	ja     26fe <stomptalk::parser::finish_value(char const*)+0x1dde>
    1ae0:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    1ae5:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    1ae9:	49 83 fe 09          	cmp    $0x9,%r14
    1aed:	0f 87 e9 0b 00 00    	ja     26dc <stomptalk::parser::finish_value(char const*)+0x1dbc>
    1af3:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1af8:	49 83 eb 30          	sub    $0x30,%r11
    1afc:	49 83 fb 09          	cmp    $0x9,%r11
    1b00:	0f 87 b4 0b 00 00    	ja     26ba <stomptalk::parser::finish_value(char const*)+0x1d9a>
    1b06:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1b0b:	49 83 ea 30          	sub    $0x30,%r10
    1b0f:	49 83 fa 09          	cmp    $0x9,%r10
    1b13:	0f 87 7f 0b 00 00    	ja     2698 <stomptalk::parser::finish_value(char const*)+0x1d78>
    1b19:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1b1e:	49 83 e9 30          	sub    $0x30,%r9
    1b22:	49 83 f9 09          	cmp    $0x9,%r9
    1b26:	0f 87 4a 0b 00 00    	ja     2676 <stomptalk::parser::finish_value(char const*)+0x1d56>
    1b2c:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1b31:	48 83 e9 30          	sub    $0x30,%rcx
    1b35:	48 83 f9 09          	cmp    $0x9,%rcx
    1b39:	0f 87 c1 09 00 00    	ja     2500 <stomptalk::parser::finish_value(char const*)+0x1be0>
    1b3f:	49 bf 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r15
    1b46:	5a 00 00
    1b49:	48 69 c9 00 e1 f5 05 	imul   $0x5f5e100,%rcx,%rcx
    1b50:	4d 0f af c7          	imul   %r15,%r8
    1b54:	4d 89 c7             	mov    %r8,%r15
    1b57:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    1b5e:	09 00 00
    1b61:	49 0f af d8          	imul   %r8,%rbx
    1b65:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1b6c:	00 00 00
    1b6f:	4d 0f af f0          	imul   %r8,%r14
    1b73:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1b7a:	00 00 00
    1b7d:	4d 0f af d8          	imul   %r8,%r11
    1b81:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1b88:	00 00 00
    1b8b:	4d 0f af d0          	imul   %r8,%r10
    1b8f:	48 89 dd             	mov    %rbx,%rbp
    1b92:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    1b97:	49 69 d9 00 ca 9a 3b 	imul   $0x3b9aca00,%r9,%rbx
    1b9e:	4d 89 f5             	mov    %r14,%r13
    1ba1:	49 83 e8 30          	sub    $0x30,%r8
    1ba5:	4d 89 dc             	mov    %r11,%r12
    1ba8:	4c 89 54 24 b0       	mov    %r10,-0x50(%rsp)
    1bad:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    1bb2:	49 83 f8 09          	cmp    $0x9,%r8
    1bb6:	0f 87 35 09 00 00    	ja     24f1 <stomptalk::parser::finish_value(char const*)+0x1bd1>
    1bbc:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    1bc1:	4d 69 c0 80 96 98 00 	imul   $0x989680,%r8,%r8
    1bc8:	49 83 e9 30          	sub    $0x30,%r9
    1bcc:	49 83 f9 09          	cmp    $0x9,%r9
    1bd0:	0f 87 0c 09 00 00    	ja     24e2 <stomptalk::parser::finish_value(char const*)+0x1bc2>
    1bd6:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    1bdb:	4d 69 c9 40 42 0f 00 	imul   $0xf4240,%r9,%r9
    1be2:	49 83 ea 30          	sub    $0x30,%r10
    1be6:	49 83 fa 09          	cmp    $0x9,%r10
    1bea:	0f 87 e3 08 00 00    	ja     24d3 <stomptalk::parser::finish_value(char const*)+0x1bb3>
    1bf0:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    1bf5:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    1bfc:	49 83 eb 30          	sub    $0x30,%r11
    1c00:	49 83 fb 09          	cmp    $0x9,%r11
    1c04:	0f 87 ba 08 00 00    	ja     24c4 <stomptalk::parser::finish_value(char const*)+0x1ba4>
    1c0a:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1c11:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    1c16:	49 83 eb 30          	sub    $0x30,%r11
    1c1a:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    1c1f:	49 83 fb 09          	cmp    $0x9,%r11
    1c23:	0f 87 8c 08 00 00    	ja     24b5 <stomptalk::parser::finish_value(char const*)+0x1b95>
    1c29:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1c30:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    1c35:	49 83 eb 30          	sub    $0x30,%r11
    1c39:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    1c3e:	49 83 fb 09          	cmp    $0x9,%r11
    1c42:	0f 87 c2 0b 00 00    	ja     280a <stomptalk::parser::finish_value(char const*)+0x1eea>
    1c48:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1c4c:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    1c51:	49 83 eb 30          	sub    $0x30,%r11
    1c55:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1c5a:	49 83 fb 09          	cmp    $0x9,%r11
    1c5e:	0f 87 97 0b 00 00    	ja     27fb <stomptalk::parser::finish_value(char const*)+0x1edb>
    1c64:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1c6b:	00 00 80
    1c6e:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1c72:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
    1c77:	49 83 eb 30          	sub    $0x30,%r11
    1c7b:	49 83 fb 0a          	cmp    $0xa,%r11
    1c7f:	4d 0f 43 de          	cmovae %r14,%r11
    1c83:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1c87:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    1c8c:	49 01 db             	add    %rbx,%r11
    1c8f:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    1c94:	49 01 db             	add    %rbx,%r11
    1c97:	48 8b 5c 24 c0       	mov    -0x40(%rsp),%rbx
    1c9c:	49 01 db             	add    %rbx,%r11
    1c9f:	4d 01 da             	add    %r11,%r10
    1ca2:	4d 01 d1             	add    %r10,%r9
    1ca5:	4d 01 c8             	add    %r9,%r8
    1ca8:	4c 01 c1             	add    %r8,%rcx
    1cab:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
    1cb0:	48 03 4c 24 b0       	add    -0x50(%rsp),%rcx
    1cb5:	4c 01 e1             	add    %r12,%rcx
    1cb8:	4c 01 e9             	add    %r13,%rcx
    1cbb:	48 01 e9             	add    %rbp,%rcx
    1cbe:	4c 01 f9             	add    %r15,%rcx
    1cc1:	e9 8a f3 ff ff       	jmp    1050 <stomptalk::parser::finish_value(char const*)+0x730>
    1cc6:	0f 87 40 16 00 00    	ja     330c <stomptalk::parser::finish_value(char const*)+0x29ec>
    1ccc:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    1cd1:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1cd5:	48 83 fb 09          	cmp    $0x9,%rbx
    1cd9:	0f 87 0b 16 00 00    	ja     32ea <stomptalk::parser::finish_value(char const*)+0x29ca>
    1cdf:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    1ce4:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    1ce8:	49 83 fe 09          	cmp    $0x9,%r14
    1cec:	0f 87 d6 15 00 00    	ja     32c8 <stomptalk::parser::finish_value(char const*)+0x29a8>
    1cf2:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1cf7:	49 83 eb 30          	sub    $0x30,%r11
    1cfb:	49 83 fb 09          	cmp    $0x9,%r11
    1cff:	0f 87 a1 15 00 00    	ja     32a6 <stomptalk::parser::finish_value(char const*)+0x2986>
    1d05:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1d0a:	49 83 ea 30          	sub    $0x30,%r10
    1d0e:	49 83 fa 09          	cmp    $0x9,%r10
    1d12:	0f 87 6c 15 00 00    	ja     3284 <stomptalk::parser::finish_value(char const*)+0x2964>
    1d18:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1d1d:	49 83 e9 30          	sub    $0x30,%r9
    1d21:	49 83 f9 09          	cmp    $0x9,%r9
    1d25:	0f 87 37 15 00 00    	ja     3262 <stomptalk::parser::finish_value(char const*)+0x2942>
    1d2b:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1d30:	48 83 e9 30          	sub    $0x30,%rcx
    1d34:	48 83 f9 09          	cmp    $0x9,%rcx
    1d38:	0f 87 02 15 00 00    	ja     3240 <stomptalk::parser::finish_value(char const*)+0x2920>
    1d3e:	49 bf 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r15
    1d45:	00 00 00
    1d48:	4d 69 e3 00 ca 9a 3b 	imul   $0x3b9aca00,%r11,%r12
    1d4f:	4d 0f af c7          	imul   %r15,%r8
    1d53:	48 69 c9 40 42 0f 00 	imul   $0xf4240,%rcx,%rcx
    1d5a:	4d 89 c7             	mov    %r8,%r15
    1d5d:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1d64:	00 00 00
    1d67:	49 0f af d8          	imul   %r8,%rbx
    1d6b:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1d72:	00 00 00
    1d75:	4d 0f af f0          	imul   %r8,%r14
    1d79:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    1d7e:	48 89 dd             	mov    %rbx,%rbp
    1d81:	49 69 da 00 e1 f5 05 	imul   $0x5f5e100,%r10,%rbx
    1d88:	49 83 e8 30          	sub    $0x30,%r8
    1d8c:	4d 89 f5             	mov    %r14,%r13
    1d8f:	48 89 5c 24 b0       	mov    %rbx,-0x50(%rsp)
    1d94:	49 69 d9 80 96 98 00 	imul   $0x989680,%r9,%rbx
    1d9b:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    1da0:	49 83 f8 09          	cmp    $0x9,%r8
    1da4:	0f 87 47 07 00 00    	ja     24f1 <stomptalk::parser::finish_value(char const*)+0x1bd1>
    1daa:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    1daf:	4d 69 c0 a0 86 01 00 	imul   $0x186a0,%r8,%r8
    1db6:	49 83 e9 30          	sub    $0x30,%r9
    1dba:	49 83 f9 09          	cmp    $0x9,%r9
    1dbe:	0f 87 1e 07 00 00    	ja     24e2 <stomptalk::parser::finish_value(char const*)+0x1bc2>
    1dc4:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    1dc9:	4d 69 c9 10 27 00 00 	imul   $0x2710,%r9,%r9
    1dd0:	49 83 ea 30          	sub    $0x30,%r10
    1dd4:	49 83 fa 09          	cmp    $0x9,%r10
    1dd8:	0f 87 f5 06 00 00    	ja     24d3 <stomptalk::parser::finish_value(char const*)+0x1bb3>
    1dde:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    1de3:	4d 69 d2 e8 03 00 00 	imul   $0x3e8,%r10,%r10
    1dea:	49 83 eb 30          	sub    $0x30,%r11
    1dee:	49 83 fb 09          	cmp    $0x9,%r11
    1df2:	0f 87 cc 06 00 00    	ja     24c4 <stomptalk::parser::finish_value(char const*)+0x1ba4>
    1df8:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1dfc:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    1e01:	49 83 eb 30          	sub    $0x30,%r11
    1e05:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    1e0a:	49 83 fb 09          	cmp    $0x9,%r11
    1e0e:	0f 87 a1 06 00 00    	ja     24b5 <stomptalk::parser::finish_value(char const*)+0x1b95>
    1e14:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1e1b:	00 00 80
    1e1e:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1e22:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    1e27:	49 83 eb 30          	sub    $0x30,%r11
    1e2b:	49 83 fb 0a          	cmp    $0xa,%r11
    1e2f:	4d 0f 43 de          	cmovae %r14,%r11
    1e33:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1e37:	e9 5b fe ff ff       	jmp    1c97 <stomptalk::parser::finish_value(char const*)+0x1377>
    1e3c:	0f 87 c6 15 00 00    	ja     3408 <stomptalk::parser::finish_value(char const*)+0x2ae8>
    1e42:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    1e47:	49 83 e9 30          	sub    $0x30,%r9
    1e4b:	49 83 f9 09          	cmp    $0x9,%r9
    1e4f:	0f 87 91 15 00 00    	ja     33e6 <stomptalk::parser::finish_value(char const*)+0x2ac6>
    1e55:	4c 0f be 52 02       	movsbq 0x2(%rdx),%r10
    1e5a:	49 83 ea 30          	sub    $0x30,%r10
    1e5e:	49 83 fa 09          	cmp    $0x9,%r10
    1e62:	0f 87 5c 15 00 00    	ja     33c4 <stomptalk::parser::finish_value(char const*)+0x2aa4>
    1e68:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1e6d:	49 83 eb 30          	sub    $0x30,%r11
    1e71:	49 83 fb 09          	cmp    $0x9,%r11
    1e75:	0f 87 27 15 00 00    	ja     33a2 <stomptalk::parser::finish_value(char const*)+0x2a82>
    1e7b:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    1e80:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1e84:	48 83 fb 09          	cmp    $0x9,%rbx
    1e88:	0f 87 f2 14 00 00    	ja     3380 <stomptalk::parser::finish_value(char const*)+0x2a60>
    1e8e:	48 0f be 4a 05       	movsbq 0x5(%rdx),%rcx
    1e93:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    1e97:	49 83 fe 09          	cmp    $0x9,%r14
    1e9b:	0f 87 bd 14 00 00    	ja     335e <stomptalk::parser::finish_value(char const*)+0x2a3e>
    1ea1:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1ea6:	48 83 e9 30          	sub    $0x30,%rcx
    1eaa:	48 83 f9 09          	cmp    $0x9,%rcx
    1eae:	0f 87 88 14 00 00    	ja     333c <stomptalk::parser::finish_value(char const*)+0x2a1c>
    1eb4:	4c 6b e9 64          	imul   $0x64,%rcx,%r13
    1eb8:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
    1ebd:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
    1ec4:	48 83 e9 30          	sub    $0x30,%rcx
    1ec8:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    1ecf:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    1ed6:	4d 69 db a0 86 01 00 	imul   $0x186a0,%r11,%r11
    1edd:	4c 69 fb 10 27 00 00 	imul   $0x2710,%rbx,%r15
    1ee4:	49 69 ee e8 03 00 00 	imul   $0x3e8,%r14,%rbp
    1eeb:	48 83 f9 09          	cmp    $0x9,%rcx
    1eef:	0f 87 39 14 00 00    	ja     332e <stomptalk::parser::finish_value(char const*)+0x2a0e>
    1ef5:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1efc:	00 00 80
    1eff:	48 8d 1c 89          	lea    (%rcx,%rcx,4),%rbx
    1f03:	48 0f be 4a 08       	movsbq 0x8(%rdx),%rcx
    1f08:	48 83 e9 30          	sub    $0x30,%rcx
    1f0c:	48 83 f9 0a          	cmp    $0xa,%rcx
    1f10:	49 0f 43 ce          	cmovae %r14,%rcx
    1f14:	48 8d 0c 59          	lea    (%rcx,%rbx,2),%rcx
    1f18:	4c 01 e9             	add    %r13,%rcx
    1f1b:	48 01 e9             	add    %rbp,%rcx
    1f1e:	4c 01 f9             	add    %r15,%rcx
    1f21:	4c 01 d9             	add    %r11,%rcx
    1f24:	4c 01 d1             	add    %r10,%rcx
    1f27:	4c 01 c9             	add    %r9,%rcx
    1f2a:	4c 01 c1             	add    %r8,%rcx
    1f2d:	e9 1e f1 ff ff       	jmp    1050 <stomptalk::parser::finish_value(char const*)+0x730>
    1f32:	0f 87 10 0c 00 00    	ja     2b48 <stomptalk::parser::finish_value(char const*)+0x2228>
    1f38:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    1f3d:	49 83 ea 30          	sub    $0x30,%r10
    1f41:	49 83 fa 09          	cmp    $0x9,%r10
    1f45:	0f 87 db 0b 00 00    	ja     2b26 <stomptalk::parser::finish_value(char const*)+0x2206>
    1f4b:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    1f50:	49 83 eb 30          	sub    $0x30,%r11
    1f54:	49 83 fb 09          	cmp    $0x9,%r11
    1f58:	0f 87 a6 0b 00 00    	ja     2b04 <stomptalk::parser::finish_value(char const*)+0x21e4>
    1f5e:	4c 0f be 4a 03       	movsbq 0x3(%rdx),%r9
    1f63:	49 83 e9 30          	sub    $0x30,%r9
    1f67:	49 83 f9 09          	cmp    $0x9,%r9
    1f6b:	0f 87 71 0b 00 00    	ja     2ae2 <stomptalk::parser::finish_value(char const*)+0x21c2>
    1f71:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    1f76:	48 83 e9 30          	sub    $0x30,%rcx
    1f7a:	48 83 f9 09          	cmp    $0x9,%rcx
    1f7e:	0f 87 3c 0b 00 00    	ja     2ac0 <stomptalk::parser::finish_value(char const*)+0x21a0>
    1f84:	48 0f be 5a 05       	movsbq 0x5(%rdx),%rbx
    1f89:	48 83 eb 30          	sub    $0x30,%rbx
    1f8d:	48 83 fb 09          	cmp    $0x9,%rbx
    1f91:	0f 87 07 0b 00 00    	ja     2a9e <stomptalk::parser::finish_value(char const*)+0x217e>
    1f97:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    1f9b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    1f9f:	4d 69 db e8 03 00 00 	imul   $0x3e8,%r11,%r11
    1fa6:	48 8d 0c 4b          	lea    (%rbx,%rcx,2),%rcx
    1faa:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    1fb1:	4d 69 c0 a0 86 01 00 	imul   $0x186a0,%r8,%r8
    1fb8:	4c 01 c9             	add    %r9,%rcx
    1fbb:	4c 01 d9             	add    %r11,%rcx
    1fbe:	4c 01 d1             	add    %r10,%rcx
    1fc1:	4c 01 c1             	add    %r8,%rcx
    1fc4:	e9 c7 fa ff ff       	jmp    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    1fc9:	0f 87 25 0a 00 00    	ja     29f4 <stomptalk::parser::finish_value(char const*)+0x20d4>
    1fcf:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    1fd4:	49 83 e9 30          	sub    $0x30,%r9
    1fd8:	49 83 f9 09          	cmp    $0x9,%r9
    1fdc:	0f 87 f0 09 00 00    	ja     29d2 <stomptalk::parser::finish_value(char const*)+0x20b2>
    1fe2:	4c 0f be 52 02       	movsbq 0x2(%rdx),%r10
    1fe7:	49 83 ea 30          	sub    $0x30,%r10
    1feb:	49 83 fa 09          	cmp    $0x9,%r10
    1fef:	0f 87 bb 09 00 00    	ja     29b0 <stomptalk::parser::finish_value(char const*)+0x2090>
    1ff5:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    1ffa:	48 83 e9 30          	sub    $0x30,%rcx
    1ffe:	48 83 f9 09          	cmp    $0x9,%rcx
    2002:	0f 87 86 09 00 00    	ja     298e <stomptalk::parser::finish_value(char const*)+0x206e>
    2008:	4c 0f be 5a 04       	movsbq 0x4(%rdx),%r11
    200d:	49 83 eb 30          	sub    $0x30,%r11
    2011:	49 83 fb 09          	cmp    $0x9,%r11
    2015:	0f 87 07 05 00 00    	ja     2522 <stomptalk::parser::finish_value(char const*)+0x1c02>
    201b:	4d 6b d2 64          	imul   $0x64,%r10,%r10
    201f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    2023:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    202a:	49 8d 0c 4b          	lea    (%r11,%rcx,2),%rcx
    202e:	4d 69 c0 10 27 00 00 	imul   $0x2710,%r8,%r8
    2035:	4c 01 d1             	add    %r10,%rcx
    2038:	4c 01 c9             	add    %r9,%rcx
    203b:	4c 01 c1             	add    %r8,%rcx
    203e:	e9 4d fa ff ff       	jmp    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    2043:	0f 87 33 0a 00 00    	ja     2a7c <stomptalk::parser::finish_value(char const*)+0x215c>
    2049:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    204e:	49 83 e9 30          	sub    $0x30,%r9
    2052:	49 83 f9 09          	cmp    $0x9,%r9
    2056:	0f 87 fe 09 00 00    	ja     2a5a <stomptalk::parser::finish_value(char const*)+0x213a>
    205c:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    2061:	48 83 e9 30          	sub    $0x30,%rcx
    2065:	48 83 f9 09          	cmp    $0x9,%rcx
    2069:	0f 87 c9 09 00 00    	ja     2a38 <stomptalk::parser::finish_value(char const*)+0x2118>
    206f:	4c 0f be 52 03       	movsbq 0x3(%rdx),%r10
    2074:	49 83 ea 30          	sub    $0x30,%r10
    2078:	49 83 fa 09          	cmp    $0x9,%r10
    207c:	0f 87 94 09 00 00    	ja     2a16 <stomptalk::parser::finish_value(char const*)+0x20f6>
    2082:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    2086:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    208a:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
    2091:	49 8d 0c 4a          	lea    (%r10,%rcx,2),%rcx
    2095:	4c 01 c9             	add    %r9,%rcx
    2098:	4c 01 c1             	add    %r8,%rcx
    209b:	e9 f0 f9 ff ff       	jmp    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    20a0:	0f 87 02 0f 00 00    	ja     2fa8 <stomptalk::parser::finish_value(char const*)+0x2688>
    20a6:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    20ab:	48 83 e9 30          	sub    $0x30,%rcx
    20af:	48 83 f9 09          	cmp    $0x9,%rcx
    20b3:	0f 87 cd 0e 00 00    	ja     2f86 <stomptalk::parser::finish_value(char const*)+0x2666>
    20b9:	4c 0f be 4a 02       	movsbq 0x2(%rdx),%r9
    20be:	49 83 e9 30          	sub    $0x30,%r9
    20c2:	49 83 f9 09          	cmp    $0x9,%r9
    20c6:	0f 87 33 0d 00 00    	ja     2dff <stomptalk::parser::finish_value(char const*)+0x24df>
    20cc:	4d 6b c0 64          	imul   $0x64,%r8,%r8
    20d0:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    20d4:	49 8d 0c 49          	lea    (%r9,%rcx,2),%rcx
    20d8:	4c 01 c1             	add    %r8,%rcx
    20db:	e9 b0 f9 ff ff       	jmp    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    20e0:	0f 87 32 14 00 00    	ja     3518 <stomptalk::parser::finish_value(char const*)+0x2bf8>
    20e6:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    20eb:	48 83 e9 30          	sub    $0x30,%rcx
    20ef:	48 83 f9 09          	cmp    $0x9,%rcx
    20f3:	0f 87 fd 13 00 00    	ja     34f6 <stomptalk::parser::finish_value(char const*)+0x2bd6>
    20f9:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
    20fd:	4a 8d 0c 41          	lea    (%rcx,%r8,2),%rcx
    2101:	e9 8a f9 ff ff       	jmp    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    2106:	0f 87 06 10 00 00    	ja     3112 <stomptalk::parser::finish_value(char const*)+0x27f2>
    210c:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    2111:	49 83 ea 30          	sub    $0x30,%r10
    2115:	49 83 fa 09          	cmp    $0x9,%r10
    2119:	0f 87 d1 0f 00 00    	ja     30f0 <stomptalk::parser::finish_value(char const*)+0x27d0>
    211f:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    2124:	49 83 eb 30          	sub    $0x30,%r11
    2128:	49 83 fb 09          	cmp    $0x9,%r11
    212c:	0f 87 9c 0f 00 00    	ja     30ce <stomptalk::parser::finish_value(char const*)+0x27ae>
    2132:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    2137:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    213b:	48 83 fb 09          	cmp    $0x9,%rbx
    213f:	0f 87 67 0f 00 00    	ja     30ac <stomptalk::parser::finish_value(char const*)+0x278c>
    2145:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    214a:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    214e:	49 83 fe 09          	cmp    $0x9,%r14
    2152:	0f 87 32 0f 00 00    	ja     308a <stomptalk::parser::finish_value(char const*)+0x276a>
    2158:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    215d:	49 83 e9 30          	sub    $0x30,%r9
    2161:	49 83 f9 09          	cmp    $0x9,%r9
    2165:	0f 87 fd 0e 00 00    	ja     3068 <stomptalk::parser::finish_value(char const*)+0x2748>
    216b:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    2170:	48 83 e9 30          	sub    $0x30,%rcx
    2174:	48 83 f9 09          	cmp    $0x9,%rcx
    2178:	0f 87 c8 0e 00 00    	ja     3046 <stomptalk::parser::finish_value(char const*)+0x2726>
    217e:	49 bf 00 e4 0b 54 02 	movabs $0x2540be400,%r15
    2185:	00 00 00
    2188:	4d 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r10
    218f:	4d 0f af c7          	imul   %r15,%r8
    2193:	4d 69 db 00 e1 f5 05 	imul   $0x5f5e100,%r11,%r11
    219a:	48 69 eb 80 96 98 00 	imul   $0x989680,%rbx,%rbp
    21a1:	4d 89 c7             	mov    %r8,%r15
    21a4:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    21a9:	4d 69 ee 40 42 0f 00 	imul   $0xf4240,%r14,%r13
    21b0:	4d 69 e1 a0 86 01 00 	imul   $0x186a0,%r9,%r12
    21b7:	49 83 e8 30          	sub    $0x30,%r8
    21bb:	48 69 c9 10 27 00 00 	imul   $0x2710,%rcx,%rcx
    21c2:	49 83 f8 09          	cmp    $0x9,%r8
    21c6:	0f 87 6b 0e 00 00    	ja     3037 <stomptalk::parser::finish_value(char const*)+0x2717>
    21cc:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    21d1:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
    21d8:	49 83 e9 30          	sub    $0x30,%r9
    21dc:	49 83 f9 09          	cmp    $0x9,%r9
    21e0:	0f 87 f3 0d 00 00    	ja     2fd9 <stomptalk::parser::finish_value(char const*)+0x26b9>
    21e6:	49 6b d9 64          	imul   $0x64,%r9,%rbx
    21ea:	4c 0f be 4a 09       	movsbq 0x9(%rdx),%r9
    21ef:	49 83 e9 30          	sub    $0x30,%r9
    21f3:	48 89 5c 24 b0       	mov    %rbx,-0x50(%rsp)
    21f8:	49 83 f9 09          	cmp    $0x9,%r9
    21fc:	0f 87 c8 0d 00 00    	ja     2fca <stomptalk::parser::finish_value(char const*)+0x26aa>
    2202:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    2209:	00 00 80
    220c:	4b 8d 1c 89          	lea    (%r9,%r9,4),%rbx
    2210:	4c 0f be 4a 0a       	movsbq 0xa(%rdx),%r9
    2215:	49 83 e9 30          	sub    $0x30,%r9
    2219:	49 83 f9 0a          	cmp    $0xa,%r9
    221d:	4d 0f 43 ce          	cmovae %r14,%r9
    2221:	4d 8d 0c 59          	lea    (%r9,%rbx,2),%r9
    2225:	48 8b 5c 24 b0       	mov    -0x50(%rsp),%rbx
    222a:	49 01 d9             	add    %rbx,%r9
    222d:	4d 01 c8             	add    %r9,%r8
    2230:	4c 01 c1             	add    %r8,%rcx
    2233:	4c 01 e1             	add    %r12,%rcx
    2236:	4c 01 e9             	add    %r13,%rcx
    2239:	48 01 e9             	add    %rbp,%rcx
    223c:	4c 01 d9             	add    %r11,%rcx
    223f:	4c 01 d1             	add    %r10,%rcx
    2242:	4c 01 f9             	add    %r15,%rcx
    2245:	e9 06 ee ff ff       	jmp    1050 <stomptalk::parser::finish_value(char const*)+0x730>
    224a:	48 8b 1c 24          	mov    (%rsp),%rbx
    224e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2253:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2258:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    225d:	e9 95 e7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2268:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    226f:	00 00 00
    2272:	48 8b 1c 24          	mov    (%rsp),%rbx
    2276:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    227b:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
    2282:	48 89 f0             	mov    %rsi,%rax
    2285:	48 83 c6 01          	add    $0x1,%rsi
    2289:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
    2290:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
    2297:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    229c:	31 c0                	xor    %eax,%eax
    229e:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
    22a5:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    22aa:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    22af:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    22b4:	e9 6d e7 ff ff       	jmp    a26 <stomptalk::parser::finish_value(char const*)+0x106>
    22b9:	48 b9 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rcx
    22c0:	b6 e0 0d
    22c3:	4c 89 e3             	mov    %r12,%rbx
    22c6:	48 0f af d9          	imul   %rcx,%rbx
    22ca:	4a 8d 0c 0b          	lea    (%rbx,%r9,1),%rcx
    22ce:	e9 bd f7 ff ff       	jmp    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    22d3:	48 8b 1c 24          	mov    (%rsp),%rbx
    22d7:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    22dc:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    22e1:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    22e6:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    22eb:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    22f0:	e9 02 e7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    22f5:	48 8b 1c 24          	mov    (%rsp),%rbx
    22f9:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    22fe:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2303:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2308:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    230d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2312:	e9 e0 e6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2317:	0f 86 73 f7 ff ff    	jbe    1a90 <stomptalk::parser::finish_value(char const*)+0x1170>
    231d:	48 8b 1c 24          	mov    (%rsp),%rbx
    2321:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2326:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    232b:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2330:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2335:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    233a:	e9 b8 e6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    233f:	90                   	nop
    2340:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2345:	e9 ad e6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    234a:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    234f:	e9 a3 e6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2354:	48 8b 1c 24          	mov    (%rsp),%rbx
    2358:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    235d:	e9 95 e6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2362:	48 8b 1c 24          	mov    (%rsp),%rbx
    2366:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    236b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2370:	e9 82 e6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2375:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    237c:	00 00 80
    237f:	e9 a0 e9 ff ff       	jmp    d24 <stomptalk::parser::finish_value(char const*)+0x404>
    2384:	bb 01 00 00 00       	mov    $0x1,%ebx
    2389:	48 c1 e3 3f          	shl    $0x3f,%rbx
    238d:	e9 9a e9 ff ff       	jmp    d2c <stomptalk::parser::finish_value(char const*)+0x40c>
    2392:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    2399:	00 00 80
    239c:	e9 80 e9 ff ff       	jmp    d21 <stomptalk::parser::finish_value(char const*)+0x401>
    23a1:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23a8:	00 00 80
    23ab:	e9 84 e9 ff ff       	jmp    d34 <stomptalk::parser::finish_value(char const*)+0x414>
    23b0:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23b7:	00 00 80
    23ba:	e9 7d e9 ff ff       	jmp    d3c <stomptalk::parser::finish_value(char const*)+0x41c>
    23bf:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23c6:	00 00 80
    23c9:	e9 76 e9 ff ff       	jmp    d44 <stomptalk::parser::finish_value(char const*)+0x424>
    23ce:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23d5:	00 00 80
    23d8:	e9 6f e9 ff ff       	jmp    d4c <stomptalk::parser::finish_value(char const*)+0x42c>
    23dd:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    23e4:	00 00 80
    23e7:	e9 68 e9 ff ff       	jmp    d54 <stomptalk::parser::finish_value(char const*)+0x434>
    23ec:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    23f3:	00 00 80
    23f6:	e9 5c e9 ff ff       	jmp    d57 <stomptalk::parser::finish_value(char const*)+0x437>
    23fb:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2402:	00 00 80
    2405:	e9 50 e9 ff ff       	jmp    d5a <stomptalk::parser::finish_value(char const*)+0x43a>
    240a:	48 8b 1c 24          	mov    (%rsp),%rbx
    240e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2413:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2418:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    241d:	e9 d5 e5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2422:	48 8b 1c 24          	mov    (%rsp),%rbx
    2426:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    242b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2430:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2435:	e9 bd e5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    243a:	48 8b 1c 24          	mov    (%rsp),%rbx
    243e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2443:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2448:	e9 aa e5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    244d:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2454:	00 00 80
    2457:	e9 57 f0 ff ff       	jmp    14b3 <stomptalk::parser::finish_value(char const*)+0xb93>
    245c:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2463:	00 00 80
    2466:	e9 50 f0 ff ff       	jmp    14bb <stomptalk::parser::finish_value(char const*)+0xb9b>
    246b:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2472:	00 00 80
    2475:	e9 44 f0 ff ff       	jmp    14be <stomptalk::parser::finish_value(char const*)+0xb9e>
    247a:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2481:	00 00 80
    2484:	e9 38 f0 ff ff       	jmp    14c1 <stomptalk::parser::finish_value(char const*)+0xba1>
    2489:	b9 01 00 00 00       	mov    $0x1,%ecx
    248e:	48 c1 e1 3f          	shl    $0x3f,%rcx
    2492:	e9 91 eb ff ff       	jmp    1028 <stomptalk::parser::finish_value(char const*)+0x708>
    2497:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    249e:	00 00 80
    24a1:	e9 1e f0 ff ff       	jmp    14c4 <stomptalk::parser::finish_value(char const*)+0xba4>
    24a6:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    24ad:	00 00 80
    24b0:	e9 f6 ef ff ff       	jmp    14ab <stomptalk::parser::finish_value(char const*)+0xb8b>
    24b5:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    24bc:	00 00 80
    24bf:	e9 d3 f7 ff ff       	jmp    1c97 <stomptalk::parser::finish_value(char const*)+0x1377>
    24c4:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    24cb:	00 00 80
    24ce:	e9 cc f7 ff ff       	jmp    1c9f <stomptalk::parser::finish_value(char const*)+0x137f>
    24d3:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    24da:	00 00 80
    24dd:	e9 c0 f7 ff ff       	jmp    1ca2 <stomptalk::parser::finish_value(char const*)+0x1382>
    24e2:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    24e9:	00 00 80
    24ec:	e9 b4 f7 ff ff       	jmp    1ca5 <stomptalk::parser::finish_value(char const*)+0x1385>
    24f1:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    24f8:	00 00 80
    24fb:	e9 a8 f7 ff ff       	jmp    1ca8 <stomptalk::parser::finish_value(char const*)+0x1388>
    2500:	48 8b 1c 24          	mov    (%rsp),%rbx
    2504:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2509:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    250e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2513:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2518:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    251d:	e9 d5 e4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2522:	48 8b 1c 24          	mov    (%rsp),%rbx
    2526:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    252b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2530:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2535:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    253a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    253f:	e9 b3 e4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2544:	48 8b 1c 24          	mov    (%rsp),%rbx
    2548:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    254d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2552:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2557:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    255c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2561:	e9 91 e4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2566:	48 8b 1c 24          	mov    (%rsp),%rbx
    256a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    256f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2574:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2579:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    257e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2583:	e9 6f e4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2588:	48 8b 1c 24          	mov    (%rsp),%rbx
    258c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2591:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2596:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    259b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    25a0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    25a5:	e9 4d e4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    25aa:	48 8b 1c 24          	mov    (%rsp),%rbx
    25ae:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    25b3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    25b8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    25bd:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    25c2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    25c7:	e9 2b e4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    25cc:	48 8b 1c 24          	mov    (%rsp),%rbx
    25d0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    25d5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    25da:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    25df:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    25e4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    25e9:	e9 09 e4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    25ee:	48 8b 1c 24          	mov    (%rsp),%rbx
    25f2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    25f7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    25fc:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2601:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2606:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    260b:	e9 e7 e3 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2610:	48 8b 1c 24          	mov    (%rsp),%rbx
    2614:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2619:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    261e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2623:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2628:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    262d:	e9 c5 e3 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2632:	48 8b 1c 24          	mov    (%rsp),%rbx
    2636:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    263b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2640:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2645:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    264a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    264f:	e9 a3 e3 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2654:	48 8b 1c 24          	mov    (%rsp),%rbx
    2658:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    265d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2662:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2667:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    266c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2671:	e9 81 e3 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2676:	48 8b 1c 24          	mov    (%rsp),%rbx
    267a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    267f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2684:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2689:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    268e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2693:	e9 5f e3 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2698:	48 8b 1c 24          	mov    (%rsp),%rbx
    269c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    26a1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    26a6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    26ab:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    26b0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    26b5:	e9 3d e3 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    26ba:	48 8b 1c 24          	mov    (%rsp),%rbx
    26be:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    26c3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    26c8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    26cd:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    26d2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    26d7:	e9 1b e3 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    26dc:	48 8b 1c 24          	mov    (%rsp),%rbx
    26e0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    26e5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    26ea:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    26ef:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    26f4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    26f9:	e9 f9 e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    26fe:	48 8b 1c 24          	mov    (%rsp),%rbx
    2702:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2707:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    270c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2711:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2716:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    271b:	e9 d7 e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2720:	48 8b 1c 24          	mov    (%rsp),%rbx
    2724:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2729:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    272e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2733:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2738:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    273d:	e9 b5 e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2742:	48 8b 1c 24          	mov    (%rsp),%rbx
    2746:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    274b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2750:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2755:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    275a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    275f:	e9 93 e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2764:	48 8b 1c 24          	mov    (%rsp),%rbx
    2768:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    276d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2772:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2777:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    277c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2781:	e9 71 e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2786:	48 8b 1c 24          	mov    (%rsp),%rbx
    278a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    278f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2794:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2799:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    279e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    27a3:	e9 4f e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    27a8:	48 8b 1c 24          	mov    (%rsp),%rbx
    27ac:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    27b1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    27b6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    27bb:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    27c0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    27c5:	e9 2d e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    27ca:	48 8b 1c 24          	mov    (%rsp),%rbx
    27ce:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    27d3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    27d8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    27dd:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    27e2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    27e7:	e9 0b e2 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    27ec:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    27f3:	00 00 80
    27f6:	e9 a8 ec ff ff       	jmp    14a3 <stomptalk::parser::finish_value(char const*)+0xb83>
    27fb:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2802:	00 00 80
    2805:	e9 7d f4 ff ff       	jmp    1c87 <stomptalk::parser::finish_value(char const*)+0x1367>
    280a:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2811:	00 00 80
    2814:	e9 76 f4 ff ff       	jmp    1c8f <stomptalk::parser::finish_value(char const*)+0x136f>
    2819:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2820:	00 00 80
    2823:	e9 cc e7 ff ff       	jmp    ff4 <stomptalk::parser::finish_value(char const*)+0x6d4>
    2828:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    282f:	00 00 80
    2832:	e9 4d ea ff ff       	jmp    1284 <stomptalk::parser::finish_value(char const*)+0x964>
    2837:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    283e:	00 00 80
    2841:	e9 46 ea ff ff       	jmp    128c <stomptalk::parser::finish_value(char const*)+0x96c>
    2846:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    284d:	00 00 80
    2850:	e9 3f ea ff ff       	jmp    1294 <stomptalk::parser::finish_value(char const*)+0x974>
    2855:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    285c:	00 00 80
    285f:	e9 38 ea ff ff       	jmp    129c <stomptalk::parser::finish_value(char const*)+0x97c>
    2864:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    286b:	00 00 80
    286e:	e9 31 ea ff ff       	jmp    12a4 <stomptalk::parser::finish_value(char const*)+0x984>
    2873:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    287a:	00 00 80
    287d:	e9 25 ea ff ff       	jmp    12a7 <stomptalk::parser::finish_value(char const*)+0x987>
    2882:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2889:	00 00 80
    288c:	e9 19 ea ff ff       	jmp    12aa <stomptalk::parser::finish_value(char const*)+0x98a>
    2891:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    2898:	00 00 80
    289b:	e9 0d ea ff ff       	jmp    12ad <stomptalk::parser::finish_value(char const*)+0x98d>
    28a0:	48 8b 1c 24          	mov    (%rsp),%rbx
    28a4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    28a9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    28ae:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    28b3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    28b8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    28bd:	e9 35 e1 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    28c2:	48 8b 1c 24          	mov    (%rsp),%rbx
    28c6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    28cb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    28d0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    28d5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    28da:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    28df:	e9 13 e1 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    28e4:	48 8b 1c 24          	mov    (%rsp),%rbx
    28e8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    28ed:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    28f2:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    28f7:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    28fc:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2901:	e9 f1 e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2906:	48 8b 1c 24          	mov    (%rsp),%rbx
    290a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    290f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2914:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2919:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    291e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2923:	e9 cf e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2928:	48 8b 1c 24          	mov    (%rsp),%rbx
    292c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2931:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2936:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    293b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2940:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2945:	e9 ad e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    294a:	48 8b 1c 24          	mov    (%rsp),%rbx
    294e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2953:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2958:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    295d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2962:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2967:	e9 8b e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    296c:	48 8b 1c 24          	mov    (%rsp),%rbx
    2970:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2975:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    297a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    297f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2984:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2989:	e9 69 e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    298e:	48 8b 1c 24          	mov    (%rsp),%rbx
    2992:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2997:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    299c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    29a1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    29a6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    29ab:	e9 47 e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    29b0:	48 8b 1c 24          	mov    (%rsp),%rbx
    29b4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    29b9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    29be:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    29c3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    29c8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    29cd:	e9 25 e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    29d2:	48 8b 1c 24          	mov    (%rsp),%rbx
    29d6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    29db:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    29e0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    29e5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    29ea:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    29ef:	e9 03 e0 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    29f4:	48 8b 1c 24          	mov    (%rsp),%rbx
    29f8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    29fd:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2a02:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2a07:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2a0c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2a11:	e9 e1 df ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2a16:	48 8b 1c 24          	mov    (%rsp),%rbx
    2a1a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2a1f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2a24:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2a29:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2a2e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2a33:	e9 bf df ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2a38:	48 8b 1c 24          	mov    (%rsp),%rbx
    2a3c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2a41:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2a46:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2a4b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2a50:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2a55:	e9 9d df ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2a5a:	48 8b 1c 24          	mov    (%rsp),%rbx
    2a5e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2a63:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2a68:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2a6d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2a72:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2a77:	e9 7b df ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2a7c:	48 8b 1c 24          	mov    (%rsp),%rbx
    2a80:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2a85:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2a8a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2a8f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2a94:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2a99:	e9 59 df ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2a9e:	48 8b 1c 24          	mov    (%rsp),%rbx
    2aa2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2aa7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2aac:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ab1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ab6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2abb:	e9 37 df ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2ac0:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ac4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ac9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ace:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ad3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ad8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2add:	e9 15 df ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2ae2:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ae6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2aeb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2af0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2af5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2afa:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2aff:	e9 f3 de ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2b04:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b08:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b0d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2b12:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b17:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b1c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b21:	e9 d1 de ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2b26:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b2a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b2f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2b34:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b39:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b3e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b43:	e9 af de ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2b48:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b4c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b51:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2b56:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b5b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b60:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b65:	e9 8d de ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2b6a:	44 0f b6 02          	movzbl (%rdx),%r8d
    2b6e:	41 83 e8 30          	sub    $0x30,%r8d
    2b72:	41 83 f8 09          	cmp    $0x9,%r8d
    2b76:	77 6b                	ja     2be3 <stomptalk::parser::finish_value(char const*)+0x22c3>
    2b78:	45 89 c4             	mov    %r8d,%r12d
    2b7b:	48 83 f8 14          	cmp    $0x14,%rax
    2b7f:	75 3f                	jne    2bc0 <stomptalk::parser::finish_value(char const*)+0x22a0>
    2b81:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b85:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b8a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b8f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b94:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b99:	e9 04 df ff ff       	jmp    aa2 <stomptalk::parser::finish_value(char const*)+0x182>
    2b9e:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ba2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ba7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2bac:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2bb1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2bb6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2bbb:	e9 37 de ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2bc0:	48 8b 1c 24          	mov    (%rsp),%rbx
    2bc4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2bc9:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    2bcf:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2bd4:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2bd9:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2bde:	e9 e0 de ff ff       	jmp    ac3 <stomptalk::parser::finish_value(char const*)+0x1a3>
    2be3:	48 8b 1c 24          	mov    (%rsp),%rbx
    2be7:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2bec:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2bf1:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2bf6:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2bfb:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c00:	e9 f2 dd ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2c05:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    2c0c:	00 00 80
    2c0f:	e9 d5 ec ff ff       	jmp    18e9 <stomptalk::parser::finish_value(char const*)+0xfc9>
    2c14:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c18:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c1d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2c22:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2c27:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2c2c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c31:	e9 c1 dd ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2c36:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c3a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c3f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2c44:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2c49:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2c4e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c53:	e9 9f dd ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2c58:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c5c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c61:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2c66:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2c6b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2c70:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c75:	e9 7d dd ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2c7a:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c7e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c83:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2c88:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2c8d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2c92:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c97:	e9 5b dd ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2c9c:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ca0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ca5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2caa:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2caf:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2cb4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2cb9:	e9 39 dd ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2cbe:	48 8b 1c 24          	mov    (%rsp),%rbx
    2cc2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2cc7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ccc:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2cd1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2cd6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2cdb:	e9 17 dd ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2ce0:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ce4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ce9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2cee:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2cf3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2cf8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2cfd:	e9 f5 dc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2d02:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2d09:	00 00 80
    2d0c:	e9 db eb ff ff       	jmp    18ec <stomptalk::parser::finish_value(char const*)+0xfcc>
    2d11:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d15:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d1a:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d1f:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d24:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d29:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d2e:	e9 c4 dc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2d33:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d37:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d3c:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d41:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d46:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d4b:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d50:	e9 a2 dc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2d55:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d59:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d5e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d63:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d68:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d6d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d72:	e9 80 dc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2d77:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d7b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d80:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d85:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d8a:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d8f:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d94:	e9 5e dc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2d99:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d9d:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2da2:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2da7:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2dac:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2db1:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2db6:	e9 3c dc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2dbb:	48 8b 1c 24          	mov    (%rsp),%rbx
    2dbf:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2dc4:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2dc9:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2dce:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2dd3:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2dd8:	e9 1a dc ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2ddd:	48 8b 1c 24          	mov    (%rsp),%rbx
    2de1:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2de6:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2deb:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2df0:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2df5:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2dfa:	e9 f8 db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2dff:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e03:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e08:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e0d:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e12:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e17:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e1c:	e9 d6 db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2e21:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e25:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e2a:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e2f:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e34:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e39:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e3e:	e9 b4 db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2e43:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e47:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e4c:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e51:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e56:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e5b:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e60:	e9 92 db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2e65:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e69:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e6e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e73:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e78:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e7d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e82:	e9 70 db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2e87:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e8b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e90:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e95:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e9a:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e9f:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2ea4:	e9 4e db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2ea9:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ead:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2eb2:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2eb7:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ebc:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ec1:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2ec6:	e9 2c db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2ecb:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ecf:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ed4:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ed9:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ede:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ee3:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2ee8:	e9 0a db ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2eed:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ef1:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ef6:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2efb:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2f00:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2f05:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2f0a:	e9 e8 da ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2f0f:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2f16:	00 00 80
    2f19:	e9 de e0 ff ff       	jmp    ffc <stomptalk::parser::finish_value(char const*)+0x6dc>
    2f1e:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2f25:	00 00 80
    2f28:	e9 d7 e0 ff ff       	jmp    1004 <stomptalk::parser::finish_value(char const*)+0x6e4>
    2f2d:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2f34:	00 00 80
    2f37:	e9 d0 e0 ff ff       	jmp    100c <stomptalk::parser::finish_value(char const*)+0x6ec>
    2f3c:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2f43:	00 00 80
    2f46:	e9 c9 e0 ff ff       	jmp    1014 <stomptalk::parser::finish_value(char const*)+0x6f4>
    2f4b:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2f52:	00 00 80
    2f55:	e9 bd e0 ff ff       	jmp    1017 <stomptalk::parser::finish_value(char const*)+0x6f7>
    2f5a:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2f61:	00 00 80
    2f64:	e9 b1 e0 ff ff       	jmp    101a <stomptalk::parser::finish_value(char const*)+0x6fa>
    2f69:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    2f70:	00 00 80
    2f73:	e9 a5 e0 ff ff       	jmp    101d <stomptalk::parser::finish_value(char const*)+0x6fd>
    2f78:	b9 01 00 00 00       	mov    $0x1,%ecx
    2f7d:	48 c1 e1 3f          	shl    $0x3f,%rcx
    2f81:	e9 9a e0 ff ff       	jmp    1020 <stomptalk::parser::finish_value(char const*)+0x700>
    2f86:	48 8b 1c 24          	mov    (%rsp),%rbx
    2f8a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2f8f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2f94:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2f99:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2f9e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2fa3:	e9 4f da ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2fa8:	48 8b 1c 24          	mov    (%rsp),%rbx
    2fac:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2fb1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2fb6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2fbb:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2fc0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2fc5:	e9 2d da ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    2fca:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2fd1:	00 00 80
    2fd4:	e9 4c f2 ff ff       	jmp    2225 <stomptalk::parser::finish_value(char const*)+0x1905>
    2fd9:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2fe0:	00 00 80
    2fe3:	e9 45 f2 ff ff       	jmp    222d <stomptalk::parser::finish_value(char const*)+0x190d>
    2fe8:	48 8b 1c 24          	mov    (%rsp),%rbx
    2fec:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ff1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ff6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ffb:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3000:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3005:	e9 ed d9 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    300a:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    3011:	00 00 80
    3014:	e9 82 e4 ff ff       	jmp    149b <stomptalk::parser::finish_value(char const*)+0xb7b>
    3019:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    3020:	00 00 80
    3023:	e9 a9 e7 ff ff       	jmp    17d1 <stomptalk::parser::finish_value(char const*)+0xeb1>
    3028:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    302f:	00 00 80
    3032:	e9 9d e7 ff ff       	jmp    17d4 <stomptalk::parser::finish_value(char const*)+0xeb4>
    3037:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    303e:	00 00 80
    3041:	e9 ea f1 ff ff       	jmp    2230 <stomptalk::parser::finish_value(char const*)+0x1910>
    3046:	48 8b 1c 24          	mov    (%rsp),%rbx
    304a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    304f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3054:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3059:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    305e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3063:	e9 8f d9 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3068:	48 8b 1c 24          	mov    (%rsp),%rbx
    306c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3071:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3076:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    307b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3080:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3085:	e9 6d d9 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    308a:	48 8b 1c 24          	mov    (%rsp),%rbx
    308e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3093:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3098:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    309d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    30a2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    30a7:	e9 4b d9 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    30ac:	48 8b 1c 24          	mov    (%rsp),%rbx
    30b0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    30b5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    30ba:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    30bf:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    30c4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    30c9:	e9 29 d9 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    30ce:	48 8b 1c 24          	mov    (%rsp),%rbx
    30d2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    30d7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    30dc:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    30e1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    30e6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    30eb:	e9 07 d9 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    30f0:	48 8b 1c 24          	mov    (%rsp),%rbx
    30f4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    30f9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    30fe:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3103:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3108:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    310d:	e9 e5 d8 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3112:	48 8b 1c 24          	mov    (%rsp),%rbx
    3116:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    311b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3120:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3125:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    312a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    312f:	e9 c3 d8 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3134:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    313b:	00 00 80
    313e:	e9 94 e6 ff ff       	jmp    17d7 <stomptalk::parser::finish_value(char const*)+0xeb7>
    3143:	48 8b 1c 24          	mov    (%rsp),%rbx
    3147:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    314c:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3151:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3156:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    315b:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3160:	e9 92 d8 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3165:	48 8b 1c 24          	mov    (%rsp),%rbx
    3169:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    316e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3173:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3178:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    317d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3182:	e9 70 d8 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3187:	48 8b 1c 24          	mov    (%rsp),%rbx
    318b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3190:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3195:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    319a:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    319f:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    31a4:	e9 4e d8 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    31a9:	48 8b 1c 24          	mov    (%rsp),%rbx
    31ad:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    31b2:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    31b7:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    31bc:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    31c1:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    31c6:	e9 2c d8 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    31cb:	48 8b 1c 24          	mov    (%rsp),%rbx
    31cf:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    31d4:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    31d9:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    31de:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    31e3:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    31e8:	e9 0a d8 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    31ed:	48 8b 1c 24          	mov    (%rsp),%rbx
    31f1:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    31f6:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    31fb:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3200:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3205:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    320a:	e9 e8 d7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    320f:	48 8b 1c 24          	mov    (%rsp),%rbx
    3213:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3218:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    321d:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3222:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3227:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    322c:	e9 c6 d7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3231:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    3238:	00 00 80
    323b:	e9 89 e5 ff ff       	jmp    17c9 <stomptalk::parser::finish_value(char const*)+0xea9>
    3240:	48 8b 1c 24          	mov    (%rsp),%rbx
    3244:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3249:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    324e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3253:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3258:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    325d:	e9 95 d7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3262:	48 8b 1c 24          	mov    (%rsp),%rbx
    3266:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    326b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3270:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3275:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    327a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    327f:	e9 73 d7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3284:	48 8b 1c 24          	mov    (%rsp),%rbx
    3288:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    328d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3292:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3297:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    329c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    32a1:	e9 51 d7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    32a6:	48 8b 1c 24          	mov    (%rsp),%rbx
    32aa:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    32af:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    32b4:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    32b9:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    32be:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    32c3:	e9 2f d7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    32c8:	48 8b 1c 24          	mov    (%rsp),%rbx
    32cc:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    32d1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    32d6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    32db:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    32e0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    32e5:	e9 0d d7 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    32ea:	48 8b 1c 24          	mov    (%rsp),%rbx
    32ee:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    32f3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    32f8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    32fd:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3302:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3307:	e9 eb d6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    330c:	48 8b 1c 24          	mov    (%rsp),%rbx
    3310:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3315:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    331a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    331f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3324:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3329:	e9 c9 d6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    332e:	b9 01 00 00 00       	mov    $0x1,%ecx
    3333:	48 c1 e1 3f          	shl    $0x3f,%rcx
    3337:	e9 dc eb ff ff       	jmp    1f18 <stomptalk::parser::finish_value(char const*)+0x15f8>
    333c:	48 8b 1c 24          	mov    (%rsp),%rbx
    3340:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3345:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    334a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    334f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3354:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3359:	e9 99 d6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    335e:	48 8b 1c 24          	mov    (%rsp),%rbx
    3362:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3367:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    336c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3371:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3376:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    337b:	e9 77 d6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3380:	48 8b 1c 24          	mov    (%rsp),%rbx
    3384:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3389:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    338e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3393:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3398:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    339d:	e9 55 d6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    33a2:	48 8b 1c 24          	mov    (%rsp),%rbx
    33a6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    33ab:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    33b0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    33b5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    33ba:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    33bf:	e9 33 d6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    33c4:	48 8b 1c 24          	mov    (%rsp),%rbx
    33c8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    33cd:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    33d2:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    33d7:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    33dc:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    33e1:	e9 11 d6 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    33e6:	48 8b 1c 24          	mov    (%rsp),%rbx
    33ea:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    33ef:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    33f4:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    33f9:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    33fe:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3403:	e9 ef d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3408:	48 8b 1c 24          	mov    (%rsp),%rbx
    340c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3411:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3416:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    341b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3420:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3425:	e9 cd d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    342a:	48 8b 1c 24          	mov    (%rsp),%rbx
    342e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3433:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3438:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    343d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3442:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3447:	e9 ab d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    344c:	48 8b 1c 24          	mov    (%rsp),%rbx
    3450:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3455:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    345a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    345f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3464:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3469:	e9 89 d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    346e:	48 8b 1c 24          	mov    (%rsp),%rbx
    3472:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3477:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    347c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3481:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3486:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    348b:	e9 67 d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3490:	48 8b 1c 24          	mov    (%rsp),%rbx
    3494:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3499:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    349e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    34a3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    34a8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    34ad:	e9 45 d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    34b2:	48 8b 1c 24          	mov    (%rsp),%rbx
    34b6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    34bb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    34c0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    34c5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    34ca:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    34cf:	e9 23 d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    34d4:	48 8b 1c 24          	mov    (%rsp),%rbx
    34d8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    34dd:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    34e2:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    34e7:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    34ec:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    34f1:	e9 01 d5 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    34f6:	48 8b 1c 24          	mov    (%rsp),%rbx
    34fa:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    34ff:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3504:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3509:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    350e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3513:	e9 df d4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    3518:	48 8b 1c 24          	mov    (%rsp),%rbx
    351c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3521:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3526:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    352b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3530:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3535:	e9 bd d4 ff ff       	jmp    9f7 <stomptalk::parser::finish_value(char const*)+0xd7>
    353a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000000 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 39 d6             	cmp    %rdx,%rsi
   7:	0f 83 4d 0a 00 00    	jae    a5a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa5a>
   d:	48 83 ec 58          	sub    $0x58,%rsp
  11:	49 89 d0             	mov    %rdx,%r8
  14:	48 89 f9             	mov    %rdi,%rcx
  17:	80 bf 0a 01 00 00 00 	cmpb   $0x0,0x10a(%rdi)
  1e:	0f 84 bd 00 00 00    	je     e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe1>
  24:	0f b6 06             	movzbl (%rsi),%eax
  27:	3c 6e                	cmp    $0x6e,%al
  29:	0f 84 d1 01 00 00    	je     200 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x200>
  2f:	0f 8f bb 01 00 00    	jg     1f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1f0>
  35:	3c 5c                	cmp    $0x5c,%al
  37:	74 0d                	je     46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46>
  39:	3c 63                	cmp    $0x63,%al
  3b:	0f 85 cf 01 00 00    	jne    210 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x210>
  41:	b8 3a 00 00 00       	mov    $0x3a,%eax
  46:	48 8b 91 00 01 00 00 	mov    0x100(%rcx),%rdx
  4d:	48 85 d2             	test   %rdx,%rdx
  50:	75 5e                	jne    b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb0>
  52:	b8 02 00 00 00       	mov    $0x2,%eax
  57:	48 83 b9 f8 00 00 00 	cmpq   $0x0,0xf8(%rcx)
  5e:	00
  5f:	74 1f                	je     80 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x80>
  61:	89 81 10 01 00 00    	mov    %eax,0x110(%rcx)
  67:	48 89 b1 28 01 00 00 	mov    %rsi,0x128(%rcx)
  6e:	48 89 f0             	mov    %rsi,%rax
  71:	48 83 c4 58          	add    $0x58,%rsp
  75:	c3                   	ret
  76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  7d:	00 00 00
  80:	c7 81 14 01 00 00 0d 	movl   $0xd,0x114(%rcx)
  87:	00 00 00
  8a:	48 89 f0             	mov    %rsi,%rax
  8d:	48 2b 81 20 01 00 00 	sub    0x120(%rcx),%rax
  94:	48 83 c6 01          	add    $0x1,%rsi
  98:	48 89 81 18 01 00 00 	mov    %rax,0x118(%rcx)
  9f:	b8 03 00 00 00       	mov    $0x3,%eax
  a4:	eb bb                	jmp    61 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61>
  a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  ad:	00 00 00
  b0:	48 83 ea 01          	sub    $0x1,%rdx
  b4:	48 83 c6 01          	add    $0x1,%rsi
  b8:	48 89 91 00 01 00 00 	mov    %rdx,0x100(%rcx)
  bf:	48 8b 51 48          	mov    0x48(%rcx),%rdx
  c3:	48 8d 7a 01          	lea    0x1(%rdx),%rdi
  c7:	48 89 79 48          	mov    %rdi,0x48(%rcx)
  cb:	88 02                	mov    %al,(%rdx)
  cd:	c6 81 0a 01 00 00 00 	movb   $0x0,0x10a(%rcx)
  d4:	48 83 81 d8 00 00 00 	addq   $0x1,0xd8(%rcx)
  db:	01
  dc:	4c 39 c6             	cmp    %r8,%rsi
  df:	73 8d                	jae    6e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6e>
  e1:	48 83 b9 c8 00 00 00 	cmpq   $0x0,0xc8(%rcx)
  e8:	00
  e9:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
  ee:	4c 89 c0             	mov    %r8,%rax
  f1:	0f b6 99 0b 01 00 00 	movzbl 0x10b(%rcx),%ebx
  f8:	41 0f 94 c1          	sete   %r9b
  fc:	48 29 f0             	sub    %rsi,%rax
  ff:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
 104:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
 109:	88 1c 24             	mov    %bl,(%rsp)
 10c:	48 83 f8 0f          	cmp    $0xf,%rax
 110:	0f 8e 1a 09 00 00    	jle    a30 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa30>
 116:	b8 0a 0a 0a 0a       	mov    $0xa0a0a0a,%eax
 11b:	66 0f ef f6          	pxor   %xmm6,%xmm6
 11f:	45 31 d2             	xor    %r10d,%r10d
 122:	66 0f 6e d8          	movd   %eax,%xmm3
 126:	b8 0d 0d 0d 0d       	mov    $0xd0d0d0d,%eax
 12b:	66 0f 6e d0          	movd   %eax,%xmm2
 12f:	b8 3a 3a 3a 3a       	mov    $0x3a3a3a3a,%eax
 134:	66 0f 70 e3 00       	pshufd $0x0,%xmm3,%xmm4
 139:	66 0f 6e e8          	movd   %eax,%xmm5
 13d:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
 142:	48 89 f0             	mov    %rsi,%rax
 145:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
 14a:	84 db                	test   %bl,%bl
 14c:	0f 85 f6 00 00 00    	jne    248 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x248>
 152:	bb 5c 5c 5c 5c       	mov    $0x5c5c5c5c,%ebx
 157:	66 0f 6f da          	movdqa %xmm2,%xmm3
 15b:	66 0f 6e fb          	movd   %ebx,%xmm7
 15f:	66 0f 70 ff 00       	pshufd $0x0,%xmm7,%xmm7
 164:	eb 41                	jmp    1a7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1a7>
 166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 16d:	00 00 00
 170:	85 d2                	test   %edx,%edx
 172:	0f 85 58 01 00 00    	jne    2d0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2d0>
 178:	45 31 d2             	xor    %r10d,%r10d
 17b:	8d 57 ff             	lea    -0x1(%rdi),%edx
 17e:	45 31 c9             	xor    %r9d,%r9d
 181:	f3 44 0f bc d7       	tzcnt  %edi,%r10d
 186:	21 d7                	and    %edx,%edi
 188:	49 01 c2             	add    %rax,%r10
 18b:	85 ff                	test   %edi,%edi
 18d:	0f 85 32 01 00 00    	jne    2c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c5>
 193:	48 83 c0 10          	add    $0x10,%rax
 197:	4c 89 c2             	mov    %r8,%rdx
 19a:	48 29 c2             	sub    %rax,%rdx
 19d:	48 83 fa 0f          	cmp    $0xf,%rdx
 1a1:	0f 8e e1 03 00 00    	jle    588 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x588>
 1a7:	f3 0f 6f 00          	movdqu (%rax),%xmm0
 1ab:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 1af:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 1b3:	66 0f 74 cd          	pcmpeqb %xmm5,%xmm1
 1b7:	66 0f 74 d4          	pcmpeqb %xmm4,%xmm2
 1bb:	66 0f d7 f9          	pmovmskb %xmm1,%edi
 1bf:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 1c3:	66 0f 74 cb          	pcmpeqb %xmm3,%xmm1
 1c7:	66 0f eb ca          	por    %xmm2,%xmm1
 1cb:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 1cf:	66 0f 74 d7          	pcmpeqb %xmm7,%xmm2
 1d3:	66 0f 74 c6          	pcmpeqb %xmm6,%xmm0
 1d7:	66 0f eb c2          	por    %xmm2,%xmm0
 1db:	66 0f eb c1          	por    %xmm1,%xmm0
 1df:	66 0f d7 d0          	pmovmskb %xmm0,%edx
 1e3:	85 ff                	test   %edi,%edi
 1e5:	74 05                	je     1ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1ec>
 1e7:	45 84 c9             	test   %r9b,%r9b
 1ea:	75 84                	jne    170 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x170>
 1ec:	09 d7                	or     %edx,%edi
 1ee:	eb 9b                	jmp    18b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x18b>
 1f0:	3c 72                	cmp    $0x72,%al
 1f2:	75 1c                	jne    210 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x210>
 1f4:	b8 0d 00 00 00       	mov    $0xd,%eax
 1f9:	e9 48 fe ff ff       	jmp    46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46>
 1fe:	66 90                	xchg   %ax,%ax
 200:	b8 0a 00 00 00       	mov    $0xa,%eax
 205:	e9 3c fe ff ff       	jmp    46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46>
 20a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 210:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 217:	00 00 00
 21a:	48 89 81 10 01 00 00 	mov    %rax,0x110(%rcx)
 221:	48 89 f0             	mov    %rsi,%rax
 224:	48 2b 81 20 01 00 00 	sub    0x120(%rcx),%rax
 22b:	48 89 81 18 01 00 00 	mov    %rax,0x118(%rcx)
 232:	48 8d 46 01          	lea    0x1(%rsi),%rax
 236:	48 89 81 28 01 00 00 	mov    %rax,0x128(%rcx)
 23d:	48 83 c4 58          	add    $0x58,%rsp
 241:	c3                   	ret
 242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 248:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 24c:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 250:	eb 32                	jmp    284 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x284>
 252:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 258:	85 d2                	test   %edx,%edx
 25a:	0f 85 18 01 00 00    	jne    378 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x378>
 260:	f3 45 0f bc db       	tzcnt  %r11d,%r11d
 265:	45 31 c9             	xor    %r9d,%r9d
 268:	4e 8d 14 18          	lea    (%rax,%r11,1),%r10
 26c:	0f 1f 40 00          	nopl   0x0(%rax)
 270:	48 83 c0 10          	add    $0x10,%rax
 274:	4c 89 c2             	mov    %r8,%rdx
 277:	48 29 c2             	sub    %rax,%rdx
 27a:	48 83 fa 0f          	cmp    $0xf,%rdx
 27e:	0f 8e cc 04 00 00    	jle    750 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x750>
 284:	f3 0f 6f 00          	movdqu (%rax),%xmm0
 288:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 28c:	66 0f 6f f0          	movdqa %xmm0,%xmm6
 290:	66 0f 74 cd          	pcmpeqb %xmm5,%xmm1
 294:	66 0f 74 f2          	pcmpeqb %xmm2,%xmm6
 298:	66 44 0f d7 d9       	pmovmskb %xmm1,%r11d
 29d:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 2a1:	66 0f 74 cb          	pcmpeqb %xmm3,%xmm1
 2a5:	66 0f 74 c4          	pcmpeqb %xmm4,%xmm0
 2a9:	66 0f eb ce          	por    %xmm6,%xmm1
 2ad:	66 0f eb c1          	por    %xmm1,%xmm0
 2b1:	66 0f d7 d0          	pmovmskb %xmm0,%edx
 2b5:	89 d7                	mov    %edx,%edi
 2b7:	45 85 db             	test   %r11d,%r11d
 2ba:	74 05                	je     2c1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c1>
 2bc:	45 84 c9             	test   %r9b,%r9b
 2bf:	75 97                	jne    258 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x258>
 2c1:	85 d2                	test   %edx,%edx
 2c3:	74 ab                	je     270 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x270>
 2c5:	31 d2                	xor    %edx,%edx
 2c7:	f3 0f bc d7          	tzcnt  %edi,%edx
 2cb:	e9 c9 00 00 00       	jmp    399 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x399>
 2d0:	45 31 c9             	xor    %r9d,%r9d
 2d3:	45 31 db             	xor    %r11d,%r11d
 2d6:	f3 44 0f bc cf       	tzcnt  %edi,%r9d
 2db:	f3 44 0f bc da       	tzcnt  %edx,%r11d
 2e0:	45 39 cb             	cmp    %r9d,%r11d
 2e3:	0f 8e aa 00 00 00    	jle    393 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x393>
 2e9:	4e 8d 14 08          	lea    (%rax,%r9,1),%r10
 2ed:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
 2f1:	44 21 cf             	and    %r9d,%edi
 2f4:	09 fa                	or     %edi,%edx
 2f6:	f3 0f bc d2          	tzcnt  %edx,%edx
 2fa:	48 8d 1c 10          	lea    (%rax,%rdx,1),%rbx
 2fe:	4c 89 d5             	mov    %r10,%rbp
 301:	48 29 f5             	sub    %rsi,%rbp
 304:	48 89 ef             	mov    %rbp,%rdi
 307:	0f 84 9b 00 00 00    	je     3a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a8>
 30d:	48 8b 81 00 01 00 00 	mov    0x100(%rcx),%rax
 314:	48 39 e8             	cmp    %rbp,%rax
 317:	0f 83 e3 05 00 00    	jae    900 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x900>
 31d:	48 03 81 f8 00 00 00 	add    0xf8(%rcx),%rax
 324:	48 39 e8             	cmp    %rbp,%rax
 327:	0f 83 03 06 00 00    	jae    930 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x930>
 32d:	c7 81 14 01 00 00 0d 	movl   $0xd,0x114(%rcx)
 334:	00 00 00
 337:	48 8d 14 30          	lea    (%rax,%rsi,1),%rdx
 33b:	48 2b 91 20 01 00 00 	sub    0x120(%rcx),%rdx
 342:	48 8d 44 06 01       	lea    0x1(%rsi,%rax,1),%rax
 347:	48 89 91 18 01 00 00 	mov    %rdx,0x118(%rcx)
 34e:	ba 03 00 00 00       	mov    $0x3,%edx
 353:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 358:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 35d:	89 91 10 01 00 00    	mov    %edx,0x110(%rcx)
 363:	48 89 81 28 01 00 00 	mov    %rax,0x128(%rcx)
 36a:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 36f:	48 83 c4 58          	add    $0x58,%rsp
 373:	c3                   	ret
 374:	0f 1f 40 00          	nopl   0x0(%rax)
 378:	f3 45 0f bc db       	tzcnt  %r11d,%r11d
 37d:	f3 0f bc d2          	tzcnt  %edx,%edx
 381:	44 39 da             	cmp    %r11d,%edx
 384:	7e 13                	jle    399 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x399>
 386:	4e 8d 14 18          	lea    (%rax,%r11,1),%r10
 38a:	48 8d 1c 10          	lea    (%rax,%rdx,1),%rbx
 38e:	e9 6b ff ff ff       	jmp    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 393:	09 fa                	or     %edi,%edx
 395:	f3 0f bc d2          	tzcnt  %edx,%edx
 399:	48 8d 1c 10          	lea    (%rax,%rdx,1),%rbx
 39d:	4d 89 d3             	mov    %r10,%r11
 3a0:	e9 93 03 00 00       	jmp    738 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x738>
 3a5:	0f 1f 00             	nopl   (%rax)
 3a8:	48 8b b9 d8 00 00 00 	mov    0xd8(%rcx),%rdi
 3af:	48 85 ff             	test   %rdi,%rdi
 3b2:	0f 84 07 08 00 00    	je     bbf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xbbf>
 3b8:	8b 51 78             	mov    0x78(%rcx),%edx
 3bb:	48 83 ff 0e          	cmp    $0xe,%rdi
 3bf:	4c 8b 89 d0 00 00 00 	mov    0xd0(%rcx),%r9
 3c6:	48 c7 81 d8 00 00 00 	movq   $0x0,0xd8(%rcx)
 3cd:	00 00 00 00
 3d1:	0f 94 c0             	sete   %al
 3d4:	c6 81 0d 01 00 00 00 	movb   $0x0,0x10d(%rcx)
 3db:	f7 d2                	not    %edx
 3dd:	4c 89 89 c0 00 00 00 	mov    %r9,0xc0(%rcx)
 3e4:	48 c7 81 d0 00 00 00 	movq   $0x0,0xd0(%rcx)
 3eb:	00 00 00 00
 3ef:	48 89 b9 c8 00 00 00 	mov    %rdi,0xc8(%rcx)
 3f6:	20 d0                	and    %dl,%al
 3f8:	0f 85 b2 05 00 00    	jne    9b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9b0>
 3fe:	88 81 0c 01 00 00    	mov    %al,0x10c(%rcx)
 404:	49 8d 42 01          	lea    0x1(%r10),%rax
 408:	48 89 dd             	mov    %rbx,%rbp
 40b:	48 29 c5             	sub    %rax,%rbp
 40e:	0f 84 a0 00 00 00    	je     4b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b4>
 414:	48 8b 91 00 01 00 00 	mov    0x100(%rcx),%rdx
 41b:	48 39 ea             	cmp    %rbp,%rdx
 41e:	73 60                	jae    480 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x480>
 420:	48 03 91 f8 00 00 00 	add    0xf8(%rcx),%rdx
 427:	be 02 00 00 00       	mov    $0x2,%esi
 42c:	48 39 ea             	cmp    %rbp,%rdx
 42f:	73 27                	jae    458 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x458>
 431:	48 01 c2             	add    %rax,%rdx
 434:	be 03 00 00 00       	mov    $0x3,%esi
 439:	c7 81 14 01 00 00 0d 	movl   $0xd,0x114(%rcx)
 440:	00 00 00
 443:	48 89 d0             	mov    %rdx,%rax
 446:	48 2b 81 20 01 00 00 	sub    0x120(%rcx),%rax
 44d:	48 89 81 18 01 00 00 	mov    %rax,0x118(%rcx)
 454:	48 8d 42 01          	lea    0x1(%rdx),%rax
 458:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 45d:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 462:	89 b1 10 01 00 00    	mov    %esi,0x110(%rcx)
 468:	48 89 81 28 01 00 00 	mov    %rax,0x128(%rcx)
 46f:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 474:	48 83 c4 58          	add    $0x58,%rsp
 478:	c3                   	ret
 479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 480:	48 29 ea             	sub    %rbp,%rdx
 483:	48 89 91 00 01 00 00 	mov    %rdx,0x100(%rcx)
 48a:	80 b9 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rcx)
 491:	0f 85 68 05 00 00    	jne    9ff <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9ff>
 497:	48 8b 91 d8 00 00 00 	mov    0xd8(%rcx),%rdx
 49e:	48 85 d2             	test   %rdx,%rdx
 4a1:	75 07                	jne    4aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4aa>
 4a3:	48 89 81 d0 00 00 00 	mov    %rax,0xd0(%rcx)
 4aa:	48 01 d5             	add    %rdx,%rbp
 4ad:	48 89 a9 d8 00 00 00 	mov    %rbp,0xd8(%rcx)
 4b4:	49 39 d8             	cmp    %rbx,%r8
 4b7:	0f 84 83 06 00 00    	je     b40 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb40>
 4bd:	0f b6 03             	movzbl (%rbx),%eax
 4c0:	3c 5c                	cmp    $0x5c,%al
 4c2:	0f 85 a1 05 00 00    	jne    a69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa69>
 4c8:	80 b9 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rcx)
 4cf:	74 47                	je     518 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x518>
 4d1:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 4d8:	00 00 00
 4db:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 4e0:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 4e5:	48 89 81 10 01 00 00 	mov    %rax,0x110(%rcx)
 4ec:	48 89 d8             	mov    %rbx,%rax
 4ef:	48 2b 81 20 01 00 00 	sub    0x120(%rcx),%rax
 4f6:	48 89 81 18 01 00 00 	mov    %rax,0x118(%rcx)
 4fd:	48 8d 43 01          	lea    0x1(%rbx),%rax
 501:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 506:	48 89 81 28 01 00 00 	mov    %rax,0x128(%rcx)
 50d:	48 83 c4 58          	add    $0x58,%rsp
 511:	c3                   	ret
 512:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 518:	80 b9 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rcx)
 51f:	75 3c                	jne    55d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x55d>
 521:	48 89 cf             	mov    %rcx,%rdi
 524:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
 529:	48 89 0c 24          	mov    %rcx,(%rsp)
 52d:	e8 00 00 00 00       	call   532 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x532>
			52e: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
 532:	48 8b 0c 24          	mov    (%rsp),%rcx
 536:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 53b:	48 8b a9 d8 00 00 00 	mov    0xd8(%rcx),%rbp
 542:	48 8b 79 48          	mov    0x48(%rcx),%rdi
 546:	48 85 ed             	test   %rbp,%rbp
 549:	0f 85 3c 04 00 00    	jne    98b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x98b>
 54f:	48 89 b9 d0 00 00 00 	mov    %rdi,0xd0(%rcx)
 556:	c6 81 0d 01 00 00 01 	movb   $0x1,0x10d(%rcx)
 55d:	48 8d 73 01          	lea    0x1(%rbx),%rsi
 561:	c6 81 0a 01 00 00 01 	movb   $0x1,0x10a(%rcx)
 568:	4c 39 c6             	cmp    %r8,%rsi
 56b:	0f 83 94 05 00 00    	jae    b05 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb05>
 571:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 576:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 57b:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 580:	e9 9f fa ff ff       	jmp    24 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x24>
 585:	0f 1f 00             	nopl   (%rax)
 588:	48 83 fa 07          	cmp    $0x7,%rdx
 58c:	0f 8e 8a 05 00 00    	jle    b1c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb1c>
 592:	4c 89 64 24 38       	mov    %r12,0x38(%rsp)
 597:	4c 89 6c 24 40       	mov    %r13,0x40(%rsp)
 59c:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
 5a1:	48 ba 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rdx
 5a8:	7f 7f 7f
 5ab:	45 31 ff             	xor    %r15d,%r15d
 5ae:	eb 54                	jmp    604 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x604>
 5b0:	45 84 c9             	test   %r9b,%r9b
 5b3:	0f 84 dd 00 00 00    	je     696 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x696>
 5b9:	49 89 f9             	mov    %rdi,%r9
 5bc:	49 09 d1             	or     %rdx,%r9
 5bf:	49 83 f1 ff          	xor    $0xffffffffffffffff,%r9
 5c3:	0f 85 df 00 00 00    	jne    6a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a8>
 5c9:	31 ff                	xor    %edi,%edi
 5cb:	45 31 c9             	xor    %r9d,%r9d
 5ce:	f3 48 0f bc fd       	tzcnt  %rbp,%rdi
 5d3:	c1 ff 03             	sar    $0x3,%edi
 5d6:	4c 8d 3c 38          	lea    (%rax,%rdi,1),%r15
 5da:	48 c7 c7 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdi
 5e1:	48 29 df             	sub    %rbx,%rdi
 5e4:	48 21 ef             	and    %rbp,%rdi
 5e7:	48 85 ff             	test   %rdi,%rdi
 5ea:	0f 85 8f 06 00 00    	jne    c7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc7f>
 5f0:	48 83 c0 08          	add    $0x8,%rax
 5f4:	4c 89 c7             	mov    %r8,%rdi
 5f7:	48 29 c7             	sub    %rax,%rdi
 5fa:	48 83 ff 07          	cmp    $0x7,%rdi
 5fe:	0f 8e 74 02 00 00    	jle    878 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x878>
 604:	48 bf 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rdi
 60b:	3a 3a 3a
 60e:	48 8b 28             	mov    (%rax),%rbp
 611:	49 bd 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r13
 618:	0d 0d 0d
 61b:	49 be 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r14
 622:	0a 0a 0a
 625:	49 bc 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%r12
 62c:	5c 5c 5c
 62f:	48 31 ef             	xor    %rbp,%rdi
 632:	49 31 ed             	xor    %rbp,%r13
 635:	49 31 ee             	xor    %rbp,%r14
 638:	49 31 ec             	xor    %rbp,%r12
 63b:	49 89 fb             	mov    %rdi,%r11
 63e:	49 21 d3             	and    %rdx,%r11
 641:	49 01 d3             	add    %rdx,%r11
 644:	49 09 fb             	or     %rdi,%r11
 647:	4c 89 ef             	mov    %r13,%rdi
 64a:	48 21 d7             	and    %rdx,%rdi
 64d:	4c 89 db             	mov    %r11,%rbx
 650:	48 01 d7             	add    %rdx,%rdi
 653:	48 09 d3             	or     %rdx,%rbx
 656:	4c 09 ef             	or     %r13,%rdi
 659:	4d 89 f5             	mov    %r14,%r13
 65c:	49 21 d5             	and    %rdx,%r13
 65f:	49 01 d5             	add    %rdx,%r13
 662:	4d 09 f5             	or     %r14,%r13
 665:	4c 21 ef             	and    %r13,%rdi
 668:	49 89 ed             	mov    %rbp,%r13
 66b:	49 21 d5             	and    %rdx,%r13
 66e:	49 01 d5             	add    %rdx,%r13
 671:	4c 09 ed             	or     %r13,%rbp
 674:	48 21 ef             	and    %rbp,%rdi
 677:	4c 89 e5             	mov    %r12,%rbp
 67a:	48 21 d5             	and    %rdx,%rbp
 67d:	48 01 d5             	add    %rdx,%rbp
 680:	4c 09 e5             	or     %r12,%rbp
 683:	48 21 ef             	and    %rbp,%rdi
 686:	48 89 dd             	mov    %rbx,%rbp
 689:	48 f7 d5             	not    %rbp
 68c:	48 83 fb ff          	cmp    $0xffffffffffffffff,%rbx
 690:	0f 85 1a ff ff ff    	jne    5b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5b0>
 696:	4c 21 df             	and    %r11,%rdi
 699:	48 09 d7             	or     %rdx,%rdi
 69c:	48 f7 d7             	not    %rdi
 69f:	e9 43 ff ff ff       	jmp    5e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e7>
 6a4:	0f 1f 40 00          	nopl   0x0(%rax)
 6a8:	4d 89 ce             	mov    %r9,%r14
 6ab:	45 31 e4             	xor    %r12d,%r12d
 6ae:	45 31 c9             	xor    %r9d,%r9d
 6b1:	f3 4c 0f bc cd       	tzcnt  %rbp,%r9
 6b6:	f3 4d 0f bc e6       	tzcnt  %r14,%r12
 6bb:	45 39 cc             	cmp    %r9d,%r12d
 6be:	7e 48                	jle    708 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x708>
 6c0:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
 6c7:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 6cc:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 6d1:	48 29 da             	sub    %rbx,%rdx
 6d4:	48 89 d3             	mov    %rdx,%rbx
 6d7:	44 89 ca             	mov    %r9d,%edx
 6da:	48 21 eb             	and    %rbp,%rbx
 6dd:	c1 fa 03             	sar    $0x3,%edx
 6e0:	4c 09 f3             	or     %r14,%rbx
 6e3:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 6e8:	f3 48 0f bc db       	tzcnt  %rbx,%rbx
 6ed:	c1 fb 03             	sar    $0x3,%ebx
 6f0:	48 01 c3             	add    %rax,%rbx
 6f3:	48 01 d0             	add    %rdx,%rax
 6f6:	4d 85 d2             	test   %r10,%r10
 6f9:	4c 0f 44 d0          	cmove  %rax,%r10
 6fd:	e9 fc fb ff ff       	jmp    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 702:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 708:	4c 21 df             	and    %r11,%rdi
 70b:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 710:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 715:	48 09 d7             	or     %rdx,%rdi
 718:	48 f7 d7             	not    %rdi
 71b:	f3 48 0f bc ff       	tzcnt  %rdi,%rdi
 720:	c1 ff 03             	sar    $0x3,%edi
 723:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 728:	4d 89 fb             	mov    %r15,%r11
 72b:	48 8d 1c 38          	lea    (%rax,%rdi,1),%rbx
 72f:	4d 85 d2             	test   %r10,%r10
 732:	0f 85 c6 fb ff ff    	jne    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 738:	48 89 f0             	mov    %rsi,%rax
 73b:	4d 89 da             	mov    %r11,%r10
 73e:	4d 85 db             	test   %r11,%r11
 741:	0f 84 c1 fc ff ff    	je     408 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x408>
 747:	e9 b2 fb ff ff       	jmp    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 74c:	0f 1f 40 00          	nopl   0x0(%rax)
 750:	48 83 fa 07          	cmp    $0x7,%rdx
 754:	0f 8e c2 03 00 00    	jle    b1c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb1c>
 75a:	4c 89 64 24 38       	mov    %r12,0x38(%rsp)
 75f:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
 766:	7f 7f 7f
 769:	45 31 ff             	xor    %r15d,%r15d
 76c:	eb 46                	jmp    7b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b4>
 76e:	66 90                	xchg   %ax,%ax
 770:	45 84 c9             	test   %r9b,%r9b
 773:	0f 84 b4 00 00 00    	je     82d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x82d>
 779:	48 85 ff             	test   %rdi,%rdi
 77c:	0f 85 be 00 00 00    	jne    840 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x840>
 782:	f3 48 0f bc d2       	tzcnt  %rdx,%rdx
 787:	45 31 c9             	xor    %r9d,%r9d
 78a:	c1 fa 03             	sar    $0x3,%edx
 78d:	4c 8d 3c 10          	lea    (%rax,%rdx,1),%r15
 791:	0f 1f 40 00          	nopl   0x0(%rax)
 795:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 79c:	00 00 00 00
 7a0:	48 83 c0 08          	add    $0x8,%rax
 7a4:	4c 89 c2             	mov    %r8,%rdx
 7a7:	48 29 c2             	sub    %rax,%rdx
 7aa:	48 83 fa 07          	cmp    $0x7,%rdx
 7ae:	0f 8e ce 00 00 00    	jle    882 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x882>
 7b4:	48 ba 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rdx
 7bb:	3a 3a 3a
 7be:	48 8b 28             	mov    (%rax),%rbp
 7c1:	49 bc 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r12
 7c8:	0d 0d 0d
 7cb:	48 31 ea             	xor    %rbp,%rdx
 7ce:	49 31 ec             	xor    %rbp,%r12
 7d1:	48 89 d3             	mov    %rdx,%rbx
 7d4:	4c 21 db             	and    %r11,%rbx
 7d7:	4c 01 db             	add    %r11,%rbx
 7da:	48 09 d3             	or     %rdx,%rbx
 7dd:	48 ba 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%rdx
 7e4:	0a 0a 0a
 7e7:	48 31 ea             	xor    %rbp,%rdx
 7ea:	4c 09 db             	or     %r11,%rbx
 7ed:	48 89 d7             	mov    %rdx,%rdi
 7f0:	4c 21 df             	and    %r11,%rdi
 7f3:	4c 01 df             	add    %r11,%rdi
 7f6:	48 09 d7             	or     %rdx,%rdi
 7f9:	4c 89 e2             	mov    %r12,%rdx
 7fc:	4c 21 da             	and    %r11,%rdx
 7ff:	4c 01 da             	add    %r11,%rdx
 802:	4c 09 e2             	or     %r12,%rdx
 805:	48 21 d7             	and    %rdx,%rdi
 808:	48 89 ea             	mov    %rbp,%rdx
 80b:	4c 21 da             	and    %r11,%rdx
 80e:	4c 01 da             	add    %r11,%rdx
 811:	48 09 ea             	or     %rbp,%rdx
 814:	48 21 d7             	and    %rdx,%rdi
 817:	48 89 da             	mov    %rbx,%rdx
 81a:	4c 09 df             	or     %r11,%rdi
 81d:	48 f7 d2             	not    %rdx
 820:	48 f7 d7             	not    %rdi
 823:	48 83 fb ff          	cmp    $0xffffffffffffffff,%rbx
 827:	0f 85 43 ff ff ff    	jne    770 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x770>
 82d:	48 85 ff             	test   %rdi,%rdi
 830:	0f 84 6a ff ff ff    	je     7a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a0>
 836:	f3 48 0f bc ff       	tzcnt  %rdi,%rdi
 83b:	e9 e0 fe ff ff       	jmp    720 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x720>
 840:	31 db                	xor    %ebx,%ebx
 842:	f3 48 0f bc d2       	tzcnt  %rdx,%rdx
 847:	f3 48 0f bc df       	tzcnt  %rdi,%rbx
 84c:	89 df                	mov    %ebx,%edi
 84e:	39 da                	cmp    %ebx,%edx
 850:	0f 8d ca fe ff ff    	jge    720 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x720>
 856:	c1 fb 03             	sar    $0x3,%ebx
 859:	c1 fa 03             	sar    $0x3,%edx
 85c:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 861:	48 01 c2             	add    %rax,%rdx
 864:	48 01 c3             	add    %rax,%rbx
 867:	4d 85 d2             	test   %r10,%r10
 86a:	4c 0f 44 d2          	cmove  %rdx,%r10
 86e:	e9 8b fa ff ff       	jmp    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 873:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 878:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 87d:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 882:	4c 39 c0             	cmp    %r8,%rax
 885:	0f 83 ac 03 00 00    	jae    c37 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc37>
 88b:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 890:	0f b6 2c 24          	movzbl (%rsp),%ebp
 894:	45 31 db             	xor    %r11d,%r11d
 897:	bb 01 24 00 00       	mov    $0x2401,%ebx
 89c:	eb 11                	jmp    8af <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8af>
 89e:	66 90                	xchg   %ax,%ax
 8a0:	49 89 c3             	mov    %rax,%r11
 8a3:	45 31 c9             	xor    %r9d,%r9d
 8a6:	48 83 c0 01          	add    $0x1,%rax
 8aa:	4c 39 c0             	cmp    %r8,%rax
 8ad:	73 1c                	jae    8cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8cb>
 8af:	0f b6 10             	movzbl (%rax),%edx
 8b2:	80 fa 3a             	cmp    $0x3a,%dl
 8b5:	40 0f 94 c7          	sete   %dil
 8b9:	75 05                	jne    8c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8c0>
 8bb:	45 84 c9             	test   %r9b,%r9b
 8be:	75 e0                	jne    8a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a0>
 8c0:	80 fa 0d             	cmp    $0xd,%dl
 8c3:	77 23                	ja     8e8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8e8>
 8c5:	48 0f a3 d3          	bt     %rdx,%rbx
 8c9:	73 db                	jae    8a6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a6>
 8cb:	48 89 c3             	mov    %rax,%rbx
 8ce:	4d 85 ff             	test   %r15,%r15
 8d1:	0f 84 58 fe ff ff    	je     72f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x72f>
 8d7:	4d 85 d2             	test   %r10,%r10
 8da:	4d 0f 44 d7          	cmove  %r15,%r10
 8de:	e9 1b fa ff ff       	jmp    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 8e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 8e8:	80 fa 5c             	cmp    $0x5c,%dl
 8eb:	0f 94 c2             	sete   %dl
 8ee:	40 08 fa             	or     %dil,%dl
 8f1:	74 b3                	je     8a6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a6>
 8f3:	89 ef                	mov    %ebp,%edi
 8f5:	40 80 f7 01          	xor    $0x1,%dil
 8f9:	74 ab                	je     8a6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a6>
 8fb:	eb ce                	jmp    8cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8cb>
 8fd:	0f 1f 00             	nopl   (%rax)
 900:	48 29 e8             	sub    %rbp,%rax
 903:	48 89 81 00 01 00 00 	mov    %rax,0x100(%rcx)
 90a:	80 b9 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rcx)
 911:	75 2a                	jne    93d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x93d>
 913:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
 91a:	48 85 c0             	test   %rax,%rax
 91d:	75 5b                	jne    97a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x97a>
 91f:	48 89 b1 d0 00 00 00 	mov    %rsi,0xd0(%rcx)
 926:	e9 8d fa ff ff       	jmp    3b8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b8>
 92b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 930:	48 89 f0             	mov    %rsi,%rax
 933:	ba 02 00 00 00       	mov    $0x2,%edx
 938:	e9 16 fa ff ff       	jmp    353 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x353>
 93d:	48 8b 79 48          	mov    0x48(%rcx),%rdi
 941:	48 89 ea             	mov    %rbp,%rdx
 944:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
 949:	4c 89 54 24 10       	mov    %r10,0x10(%rsp)
 94e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 953:	48 89 34 24          	mov    %rsi,(%rsp)
 957:	e8 00 00 00 00       	call   95c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x95c>
			958: R_X86_64_PLT32	memcpy-0x4
 95c:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 961:	48 8b 34 24          	mov    (%rsp),%rsi
 965:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
 96a:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 96f:	48 01 69 48          	add    %rbp,0x48(%rcx)
 973:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
 97a:	48 8d 7c 05 00       	lea    0x0(%rbp,%rax,1),%rdi
 97f:	48 89 b9 d8 00 00 00 	mov    %rdi,0xd8(%rcx)
 986:	e9 24 fa ff ff       	jmp    3af <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3af>
 98b:	48 8b b1 d0 00 00 00 	mov    0xd0(%rcx),%rsi
 992:	48 89 ea             	mov    %rbp,%rdx
 995:	e8 00 00 00 00       	call   99a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x99a>
			996: R_X86_64_PLT32	memcpy-0x4
 99a:	48 8b 0c 24          	mov    (%rsp),%rcx
 99e:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 9a3:	48 89 c7             	mov    %rax,%rdi
 9a6:	48 01 69 48          	add    %rbp,0x48(%rcx)
 9aa:	e9 a0 fb ff ff       	jmp    54f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54f>
 9af:	90                   	nop
 9b0:	48 39 b1 20 01 00 00 	cmp    %rsi,0x120(%rcx)
 9b7:	73 06                	jae    9bf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9bf>
 9b9:	48 83 fd 0e          	cmp    $0xe,%rbp
 9bd:	74 22                	je     9e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9e1>
 9bf:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 9c6:	6e 74 2d
 9c9:	49 39 01             	cmp    %rax,(%r9)
 9cc:	0f 84 2e 02 00 00    	je     c00 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc00>
 9d2:	b8 01 00 00 00       	mov    $0x1,%eax
 9d7:	85 c0                	test   %eax,%eax
 9d9:	0f 94 c0             	sete   %al
 9dc:	e9 1d fa ff ff       	jmp    3fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fe>
 9e1:	f3 0f 6f 46 ff       	movdqu -0x1(%rsi),%xmm0
 9e6:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 9ee <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9ee>
 9ed:	00
			9ea: R_X86_64_PC32	.LC28-0x4
 9ee:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 9f2:	3d ff ff 00 00       	cmp    $0xffff,%eax
 9f7:	0f 94 c0             	sete   %al
 9fa:	e9 ff f9 ff ff       	jmp    3fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fe>
 9ff:	48 8b 79 48          	mov    0x48(%rcx),%rdi
 a03:	48 89 ea             	mov    %rbp,%rdx
 a06:	48 89 c6             	mov    %rax,%rsi
 a09:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
 a0e:	48 89 0c 24          	mov    %rcx,(%rsp)
 a12:	e8 00 00 00 00       	call   a17 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa17>
			a13: R_X86_64_PLT32	memcpy-0x4
 a17:	48 8b 0c 24          	mov    (%rsp),%rcx
 a1b:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 a20:	48 01 69 48          	add    %rbp,0x48(%rcx)
 a24:	48 8b 91 d8 00 00 00 	mov    0xd8(%rcx),%rdx
 a2b:	e9 7a fa ff ff       	jmp    4aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4aa>
 a30:	48 83 f8 07          	cmp    $0x7,%rax
 a34:	0f 8e 0f 02 00 00    	jle    c49 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc49>
 a3a:	4c 89 64 24 38       	mov    %r12,0x38(%rsp)
 a3f:	80 3c 24 00          	cmpb   $0x0,(%rsp)
 a43:	75 19                	jne    a5e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa5e>
 a45:	4c 89 6c 24 40       	mov    %r13,0x40(%rsp)
 a4a:	48 89 f0             	mov    %rsi,%rax
 a4d:	45 31 d2             	xor    %r10d,%r10d
 a50:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
 a55:	e9 47 fb ff ff       	jmp    5a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a1>
 a5a:	48 89 f0             	mov    %rsi,%rax
 a5d:	c3                   	ret
 a5e:	48 89 f0             	mov    %rsi,%rax
 a61:	45 31 d2             	xor    %r10d,%r10d
 a64:	e9 f6 fc ff ff       	jmp    75f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x75f>
 a69:	48 83 b9 c8 00 00 00 	cmpq   $0x0,0xc8(%rcx)
 a70:	00
 a71:	0f 84 5a fa ff ff    	je     4d1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d1>
 a77:	3c 0d                	cmp    $0xd,%al
 a79:	74 08                	je     a83 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa83>
 a7b:	3c 0a                	cmp    $0xa,%al
 a7d:	0f 85 4e fa ff ff    	jne    4d1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d1>
 a83:	48 89 cf             	mov    %rcx,%rdi
 a86:	48 89 de             	mov    %rbx,%rsi
 a89:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
 a8e:	48 89 0c 24          	mov    %rcx,(%rsp)
 a92:	e8 00 00 00 00       	call   a97 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa97>
			a93: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 a97:	48 8b 0c 24          	mov    (%rsp),%rcx
 a9b:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 aa0:	84 c0                	test   %al,%al
 aa2:	0f 84 af 00 00 00    	je     b57 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb57>
 aa8:	48 8d 43 01          	lea    0x1(%rbx),%rax
 aac:	80 3b 0a             	cmpb   $0xa,(%rbx)
 aaf:	0f 84 d1 00 00 00    	je     b86 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb86>
 ab5:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # abc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xabc>
			ab8: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 abc:	48 c7 41 68 00 00 00 	movq   $0x0,0x68(%rcx)
 ac3:	00
 ac4:	48 89 71 60          	mov    %rsi,0x60(%rcx)
 ac8:	4c 39 c0             	cmp    %r8,%rax
 acb:	0f 83 a1 00 00 00    	jae    b72 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb72>
 ad1:	48 8d 73 02          	lea    0x2(%rbx),%rsi
 ad5:	80 7b 01 0a          	cmpb   $0xa,0x1(%rbx)
 ad9:	0f 84 3c 01 00 00    	je     c1b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc1b>
 adf:	48 2b 81 20 01 00 00 	sub    0x120(%rcx),%rax
 ae6:	48 89 b1 28 01 00 00 	mov    %rsi,0x128(%rcx)
 aed:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 af4:	00 00 00
 af7:	48 89 91 10 01 00 00 	mov    %rdx,0x110(%rcx)
 afe:	48 89 81 18 01 00 00 	mov    %rax,0x118(%rcx)
 b05:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 b0a:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 b0f:	48 89 f0             	mov    %rsi,%rax
 b12:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 b17:	e9 55 f5 ff ff       	jmp    71 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71>
 b1c:	45 31 ff             	xor    %r15d,%r15d
 b1f:	4c 39 c0             	cmp    %r8,%rax
 b22:	0f 82 68 fd ff ff    	jb     890 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x890>
 b28:	48 89 c3             	mov    %rax,%rbx
 b2b:	48 89 f0             	mov    %rsi,%rax
 b2e:	4d 85 d2             	test   %r10,%r10
 b31:	0f 85 c7 f7 ff ff    	jne    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 b37:	e9 cc f8 ff ff       	jmp    408 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x408>
 b3c:	0f 1f 40 00          	nopl   0x0(%rax)
 b40:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 b45:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 b4a:	4c 89 c0             	mov    %r8,%rax
 b4d:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 b52:	e9 1a f5 ff ff       	jmp    71 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71>
 b57:	48 8b 81 28 01 00 00 	mov    0x128(%rcx),%rax
 b5e:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 b63:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 b68:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 b6d:	e9 ff f4 ff ff       	jmp    71 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71>
 b72:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 b77:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 b7c:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 b81:	e9 eb f4 ff ff       	jmp    71 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71>
 b86:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # b8d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb8d>
			b89: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 b8d:	48 c7 41 68 00 00 00 	movq   $0x0,0x68(%rcx)
 b94:	00
 b95:	48 89 71 60          	mov    %rsi,0x60(%rcx)
 b99:	4c 39 c0             	cmp    %r8,%rax
 b9c:	73 d4                	jae    b72 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb72>
 b9e:	4c 89 c2             	mov    %r8,%rdx
 ba1:	48 89 c6             	mov    %rax,%rsi
 ba4:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 ba9:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 bae:	48 89 cf             	mov    %rcx,%rdi
 bb1:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 bb6:	48 83 c4 58          	add    $0x58,%rsp
 bba:	e9 00 00 00 00       	jmp    bbf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xbbf>
			bbb: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 bbf:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 bc6:	00 00 00
 bc9:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 bce:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 bd3:	48 89 81 10 01 00 00 	mov    %rax,0x110(%rcx)
 bda:	4c 89 d0             	mov    %r10,%rax
 bdd:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 be2:	48 2b 81 20 01 00 00 	sub    0x120(%rcx),%rax
 be9:	48 89 81 18 01 00 00 	mov    %rax,0x118(%rcx)
 bf0:	49 8d 42 01          	lea    0x1(%r10),%rax
 bf4:	48 89 81 28 01 00 00 	mov    %rax,0x128(%rcx)
 bfb:	e9 71 f4 ff ff       	jmp    71 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71>
 c00:	48 b8 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rax
 c07:	67 74 68
 c0a:	49 39 41 06          	cmp    %rax,0x6(%r9)
 c0e:	0f 85 be fd ff ff    	jne    9d2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9d2>
 c14:	31 c0                	xor    %eax,%eax
 c16:	e9 bc fd ff ff       	jmp    9d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9d7>
 c1b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c22 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc22>
			c1e: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 c22:	48 89 41 60          	mov    %rax,0x60(%rcx)
 c26:	4c 39 c6             	cmp    %r8,%rsi
 c29:	0f 83 d6 fe ff ff    	jae    b05 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb05>
 c2f:	4c 89 c2             	mov    %r8,%rdx
 c32:	e9 6d ff ff ff       	jmp    ba4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xba4>
 c37:	48 89 c3             	mov    %rax,%rbx
 c3a:	4d 85 ff             	test   %r15,%r15
 c3d:	74 24                	je     c63 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc63>
 c3f:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 c44:	e9 8e fc ff ff       	jmp    8d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8d7>
 c49:	48 89 f0             	mov    %rsi,%rax
 c4c:	45 31 d2             	xor    %r10d,%r10d
 c4f:	45 31 ff             	xor    %r15d,%r15d
 c52:	48 89 f3             	mov    %rsi,%rbx
 c55:	4c 39 c6             	cmp    %r8,%rsi
 c58:	0f 82 32 fc ff ff    	jb     890 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x890>
 c5e:	e9 51 f8 ff ff       	jmp    4b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b4>
 c63:	4d 85 d2             	test   %r10,%r10
 c66:	74 0a                	je     c72 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc72>
 c68:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 c6d:	e9 8c f6 ff ff       	jmp    2fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2fe>
 c72:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 c77:	48 89 f0             	mov    %rsi,%rax
 c7a:	e9 89 f7 ff ff       	jmp    408 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x408>
 c7f:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 c84:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 c89:	e9 a8 fb ff ff       	jmp    836 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x836>

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
  14:	72 17                	jb     2d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2d>
  16:	e9 ba 00 00 00       	jmp    d5 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xd5>
  1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  20:	48 83 c1 01          	add    $0x1,%rcx
  24:	49 39 c8             	cmp    %rcx,%r8
  27:	0f 84 eb 01 00 00    	je     218 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x218>
  2d:	0f b6 01             	movzbl (%rcx),%eax
  30:	83 e8 41             	sub    $0x41,%eax
  33:	3c 19                	cmp    $0x19,%al
  35:	76 e9                	jbe    20 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20>
  37:	48 89 ca             	mov    %rcx,%rdx
  3a:	48 29 f2             	sub    %rsi,%rdx
  3d:	0f 84 92 00 00 00    	je     d5 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xd5>
  43:	49 8b 81 00 01 00 00 	mov    0x100(%r9),%rax
  4a:	48 39 d0             	cmp    %rdx,%rax
  4d:	73 51                	jae    a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa0>
  4f:	49 03 81 f8 00 00 00 	add    0xf8(%r9),%rax
  56:	48 39 d0             	cmp    %rdx,%rax
  59:	0f 83 d9 01 00 00    	jae    238 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x238>
  5f:	48 01 c6             	add    %rax,%rsi
  62:	ba 03 00 00 00       	mov    $0x3,%edx
  67:	41 c7 81 14 01 00 00 	movl   $0xd,0x114(%r9)
  6e:	0d 00 00 00
  72:	48 89 f0             	mov    %rsi,%rax
  75:	49 2b 81 20 01 00 00 	sub    0x120(%r9),%rax
  7c:	49 89 81 18 01 00 00 	mov    %rax,0x118(%r9)
  83:	48 8d 46 01          	lea    0x1(%rsi),%rax
  87:	41 89 91 10 01 00 00 	mov    %edx,0x110(%r9)
  8e:	49 89 81 28 01 00 00 	mov    %rax,0x128(%r9)
  95:	48 83 c4 28          	add    $0x28,%rsp
  99:	c3                   	ret
  9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  a0:	48 29 d0             	sub    %rdx,%rax
  a3:	49 89 81 00 01 00 00 	mov    %rax,0x100(%r9)
  aa:	41 80 b9 0d 01 00 00 	cmpb   $0x0,0x10d(%r9)
  b1:	00
  b2:	0f 85 8d 01 00 00    	jne    245 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x245>
  b8:	49 8b 81 d8 00 00 00 	mov    0xd8(%r9),%rax
  bf:	48 85 c0             	test   %rax,%rax
  c2:	75 07                	jne    cb <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xcb>
  c4:	49 89 b1 d0 00 00 00 	mov    %rsi,0xd0(%r9)
  cb:	48 01 d0             	add    %rdx,%rax
  ce:	49 89 81 d8 00 00 00 	mov    %rax,0xd8(%r9)
  d5:	49 39 c8             	cmp    %rcx,%r8
  d8:	0f 84 52 03 00 00    	je     430 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x430>
  de:	0f b6 39             	movzbl (%rcx),%edi
  e1:	48 8d 41 01          	lea    0x1(%rcx),%rax
  e5:	40 80 ff 0a          	cmp    $0xa,%dil
  e9:	40 0f 95 c6          	setne  %sil
  ed:	40 80 ff 0d          	cmp    $0xd,%dil
  f1:	0f 95 c2             	setne  %dl
  f4:	40 20 d6             	and    %dl,%sil
  f7:	75 57                	jne    150 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x150>
  f9:	49 8b 91 d8 00 00 00 	mov    0xd8(%r9),%rdx
 100:	4d 8b 91 d0 00 00 00 	mov    0xd0(%r9),%r10
 107:	49 c7 81 d8 00 00 00 	movq   $0x0,0xd8(%r9)
 10e:	00 00 00 00
 112:	49 c7 81 d0 00 00 00 	movq   $0x0,0xd0(%r9)
 119:	00 00 00 00
 11d:	49 89 91 a8 00 00 00 	mov    %rdx,0xa8(%r9)
 124:	48 83 ea 03          	sub    $0x3,%rdx
 128:	41 c6 81 0d 01 00 00 	movb   $0x0,0x10d(%r9)
 12f:	00
 130:	4d 89 91 a0 00 00 00 	mov    %r10,0xa0(%r9)
 137:	48 83 fa 08          	cmp    $0x8,%rdx
 13b:	77 63                	ja     1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 13d:	4c 8d 1d 00 00 00 00 	lea    0x0(%rip),%r11        # 144 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x144>
			140: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_-0x4
 144:	49 63 14 93          	movslq (%r11,%rdx,4),%rdx
 148:	4c 01 da             	add    %r11,%rdx
 14b:	3e ff e2             	notrack jmp *%rdx
 14e:	66 90                	xchg   %ax,%ax
 150:	49 2b 89 20 01 00 00 	sub    0x120(%r9),%rcx
 157:	49 89 81 28 01 00 00 	mov    %rax,0x128(%r9)
 15e:	48 ba 03 00 00 00 06 	movabs $0x600000003,%rdx
 165:	00 00 00
 168:	49 89 91 10 01 00 00 	mov    %rdx,0x110(%r9)
 16f:	49 89 89 18 01 00 00 	mov    %rcx,0x118(%r9)
 176:	48 83 c4 28          	add    $0x28,%rsp
 17a:	c3                   	ret
 17b:	48 ba 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rdx
 182:	4e 4e 45
 185:	49 39 12             	cmp    %rdx,(%r10)
 188:	75 16                	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 18a:	ba 07 00 00 00       	mov    $0x7,%edx
 18f:	66 41 81 7a 08 43 54 	cmpw   $0x5443,0x8(%r10)
 196:	74 0f                	je     1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 19f:	00
 1a0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
 1a7:	49 89 51 70          	mov    %rdx,0x70(%r9)
 1ab:	41 88 b1 0b 01 00 00 	mov    %sil,0x10b(%r9)
 1b2:	40 80 ff 0a          	cmp    $0xa,%dil
 1b6:	0f 84 cc 00 00 00    	je     288 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x288>
 1bc:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1c3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1c3>
			1bf: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 1c3:	49 c7 41 68 00 00 00 	movq   $0x0,0x68(%r9)
 1ca:	00
 1cb:	49 89 79 60          	mov    %rdi,0x60(%r9)
 1cf:	4c 39 c0             	cmp    %r8,%rax
 1d2:	0f 83 bd fe ff ff    	jae    95 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x95>
 1d8:	48 8d 79 02          	lea    0x2(%rcx),%rdi
 1dc:	80 79 01 0a          	cmpb   $0xa,0x1(%rcx)
 1e0:	0f 84 52 02 00 00    	je     438 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x438>
 1e6:	49 2b 81 20 01 00 00 	sub    0x120(%r9),%rax
 1ed:	49 89 b9 28 01 00 00 	mov    %rdi,0x128(%r9)
 1f4:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 1fb:	00 00 00
 1fe:	49 89 91 10 01 00 00 	mov    %rdx,0x110(%r9)
 205:	49 89 81 18 01 00 00 	mov    %rax,0x118(%r9)
 20c:	48 89 f8             	mov    %rdi,%rax
 20f:	e9 81 fe ff ff       	jmp    95 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x95>
 214:	0f 1f 40 00          	nopl   0x0(%rax)
 218:	4c 89 c2             	mov    %r8,%rdx
 21b:	49 8b 81 00 01 00 00 	mov    0x100(%r9),%rax
 222:	48 29 f2             	sub    %rsi,%rdx
 225:	48 39 d0             	cmp    %rdx,%rax
 228:	0f 82 21 fe ff ff    	jb     4f <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4f>
 22e:	e9 6d fe ff ff       	jmp    a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa0>
 233:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 238:	48 89 f0             	mov    %rsi,%rax
 23b:	ba 02 00 00 00       	mov    $0x2,%edx
 240:	e9 42 fe ff ff       	jmp    87 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x87>
 245:	49 8b 79 48          	mov    0x48(%r9),%rdi
 249:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
 24e:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
 253:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
 258:	48 89 14 24          	mov    %rdx,(%rsp)
 25c:	e8 00 00 00 00       	call   261 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x261>
			25d: R_X86_64_PLT32	memcpy-0x4
 261:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 266:	48 8b 14 24          	mov    (%rsp),%rdx
 26a:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
 26f:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
 274:	49 01 51 48          	add    %rdx,0x48(%r9)
 278:	49 8b 81 d8 00 00 00 	mov    0xd8(%r9),%rax
 27f:	e9 47 fe ff ff       	jmp    cb <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xcb>
 284:	0f 1f 40 00          	nopl   0x0(%rax)
 288:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 28f <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x28f>
			28b: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 28f:	49 c7 41 68 00 00 00 	movq   $0x0,0x68(%r9)
 296:	00
 297:	49 89 79 60          	mov    %rdi,0x60(%r9)
 29b:	4c 39 c0             	cmp    %r8,%rax
 29e:	0f 83 f1 fd ff ff    	jae    95 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x95>
 2a4:	4c 89 c2             	mov    %r8,%rdx
 2a7:	48 89 c6             	mov    %rax,%rsi
 2aa:	4c 89 cf             	mov    %r9,%rdi
 2ad:	48 83 c4 28          	add    $0x28,%rsp
 2b1:	e9 00 00 00 00       	jmp    2b6 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2b6>
			2b2: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 2b6:	66 41 81 3a 41 43    	cmpw   $0x4341,(%r10)
 2bc:	0f 85 de fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 2c2:	ba 02 00 00 00       	mov    $0x2,%edx
 2c7:	41 80 7a 02 4b       	cmpb   $0x4b,0x2(%r10)
 2cc:	0f 85 ce fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 2d2:	e9 d0 fe ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 2d7:	45 8b 12             	mov    (%r10),%r10d
 2da:	ba 0a 00 00 00       	mov    $0xa,%edx
 2df:	41 81 fa 4e 41 43 4b 	cmp    $0x4b43414e,%r10d
 2e6:	0f 84 bb fe ff ff    	je     1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 2ec:	41 81 fa 53 45 4e 44 	cmp    $0x444e4553,%r10d
 2f3:	ba 0c 00 00 00       	mov    $0xc,%edx
 2f8:	49 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%r10
 2ff:	49 0f 45 d2          	cmovne %r10,%rdx
 303:	e9 9f fe ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 308:	41 0f b6 12          	movzbl (%r10),%edx
 30c:	83 fa 41             	cmp    $0x41,%edx
 30f:	0f 84 49 01 00 00    	je     45e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x45e>
 315:	83 fa 42             	cmp    $0x42,%edx
 318:	0f 84 cb 01 00 00    	je     4e9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4e9>
 31e:	83 fa 45             	cmp    $0x45,%edx
 321:	0f 84 e4 01 00 00    	je     50b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x50b>
 327:	83 fa 53             	cmp    $0x53,%edx
 32a:	0f 85 70 fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 330:	41 81 3a 53 54 4f 4d 	cmpl   $0x4d4f5453,(%r10)
 337:	0f 85 63 fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 33d:	ba 0d 00 00 00       	mov    $0xd,%edx
 342:	41 80 7a 04 50       	cmpb   $0x50,0x4(%r10)
 347:	0f 85 53 fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 34d:	e9 55 fe ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 352:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 358:	41 81 3a 43 4f 4d 4d 	cmpl   $0x4d4d4f43,(%r10)
 35f:	0f 85 3b fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 365:	ba 04 00 00 00       	mov    $0x4,%edx
 36a:	66 41 81 7a 04 49 54 	cmpw   $0x5449,0x4(%r10)
 371:	0f 85 29 fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 377:	e9 2b fe ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 37c:	41 0f b6 12          	movzbl (%r10),%edx
 380:	83 fa 43             	cmp    $0x43,%edx
 383:	0f 84 11 01 00 00    	je     49a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x49a>
 389:	83 fa 4d             	cmp    $0x4d,%edx
 38c:	0f 84 32 01 00 00    	je     4c4 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4c4>
 392:	83 fa 52             	cmp    $0x52,%edx
 395:	0f 85 05 fe ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 39b:	41 81 3a 52 45 43 45 	cmpl   $0x45434552,(%r10)
 3a2:	0f 85 f8 fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 3a8:	ba 0b 00 00 00       	mov    $0xb,%edx
 3ad:	41 81 7a 03 45 49 50 	cmpl   $0x54504945,0x3(%r10)
 3b4:	54
 3b5:	0f 85 e5 fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 3bb:	e9 e7 fd ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 3c0:	48 ba 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rdx
 3c7:	43 54 45
 3ca:	49 39 12             	cmp    %rdx,(%r10)
 3cd:	0f 84 ad 00 00 00    	je     480 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x480>
 3d3:	48 ba 53 55 42 53 43 	movabs $0x4249524353425553,%rdx
 3da:	52 49 42
 3dd:	49 39 12             	cmp    %rdx,(%r10)
 3e0:	0f 85 ba fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 3e6:	ba 0e 00 00 00       	mov    $0xe,%edx
 3eb:	41 80 7a 08 45       	cmpb   $0x45,0x8(%r10)
 3f0:	0f 85 aa fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 3f6:	e9 ac fd ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 3fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 400:	48 ba 55 4e 53 55 42 	movabs $0x5243534255534e55,%rdx
 407:	53 43 52
 40a:	49 39 12             	cmp    %rdx,(%r10)
 40d:	0f 85 8d fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 413:	ba 0f 00 00 00       	mov    $0xf,%edx
 418:	41 81 7a 07 52 49 42 	cmpl   $0x45424952,0x7(%r10)
 41f:	45
 420:	0f 85 7a fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 426:	e9 7c fd ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 42b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 430:	4c 89 c0             	mov    %r8,%rax
 433:	e9 5d fc ff ff       	jmp    95 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x95>
 438:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 43f <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x43f>
			43b: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 43f:	49 89 41 60          	mov    %rax,0x60(%r9)
 443:	4c 39 c7             	cmp    %r8,%rdi
 446:	0f 83 c0 fd ff ff    	jae    20c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20c>
 44c:	48 89 fe             	mov    %rdi,%rsi
 44f:	4c 89 c2             	mov    %r8,%rdx
 452:	4c 89 cf             	mov    %r9,%rdi
 455:	48 83 c4 28          	add    $0x28,%rsp
 459:	e9 00 00 00 00       	jmp    45e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x45e>
			45a: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 45e:	41 81 3a 41 42 4f 52 	cmpl   $0x524f4241,(%r10)
 465:	0f 85 35 fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 46b:	ba 01 00 00 00       	mov    $0x1,%edx
 470:	41 80 7a 04 54       	cmpb   $0x54,0x4(%r10)
 475:	0f 85 25 fd ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 47b:	e9 27 fd ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 480:	41 80 7a 08 44       	cmpb   $0x44,0x8(%r10)
 485:	0f 85 48 ff ff ff    	jne    3d3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3d3>
 48b:	be 01 00 00 00       	mov    $0x1,%esi
 490:	ba 06 00 00 00       	mov    $0x6,%edx
 495:	e9 0d fd ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 49a:	41 81 3a 43 4f 4e 4e 	cmpl   $0x4e4e4f43,(%r10)
 4a1:	0f 85 f9 fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 4a7:	41 81 7a 03 4e 45 43 	cmpl   $0x5443454e,0x3(%r10)
 4ae:	54
 4af:	0f 85 eb fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 4b5:	be 01 00 00 00       	mov    $0x1,%esi
 4ba:	ba 05 00 00 00       	mov    $0x5,%edx
 4bf:	e9 e3 fc ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 4c4:	41 81 3a 4d 45 53 53 	cmpl   $0x5353454d,(%r10)
 4cb:	0f 85 cf fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 4d1:	ba 09 00 00 00       	mov    $0x9,%edx
 4d6:	41 81 7a 03 53 41 47 	cmpl   $0x45474153,0x3(%r10)
 4dd:	45
 4de:	0f 85 bc fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 4e4:	e9 be fc ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 4e9:	41 81 3a 42 45 47 49 	cmpl   $0x49474542,(%r10)
 4f0:	0f 85 aa fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 4f6:	ba 03 00 00 00       	mov    $0x3,%edx
 4fb:	41 80 7a 04 4e       	cmpb   $0x4e,0x4(%r10)
 500:	0f 85 9a fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 506:	e9 9c fc ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>
 50b:	41 81 3a 45 52 52 4f 	cmpl   $0x4f525245,(%r10)
 512:	0f 85 88 fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 518:	ba 08 00 00 00       	mov    $0x8,%edx
 51d:	41 80 7a 04 52       	cmpb   $0x52,0x4(%r10)
 522:	0f 85 78 fc ff ff    	jne    1a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a0>
 528:	e9 7a fc ff ff       	jmp    1a7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1a7>

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
   4:	80 3e 00             	cmpb   $0x0,(%rsi)
   7:	75 57                	jne    60 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x60>
   9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 10 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x10>
			c: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  10:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  17:	00
  18:	48 89 47 60          	mov    %rax,0x60(%rdi)
  1c:	48 39 d6             	cmp    %rdx,%rsi
  1f:	0f 83 fb 00 00 00    	jae    120 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x120>
  25:	48 8d 46 01          	lea    0x1(%rsi),%rax
  29:	80 3e 00             	cmpb   $0x0,(%rsi)
  2c:	0f 84 1e 01 00 00    	je     150 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x150>
  32:	48 2b b7 20 01 00 00 	sub    0x120(%rdi),%rsi
  39:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
  40:	48 ba 03 00 00 00 0b 	movabs $0xb00000003,%rdx
  47:	00 00 00
  4a:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
  51:	48 89 b7 18 01 00 00 	mov    %rsi,0x118(%rdi)
  58:	c3                   	ret
  59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  60:	53                   	push   %rbx
  61:	48 89 d0             	mov    %rdx,%rax
  64:	48 29 f0             	sub    %rsi,%rax
  67:	48 89 c3             	mov    %rax,%rbx
  6a:	48 83 ec 20          	sub    $0x20,%rsp
  6e:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  73:	48 89 f7             	mov    %rsi,%rdi
  76:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  7b:	48 89 c2             	mov    %rax,%rdx
  7e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  83:	31 f6                	xor    %esi,%esi
  85:	e8 00 00 00 00       	call   8a <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x8a>
			86: R_X86_64_PLT32	memchr-0x4
  8a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  8f:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  94:	48 85 c0             	test   %rax,%rax
  97:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  9c:	0f 84 86 00 00 00    	je     128 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x128>
  a2:	48 89 c6             	mov    %rax,%rsi
  a5:	49 8b 50 20          	mov    0x20(%r8),%rdx
  a9:	49 2b 90 90 00 00 00 	sub    0x90(%r8),%rdx
  b0:	48 29 ce             	sub    %rcx,%rsi
  b3:	48 39 f2             	cmp    %rsi,%rdx
  b6:	0f 82 94 01 00 00    	jb     250 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x250>
  bc:	49 89 88 b8 00 00 00 	mov    %rcx,0xb8(%r8)
  c3:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ca <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xca>
			c6: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  ca:	49 89 b0 98 00 00 00 	mov    %rsi,0x98(%r8)
  d1:	49 89 48 60          	mov    %rcx,0x60(%r8)
  d5:	49 c7 40 68 00 00 00 	movq   $0x0,0x68(%r8)
  dc:	00
  dd:	4c 39 c8             	cmp    %r9,%rax
  e0:	73 36                	jae    118 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x118>
  e2:	48 8d 70 01          	lea    0x1(%rax),%rsi
  e6:	80 38 00             	cmpb   $0x0,(%rax)
  e9:	0f 84 99 01 00 00    	je     288 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x288>
  ef:	49 2b 80 20 01 00 00 	sub    0x120(%r8),%rax
  f6:	49 89 b0 28 01 00 00 	mov    %rsi,0x128(%r8)
  fd:	48 ba 03 00 00 00 0b 	movabs $0xb00000003,%rdx
 104:	00 00 00
 107:	49 89 90 10 01 00 00 	mov    %rdx,0x110(%r8)
 10e:	49 89 80 18 01 00 00 	mov    %rax,0x118(%r8)
 115:	48 89 f0             	mov    %rsi,%rax
 118:	48 83 c4 20          	add    $0x20,%rsp
 11c:	5b                   	pop    %rbx
 11d:	c3                   	ret
 11e:	66 90                	xchg   %ax,%ax
 120:	48 89 f0             	mov    %rsi,%rax
 123:	c3                   	ret
 124:	0f 1f 40 00          	nopl   0x0(%rax)
 128:	49 8b 50 20          	mov    0x20(%r8),%rdx
 12c:	49 2b 90 90 00 00 00 	sub    0x90(%r8),%rdx
 133:	48 39 da             	cmp    %rbx,%rdx
 136:	0f 82 14 01 00 00    	jb     250 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x250>
 13c:	49 89 88 b8 00 00 00 	mov    %rcx,0xb8(%r8)
 143:	4c 89 c8             	mov    %r9,%rax
 146:	49 89 98 98 00 00 00 	mov    %rbx,0x98(%r8)
 14d:	eb c9                	jmp    118 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x118>
 14f:	90                   	nop
 150:	31 c9                	xor    %ecx,%ecx
 152:	48 83 bf 80 00 00 00 	cmpq   $0x0,0x80(%rdi)
 159:	00
 15a:	74 0f                	je     16b <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x16b>
 15c:	48 8b 8f f0 00 00 00 	mov    0xf0(%rdi),%rcx
 163:	48 c1 e1 05          	shl    $0x5,%rcx
 167:	48 03 4f 38          	add    0x38(%rdi),%rcx
 16b:	48 89 8f b0 00 00 00 	mov    %rcx,0xb0(%rdi)
 172:	8b 4f 78             	mov    0x78(%rdi),%ecx
 175:	83 e1 01             	and    $0x1,%ecx
 178:	89 ce                	mov    %ecx,%esi
 17a:	83 ce 02             	or     $0x2,%esi
 17d:	80 bf 09 01 00 00 00 	cmpb   $0x0,0x109(%rdi)
 184:	0f 44 ce             	cmove  %esi,%ecx
 187:	83 c9 04             	or     $0x4,%ecx
 18a:	89 4f 78             	mov    %ecx,0x78(%rdi)
 18d:	48 8b 8f e0 00 00 00 	mov    0xe0(%rdi),%rcx
 194:	f3 0f 6f 47 70       	movdqu 0x70(%rdi),%xmm0
 199:	48 8d 71 01          	lea    0x1(%rcx),%rsi
 19d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
 1a1:	48 c1 e1 04          	shl    $0x4,%rcx
 1a5:	48 03 4f 30          	add    0x30(%rdi),%rcx
 1a9:	48 89 b7 e0 00 00 00 	mov    %rsi,0xe0(%rdi)
 1b0:	0f 11 01             	movups %xmm0,(%rcx)
 1b3:	f3 0f 6f 87 80 00 00 	movdqu 0x80(%rdi),%xmm0
 1ba:	00
 1bb:	0f 11 41 10          	movups %xmm0,0x10(%rcx)
 1bf:	f3 0f 6f 87 90 00 00 	movdqu 0x90(%rdi),%xmm0
 1c6:	00
 1c7:	0f 11 41 20          	movups %xmm0,0x20(%rcx)
 1cb:	f3 0f 6f 87 a0 00 00 	movdqu 0xa0(%rdi),%xmm0
 1d2:	00
 1d3:	0f 11 41 30          	movups %xmm0,0x30(%rcx)
 1d7:	f3 0f 6f 87 b0 00 00 	movdqu 0xb0(%rdi),%xmm0
 1de:	00
 1df:	0f 11 41 40          	movups %xmm0,0x40(%rcx)
 1e3:	f3 0f 6f 87 90 00 00 	movdqu 0x90(%rdi),%xmm0
 1ea:	00
 1eb:	b9 00 01 00 00       	mov    $0x100,%ecx
 1f0:	66 89 8f 08 01 00 00 	mov    %cx,0x108(%rdi)
 1f7:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1fe <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x1fe>
			1fa: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 1fe:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 202:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 206:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
 20b:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 212:	00
 213:	48 c7 87 b8 00 00 00 	movq   $0x0,0xb8(%rdi)
 21a:	00 00 00 00
 21e:	66 0f d4 c1          	paddq  %xmm1,%xmm0
 222:	48 c7 87 98 00 00 00 	movq   $0x0,0x98(%rdi)
 229:	00 00 00 00
 22d:	66 0f d6 87 90 00 00 	movq   %xmm0,0x90(%rdi)
 234:	00
 235:	48 39 d0             	cmp    %rdx,%rax
 238:	73 0e                	jae    248 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x248>
 23a:	48 89 c6             	mov    %rax,%rsi
 23d:	e9 00 00 00 00       	jmp    242 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x242>
			23e: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 248:	c3                   	ret
 249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 250:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
 257:	00 00 00
 25a:	49 89 80 10 01 00 00 	mov    %rax,0x110(%r8)
 261:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
 265:	49 2b 80 20 01 00 00 	sub    0x120(%r8),%rax
 26c:	49 89 80 18 01 00 00 	mov    %rax,0x118(%r8)
 273:	48 8d 44 11 01       	lea    0x1(%rcx,%rdx,1),%rax
 278:	49 89 80 28 01 00 00 	mov    %rax,0x128(%r8)
 27f:	48 83 c4 20          	add    $0x20,%rsp
 283:	5b                   	pop    %rbx
 284:	c3                   	ret
 285:	0f 1f 00             	nopl   (%rax)
 288:	31 c0                	xor    %eax,%eax
 28a:	49 83 b8 80 00 00 00 	cmpq   $0x0,0x80(%r8)
 291:	00
 292:	74 0f                	je     2a3 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2a3>
 294:	49 8b 80 f0 00 00 00 	mov    0xf0(%r8),%rax
 29b:	48 c1 e0 05          	shl    $0x5,%rax
 29f:	49 03 40 38          	add    0x38(%r8),%rax
 2a3:	49 89 80 b0 00 00 00 	mov    %rax,0xb0(%r8)
 2aa:	41 8b 40 78          	mov    0x78(%r8),%eax
 2ae:	83 e0 01             	and    $0x1,%eax
 2b1:	89 c2                	mov    %eax,%edx
 2b3:	83 ca 02             	or     $0x2,%edx
 2b6:	41 80 b8 09 01 00 00 	cmpb   $0x0,0x109(%r8)
 2bd:	00
 2be:	0f 44 c2             	cmove  %edx,%eax
 2c1:	83 c8 04             	or     $0x4,%eax
 2c4:	41 89 40 78          	mov    %eax,0x78(%r8)
 2c8:	49 8b 80 e0 00 00 00 	mov    0xe0(%r8),%rax
 2cf:	f3 41 0f 6f 40 70    	movdqu 0x70(%r8),%xmm0
 2d5:	48 8d 50 01          	lea    0x1(%rax),%rdx
 2d9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
 2dd:	48 c1 e0 04          	shl    $0x4,%rax
 2e1:	49 03 40 30          	add    0x30(%r8),%rax
 2e5:	49 89 90 e0 00 00 00 	mov    %rdx,0xe0(%r8)
 2ec:	0f 11 00             	movups %xmm0,(%rax)
 2ef:	f3 41 0f 6f 80 80 00 	movdqu 0x80(%r8),%xmm0
 2f6:	00 00
 2f8:	0f 11 40 10          	movups %xmm0,0x10(%rax)
 2fc:	f3 41 0f 6f 80 90 00 	movdqu 0x90(%r8),%xmm0
 303:	00 00
 305:	0f 11 40 20          	movups %xmm0,0x20(%rax)
 309:	f3 41 0f 6f 80 a0 00 	movdqu 0xa0(%r8),%xmm0
 310:	00 00
 312:	0f 11 40 30          	movups %xmm0,0x30(%rax)
 316:	f3 41 0f 6f 80 b0 00 	movdqu 0xb0(%r8),%xmm0
 31d:	00 00
 31f:	0f 11 40 40          	movups %xmm0,0x40(%rax)
 323:	b8 00 01 00 00       	mov    $0x100,%eax
 328:	f3 41 0f 6f 80 90 00 	movdqu 0x90(%r8),%xmm0
 32f:	00 00
 331:	66 41 89 80 08 01 00 	mov    %ax,0x108(%r8)
 338:	00
 339:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 340 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x340>
			33c: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 340:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 344:	49 89 40 60          	mov    %rax,0x60(%r8)
 348:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
 34d:	49 c7 40 68 00 00 00 	movq   $0x0,0x68(%r8)
 354:	00
 355:	49 c7 80 b8 00 00 00 	movq   $0x0,0xb8(%r8)
 35c:	00 00 00 00
 360:	66 0f d4 c1          	paddq  %xmm1,%xmm0
 364:	49 c7 80 98 00 00 00 	movq   $0x0,0x98(%r8)
 36b:	00 00 00 00
 36f:	66 41 0f d6 80 90 00 	movq   %xmm0,0x90(%r8)
 376:	00 00
 378:	4c 39 ce             	cmp    %r9,%rsi
 37b:	0f 83 94 fd ff ff    	jae    115 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x115>
 381:	48 83 c4 20          	add    $0x20,%rsp
 385:	4c 89 ca             	mov    %r9,%rdx
 388:	4c 89 c7             	mov    %r8,%rdi
 38b:	5b                   	pop    %rbx
 38c:	e9 00 00 00 00       	jmp    391 <stomptalk::parser::fail(unsigned int, char const*)+0x1>
			38d: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
