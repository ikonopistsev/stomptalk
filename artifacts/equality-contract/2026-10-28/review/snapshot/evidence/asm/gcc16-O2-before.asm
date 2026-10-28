00000000000005e0 <stomptalk::parser::reserve(unsigned long, char const*)>:
     5e0:	f3 0f 1e fa          	endbr64
     5e4:	48 8b 47 10          	mov    0x10(%rdi),%rax
     5e8:	48 89 d1             	mov    %rdx,%rcx
     5eb:	48 8b 97 00 01 00 00 	mov    0x100(%rdi),%rdx
     5f2:	49 89 c0             	mov    %rax,%r8
     5f5:	49 29 d0             	sub    %rdx,%r8
     5f8:	49 39 f0             	cmp    %rsi,%r8
     5fb:	72 3b                	jb     638 <stomptalk::parser::reserve(unsigned long, char const*)+0x58>
     5fd:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
     604:	49 01 d0             	add    %rdx,%r8
     607:	4c 29 c0             	sub    %r8,%rax
     60a:	48 39 f0             	cmp    %rsi,%rax
     60d:	72 11                	jb     620 <stomptalk::parser::reserve(unsigned long, char const*)+0x40>
     60f:	48 01 f2             	add    %rsi,%rdx
     612:	b8 01 00 00 00       	mov    $0x1,%eax
     617:	48 89 97 00 01 00 00 	mov    %rdx,0x100(%rdi)
     61e:	c3                   	ret
     61f:	90                   	nop
     620:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     627:	00 00 00
     62a:	31 c0                	xor    %eax,%eax
     62c:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     633:	c3                   	ret
     634:	0f 1f 40 00          	nopl   0x0(%rax)
     638:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     63f:	00 00 00
     642:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     649:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
     64d:	4a 8d 4c 01 01       	lea    0x1(%rcx,%r8,1),%rcx
     652:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     659:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     660:	31 c0                	xor    %eax,%eax
     662:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     669:	c3                   	ret
     66a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000710 <stomptalk::parser::own_metadata()>:
     710:	f3 0f 1e fa          	endbr64
     714:	48 83 ec 28          	sub    $0x28,%rsp
     718:	48 8d b7 a0 00 00 00 	lea    0xa0(%rdi),%rsi
     71f:	48 89 1c 24          	mov    %rbx,(%rsp)
     723:	48 89 fb             	mov    %rdi,%rbx
     726:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
     72b:	e8 00 00 00 00       	call   730 <stomptalk::parser::own_metadata()+0x20>
			72c: R_X86_64_PLT32	stomptalk::parser::own(stomptalk_view&)-0x4
     730:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     737:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     73e:	0f 83 11 01 00 00    	jae    855 <stomptalk::parser::own_metadata()+0x145>
     744:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
     749:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
     74e:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
     753:	e9 ad 00 00 00       	jmp    805 <stomptalk::parser::own_metadata()+0xf5>
     758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     75f:	00
     760:	48 8b 75 00          	mov    0x0(%rbp),%rsi
     764:	48 8b 43 40          	mov    0x40(%rbx),%rax
     768:	48 89 f2             	mov    %rsi,%rdx
     76b:	48 29 c2             	sub    %rax,%rdx
     76e:	48 3b 53 10          	cmp    0x10(%rbx),%rdx
     772:	72 3a                	jb     7ae <stomptalk::parser::own_metadata()+0x9e>
     774:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     778:	48 8b 53 50          	mov    0x50(%rbx),%rdx
     77c:	48 89 ef             	mov    %rbp,%rdi
     77f:	48 29 ca             	sub    %rcx,%rdx
     782:	4c 39 ea             	cmp    %r13,%rdx
     785:	72 1c                	jb     7a3 <stomptalk::parser::own_metadata()+0x93>
     787:	48 89 cf             	mov    %rcx,%rdi
     78a:	4c 89 ea             	mov    %r13,%rdx
     78d:	e8 00 00 00 00       	call   792 <stomptalk::parser::own_metadata()+0x82>
			78e: R_X86_64_PLT32	memcpy-0x4
     792:	48 8b 7b 38          	mov    0x38(%rbx),%rdi
     796:	48 89 c1             	mov    %rax,%rcx
     799:	48 8b 43 48          	mov    0x48(%rbx),%rax
     79d:	4c 01 f7             	add    %r14,%rdi
     7a0:	4c 01 e8             	add    %r13,%rax
     7a3:	48 89 43 48          	mov    %rax,0x48(%rbx)
     7a7:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
     7ab:	48 89 fd             	mov    %rdi,%rbp
     7ae:	4c 8b 6d 18          	mov    0x18(%rbp),%r13
     7b2:	4d 85 ed             	test   %r13,%r13
     7b5:	74 7a                	je     831 <stomptalk::parser::own_metadata()+0x121>
     7b7:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     7bb:	48 8b 43 40          	mov    0x40(%rbx),%rax
     7bf:	48 89 f2             	mov    %rsi,%rdx
     7c2:	48 29 c2             	sub    %rax,%rdx
     7c5:	48 3b 53 10          	cmp    0x10(%rbx),%rdx
     7c9:	72 2d                	jb     7f8 <stomptalk::parser::own_metadata()+0xe8>
     7cb:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     7cf:	48 8b 53 50          	mov    0x50(%rbx),%rdx
     7d3:	48 29 ca             	sub    %rcx,%rdx
     7d6:	4c 39 ea             	cmp    %r13,%rdx
     7d9:	72 15                	jb     7f0 <stomptalk::parser::own_metadata()+0xe0>
     7db:	48 89 cf             	mov    %rcx,%rdi
     7de:	4c 89 ea             	mov    %r13,%rdx
     7e1:	e8 00 00 00 00       	call   7e6 <stomptalk::parser::own_metadata()+0xd6>
			7e2: R_X86_64_PLT32	memcpy-0x4
     7e6:	48 89 c1             	mov    %rax,%rcx
     7e9:	48 8b 43 48          	mov    0x48(%rbx),%rax
     7ed:	4c 01 e8             	add    %r13,%rax
     7f0:	48 89 43 48          	mov    %rax,0x48(%rbx)
     7f4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
     7f8:	49 83 c4 01          	add    $0x1,%r12
     7fc:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     803:	73 41                	jae    846 <stomptalk::parser::own_metadata()+0x136>
     805:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     809:	4d 89 e6             	mov    %r12,%r14
     80c:	49 c1 e6 05          	shl    $0x5,%r14
     810:	4c 01 f5             	add    %r14,%rbp
     813:	4c 8b 6d 08          	mov    0x8(%rbp),%r13
     817:	4d 85 ed             	test   %r13,%r13
     81a:	0f 85 40 ff ff ff    	jne    760 <stomptalk::parser::own_metadata()+0x50>
     820:	4c 8b 6d 18          	mov    0x18(%rbp),%r13
     824:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
     82b:	00
     82c:	4d 85 ed             	test   %r13,%r13
     82f:	75 86                	jne    7b7 <stomptalk::parser::own_metadata()+0xa7>
     831:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
     838:	00
     839:	49 83 c4 01          	add    $0x1,%r12
     83d:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     844:	72 bf                	jb     805 <stomptalk::parser::own_metadata()+0xf5>
     846:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
     84b:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
     850:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
     855:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
     85a:	48 8d b3 c0 00 00 00 	lea    0xc0(%rbx),%rsi
     861:	48 89 df             	mov    %rbx,%rdi
     864:	48 8b 1c 24          	mov    (%rsp),%rbx
     868:	48 83 c4 28          	add    $0x28,%rsp
     86c:	e9 ff fd ff ff       	jmp    670 <stomptalk::parser::own(stomptalk_view&)>
     871:	90                   	nop
     872:	0f 1f 00             	nopl   (%rax)
     875:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     87c:	00 00 00 00

0000000000000880 <stomptalk::parser::own_token() [clone .part.0]>:
     880:	53                   	push   %rbx
     881:	48 89 fb             	mov    %rdi,%rbx
     884:	48 83 ec 10          	sub    $0x10,%rsp
     888:	e8 00 00 00 00       	call   88d <stomptalk::parser::own_token() [clone .part.0]+0xd>
			889: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     88d:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     891:	48 8b 43 50          	mov    0x50(%rbx),%rax
     895:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
     89c:	48 29 c8             	sub    %rcx,%rax
     89f:	48 39 d0             	cmp    %rdx,%rax
     8a2:	72 54                	jb     8f8 <stomptalk::parser::own_token() [clone .part.0]+0x78>
     8a4:	48 89 c8             	mov    %rcx,%rax
     8a7:	48 85 d2             	test   %rdx,%rdx
     8aa:	75 24                	jne    8d0 <stomptalk::parser::own_token() [clone .part.0]+0x50>
     8ac:	48 01 d0             	add    %rdx,%rax
     8af:	48 89 43 48          	mov    %rax,0x48(%rbx)
     8b3:	48 89 8b d0 00 00 00 	mov    %rcx,0xd0(%rbx)
     8ba:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     8c1:	48 83 c4 10          	add    $0x10,%rsp
     8c5:	5b                   	pop    %rbx
     8c6:	c3                   	ret
     8c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     8ce:	00 00
     8d0:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     8d7:	48 89 cf             	mov    %rcx,%rdi
     8da:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
     8df:	e8 00 00 00 00       	call   8e4 <stomptalk::parser::own_token() [clone .part.0]+0x64>
			8e0: R_X86_64_PLT32	memcpy-0x4
     8e4:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
     8e9:	48 89 c1             	mov    %rax,%rcx
     8ec:	48 8b 43 48          	mov    0x48(%rbx),%rax
     8f0:	eb ba                	jmp    8ac <stomptalk::parser::own_token() [clone .part.0]+0x2c>
     8f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     8f8:	48 8b 43 40          	mov    0x40(%rbx),%rax
     8fc:	eb b1                	jmp    8af <stomptalk::parser::own_token() [clone .part.0]+0x2f>
     8fe:	66 90                	xchg   %ax,%ax

0000000000000900 <stomptalk::parser::own_token()>:
     900:	f3 0f 1e fa          	endbr64
     904:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     90b:	74 03                	je     910 <stomptalk::parser::own_token()+0x10>
     90d:	c3                   	ret
     90e:	66 90                	xchg   %ax,%ax
     910:	53                   	push   %rbx
     911:	48 89 fb             	mov    %rdi,%rbx
     914:	48 83 ec 10          	sub    $0x10,%rsp
     918:	e8 00 00 00 00       	call   91d <stomptalk::parser::own_token()+0x1d>
			919: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     91d:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     921:	48 8b 43 50          	mov    0x50(%rbx),%rax
     925:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
     92c:	48 29 c8             	sub    %rcx,%rax
     92f:	48 39 d0             	cmp    %rdx,%rax
     932:	72 2c                	jb     960 <stomptalk::parser::own_token()+0x60>
     934:	48 89 c8             	mov    %rcx,%rax
     937:	48 85 d2             	test   %rdx,%rdx
     93a:	75 34                	jne    970 <stomptalk::parser::own_token()+0x70>
     93c:	48 01 d0             	add    %rdx,%rax
     93f:	48 89 43 48          	mov    %rax,0x48(%rbx)
     943:	48 89 8b d0 00 00 00 	mov    %rcx,0xd0(%rbx)
     94a:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     951:	48 83 c4 10          	add    $0x10,%rsp
     955:	5b                   	pop    %rbx
     956:	c3                   	ret
     957:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     95e:	00 00
     960:	48 8b 43 40          	mov    0x40(%rbx),%rax
     964:	eb d9                	jmp    93f <stomptalk::parser::own_token()+0x3f>
     966:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     96d:	00 00 00
     970:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     977:	48 89 cf             	mov    %rcx,%rdi
     97a:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
     97f:	e8 00 00 00 00       	call   984 <stomptalk::parser::own_token()+0x84>
			980: R_X86_64_PLT32	memcpy-0x4
     984:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
     989:	48 89 c1             	mov    %rax,%rcx
     98c:	48 8b 43 48          	mov    0x48(%rbx),%rax
     990:	eb aa                	jmp    93c <stomptalk::parser::own_token()+0x3c>
     992:	0f 1f 00             	nopl   (%rax)
     995:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     99c:	00 00 00 00

00000000000009a0 <stomptalk::parser::append(char const*, unsigned long)>:
     9a0:	f3 0f 1e fa          	endbr64
     9a4:	48 85 d2             	test   %rdx,%rdx
     9a7:	75 07                	jne    9b0 <stomptalk::parser::append(char const*, unsigned long)+0x10>
     9a9:	b8 01 00 00 00       	mov    $0x1,%eax
     9ae:	c3                   	ret
     9af:	90                   	nop
     9b0:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
     9b4:	48 8b 87 00 01 00 00 	mov    0x100(%rdi),%rax
     9bb:	49 89 c8             	mov    %rcx,%r8
     9be:	49 29 c0             	sub    %rax,%r8
     9c1:	49 39 d0             	cmp    %rdx,%r8
     9c4:	0f 82 a6 00 00 00    	jb     a70 <stomptalk::parser::append(char const*, unsigned long)+0xd0>
     9ca:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
     9d1:	49 01 c0             	add    %rax,%r8
     9d4:	4c 29 c1             	sub    %r8,%rcx
     9d7:	48 39 d1             	cmp    %rdx,%rcx
     9da:	0f 82 c8 00 00 00    	jb     aa8 <stomptalk::parser::append(char const*, unsigned long)+0x108>
     9e0:	48 01 d0             	add    %rdx,%rax
     9e3:	48 89 f9             	mov    %rdi,%rcx
     9e6:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
     9ed:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     9f4:	75 2a                	jne    a20 <stomptalk::parser::append(char const*, unsigned long)+0x80>
     9f6:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
     9fd:	48 85 c0             	test   %rax,%rax
     a00:	75 07                	jne    a09 <stomptalk::parser::append(char const*, unsigned long)+0x69>
     a02:	48 89 b7 d0 00 00 00 	mov    %rsi,0xd0(%rdi)
     a09:	48 01 c2             	add    %rax,%rdx
     a0c:	b8 01 00 00 00       	mov    $0x1,%eax
     a11:	48 89 91 d8 00 00 00 	mov    %rdx,0xd8(%rcx)
     a18:	c3                   	ret
     a19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     a20:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
     a24:	48 8b 41 50          	mov    0x50(%rcx),%rax
     a28:	48 29 f8             	sub    %rdi,%rax
     a2b:	48 39 d0             	cmp    %rdx,%rax
     a2e:	0f 82 8c 00 00 00    	jb     ac0 <stomptalk::parser::append(char const*, unsigned long)+0x120>
     a34:	48 83 ec 18          	sub    $0x18,%rsp
     a38:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
     a3d:	48 89 14 24          	mov    %rdx,(%rsp)
     a41:	e8 00 00 00 00       	call   a46 <stomptalk::parser::append(char const*, unsigned long)+0xa6>
			a42: R_X86_64_PLT32	memcpy-0x4
     a46:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
     a4b:	48 8b 14 24          	mov    (%rsp),%rdx
     a4f:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
     a56:	48 01 51 48          	add    %rdx,0x48(%rcx)
     a5a:	48 01 c2             	add    %rax,%rdx
     a5d:	b8 01 00 00 00       	mov    $0x1,%eax
     a62:	48 89 91 d8 00 00 00 	mov    %rdx,0xd8(%rcx)
     a69:	48 83 c4 18          	add    $0x18,%rsp
     a6d:	c3                   	ret
     a6e:	66 90                	xchg   %ax,%ax
     a70:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     a77:	00 00 00
     a7a:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     a81:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
     a85:	4a 8d 74 06 01       	lea    0x1(%rsi,%r8,1),%rsi
     a8a:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     a91:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     a98:	31 c0                	xor    %eax,%eax
     a9a:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     aa1:	c3                   	ret
     aa2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     aa8:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     aaf:	00 00 00
     ab2:	31 c0                	xor    %eax,%eax
     ab4:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     abb:	c3                   	ret
     abc:	0f 1f 40 00          	nopl   0x0(%rax)
     ac0:	48 8b 41 40          	mov    0x40(%rcx),%rax
     ac4:	48 89 41 48          	mov    %rax,0x48(%rcx)
     ac8:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
     acf:	e9 35 ff ff ff       	jmp    a09 <stomptalk::parser::append(char const*, unsigned long)+0x69>
     ad4:	90                   	nop
     ad5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     adc:	00 00 00 00

0000000000000ae0 <stomptalk::parser::append(char, char const*)>:
     ae0:	f3 0f 1e fa          	endbr64
     ae4:	48 89 d1             	mov    %rdx,%rcx
     ae7:	48 8b 87 00 01 00 00 	mov    0x100(%rdi),%rax
     aee:	48 8b 57 10          	mov    0x10(%rdi),%rdx
     af2:	48 39 c2             	cmp    %rax,%rdx
     af5:	0f 84 ad 00 00 00    	je     ba8 <stomptalk::parser::append(char, char const*)+0xc8>
     afb:	48 2b 97 f8 00 00 00 	sub    0xf8(%rdi),%rdx
     b02:	48 39 d0             	cmp    %rdx,%rax
     b05:	0f 84 85 00 00 00    	je     b90 <stomptalk::parser::append(char, char const*)+0xb0>
     b0b:	48 83 c0 01          	add    $0x1,%rax
     b0f:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
     b16:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     b1d:	74 29                	je     b48 <stomptalk::parser::append(char, char const*)+0x68>
     b1f:	48 8b 47 48          	mov    0x48(%rdi),%rax
     b23:	48 3b 47 50          	cmp    0x50(%rdi),%rax
     b27:	0f 82 b3 00 00 00    	jb     be0 <stomptalk::parser::append(char, char const*)+0x100>
     b2d:	48 8b 47 40          	mov    0x40(%rdi),%rax
     b31:	48 83 87 d8 00 00 00 	addq   $0x1,0xd8(%rdi)
     b38:	01
     b39:	48 89 47 48          	mov    %rax,0x48(%rdi)
     b3d:	b8 01 00 00 00       	mov    $0x1,%eax
     b42:	c3                   	ret
     b43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     b48:	48 83 ec 18          	sub    $0x18,%rsp
     b4c:	40 88 74 24 0f       	mov    %sil,0xf(%rsp)
     b51:	48 89 3c 24          	mov    %rdi,(%rsp)
     b55:	e8 26 fd ff ff       	call   880 <stomptalk::parser::own_token() [clone .part.0]>
     b5a:	48 8b 3c 24          	mov    (%rsp),%rdi
     b5e:	0f b6 74 24 0f       	movzbl 0xf(%rsp),%esi
     b63:	48 8b 47 48          	mov    0x48(%rdi),%rax
     b67:	48 3b 47 50          	cmp    0x50(%rdi),%rax
     b6b:	0f 82 8f 00 00 00    	jb     c00 <stomptalk::parser::append(char, char const*)+0x120>
     b71:	48 8b 47 40          	mov    0x40(%rdi),%rax
     b75:	48 89 47 48          	mov    %rax,0x48(%rdi)
     b79:	48 83 87 d8 00 00 00 	addq   $0x1,0xd8(%rdi)
     b80:	01
     b81:	b8 01 00 00 00       	mov    $0x1,%eax
     b86:	48 83 c4 18          	add    $0x18,%rsp
     b8a:	c3                   	ret
     b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     b90:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     b97:	00 00 00
     b9a:	31 c0                	xor    %eax,%eax
     b9c:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     ba3:	c3                   	ret
     ba4:	0f 1f 40 00          	nopl   0x0(%rax)
     ba8:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     baf:	00 00 00
     bb2:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     bb9:	48 89 c8             	mov    %rcx,%rax
     bbc:	48 83 c1 01          	add    $0x1,%rcx
     bc0:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     bc7:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     bce:	31 c0                	xor    %eax,%eax
     bd0:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     bd7:	c3                   	ret
     bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     bdf:	00
     be0:	48 8d 50 01          	lea    0x1(%rax),%rdx
     be4:	48 89 57 48          	mov    %rdx,0x48(%rdi)
     be8:	40 88 30             	mov    %sil,(%rax)
     beb:	b8 01 00 00 00       	mov    $0x1,%eax
     bf0:	48 83 87 d8 00 00 00 	addq   $0x1,0xd8(%rdi)
     bf7:	01
     bf8:	c3                   	ret
     bf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     c00:	48 8d 50 01          	lea    0x1(%rax),%rdx
     c04:	48 89 57 48          	mov    %rdx,0x48(%rdi)
     c08:	40 88 30             	mov    %sil,(%rax)
     c0b:	e9 69 ff ff ff       	jmp    b79 <stomptalk::parser::append(char, char const*)+0x99>

0000000000000c10 <stomptalk::parser::finish_token()>:
     c10:	f3 0f 1e fa          	endbr64
     c14:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
     c1b:	31 d2                	xor    %edx,%edx
     c1d:	48 85 c0             	test   %rax,%rax
     c20:	74 07                	je     c29 <stomptalk::parser::finish_token()+0x19>
     c22:	48 8b 97 d0 00 00 00 	mov    0xd0(%rdi),%rdx
     c29:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
     c30:	00 00 00 00
     c34:	48 92                	xchg   %rax,%rdx
     c36:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
     c3d:	00 00 00 00
     c41:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     c48:	c3                   	ret
     c49:	90                   	nop
     c4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001210 <stomptalk::parser::finish_value(char const*)>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	48 83 ec 68          	sub    $0x68,%rsp
    1218:	48 8b 8f d8 00 00 00 	mov    0xd8(%rdi),%rcx
    121f:	48 89 fa             	mov    %rdi,%rdx
    1222:	0f b6 87 0c 01 00 00 	movzbl 0x10c(%rdi),%eax
    1229:	49 89 f0             	mov    %rsi,%r8
    122c:	48 85 c9             	test   %rcx,%rcx
    122f:	0f 85 8b 00 00 00    	jne    12c0 <stomptalk::parser::finish_value(char const*)+0xb0>
    1235:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
    123c:	00 00 00 00
    1240:	31 f6                	xor    %esi,%esi
    1242:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
    1249:	84 c0                	test   %al,%al
    124b:	0f 85 c2 00 00 00    	jne    1313 <stomptalk::parser::finish_value(char const*)+0x103>
    1251:	48 8b 82 e8 00 00 00 	mov    0xe8(%rdx),%rax
    1258:	4c 8b 82 c0 00 00 00 	mov    0xc0(%rdx),%r8
    125f:	48 8d 78 01          	lea    0x1(%rax),%rdi
    1263:	48 c1 e0 05          	shl    $0x5,%rax
    1267:	48 03 42 38          	add    0x38(%rdx),%rax
    126b:	48 89 ba e8 00 00 00 	mov    %rdi,0xe8(%rdx)
    1272:	48 8b ba c8 00 00 00 	mov    0xc8(%rdx),%rdi
    1279:	4c 89 00             	mov    %r8,(%rax)
    127c:	48 89 78 08          	mov    %rdi,0x8(%rax)
    1280:	48 89 70 10          	mov    %rsi,0x10(%rax)
    1284:	48 89 48 18          	mov    %rcx,0x18(%rax)
    1288:	b8 01 00 00 00       	mov    $0x1,%eax
    128d:	48 83 82 80 00 00 00 	addq   $0x1,0x80(%rdx)
    1294:	01
    1295:	48 c7 82 c0 00 00 00 	movq   $0x0,0xc0(%rdx)
    129c:	00 00 00 00
    12a0:	48 c7 82 c8 00 00 00 	movq   $0x0,0xc8(%rdx)
    12a7:	00 00 00 00
    12ab:	c6 82 0c 01 00 00 00 	movb   $0x0,0x10c(%rdx)
    12b2:	48 83 c4 68          	add    $0x68,%rsp
    12b6:	c3                   	ret
    12b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12be:	00 00
    12c0:	48 8b b7 d0 00 00 00 	mov    0xd0(%rdi),%rsi
    12c7:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
    12ce:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
    12d5:	00 00 00 00
    12d9:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
    12e0:	00 00 00 00
    12e4:	84 c0                	test   %al,%al
    12e6:	0f 84 65 ff ff ff    	je     1251 <stomptalk::parser::finish_value(char const*)+0x41>
    12ec:	48 83 f9 14          	cmp    $0x14,%rcx
    12f0:	0f 86 19 01 00 00    	jbe    140f <stomptalk::parser::finish_value(char const*)+0x1ff>
    12f6:	48 89 c8             	mov    %rcx,%rax
    12f9:	48 89 f7             	mov    %rsi,%rdi
    12fc:	eb 10                	jmp    130e <stomptalk::parser::finish_value(char const*)+0xfe>
    12fe:	66 90                	xchg   %ax,%ax
    1300:	48 83 e8 01          	sub    $0x1,%rax
    1304:	48 83 c7 01          	add    $0x1,%rdi
    1308:	48 83 f8 14          	cmp    $0x14,%rax
    130c:	74 42                	je     1350 <stomptalk::parser::finish_value(char const*)+0x140>
    130e:	80 3f 30             	cmpb   $0x30,(%rdi)
    1311:	74 ed                	je     1300 <stomptalk::parser::finish_value(char const*)+0xf0>
    1313:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
    131a:	00 00 00
    131d:	48 89 82 10 01 00 00 	mov    %rax,0x110(%rdx)
    1324:	4c 89 c0             	mov    %r8,%rax
    1327:	49 83 c0 01          	add    $0x1,%r8
    132b:	48 2b 82 20 01 00 00 	sub    0x120(%rdx),%rax
    1332:	48 89 82 18 01 00 00 	mov    %rax,0x118(%rdx)
    1339:	31 c0                	xor    %eax,%eax
    133b:	4c 89 82 28 01 00 00 	mov    %r8,0x128(%rdx)
    1342:	48 83 c4 68          	add    $0x68,%rsp
    1346:	c3                   	ret
    1347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    134e:	00 00
    1350:	44 0f b6 0f          	movzbl (%rdi),%r9d
    1354:	41 83 e9 30          	sub    $0x30,%r9d
    1358:	41 83 f9 09          	cmp    $0x9,%r9d
    135c:	77 b5                	ja     1313 <stomptalk::parser::finish_value(char const*)+0x103>
    135e:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
    1362:	83 e8 30             	sub    $0x30,%eax
    1365:	83 f8 09             	cmp    $0x9,%eax
    1368:	77 a9                	ja     1313 <stomptalk::parser::finish_value(char const*)+0x103>
    136a:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
    136e:	4e 8d 0c 48          	lea    (%rax,%r9,2),%r9
    1372:	b8 02 00 00 00       	mov    $0x2,%eax
    1377:	48 01 c7             	add    %rax,%rdi
    137a:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    137f:	48 89 14 24          	mov    %rdx,(%rsp)
    1383:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    1388:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    138d:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    1392:	e8 69 ec ff ff       	call   0 <stomptalk::detail::(anonymous namespace)::antout<long, 18ul>::conv(char const*)>
    1397:	48 8b 14 24          	mov    (%rsp),%rdx
    139b:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    13a0:	48 85 c0             	test   %rax,%rax
    13a3:	0f 88 6a ff ff ff    	js     1313 <stomptalk::parser::finish_value(char const*)+0x103>
    13a9:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    13ae:	49 83 f9 12          	cmp    $0x12,%r9
    13b2:	0f 87 5b ff ff ff    	ja     1313 <stomptalk::parser::finish_value(char const*)+0x103>
    13b8:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    13bd:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    13c2:	75 13                	jne    13d7 <stomptalk::parser::finish_value(char const*)+0x1c7>
    13c4:	48 bf ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rdi
    13cb:	27 33 06
    13ce:	48 39 c7             	cmp    %rax,%rdi
    13d1:	0f 82 3c ff ff ff    	jb     1313 <stomptalk::parser::finish_value(char const*)+0x103>
    13d7:	48 bf 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rdi
    13de:	b6 e0 0d
    13e1:	4c 0f af cf          	imul   %rdi,%r9
    13e5:	4c 01 c8             	add    %r9,%rax
    13e8:	48 39 42 20          	cmp    %rax,0x20(%rdx)
    13ec:	72 12                	jb     1400 <stomptalk::parser::finish_value(char const*)+0x1f0>
    13ee:	83 4a 78 01          	orl    $0x1,0x78(%rdx)
    13f2:	48 89 82 88 00 00 00 	mov    %rax,0x88(%rdx)
    13f9:	e9 53 fe ff ff       	jmp    1251 <stomptalk::parser::finish_value(char const*)+0x41>
    13fe:	66 90                	xchg   %ax,%ax
    1400:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    1407:	00 00 00
    140a:	e9 0e ff ff ff       	jmp    131d <stomptalk::parser::finish_value(char const*)+0x10d>
    140f:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
    1414:	48 89 6c 24 40       	mov    %rbp,0x40(%rsp)
    1419:	4c 89 64 24 48       	mov    %r12,0x48(%rsp)
    141e:	4c 89 6c 24 50       	mov    %r13,0x50(%rsp)
    1423:	4c 89 74 24 58       	mov    %r14,0x58(%rsp)
    1428:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
    142d:	48 83 f9 12          	cmp    $0x12,%rcx
    1431:	0f 87 3d 14 00 00    	ja     2874 <stomptalk::parser::finish_value(char const*)+0x1664>
    1437:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 143e <stomptalk::parser::finish_value(char const*)+0x22e>
			143a: R_X86_64_PC32	.rodata-0x4
    143e:	48 63 04 8f          	movslq (%rdi,%rcx,4),%rax
    1442:	48 01 f8             	add    %rdi,%rax
    1445:	3e ff e0             	notrack jmp *%rax
    1448:	48 89 f7             	mov    %rsi,%rdi
    144b:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1450:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1455:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    145a:	48 89 34 24          	mov    %rsi,(%rsp)
    145e:	e8 9d eb ff ff       	call   0 <stomptalk::detail::(anonymous namespace)::antout<long, 18ul>::conv(char const*)>
    1463:	48 8b 34 24          	mov    (%rsp),%rsi
    1467:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    146c:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    1471:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    1476:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    147d:	00 00 00
    1480:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    1485:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    148a:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    148f:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    1494:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    1499:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    149e:	48 85 c0             	test   %rax,%rax
    14a1:	0f 89 41 ff ff ff    	jns    13e8 <stomptalk::parser::finish_value(char const*)+0x1d8>
    14a7:	e9 67 fe ff ff       	jmp    1313 <stomptalk::parser::finish_value(char const*)+0x103>
    14ac:	48 0f be 06          	movsbq (%rsi),%rax
    14b0:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    14b4:	48 83 fb 09          	cmp    $0x9,%rbx
    14b8:	0f 87 1b 12 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    14be:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    14c3:	49 83 eb 30          	sub    $0x30,%r11
    14c7:	49 83 fb 09          	cmp    $0x9,%r11
    14cb:	0f 87 08 12 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    14d1:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    14d6:	49 83 ea 30          	sub    $0x30,%r10
    14da:	49 83 fa 09          	cmp    $0x9,%r10
    14de:	0f 87 f5 11 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    14e4:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    14e9:	49 83 e9 30          	sub    $0x30,%r9
    14ed:	49 83 f9 09          	cmp    $0x9,%r9
    14f1:	0f 87 e2 11 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    14f7:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    14fc:	48 83 ef 30          	sub    $0x30,%rdi
    1500:	48 83 ff 09          	cmp    $0x9,%rdi
    1504:	0f 87 cf 11 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    150a:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    150f:	48 83 e8 30          	sub    $0x30,%rax
    1513:	48 83 f8 09          	cmp    $0x9,%rax
    1517:	0f 87 bc 11 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    151d:	49 be 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r14
    1524:	86 23 00
    1527:	49 0f af de          	imul   %r14,%rbx
    152b:	49 89 df             	mov    %rbx,%r15
    152e:	48 bb 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rbx
    1535:	8d 03 00
    1538:	4c 0f af db          	imul   %rbx,%r11
    153c:	4c 89 dd             	mov    %r11,%rbp
    153f:	49 bb 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r11
    1546:	5a 00 00
    1549:	4d 0f af d3          	imul   %r11,%r10
    154d:	4d 89 d4             	mov    %r10,%r12
    1550:	49 ba 00 a0 72 4e 18 	movabs $0x9184e72a000,%r10
    1557:	09 00 00
    155a:	4d 0f af ca          	imul   %r10,%r9
    155e:	4d 89 cd             	mov    %r9,%r13
    1561:	49 b9 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r9
    1568:	00 00 00
    156b:	49 0f af f9          	imul   %r9,%rdi
    156f:	48 89 3c 24          	mov    %rdi,(%rsp)
    1573:	48 bf 00 e8 76 48 17 	movabs $0x174876e800,%rdi
    157a:	00 00 00
    157d:	48 0f af c7          	imul   %rdi,%rax
    1581:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1586:	48 0f be 46 06       	movsbq 0x6(%rsi),%rax
    158b:	48 83 e8 30          	sub    $0x30,%rax
    158f:	48 83 f8 09          	cmp    $0x9,%rax
    1593:	0f 87 98 11 00 00    	ja     2731 <stomptalk::parser::finish_value(char const*)+0x1521>
    1599:	48 bf 00 e4 0b 54 02 	movabs $0x2540be400,%rdi
    15a0:	00 00 00
    15a3:	48 0f af c7          	imul   %rdi,%rax
    15a7:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    15ac:	48 0f be 46 07       	movsbq 0x7(%rsi),%rax
    15b1:	48 83 e8 30          	sub    $0x30,%rax
    15b5:	48 83 f8 09          	cmp    $0x9,%rax
    15b9:	0f 87 a7 12 00 00    	ja     2866 <stomptalk::parser::finish_value(char const*)+0x1656>
    15bf:	48 0f be 7e 08       	movsbq 0x8(%rsi),%rdi
    15c4:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    15cb:	48 83 ef 30          	sub    $0x30,%rdi
    15cf:	48 83 ff 09          	cmp    $0x9,%rdi
    15d3:	0f 87 7f 12 00 00    	ja     2858 <stomptalk::parser::finish_value(char const*)+0x1648>
    15d9:	4c 0f be 4e 09       	movsbq 0x9(%rsi),%r9
    15de:	48 69 ff 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rdi
    15e5:	49 83 e9 30          	sub    $0x30,%r9
    15e9:	49 83 f9 09          	cmp    $0x9,%r9
    15ed:	0f 87 56 12 00 00    	ja     2849 <stomptalk::parser::finish_value(char const*)+0x1639>
    15f3:	4c 0f be 56 0a       	movsbq 0xa(%rsi),%r10
    15f8:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    15ff:	49 83 ea 30          	sub    $0x30,%r10
    1603:	49 83 fa 09          	cmp    $0x9,%r10
    1607:	0f 87 2d 12 00 00    	ja     283a <stomptalk::parser::finish_value(char const*)+0x162a>
    160d:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1612:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    1619:	49 83 eb 30          	sub    $0x30,%r11
    161d:	49 83 fb 09          	cmp    $0x9,%r11
    1621:	0f 87 04 12 00 00    	ja     282b <stomptalk::parser::finish_value(char const*)+0x161b>
    1627:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    162e:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    1633:	49 83 eb 30          	sub    $0x30,%r11
    1637:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    163c:	49 83 fb 09          	cmp    $0x9,%r11
    1640:	0f 87 d6 11 00 00    	ja     281c <stomptalk::parser::finish_value(char const*)+0x160c>
    1646:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    164d:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    1652:	49 83 eb 30          	sub    $0x30,%r11
    1656:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    165b:	49 83 fb 09          	cmp    $0x9,%r11
    165f:	0f 87 8a 11 00 00    	ja     27ef <stomptalk::parser::finish_value(char const*)+0x15df>
    1665:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    166c:	4c 0f be 5e 0e       	movsbq 0xe(%rsi),%r11
    1671:	49 83 eb 30          	sub    $0x30,%r11
    1675:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    167a:	49 83 fb 09          	cmp    $0x9,%r11
    167e:	0f 87 5c 11 00 00    	ja     27e0 <stomptalk::parser::finish_value(char const*)+0x15d0>
    1684:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1688:	4c 0f be 5e 0f       	movsbq 0xf(%rsi),%r11
    168d:	49 83 eb 30          	sub    $0x30,%r11
    1691:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    1696:	49 83 fb 09          	cmp    $0x9,%r11
    169a:	0f 87 5e 11 00 00    	ja     27fe <stomptalk::parser::finish_value(char const*)+0x15ee>
    16a0:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    16a7:	00 00 80
    16aa:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    16ae:	4c 0f be 5e 10       	movsbq 0x10(%rsi),%r11
    16b3:	49 83 eb 30          	sub    $0x30,%r11
    16b7:	49 83 fb 0a          	cmp    $0xa,%r11
    16bb:	4d 0f 43 de          	cmovae %r14,%r11
    16bf:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    16c3:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    16c8:	49 01 db             	add    %rbx,%r11
    16cb:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    16d0:	49 01 db             	add    %rbx,%r11
    16d3:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    16d8:	49 01 db             	add    %rbx,%r11
    16db:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    16e0:	49 01 db             	add    %rbx,%r11
    16e3:	4d 01 da             	add    %r11,%r10
    16e6:	4d 01 d1             	add    %r10,%r9
    16e9:	4c 01 cf             	add    %r9,%rdi
    16ec:	48 01 f8             	add    %rdi,%rax
    16ef:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    16f4:	48 01 d8             	add    %rbx,%rax
    16f7:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    16fc:	48 01 d8             	add    %rbx,%rax
    16ff:	48 03 04 24          	add    (%rsp),%rax
    1703:	4c 01 e8             	add    %r13,%rax
    1706:	4c 01 e0             	add    %r12,%rax
    1709:	48 01 e8             	add    %rbp,%rax
    170c:	4c 01 f8             	add    %r15,%rax
    170f:	e9 6c fd ff ff       	jmp    1480 <stomptalk::parser::finish_value(char const*)+0x270>
    1714:	48 0f be 06          	movsbq (%rsi),%rax
    1718:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    171c:	48 83 fb 09          	cmp    $0x9,%rbx
    1720:	0f 87 b3 0f 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1726:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    172b:	49 83 eb 30          	sub    $0x30,%r11
    172f:	49 83 fb 09          	cmp    $0x9,%r11
    1733:	0f 87 a0 0f 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1739:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    173e:	49 83 ea 30          	sub    $0x30,%r10
    1742:	49 83 fa 09          	cmp    $0x9,%r10
    1746:	0f 87 8d 0f 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    174c:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1751:	49 83 e9 30          	sub    $0x30,%r9
    1755:	49 83 f9 09          	cmp    $0x9,%r9
    1759:	0f 87 7a 0f 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    175f:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1764:	48 83 ef 30          	sub    $0x30,%rdi
    1768:	48 83 ff 09          	cmp    $0x9,%rdi
    176c:	0f 87 67 0f 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1772:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1777:	48 83 e8 30          	sub    $0x30,%rax
    177b:	48 83 f8 09          	cmp    $0x9,%rax
    177f:	0f 87 54 0f 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1785:	49 be 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r14
    178c:	8d 03 00
    178f:	49 0f af de          	imul   %r14,%rbx
    1793:	49 89 df             	mov    %rbx,%r15
    1796:	48 bb 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rbx
    179d:	5a 00 00
    17a0:	4c 0f af db          	imul   %rbx,%r11
    17a4:	4c 89 dd             	mov    %r11,%rbp
    17a7:	49 bb 00 a0 72 4e 18 	movabs $0x9184e72a000,%r11
    17ae:	09 00 00
    17b1:	4d 0f af d3          	imul   %r11,%r10
    17b5:	4d 89 d4             	mov    %r10,%r12
    17b8:	49 ba 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r10
    17bf:	00 00 00
    17c2:	4d 0f af ca          	imul   %r10,%r9
    17c6:	4d 89 cd             	mov    %r9,%r13
    17c9:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
    17d0:	00 00 00
    17d3:	49 0f af f9          	imul   %r9,%rdi
    17d7:	48 89 3c 24          	mov    %rdi,(%rsp)
    17db:	48 bf 00 e4 0b 54 02 	movabs $0x2540be400,%rdi
    17e2:	00 00 00
    17e5:	48 0f af c7          	imul   %rdi,%rax
    17e9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    17ee:	48 0f be 46 06       	movsbq 0x6(%rsi),%rax
    17f3:	48 83 e8 30          	sub    $0x30,%rax
    17f7:	48 83 f8 09          	cmp    $0x9,%rax
    17fb:	0f 87 30 0f 00 00    	ja     2731 <stomptalk::parser::finish_value(char const*)+0x1521>
    1801:	48 0f be 7e 07       	movsbq 0x7(%rsi),%rdi
    1806:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    180d:	48 83 ef 30          	sub    $0x30,%rdi
    1811:	48 83 ff 09          	cmp    $0x9,%rdi
    1815:	0f 87 72 11 00 00    	ja     298d <stomptalk::parser::finish_value(char const*)+0x177d>
    181b:	4c 0f be 4e 08       	movsbq 0x8(%rsi),%r9
    1820:	48 69 ff 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rdi
    1827:	49 83 e9 30          	sub    $0x30,%r9
    182b:	49 83 f9 09          	cmp    $0x9,%r9
    182f:	0f 87 49 11 00 00    	ja     297e <stomptalk::parser::finish_value(char const*)+0x176e>
    1835:	4c 0f be 56 09       	movsbq 0x9(%rsi),%r10
    183a:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    1841:	49 83 ea 30          	sub    $0x30,%r10
    1845:	49 83 fa 09          	cmp    $0x9,%r10
    1849:	0f 87 20 11 00 00    	ja     296f <stomptalk::parser::finish_value(char const*)+0x175f>
    184f:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    1854:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    185b:	49 83 eb 30          	sub    $0x30,%r11
    185f:	49 83 fb 09          	cmp    $0x9,%r11
    1863:	0f 87 f7 10 00 00    	ja     2960 <stomptalk::parser::finish_value(char const*)+0x1750>
    1869:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    1870:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1875:	49 83 eb 30          	sub    $0x30,%r11
    1879:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    187e:	49 83 fb 09          	cmp    $0x9,%r11
    1882:	0f 87 c9 10 00 00    	ja     2951 <stomptalk::parser::finish_value(char const*)+0x1741>
    1888:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    188f:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    1894:	49 83 eb 30          	sub    $0x30,%r11
    1898:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    189d:	49 83 fb 09          	cmp    $0x9,%r11
    18a1:	0f 87 9b 10 00 00    	ja     2942 <stomptalk::parser::finish_value(char const*)+0x1732>
    18a7:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    18ae:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    18b3:	49 83 eb 30          	sub    $0x30,%r11
    18b7:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    18bc:	49 83 fb 09          	cmp    $0x9,%r11
    18c0:	0f 87 6d 10 00 00    	ja     2933 <stomptalk::parser::finish_value(char const*)+0x1723>
    18c6:	49 6b db 64          	imul   $0x64,%r11,%rbx
    18ca:	4c 0f be 5e 0e       	movsbq 0xe(%rsi),%r11
    18cf:	49 83 eb 30          	sub    $0x30,%r11
    18d3:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
    18d8:	49 83 fb 09          	cmp    $0x9,%r11
    18dc:	0f 87 42 10 00 00    	ja     2924 <stomptalk::parser::finish_value(char const*)+0x1714>
    18e2:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    18e9:	00 00 80
    18ec:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    18f0:	4c 0f be 5e 0f       	movsbq 0xf(%rsi),%r11
    18f5:	49 83 eb 30          	sub    $0x30,%r11
    18f9:	49 83 fb 0a          	cmp    $0xa,%r11
    18fd:	4d 0f 43 de          	cmovae %r14,%r11
    1901:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1905:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    190a:	49 01 db             	add    %rbx,%r11
    190d:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1912:	49 01 db             	add    %rbx,%r11
    1915:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    191a:	49 01 db             	add    %rbx,%r11
    191d:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    1922:	49 01 db             	add    %rbx,%r11
    1925:	4d 01 da             	add    %r11,%r10
    1928:	4d 01 d1             	add    %r10,%r9
    192b:	4c 01 cf             	add    %r9,%rdi
    192e:	48 01 f8             	add    %rdi,%rax
    1931:	e9 c1 fd ff ff       	jmp    16f7 <stomptalk::parser::finish_value(char const*)+0x4e7>
    1936:	48 0f be 06          	movsbq (%rsi),%rax
    193a:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    193e:	48 83 fb 09          	cmp    $0x9,%rbx
    1942:	0f 87 91 0d 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1948:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    194d:	49 83 eb 30          	sub    $0x30,%r11
    1951:	49 83 fb 09          	cmp    $0x9,%r11
    1955:	0f 87 7e 0d 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    195b:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    1960:	49 83 ea 30          	sub    $0x30,%r10
    1964:	49 83 fa 09          	cmp    $0x9,%r10
    1968:	0f 87 6b 0d 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    196e:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1973:	49 83 e9 30          	sub    $0x30,%r9
    1977:	49 83 f9 09          	cmp    $0x9,%r9
    197b:	0f 87 58 0d 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1981:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1986:	48 83 ef 30          	sub    $0x30,%rdi
    198a:	48 83 ff 09          	cmp    $0x9,%rdi
    198e:	0f 87 45 0d 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1994:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1999:	48 83 e8 30          	sub    $0x30,%rax
    199d:	48 83 f8 09          	cmp    $0x9,%rax
    19a1:	0f 87 32 0d 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    19a7:	49 be 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r14
    19ae:	5a 00 00
    19b1:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    19b8:	49 0f af de          	imul   %r14,%rbx
    19bc:	49 89 df             	mov    %rbx,%r15
    19bf:	48 bb 00 a0 72 4e 18 	movabs $0x9184e72a000,%rbx
    19c6:	09 00 00
    19c9:	4c 0f af db          	imul   %rbx,%r11
    19cd:	4c 89 dd             	mov    %r11,%rbp
    19d0:	49 bb 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r11
    19d7:	00 00 00
    19da:	4d 0f af d3          	imul   %r11,%r10
    19de:	4d 89 d4             	mov    %r10,%r12
    19e1:	49 ba 00 e8 76 48 17 	movabs $0x174876e800,%r10
    19e8:	00 00 00
    19eb:	4d 0f af ca          	imul   %r10,%r9
    19ef:	4d 89 cd             	mov    %r9,%r13
    19f2:	49 b9 00 e4 0b 54 02 	movabs $0x2540be400,%r9
    19f9:	00 00 00
    19fc:	49 0f af f9          	imul   %r9,%rdi
    1a00:	48 89 3c 24          	mov    %rdi,(%rsp)
    1a04:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1a09:	48 83 ef 30          	sub    $0x30,%rdi
    1a0d:	48 83 ff 09          	cmp    $0x9,%rdi
    1a11:	0f 87 82 0d 00 00    	ja     2799 <stomptalk::parser::finish_value(char const*)+0x1589>
    1a17:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    1a1c:	48 69 ff 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rdi
    1a23:	49 83 e9 30          	sub    $0x30,%r9
    1a27:	49 83 f9 09          	cmp    $0x9,%r9
    1a2b:	0f 87 59 0d 00 00    	ja     278a <stomptalk::parser::finish_value(char const*)+0x157a>
    1a31:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    1a36:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    1a3d:	49 83 ea 30          	sub    $0x30,%r10
    1a41:	49 83 fa 09          	cmp    $0x9,%r10
    1a45:	0f 87 30 0d 00 00    	ja     277b <stomptalk::parser::finish_value(char const*)+0x156b>
    1a4b:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    1a50:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    1a57:	49 83 eb 30          	sub    $0x30,%r11
    1a5b:	49 83 fb 09          	cmp    $0x9,%r11
    1a5f:	0f 87 07 0d 00 00    	ja     276c <stomptalk::parser::finish_value(char const*)+0x155c>
    1a65:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    1a6c:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    1a71:	49 83 eb 30          	sub    $0x30,%r11
    1a75:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    1a7a:	49 83 fb 09          	cmp    $0x9,%r11
    1a7e:	0f 87 d9 0c 00 00    	ja     275d <stomptalk::parser::finish_value(char const*)+0x154d>
    1a84:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1a8b:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1a90:	49 83 eb 30          	sub    $0x30,%r11
    1a94:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    1a99:	49 83 fb 09          	cmp    $0x9,%r11
    1a9d:	0f 87 ab 0c 00 00    	ja     274e <stomptalk::parser::finish_value(char const*)+0x153e>
    1aa3:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1aaa:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    1aaf:	49 83 eb 30          	sub    $0x30,%r11
    1ab3:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    1ab8:	49 83 fb 09          	cmp    $0x9,%r11
    1abc:	0f 87 7d 0c 00 00    	ja     273f <stomptalk::parser::finish_value(char const*)+0x152f>
    1ac2:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1ac6:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    1acb:	49 83 eb 30          	sub    $0x30,%r11
    1acf:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    1ad4:	49 83 fb 09          	cmp    $0x9,%r11
    1ad8:	0f 87 d4 0d 00 00    	ja     28b2 <stomptalk::parser::finish_value(char const*)+0x16a2>
    1ade:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1ae5:	00 00 80
    1ae8:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1aec:	4c 0f be 5e 0e       	movsbq 0xe(%rsi),%r11
    1af1:	49 83 eb 30          	sub    $0x30,%r11
    1af5:	49 83 fb 0a          	cmp    $0xa,%r11
    1af9:	4d 0f 43 de          	cmovae %r14,%r11
    1afd:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1b01:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1b06:	49 01 db             	add    %rbx,%r11
    1b09:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    1b0e:	49 01 db             	add    %rbx,%r11
    1b11:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    1b16:	49 01 db             	add    %rbx,%r11
    1b19:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    1b1e:	49 01 db             	add    %rbx,%r11
    1b21:	4d 01 da             	add    %r11,%r10
    1b24:	4d 01 d1             	add    %r10,%r9
    1b27:	4c 01 cf             	add    %r9,%rdi
    1b2a:	48 01 f8             	add    %rdi,%rax
    1b2d:	e9 cd fb ff ff       	jmp    16ff <stomptalk::parser::finish_value(char const*)+0x4ef>
    1b32:	48 0f be 06          	movsbq (%rsi),%rax
    1b36:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1b3a:	48 83 fb 09          	cmp    $0x9,%rbx
    1b3e:	0f 87 95 0b 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1b44:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1b49:	49 83 eb 30          	sub    $0x30,%r11
    1b4d:	49 83 fb 09          	cmp    $0x9,%r11
    1b51:	0f 87 82 0b 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1b57:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    1b5c:	49 83 ea 30          	sub    $0x30,%r10
    1b60:	49 83 fa 09          	cmp    $0x9,%r10
    1b64:	0f 87 6f 0b 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1b6a:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1b6f:	49 83 e9 30          	sub    $0x30,%r9
    1b73:	49 83 f9 09          	cmp    $0x9,%r9
    1b77:	0f 87 5c 0b 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1b7d:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1b82:	48 83 ef 30          	sub    $0x30,%rdi
    1b86:	48 83 ff 09          	cmp    $0x9,%rdi
    1b8a:	0f 87 49 0b 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1b90:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1b95:	48 83 e8 30          	sub    $0x30,%rax
    1b99:	48 83 f8 09          	cmp    $0x9,%rax
    1b9d:	0f 87 36 0b 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1ba3:	49 be 00 a0 72 4e 18 	movabs $0x9184e72a000,%r14
    1baa:	09 00 00
    1bad:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
    1bb4:	49 0f af de          	imul   %r14,%rbx
    1bb8:	49 89 df             	mov    %rbx,%r15
    1bbb:	48 bb 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%rbx
    1bc2:	00 00 00
    1bc5:	4c 0f af db          	imul   %rbx,%r11
    1bc9:	48 69 df 00 ca 9a 3b 	imul   $0x3b9aca00,%rdi,%rbx
    1bd0:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1bd5:	4c 89 dd             	mov    %r11,%rbp
    1bd8:	48 83 ef 30          	sub    $0x30,%rdi
    1bdc:	49 bb 00 e8 76 48 17 	movabs $0x174876e800,%r11
    1be3:	00 00 00
    1be6:	4d 0f af d3          	imul   %r11,%r10
    1bea:	48 89 1c 24          	mov    %rbx,(%rsp)
    1bee:	4d 89 d4             	mov    %r10,%r12
    1bf1:	49 ba 00 e4 0b 54 02 	movabs $0x2540be400,%r10
    1bf8:	00 00 00
    1bfb:	4d 0f af ca          	imul   %r10,%r9
    1bff:	4d 89 cd             	mov    %r9,%r13
    1c02:	48 83 ff 09          	cmp    $0x9,%rdi
    1c06:	0f 87 8d 0b 00 00    	ja     2799 <stomptalk::parser::finish_value(char const*)+0x1589>
    1c0c:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    1c11:	48 69 ff 80 96 98 00 	imul   $0x989680,%rdi,%rdi
    1c18:	49 83 e9 30          	sub    $0x30,%r9
    1c1c:	49 83 f9 09          	cmp    $0x9,%r9
    1c20:	0f 87 64 0b 00 00    	ja     278a <stomptalk::parser::finish_value(char const*)+0x157a>
    1c26:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    1c2b:	4d 69 c9 40 42 0f 00 	imul   $0xf4240,%r9,%r9
    1c32:	49 83 ea 30          	sub    $0x30,%r10
    1c36:	49 83 fa 09          	cmp    $0x9,%r10
    1c3a:	0f 87 3b 0b 00 00    	ja     277b <stomptalk::parser::finish_value(char const*)+0x156b>
    1c40:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    1c45:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    1c4c:	49 83 eb 30          	sub    $0x30,%r11
    1c50:	49 83 fb 09          	cmp    $0x9,%r11
    1c54:	0f 87 12 0b 00 00    	ja     276c <stomptalk::parser::finish_value(char const*)+0x155c>
    1c5a:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1c61:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    1c66:	49 83 eb 30          	sub    $0x30,%r11
    1c6a:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    1c6f:	49 83 fb 09          	cmp    $0x9,%r11
    1c73:	0f 87 e4 0a 00 00    	ja     275d <stomptalk::parser::finish_value(char const*)+0x154d>
    1c79:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1c80:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1c85:	49 83 eb 30          	sub    $0x30,%r11
    1c89:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    1c8e:	49 83 fb 09          	cmp    $0x9,%r11
    1c92:	0f 87 b6 0a 00 00    	ja     274e <stomptalk::parser::finish_value(char const*)+0x153e>
    1c98:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1c9c:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    1ca1:	49 83 eb 30          	sub    $0x30,%r11
    1ca5:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
    1caa:	49 83 fb 09          	cmp    $0x9,%r11
    1cae:	0f 87 8b 0a 00 00    	ja     273f <stomptalk::parser::finish_value(char const*)+0x152f>
    1cb4:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1cbb:	00 00 80
    1cbe:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1cc2:	4c 0f be 5e 0d       	movsbq 0xd(%rsi),%r11
    1cc7:	49 83 eb 30          	sub    $0x30,%r11
    1ccb:	49 83 fb 0a          	cmp    $0xa,%r11
    1ccf:	4d 0f 43 de          	cmovae %r14,%r11
    1cd3:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1cd7:	e9 2d fe ff ff       	jmp    1b09 <stomptalk::parser::finish_value(char const*)+0x8f9>
    1cdc:	48 0f be 06          	movsbq (%rsi),%rax
    1ce0:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1ce4:	48 83 fb 09          	cmp    $0x9,%rbx
    1ce8:	0f 87 eb 09 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1cee:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1cf3:	49 83 eb 30          	sub    $0x30,%r11
    1cf7:	49 83 fb 09          	cmp    $0x9,%r11
    1cfb:	0f 87 d8 09 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1d01:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    1d06:	49 83 ea 30          	sub    $0x30,%r10
    1d0a:	49 83 fa 09          	cmp    $0x9,%r10
    1d0e:	0f 87 c5 09 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1d14:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1d19:	49 83 e9 30          	sub    $0x30,%r9
    1d1d:	49 83 f9 09          	cmp    $0x9,%r9
    1d21:	0f 87 b2 09 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1d27:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1d2c:	48 83 ef 30          	sub    $0x30,%rdi
    1d30:	48 83 ff 09          	cmp    $0x9,%rdi
    1d34:	0f 87 9f 09 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1d3a:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1d3f:	48 83 e8 30          	sub    $0x30,%rax
    1d43:	48 83 f8 09          	cmp    $0x9,%rax
    1d47:	0f 87 8c 09 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1d4d:	49 be 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r14
    1d54:	00 00 00
    1d57:	4d 69 e9 00 ca 9a 3b 	imul   $0x3b9aca00,%r9,%r13
    1d5e:	49 0f af de          	imul   %r14,%rbx
    1d62:	48 69 c0 80 96 98 00 	imul   $0x989680,%rax,%rax
    1d69:	49 89 df             	mov    %rbx,%r15
    1d6c:	48 bb 00 e8 76 48 17 	movabs $0x174876e800,%rbx
    1d73:	00 00 00
    1d76:	4c 0f af db          	imul   %rbx,%r11
    1d7a:	48 69 df 00 e1 f5 05 	imul   $0x5f5e100,%rdi,%rbx
    1d81:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1d86:	4c 89 dd             	mov    %r11,%rbp
    1d89:	48 83 ef 30          	sub    $0x30,%rdi
    1d8d:	49 bb 00 e4 0b 54 02 	movabs $0x2540be400,%r11
    1d94:	00 00 00
    1d97:	4d 0f af d3          	imul   %r11,%r10
    1d9b:	48 89 1c 24          	mov    %rbx,(%rsp)
    1d9f:	4d 89 d4             	mov    %r10,%r12
    1da2:	48 83 ff 09          	cmp    $0x9,%rdi
    1da6:	0f 87 ed 09 00 00    	ja     2799 <stomptalk::parser::finish_value(char const*)+0x1589>
    1dac:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    1db1:	48 69 ff 40 42 0f 00 	imul   $0xf4240,%rdi,%rdi
    1db8:	49 83 e9 30          	sub    $0x30,%r9
    1dbc:	49 83 f9 09          	cmp    $0x9,%r9
    1dc0:	0f 87 c4 09 00 00    	ja     278a <stomptalk::parser::finish_value(char const*)+0x157a>
    1dc6:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    1dcb:	4d 69 c9 a0 86 01 00 	imul   $0x186a0,%r9,%r9
    1dd2:	49 83 ea 30          	sub    $0x30,%r10
    1dd6:	49 83 fa 09          	cmp    $0x9,%r10
    1dda:	0f 87 9b 09 00 00    	ja     277b <stomptalk::parser::finish_value(char const*)+0x156b>
    1de0:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    1de5:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    1dec:	49 83 eb 30          	sub    $0x30,%r11
    1df0:	49 83 fb 09          	cmp    $0x9,%r11
    1df4:	0f 87 72 09 00 00    	ja     276c <stomptalk::parser::finish_value(char const*)+0x155c>
    1dfa:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1e01:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    1e06:	49 83 eb 30          	sub    $0x30,%r11
    1e0a:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    1e0f:	49 83 fb 09          	cmp    $0x9,%r11
    1e13:	0f 87 44 09 00 00    	ja     275d <stomptalk::parser::finish_value(char const*)+0x154d>
    1e19:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1e1d:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1e22:	49 83 eb 30          	sub    $0x30,%r11
    1e26:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    1e2b:	49 83 fb 09          	cmp    $0x9,%r11
    1e2f:	0f 87 19 09 00 00    	ja     274e <stomptalk::parser::finish_value(char const*)+0x153e>
    1e35:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1e3c:	00 00 80
    1e3f:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1e43:	4c 0f be 5e 0c       	movsbq 0xc(%rsi),%r11
    1e48:	49 83 eb 30          	sub    $0x30,%r11
    1e4c:	49 83 fb 0a          	cmp    $0xa,%r11
    1e50:	4d 0f 43 de          	cmovae %r14,%r11
    1e54:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1e58:	e9 b4 fc ff ff       	jmp    1b11 <stomptalk::parser::finish_value(char const*)+0x901>
    1e5d:	48 0f be 06          	movsbq (%rsi),%rax
    1e61:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1e65:	48 83 fb 09          	cmp    $0x9,%rbx
    1e69:	0f 87 6a 08 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1e6f:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1e74:	49 83 eb 30          	sub    $0x30,%r11
    1e78:	49 83 fb 09          	cmp    $0x9,%r11
    1e7c:	0f 87 57 08 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1e82:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    1e87:	49 83 ea 30          	sub    $0x30,%r10
    1e8b:	49 83 fa 09          	cmp    $0x9,%r10
    1e8f:	0f 87 44 08 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1e95:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1e9a:	49 83 e9 30          	sub    $0x30,%r9
    1e9e:	49 83 f9 09          	cmp    $0x9,%r9
    1ea2:	0f 87 31 08 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1ea8:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    1ead:	48 83 ef 30          	sub    $0x30,%rdi
    1eb1:	48 83 ff 09          	cmp    $0x9,%rdi
    1eb5:	0f 87 1e 08 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1ebb:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    1ec0:	48 83 e8 30          	sub    $0x30,%rax
    1ec4:	48 83 f8 09          	cmp    $0x9,%rax
    1ec8:	0f 87 0b 08 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1ece:	49 be 00 e8 76 48 17 	movabs $0x174876e800,%r14
    1ed5:	00 00 00
    1ed8:	4d 69 e2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r12
    1edf:	49 0f af de          	imul   %r14,%rbx
    1ee3:	4d 69 e9 00 e1 f5 05 	imul   $0x5f5e100,%r9,%r13
    1eea:	48 69 c0 40 42 0f 00 	imul   $0xf4240,%rax,%rax
    1ef1:	49 89 df             	mov    %rbx,%r15
    1ef4:	48 bb 00 e4 0b 54 02 	movabs $0x2540be400,%rbx
    1efb:	00 00 00
    1efe:	4c 0f af db          	imul   %rbx,%r11
    1f02:	48 69 df 80 96 98 00 	imul   $0x989680,%rdi,%rbx
    1f09:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    1f0e:	48 83 ef 30          	sub    $0x30,%rdi
    1f12:	4c 89 dd             	mov    %r11,%rbp
    1f15:	48 89 1c 24          	mov    %rbx,(%rsp)
    1f19:	48 83 ff 09          	cmp    $0x9,%rdi
    1f1d:	0f 87 76 08 00 00    	ja     2799 <stomptalk::parser::finish_value(char const*)+0x1589>
    1f23:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    1f28:	48 69 ff a0 86 01 00 	imul   $0x186a0,%rdi,%rdi
    1f2f:	49 83 e9 30          	sub    $0x30,%r9
    1f33:	49 83 f9 09          	cmp    $0x9,%r9
    1f37:	0f 87 4d 08 00 00    	ja     278a <stomptalk::parser::finish_value(char const*)+0x157a>
    1f3d:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    1f42:	4d 69 c9 10 27 00 00 	imul   $0x2710,%r9,%r9
    1f49:	49 83 ea 30          	sub    $0x30,%r10
    1f4d:	49 83 fa 09          	cmp    $0x9,%r10
    1f51:	0f 87 24 08 00 00    	ja     277b <stomptalk::parser::finish_value(char const*)+0x156b>
    1f57:	4c 0f be 5e 09       	movsbq 0x9(%rsi),%r11
    1f5c:	4d 69 d2 e8 03 00 00 	imul   $0x3e8,%r10,%r10
    1f63:	49 83 eb 30          	sub    $0x30,%r11
    1f67:	49 83 fb 09          	cmp    $0x9,%r11
    1f6b:	0f 87 fb 07 00 00    	ja     276c <stomptalk::parser::finish_value(char const*)+0x155c>
    1f71:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1f75:	4c 0f be 5e 0a       	movsbq 0xa(%rsi),%r11
    1f7a:	49 83 eb 30          	sub    $0x30,%r11
    1f7e:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    1f83:	49 83 fb 09          	cmp    $0x9,%r11
    1f87:	0f 87 d0 07 00 00    	ja     275d <stomptalk::parser::finish_value(char const*)+0x154d>
    1f8d:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1f94:	00 00 80
    1f97:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1f9b:	4c 0f be 5e 0b       	movsbq 0xb(%rsi),%r11
    1fa0:	49 83 eb 30          	sub    $0x30,%r11
    1fa4:	49 83 fb 0a          	cmp    $0xa,%r11
    1fa8:	4d 0f 43 de          	cmovae %r14,%r11
    1fac:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1fb0:	e9 64 fb ff ff       	jmp    1b19 <stomptalk::parser::finish_value(char const*)+0x909>
    1fb5:	48 0f be 06          	movsbq (%rsi),%rax
    1fb9:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    1fbd:	48 83 fb 09          	cmp    $0x9,%rbx
    1fc1:	0f 87 12 07 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1fc7:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    1fcc:	49 83 eb 30          	sub    $0x30,%r11
    1fd0:	49 83 fb 09          	cmp    $0x9,%r11
    1fd4:	0f 87 ff 06 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1fda:	4c 0f be 56 02       	movsbq 0x2(%rsi),%r10
    1fdf:	49 83 ea 30          	sub    $0x30,%r10
    1fe3:	49 83 fa 09          	cmp    $0x9,%r10
    1fe7:	0f 87 ec 06 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    1fed:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    1ff2:	49 83 e9 30          	sub    $0x30,%r9
    1ff6:	49 83 f9 09          	cmp    $0x9,%r9
    1ffa:	0f 87 d9 06 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2000:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    2005:	48 83 ef 30          	sub    $0x30,%rdi
    2009:	48 83 ff 09          	cmp    $0x9,%rdi
    200d:	0f 87 c6 06 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2013:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    2018:	48 83 e8 30          	sub    $0x30,%rax
    201c:	48 83 f8 09          	cmp    $0x9,%rax
    2020:	0f 87 b3 06 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2026:	49 be 00 e4 0b 54 02 	movabs $0x2540be400,%r14
    202d:	00 00 00
    2030:	4c 69 ef 40 42 0f 00 	imul   $0xf4240,%rdi,%r13
    2037:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    203c:	49 0f af de          	imul   %r14,%rbx
    2040:	48 83 ef 30          	sub    $0x30,%rdi
    2044:	4d 69 db 00 ca 9a 3b 	imul   $0x3b9aca00,%r11,%r11
    204b:	49 69 ea 00 e1 f5 05 	imul   $0x5f5e100,%r10,%rbp
    2052:	4d 69 e1 80 96 98 00 	imul   $0x989680,%r9,%r12
    2059:	49 89 df             	mov    %rbx,%r15
    205c:	48 69 c0 a0 86 01 00 	imul   $0x186a0,%rax,%rax
    2063:	48 83 ff 09          	cmp    $0x9,%rdi
    2067:	0f 87 a9 08 00 00    	ja     2916 <stomptalk::parser::finish_value(char const*)+0x1706>
    206d:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    2072:	48 69 ff 10 27 00 00 	imul   $0x2710,%rdi,%rdi
    2079:	49 83 e9 30          	sub    $0x30,%r9
    207d:	49 83 f9 09          	cmp    $0x9,%r9
    2081:	0f 87 80 08 00 00    	ja     2907 <stomptalk::parser::finish_value(char const*)+0x16f7>
    2087:	4c 0f be 56 08       	movsbq 0x8(%rsi),%r10
    208c:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    2093:	49 83 ea 30          	sub    $0x30,%r10
    2097:	49 83 fa 09          	cmp    $0x9,%r10
    209b:	0f 87 57 08 00 00    	ja     28f8 <stomptalk::parser::finish_value(char const*)+0x16e8>
    20a1:	49 6b da 64          	imul   $0x64,%r10,%rbx
    20a5:	4c 0f be 56 09       	movsbq 0x9(%rsi),%r10
    20aa:	49 83 ea 30          	sub    $0x30,%r10
    20ae:	48 89 1c 24          	mov    %rbx,(%rsp)
    20b2:	49 83 fa 09          	cmp    $0x9,%r10
    20b6:	0f 87 2d 08 00 00    	ja     28e9 <stomptalk::parser::finish_value(char const*)+0x16d9>
    20bc:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    20c3:	00 00 80
    20c6:	4b 8d 1c 92          	lea    (%r10,%r10,4),%rbx
    20ca:	4c 0f be 56 0a       	movsbq 0xa(%rsi),%r10
    20cf:	49 83 ea 30          	sub    $0x30,%r10
    20d3:	49 83 fa 0a          	cmp    $0xa,%r10
    20d7:	4d 0f 43 d6          	cmovae %r14,%r10
    20db:	4d 8d 14 5a          	lea    (%r10,%rbx,2),%r10
    20df:	48 8b 1c 24          	mov    (%rsp),%rbx
    20e3:	49 01 da             	add    %rbx,%r10
    20e6:	4d 01 d1             	add    %r10,%r9
    20e9:	4c 01 cf             	add    %r9,%rdi
    20ec:	48 01 f8             	add    %rdi,%rax
    20ef:	4c 01 e8             	add    %r13,%rax
    20f2:	4c 01 e0             	add    %r12,%rax
    20f5:	48 01 e8             	add    %rbp,%rax
    20f8:	4c 01 d8             	add    %r11,%rax
    20fb:	4c 01 f8             	add    %r15,%rax
    20fe:	e9 7d f3 ff ff       	jmp    1480 <stomptalk::parser::finish_value(char const*)+0x270>
    2103:	4c 0f be 16          	movsbq (%rsi),%r10
    2107:	49 83 ea 30          	sub    $0x30,%r10
    210b:	49 83 fa 09          	cmp    $0x9,%r10
    210f:	0f 87 c4 05 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2115:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    211a:	49 83 eb 30          	sub    $0x30,%r11
    211e:	49 83 fb 09          	cmp    $0x9,%r11
    2122:	0f 87 b1 05 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2128:	48 0f be 46 02       	movsbq 0x2(%rsi),%rax
    212d:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    2131:	48 83 fb 09          	cmp    $0x9,%rbx
    2135:	0f 87 9e 05 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    213b:	4c 0f be 4e 03       	movsbq 0x3(%rsi),%r9
    2140:	49 83 e9 30          	sub    $0x30,%r9
    2144:	49 83 f9 09          	cmp    $0x9,%r9
    2148:	0f 87 8b 05 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    214e:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    2153:	48 83 ef 30          	sub    $0x30,%rdi
    2157:	48 83 ff 09          	cmp    $0x9,%rdi
    215b:	0f 87 78 05 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2161:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    2166:	48 83 e8 30          	sub    $0x30,%rax
    216a:	48 83 f8 09          	cmp    $0x9,%rax
    216e:	0f 87 65 05 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2174:	4c 69 e7 a0 86 01 00 	imul   $0x186a0,%rdi,%r12
    217b:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    2180:	4d 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r10
    2187:	48 83 ef 30          	sub    $0x30,%rdi
    218b:	4d 69 db 00 e1 f5 05 	imul   $0x5f5e100,%r11,%r11
    2192:	4c 69 fb 80 96 98 00 	imul   $0x989680,%rbx,%r15
    2199:	49 69 e9 40 42 0f 00 	imul   $0xf4240,%r9,%rbp
    21a0:	48 69 c0 10 27 00 00 	imul   $0x2710,%rax,%rax
    21a7:	48 83 ff 09          	cmp    $0x9,%rdi
    21ab:	0f 87 21 06 00 00    	ja     27d2 <stomptalk::parser::finish_value(char const*)+0x15c2>
    21b1:	4c 0f be 4e 07       	movsbq 0x7(%rsi),%r9
    21b6:	48 69 ff e8 03 00 00 	imul   $0x3e8,%rdi,%rdi
    21bd:	49 83 e9 30          	sub    $0x30,%r9
    21c1:	49 83 f9 09          	cmp    $0x9,%r9
    21c5:	0f 87 f8 05 00 00    	ja     27c3 <stomptalk::parser::finish_value(char const*)+0x15b3>
    21cb:	4d 6b e9 64          	imul   $0x64,%r9,%r13
    21cf:	4c 0f be 4e 08       	movsbq 0x8(%rsi),%r9
    21d4:	49 83 e9 30          	sub    $0x30,%r9
    21d8:	49 83 f9 09          	cmp    $0x9,%r9
    21dc:	0f 87 2b 06 00 00    	ja     280d <stomptalk::parser::finish_value(char const*)+0x15fd>
    21e2:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    21e9:	00 00 80
    21ec:	4b 8d 1c 89          	lea    (%r9,%r9,4),%rbx
    21f0:	4c 0f be 4e 09       	movsbq 0x9(%rsi),%r9
    21f5:	49 83 e9 30          	sub    $0x30,%r9
    21f9:	49 83 f9 0a          	cmp    $0xa,%r9
    21fd:	4d 0f 43 ce          	cmovae %r14,%r9
    2201:	4d 8d 0c 59          	lea    (%r9,%rbx,2),%r9
    2205:	4d 01 e9             	add    %r13,%r9
    2208:	4c 01 cf             	add    %r9,%rdi
    220b:	48 01 f8             	add    %rdi,%rax
    220e:	4c 01 e0             	add    %r12,%rax
    2211:	48 01 e8             	add    %rbp,%rax
    2214:	4c 01 f8             	add    %r15,%rax
    2217:	4c 01 d8             	add    %r11,%rax
    221a:	4c 01 d0             	add    %r10,%rax
    221d:	e9 5e f2 ff ff       	jmp    1480 <stomptalk::parser::finish_value(char const*)+0x270>
    2222:	4c 0f be 0e          	movsbq (%rsi),%r9
    2226:	49 83 e9 30          	sub    $0x30,%r9
    222a:	49 83 f9 09          	cmp    $0x9,%r9
    222e:	0f 87 a5 04 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2234:	4c 0f be 56 01       	movsbq 0x1(%rsi),%r10
    2239:	49 83 ea 30          	sub    $0x30,%r10
    223d:	49 83 fa 09          	cmp    $0x9,%r10
    2241:	0f 87 92 04 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2247:	4c 0f be 5e 02       	movsbq 0x2(%rsi),%r11
    224c:	49 83 eb 30          	sub    $0x30,%r11
    2250:	49 83 fb 09          	cmp    $0x9,%r11
    2254:	0f 87 7f 04 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    225a:	48 0f be 46 03       	movsbq 0x3(%rsi),%rax
    225f:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    2263:	48 83 fb 09          	cmp    $0x9,%rbx
    2267:	0f 87 6c 04 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    226d:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    2272:	48 83 ef 30          	sub    $0x30,%rdi
    2276:	48 83 ff 09          	cmp    $0x9,%rdi
    227a:	0f 87 59 04 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2280:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    2285:	48 83 e8 30          	sub    $0x30,%rax
    2289:	48 83 f8 09          	cmp    $0x9,%rax
    228d:	0f 87 46 04 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2293:	48 69 ef 10 27 00 00 	imul   $0x2710,%rdi,%rbp
    229a:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    229f:	4d 69 c9 00 e1 f5 05 	imul   $0x5f5e100,%r9,%r9
    22a6:	48 83 ef 30          	sub    $0x30,%rdi
    22aa:	4d 69 d2 80 96 98 00 	imul   $0x989680,%r10,%r10
    22b1:	4d 69 db 40 42 0f 00 	imul   $0xf4240,%r11,%r11
    22b8:	4c 69 fb a0 86 01 00 	imul   $0x186a0,%rbx,%r15
    22bf:	48 69 c0 e8 03 00 00 	imul   $0x3e8,%rax,%rax
    22c6:	48 83 ff 09          	cmp    $0x9,%rdi
    22ca:	0f 87 d7 04 00 00    	ja     27a7 <stomptalk::parser::finish_value(char const*)+0x1597>
    22d0:	4c 6b e7 64          	imul   $0x64,%rdi,%r12
    22d4:	48 0f be 7e 07       	movsbq 0x7(%rsi),%rdi
    22d9:	48 83 ef 30          	sub    $0x30,%rdi
    22dd:	48 83 ff 09          	cmp    $0x9,%rdi
    22e1:	0f 87 ce 04 00 00    	ja     27b5 <stomptalk::parser::finish_value(char const*)+0x15a5>
    22e7:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    22ee:	00 00 80
    22f1:	48 8d 1c bf          	lea    (%rdi,%rdi,4),%rbx
    22f5:	48 0f be 7e 08       	movsbq 0x8(%rsi),%rdi
    22fa:	48 83 ef 30          	sub    $0x30,%rdi
    22fe:	48 83 ff 0a          	cmp    $0xa,%rdi
    2302:	49 0f 43 fe          	cmovae %r14,%rdi
    2306:	48 8d 3c 5f          	lea    (%rdi,%rbx,2),%rdi
    230a:	4c 01 e7             	add    %r12,%rdi
    230d:	48 01 f8             	add    %rdi,%rax
    2310:	48 01 e8             	add    %rbp,%rax
    2313:	4c 01 f8             	add    %r15,%rax
    2316:	4c 01 d8             	add    %r11,%rax
    2319:	4c 01 d0             	add    %r10,%rax
    231c:	4c 01 c8             	add    %r9,%rax
    231f:	e9 5c f1 ff ff       	jmp    1480 <stomptalk::parser::finish_value(char const*)+0x270>
    2324:	4c 0f be 0e          	movsbq (%rsi),%r9
    2328:	49 83 e9 30          	sub    $0x30,%r9
    232c:	49 83 f9 09          	cmp    $0x9,%r9
    2330:	0f 87 a3 03 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2336:	4c 0f be 56 01       	movsbq 0x1(%rsi),%r10
    233b:	49 83 ea 30          	sub    $0x30,%r10
    233f:	49 83 fa 09          	cmp    $0x9,%r10
    2343:	0f 87 90 03 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2349:	4c 0f be 5e 02       	movsbq 0x2(%rsi),%r11
    234e:	49 83 eb 30          	sub    $0x30,%r11
    2352:	49 83 fb 09          	cmp    $0x9,%r11
    2356:	0f 87 7d 03 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    235c:	48 0f be 46 03       	movsbq 0x3(%rsi),%rax
    2361:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    2365:	48 83 fb 09          	cmp    $0x9,%rbx
    2369:	0f 87 6a 03 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    236f:	48 0f be 7e 04       	movsbq 0x4(%rsi),%rdi
    2374:	48 83 ef 30          	sub    $0x30,%rdi
    2378:	48 83 ff 09          	cmp    $0x9,%rdi
    237c:	0f 87 57 03 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2382:	48 0f be 46 05       	movsbq 0x5(%rsi),%rax
    2387:	48 83 e8 30          	sub    $0x30,%rax
    238b:	48 83 f8 09          	cmp    $0x9,%rax
    238f:	0f 87 44 03 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2395:	48 69 ef e8 03 00 00 	imul   $0x3e8,%rdi,%rbp
    239c:	48 0f be 7e 06       	movsbq 0x6(%rsi),%rdi
    23a1:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    23a8:	48 83 ef 30          	sub    $0x30,%rdi
    23ac:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    23b3:	4d 69 db a0 86 01 00 	imul   $0x186a0,%r11,%r11
    23ba:	4c 69 fb 10 27 00 00 	imul   $0x2710,%rbx,%r15
    23c1:	48 6b c0 64          	imul   $0x64,%rax,%rax
    23c5:	48 83 ff 09          	cmp    $0x9,%rdi
    23c9:	0f 87 d8 03 00 00    	ja     27a7 <stomptalk::parser::finish_value(char const*)+0x1597>
    23cf:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    23d6:	00 00 80
    23d9:	48 8d 1c bf          	lea    (%rdi,%rdi,4),%rbx
    23dd:	48 0f be 7e 07       	movsbq 0x7(%rsi),%rdi
    23e2:	48 83 ef 30          	sub    $0x30,%rdi
    23e6:	48 83 ff 0a          	cmp    $0xa,%rdi
    23ea:	49 0f 43 fe          	cmovae %r14,%rdi
    23ee:	48 8d 3c 5f          	lea    (%rdi,%rbx,2),%rdi
    23f2:	e9 16 ff ff ff       	jmp    230d <stomptalk::parser::finish_value(char const*)+0x10fd>
    23f7:	4c 0f be 16          	movsbq (%rsi),%r10
    23fb:	49 83 ea 30          	sub    $0x30,%r10
    23ff:	49 83 fa 09          	cmp    $0x9,%r10
    2403:	0f 87 d0 02 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2409:	4c 0f be 5e 01       	movsbq 0x1(%rsi),%r11
    240e:	49 83 eb 30          	sub    $0x30,%r11
    2412:	49 83 fb 09          	cmp    $0x9,%r11
    2416:	0f 87 bd 02 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    241c:	48 0f be 46 02       	movsbq 0x2(%rsi),%rax
    2421:	48 8d 58 d0          	lea    -0x30(%rax),%rbx
    2425:	48 83 fb 09          	cmp    $0x9,%rbx
    2429:	0f 87 aa 02 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    242f:	48 0f be 7e 03       	movsbq 0x3(%rsi),%rdi
    2434:	48 83 ef 30          	sub    $0x30,%rdi
    2438:	48 83 ff 09          	cmp    $0x9,%rdi
    243c:	0f 87 97 02 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2442:	48 0f be 46 04       	movsbq 0x4(%rsi),%rax
    2447:	48 83 e8 30          	sub    $0x30,%rax
    244b:	48 83 f8 09          	cmp    $0x9,%rax
    244f:	0f 87 84 02 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2455:	4c 0f be 4e 05       	movsbq 0x5(%rsi),%r9
    245a:	49 83 e9 30          	sub    $0x30,%r9
    245e:	49 83 f9 09          	cmp    $0x9,%r9
    2462:	0f 87 71 02 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2468:	4c 6b f0 64          	imul   $0x64,%rax,%r14
    246c:	48 0f be 46 06       	movsbq 0x6(%rsi),%rax
    2471:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
    2475:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    247c:	00 00 80
    247f:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    2486:	48 83 e8 30          	sub    $0x30,%rax
    248a:	4d 69 db a0 86 01 00 	imul   $0x186a0,%r11,%r11
    2491:	48 69 db 10 27 00 00 	imul   $0x2710,%rbx,%rbx
    2498:	48 69 ff e8 03 00 00 	imul   $0x3e8,%rdi,%rdi
    249f:	48 83 f8 0a          	cmp    $0xa,%rax
    24a3:	49 0f 43 c7          	cmovae %r15,%rax
    24a7:	4a 8d 04 48          	lea    (%rax,%r9,2),%rax
    24ab:	4c 01 f0             	add    %r14,%rax
    24ae:	48 01 f8             	add    %rdi,%rax
    24b1:	48 01 d8             	add    %rbx,%rax
    24b4:	4c 01 d8             	add    %r11,%rax
    24b7:	4c 01 d0             	add    %r10,%rax
    24ba:	e9 c1 ef ff ff       	jmp    1480 <stomptalk::parser::finish_value(char const*)+0x270>
    24bf:	4c 0f be 0e          	movsbq (%rsi),%r9
    24c3:	49 83 e9 30          	sub    $0x30,%r9
    24c7:	49 83 f9 09          	cmp    $0x9,%r9
    24cb:	0f 87 08 02 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    24d1:	4c 0f be 56 01       	movsbq 0x1(%rsi),%r10
    24d6:	49 83 ea 30          	sub    $0x30,%r10
    24da:	49 83 fa 09          	cmp    $0x9,%r10
    24de:	0f 87 f5 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    24e4:	4c 0f be 5e 02       	movsbq 0x2(%rsi),%r11
    24e9:	49 83 eb 30          	sub    $0x30,%r11
    24ed:	49 83 fb 09          	cmp    $0x9,%r11
    24f1:	0f 87 e2 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    24f7:	48 0f be 7e 03       	movsbq 0x3(%rsi),%rdi
    24fc:	48 83 ef 30          	sub    $0x30,%rdi
    2500:	48 83 ff 09          	cmp    $0x9,%rdi
    2504:	0f 87 cf 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    250a:	48 0f be 46 04       	movsbq 0x4(%rsi),%rax
    250f:	48 83 e8 30          	sub    $0x30,%rax
    2513:	48 83 f8 09          	cmp    $0x9,%rax
    2517:	0f 87 bc 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    251d:	48 0f be 5e 05       	movsbq 0x5(%rsi),%rbx
    2522:	48 83 eb 30          	sub    $0x30,%rbx
    2526:	48 83 fb 09          	cmp    $0x9,%rbx
    252a:	0f 87 a9 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2530:	48 6b ff 64          	imul   $0x64,%rdi,%rdi
    2534:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    2538:	4d 69 db e8 03 00 00 	imul   $0x3e8,%r11,%r11
    253f:	48 8d 04 43          	lea    (%rbx,%rax,2),%rax
    2543:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    254a:	4d 69 c9 a0 86 01 00 	imul   $0x186a0,%r9,%r9
    2551:	48 01 f8             	add    %rdi,%rax
    2554:	4c 01 d8             	add    %r11,%rax
    2557:	4c 01 d0             	add    %r10,%rax
    255a:	4c 01 c8             	add    %r9,%rax
    255d:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    2562:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    2567:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    256c:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    2571:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    2576:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    257b:	e9 68 ee ff ff       	jmp    13e8 <stomptalk::parser::finish_value(char const*)+0x1d8>
    2580:	48 0f be 3e          	movsbq (%rsi),%rdi
    2584:	48 83 ef 30          	sub    $0x30,%rdi
    2588:	48 83 ff 09          	cmp    $0x9,%rdi
    258c:	0f 87 47 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2592:	4c 0f be 4e 01       	movsbq 0x1(%rsi),%r9
    2597:	4d 8d 59 d0          	lea    -0x30(%r9),%r11
    259b:	49 83 fb 09          	cmp    $0x9,%r11
    259f:	0f 87 34 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    25a5:	4c 0f be 4e 02       	movsbq 0x2(%rsi),%r9
    25aa:	49 83 e9 30          	sub    $0x30,%r9
    25ae:	49 83 f9 09          	cmp    $0x9,%r9
    25b2:	0f 87 21 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    25b8:	48 0f be 46 03       	movsbq 0x3(%rsi),%rax
    25bd:	48 83 e8 30          	sub    $0x30,%rax
    25c1:	48 83 f8 09          	cmp    $0x9,%rax
    25c5:	0f 87 0e 01 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    25cb:	4c 0f be 56 04       	movsbq 0x4(%rsi),%r10
    25d0:	49 83 ea 30          	sub    $0x30,%r10
    25d4:	49 83 fa 09          	cmp    $0x9,%r10
    25d8:	0f 87 fb 00 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    25de:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    25e2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    25e6:	48 69 ff 10 27 00 00 	imul   $0x2710,%rdi,%rdi
    25ed:	49 8d 04 42          	lea    (%r10,%rax,2),%rax
    25f1:	4c 01 c8             	add    %r9,%rax
    25f4:	4d 69 cb e8 03 00 00 	imul   $0x3e8,%r11,%r9
    25fb:	4c 01 c8             	add    %r9,%rax
    25fe:	48 01 f8             	add    %rdi,%rax
    2601:	e9 57 ff ff ff       	jmp    255d <stomptalk::parser::finish_value(char const*)+0x134d>
    2606:	48 0f be 3e          	movsbq (%rsi),%rdi
    260a:	48 83 ef 30          	sub    $0x30,%rdi
    260e:	48 83 ff 09          	cmp    $0x9,%rdi
    2612:	0f 87 c1 00 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2618:	4c 0f be 4e 01       	movsbq 0x1(%rsi),%r9
    261d:	49 83 e9 30          	sub    $0x30,%r9
    2621:	49 83 f9 09          	cmp    $0x9,%r9
    2625:	0f 87 ae 00 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    262b:	48 0f be 46 02       	movsbq 0x2(%rsi),%rax
    2630:	48 83 e8 30          	sub    $0x30,%rax
    2634:	48 83 f8 09          	cmp    $0x9,%rax
    2638:	0f 87 9b 00 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    263e:	4c 0f be 56 03       	movsbq 0x3(%rsi),%r10
    2643:	49 83 ea 30          	sub    $0x30,%r10
    2647:	49 83 fa 09          	cmp    $0x9,%r10
    264b:	0f 87 88 00 00 00    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2651:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    2655:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    2659:	48 69 ff e8 03 00 00 	imul   $0x3e8,%rdi,%rdi
    2660:	49 8d 04 42          	lea    (%r10,%rax,2),%rax
    2664:	4c 01 c8             	add    %r9,%rax
    2667:	48 01 f8             	add    %rdi,%rax
    266a:	e9 ee fe ff ff       	jmp    255d <stomptalk::parser::finish_value(char const*)+0x134d>
    266f:	48 0f be 3e          	movsbq (%rsi),%rdi
    2673:	48 83 ef 30          	sub    $0x30,%rdi
    2677:	48 83 ff 09          	cmp    $0x9,%rdi
    267b:	77 5c                	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    267d:	48 0f be 46 01       	movsbq 0x1(%rsi),%rax
    2682:	48 83 e8 30          	sub    $0x30,%rax
    2686:	48 83 f8 09          	cmp    $0x9,%rax
    268a:	77 4d                	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    268c:	4c 0f be 4e 02       	movsbq 0x2(%rsi),%r9
    2691:	49 83 e9 30          	sub    $0x30,%r9
    2695:	49 83 f9 09          	cmp    $0x9,%r9
    2699:	77 3e                	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    269b:	48 6b ff 64          	imul   $0x64,%rdi,%rdi
    269f:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    26a3:	49 8d 04 41          	lea    (%r9,%rax,2),%rax
    26a7:	48 01 f8             	add    %rdi,%rax
    26aa:	e9 ae fe ff ff       	jmp    255d <stomptalk::parser::finish_value(char const*)+0x134d>
    26af:	48 0f be 06          	movsbq (%rsi),%rax
    26b3:	48 83 e8 30          	sub    $0x30,%rax
    26b7:	48 83 f8 09          	cmp    $0x9,%rax
    26bb:	77 1c                	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    26bd:	48 0f be 7e 01       	movsbq 0x1(%rsi),%rdi
    26c2:	48 83 ef 30          	sub    $0x30,%rdi
    26c6:	48 83 ff 09          	cmp    $0x9,%rdi
    26ca:	77 0d                	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    26cc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    26d0:	48 8d 04 47          	lea    (%rdi,%rax,2),%rax
    26d4:	e9 84 fe ff ff       	jmp    255d <stomptalk::parser::finish_value(char const*)+0x134d>
    26d9:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    26de:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    26e3:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    26e8:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    26ed:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    26f2:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    26f7:	e9 17 ec ff ff       	jmp    1313 <stomptalk::parser::finish_value(char const*)+0x103>
    26fc:	48 0f be 06          	movsbq (%rsi),%rax
    2700:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    2705:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    270a:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    270f:	48 83 e8 30          	sub    $0x30,%rax
    2713:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    2718:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    271d:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    2722:	48 83 f8 09          	cmp    $0x9,%rax
    2726:	0f 86 bc ec ff ff    	jbe    13e8 <stomptalk::parser::finish_value(char const*)+0x1d8>
    272c:	e9 e2 eb ff ff       	jmp    1313 <stomptalk::parser::finish_value(char const*)+0x103>
    2731:	b8 01 00 00 00       	mov    $0x1,%eax
    2736:	48 c1 e0 3f          	shl    $0x3f,%rax
    273a:	e9 b8 ef ff ff       	jmp    16f7 <stomptalk::parser::finish_value(char const*)+0x4e7>
    273f:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2746:	00 00 80
    2749:	e9 bb f3 ff ff       	jmp    1b09 <stomptalk::parser::finish_value(char const*)+0x8f9>
    274e:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2755:	00 00 80
    2758:	e9 b4 f3 ff ff       	jmp    1b11 <stomptalk::parser::finish_value(char const*)+0x901>
    275d:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2764:	00 00 80
    2767:	e9 ad f3 ff ff       	jmp    1b19 <stomptalk::parser::finish_value(char const*)+0x909>
    276c:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2773:	00 00 80
    2776:	e9 a6 f3 ff ff       	jmp    1b21 <stomptalk::parser::finish_value(char const*)+0x911>
    277b:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2782:	00 00 80
    2785:	e9 9a f3 ff ff       	jmp    1b24 <stomptalk::parser::finish_value(char const*)+0x914>
    278a:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2791:	00 00 80
    2794:	e9 8e f3 ff ff       	jmp    1b27 <stomptalk::parser::finish_value(char const*)+0x917>
    2799:	bf 01 00 00 00       	mov    $0x1,%edi
    279e:	48 c1 e7 3f          	shl    $0x3f,%rdi
    27a2:	e9 83 f3 ff ff       	jmp    1b2a <stomptalk::parser::finish_value(char const*)+0x91a>
    27a7:	bf 01 00 00 00       	mov    $0x1,%edi
    27ac:	48 c1 e7 3f          	shl    $0x3f,%rdi
    27b0:	e9 58 fb ff ff       	jmp    230d <stomptalk::parser::finish_value(char const*)+0x10fd>
    27b5:	bf 01 00 00 00       	mov    $0x1,%edi
    27ba:	48 c1 e7 3f          	shl    $0x3f,%rdi
    27be:	e9 47 fb ff ff       	jmp    230a <stomptalk::parser::finish_value(char const*)+0x10fa>
    27c3:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    27ca:	00 00 80
    27cd:	e9 36 fa ff ff       	jmp    2208 <stomptalk::parser::finish_value(char const*)+0xff8>
    27d2:	bf 01 00 00 00       	mov    $0x1,%edi
    27d7:	48 c1 e7 3f          	shl    $0x3f,%rdi
    27db:	e9 2b fa ff ff       	jmp    220b <stomptalk::parser::finish_value(char const*)+0xffb>
    27e0:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    27e7:	00 00 80
    27ea:	e9 dc ee ff ff       	jmp    16cb <stomptalk::parser::finish_value(char const*)+0x4bb>
    27ef:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    27f6:	00 00 80
    27f9:	e9 d5 ee ff ff       	jmp    16d3 <stomptalk::parser::finish_value(char const*)+0x4c3>
    27fe:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2805:	00 00 80
    2808:	e9 b6 ee ff ff       	jmp    16c3 <stomptalk::parser::finish_value(char const*)+0x4b3>
    280d:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2814:	00 00 80
    2817:	e9 e9 f9 ff ff       	jmp    2205 <stomptalk::parser::finish_value(char const*)+0xff5>
    281c:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2823:	00 00 80
    2826:	e9 b0 ee ff ff       	jmp    16db <stomptalk::parser::finish_value(char const*)+0x4cb>
    282b:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2832:	00 00 80
    2835:	e9 a9 ee ff ff       	jmp    16e3 <stomptalk::parser::finish_value(char const*)+0x4d3>
    283a:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2841:	00 00 80
    2844:	e9 9d ee ff ff       	jmp    16e6 <stomptalk::parser::finish_value(char const*)+0x4d6>
    2849:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2850:	00 00 80
    2853:	e9 91 ee ff ff       	jmp    16e9 <stomptalk::parser::finish_value(char const*)+0x4d9>
    2858:	bf 01 00 00 00       	mov    $0x1,%edi
    285d:	48 c1 e7 3f          	shl    $0x3f,%rdi
    2861:	e9 86 ee ff ff       	jmp    16ec <stomptalk::parser::finish_value(char const*)+0x4dc>
    2866:	b8 01 00 00 00       	mov    $0x1,%eax
    286b:	48 c1 e0 3f          	shl    $0x3f,%rax
    286f:	e9 7b ee ff ff       	jmp    16ef <stomptalk::parser::finish_value(char const*)+0x4df>
    2874:	44 0f b6 0e          	movzbl (%rsi),%r9d
    2878:	41 83 e9 30          	sub    $0x30,%r9d
    287c:	41 83 f9 09          	cmp    $0x9,%r9d
    2880:	0f 87 53 fe ff ff    	ja     26d9 <stomptalk::parser::finish_value(char const*)+0x14c9>
    2886:	48 89 f7             	mov    %rsi,%rdi
    2889:	48 83 f9 14          	cmp    $0x14,%rcx
    288d:	75 32                	jne    28c1 <stomptalk::parser::finish_value(char const*)+0x16b1>
    288f:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    2894:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    2899:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    289e:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    28a3:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    28a8:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    28ad:	e9 ac ea ff ff       	jmp    135e <stomptalk::parser::finish_value(char const*)+0x14e>
    28b2:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    28b9:	00 00 80
    28bc:	e9 40 f2 ff ff       	jmp    1b01 <stomptalk::parser::finish_value(char const*)+0x8f1>
    28c1:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    28c6:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
    28cb:	b8 01 00 00 00       	mov    $0x1,%eax
    28d0:	4c 8b 64 24 48       	mov    0x48(%rsp),%r12
    28d5:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    28da:	4c 8b 74 24 58       	mov    0x58(%rsp),%r14
    28df:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    28e4:	e9 8e ea ff ff       	jmp    1377 <stomptalk::parser::finish_value(char const*)+0x167>
    28e9:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    28f0:	00 00 80
    28f3:	e9 e7 f7 ff ff       	jmp    20df <stomptalk::parser::finish_value(char const*)+0xecf>
    28f8:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    28ff:	00 00 80
    2902:	e9 df f7 ff ff       	jmp    20e6 <stomptalk::parser::finish_value(char const*)+0xed6>
    2907:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    290e:	00 00 80
    2911:	e9 d3 f7 ff ff       	jmp    20e9 <stomptalk::parser::finish_value(char const*)+0xed9>
    2916:	bf 01 00 00 00       	mov    $0x1,%edi
    291b:	48 c1 e7 3f          	shl    $0x3f,%rdi
    291f:	e9 c8 f7 ff ff       	jmp    20ec <stomptalk::parser::finish_value(char const*)+0xedc>
    2924:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    292b:	00 00 80
    292e:	e9 d2 ef ff ff       	jmp    1905 <stomptalk::parser::finish_value(char const*)+0x6f5>
    2933:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    293a:	00 00 80
    293d:	e9 cb ef ff ff       	jmp    190d <stomptalk::parser::finish_value(char const*)+0x6fd>
    2942:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2949:	00 00 80
    294c:	e9 c4 ef ff ff       	jmp    1915 <stomptalk::parser::finish_value(char const*)+0x705>
    2951:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2958:	00 00 80
    295b:	e9 bd ef ff ff       	jmp    191d <stomptalk::parser::finish_value(char const*)+0x70d>
    2960:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2967:	00 00 80
    296a:	e9 b6 ef ff ff       	jmp    1925 <stomptalk::parser::finish_value(char const*)+0x715>
    296f:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2976:	00 00 80
    2979:	e9 aa ef ff ff       	jmp    1928 <stomptalk::parser::finish_value(char const*)+0x718>
    297e:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2985:	00 00 80
    2988:	e9 9e ef ff ff       	jmp    192b <stomptalk::parser::finish_value(char const*)+0x71b>
    298d:	bf 01 00 00 00       	mov    $0x1,%edi
    2992:	48 c1 e7 3f          	shl    $0x3f,%rdi
    2996:	e9 93 ef ff ff       	jmp    192e <stomptalk::parser::finish_value(char const*)+0x71e>
    299b:	90                   	nop
    299c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000000 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 83 ec 48          	sub    $0x48,%rsp
   8:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
   d:	49 89 f5             	mov    %rsi,%r13
  10:	48 39 d6             	cmp    %rdx,%rsi
  13:	0f 83 17 07 00 00    	jae    730 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x730>
  19:	48 89 6c 24 20       	mov    %rbp,0x20(%rsp)
  1e:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  23:	48 89 fb             	mov    %rdi,%rbx
  26:	4c 89 7c 24 40       	mov    %r15,0x40(%rsp)
  2b:	49 89 d7             	mov    %rdx,%r15
  2e:	80 bb 0a 01 00 00 00 	cmpb   $0x0,0x10a(%rbx)
  35:	0f 84 85 00 00 00    	je     c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc0>
  3b:	41 0f be 75 00       	movsbl 0x0(%r13),%esi
  40:	40 80 fe 6e          	cmp    $0x6e,%sil
  44:	0f 84 4e 04 00 00    	je     498 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x498>
  4a:	0f 8f c0 02 00 00    	jg     310 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x310>
  50:	40 80 fe 5c          	cmp    $0x5c,%sil
  54:	74 0f                	je     65 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x65>
  56:	40 80 fe 63          	cmp    $0x63,%sil
  5a:	0f 85 58 04 00 00    	jne    4b8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b8>
  60:	be 3a 00 00 00       	mov    $0x3a,%esi
  65:	4c 89 ea             	mov    %r13,%rdx
  68:	48 89 df             	mov    %rbx,%rdi
  6b:	e8 00 00 00 00       	call   70 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x70>
			6c: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
  70:	84 c0                	test   %al,%al
  72:	75 24                	jne    98 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x98>
  74:	48 8b 83 28 01 00 00 	mov    0x128(%rbx),%rax
  7b:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  80:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  85:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
  8a:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  8f:	48 83 c4 48          	add    $0x48,%rsp
  93:	c3                   	ret
  94:	0f 1f 40 00          	nopl   0x0(%rax)
  98:	49 83 c5 01          	add    $0x1,%r13
  9c:	31 ed                	xor    %ebp,%ebp
  9e:	40 88 ab 0a 01 00 00 	mov    %bpl,0x10a(%rbx)
  a5:	4d 39 fd             	cmp    %r15,%r13
  a8:	72 84                	jb     2e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2e>
  aa:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  af:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  b4:	4c 89 e8             	mov    %r13,%rax
  b7:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
  bc:	eb cc                	jmp    8a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a>
  be:	66 90                	xchg   %ax,%ax
  c0:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
  c7:	00
  c8:	4c 89 f8             	mov    %r15,%rax
  cb:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
  d0:	4c 89 ea             	mov    %r13,%rdx
  d3:	41 0f 94 c0          	sete   %r8b
  d7:	4c 29 e8             	sub    %r13,%rax
  da:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
  df:	44 0f b6 93 0b 01 00 	movzbl 0x10b(%rbx),%r10d
  e6:	00
  e7:	45 31 f6             	xor    %r14d,%r14d
  ea:	48 83 f8 0f          	cmp    $0xf,%rax
  ee:	0f 8e 10 06 00 00    	jle    704 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x704>
  f4:	b8 3a 3a 3a 3a       	mov    $0x3a3a3a3a,%eax
  f9:	66 0f ef f6          	pxor   %xmm6,%xmm6
  fd:	66 0f 6e e8          	movd   %eax,%xmm5
 101:	b8 0a 0a 0a 0a       	mov    $0xa0a0a0a,%eax
 106:	66 0f 6e e0          	movd   %eax,%xmm4
 10a:	b8 0d 0d 0d 0d       	mov    $0xd0d0d0d,%eax
 10f:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
 114:	66 0f 6e d8          	movd   %eax,%xmm3
 118:	b8 5c 5c 5c 5c       	mov    $0x5c5c5c5c,%eax
 11d:	66 0f 70 e4 00       	pshufd $0x0,%xmm4,%xmm4
 122:	66 0f 6e f8          	movd   %eax,%xmm7
 126:	66 0f 70 db 00       	pshufd $0x0,%xmm3,%xmm3
 12b:	66 0f 70 ff 00       	pshufd $0x0,%xmm7,%xmm7
 130:	f3 0f 6f 0a          	movdqu (%rdx),%xmm1
 134:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 138:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 13c:	66 0f 74 c5          	pcmpeqb %xmm5,%xmm0
 140:	66 0f 74 d3          	pcmpeqb %xmm3,%xmm2
 144:	66 0f d7 f8          	pmovmskb %xmm0,%edi
 148:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 14c:	66 0f 74 c4          	pcmpeqb %xmm4,%xmm0
 150:	85 ff                	test   %edi,%edi
 152:	0f 95 c0             	setne  %al
 155:	44 21 c0             	and    %r8d,%eax
 158:	66 0f eb c2          	por    %xmm2,%xmm0
 15c:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 160:	66 0f 74 d6          	pcmpeqb %xmm6,%xmm2
 164:	66 0f eb c2          	por    %xmm2,%xmm0
 168:	45 84 d2             	test   %r10b,%r10b
 16b:	0f 84 6f 01 00 00    	je     2e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2e0>
 171:	66 0f d7 c8          	pmovmskb %xmm0,%ecx
 175:	89 ce                	mov    %ecx,%esi
 177:	84 c0                	test   %al,%al
 179:	74 27                	je     1a2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1a2>
 17b:	85 c9                	test   %ecx,%ecx
 17d:	0f 84 bd 01 00 00    	je     340 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x340>
 183:	f3 0f bc ff          	tzcnt  %edi,%edi
 187:	f3 0f bc c9          	tzcnt  %ecx,%ecx
 18b:	39 f9                	cmp    %edi,%ecx
 18d:	0f 8f 2d 04 00 00    	jg     5c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c0>
 193:	4c 8d 24 0a          	lea    (%rdx,%rcx,1),%r12
 197:	4c 89 f6             	mov    %r14,%rsi
 19a:	e9 c4 03 00 00       	jmp    563 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x563>
 19f:	90                   	nop
 1a0:	09 fe                	or     %edi,%esi
 1a2:	85 f6                	test   %esi,%esi
 1a4:	0f 85 37 07 00 00    	jne    8e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8e1>
 1aa:	48 83 c2 10          	add    $0x10,%rdx
 1ae:	4c 89 f8             	mov    %r15,%rax
 1b1:	48 29 d0             	sub    %rdx,%rax
 1b4:	48 83 f8 0f          	cmp    $0xf,%rax
 1b8:	0f 8f 72 ff ff ff    	jg     130 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x130>
 1be:	48 83 f8 07          	cmp    $0x7,%rax
 1c2:	0f 8e 70 05 00 00    	jle    738 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x738>
 1c8:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 1cf:	00 00
 1d1:	48 b9 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rcx
 1d8:	7f 7f 7f
 1db:	eb 4e                	jmp    22b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x22b>
 1dd:	0f 1f 00             	nopl   (%rax)
 1e0:	48 bd 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%rbp
 1e7:	5c 5c 5c
 1ea:	48 31 f5             	xor    %rsi,%rbp
 1ed:	48 89 ee             	mov    %rbp,%rsi
 1f0:	48 21 ce             	and    %rcx,%rsi
 1f3:	48 01 ce             	add    %rcx,%rsi
 1f6:	48 09 ee             	or     %rbp,%rsi
 1f9:	48 21 f0             	and    %rsi,%rax
 1fc:	45 84 c9             	test   %r9b,%r9b
 1ff:	0f 85 fb 02 00 00    	jne    500 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x500>
 205:	48 21 f8             	and    %rdi,%rax
 208:	48 09 c8             	or     %rcx,%rax
 20b:	48 f7 d0             	not    %rax
 20e:	48 85 c0             	test   %rax,%rax
 211:	0f 85 d5 06 00 00    	jne    8ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8ec>
 217:	48 83 c2 08          	add    $0x8,%rdx
 21b:	4c 89 f8             	mov    %r15,%rax
 21e:	48 29 d0             	sub    %rdx,%rax
 221:	48 83 f8 07          	cmp    $0x7,%rax
 225:	0f 8e 05 04 00 00    	jle    630 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x630>
 22b:	48 b8 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rax
 232:	3a 3a 3a
 235:	48 8b 32             	mov    (%rdx),%rsi
 238:	49 b9 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r9
 23f:	0a 0a 0a
 242:	48 bd 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%rbp
 249:	0d 0d 0d
 24c:	48 31 f0             	xor    %rsi,%rax
 24f:	49 31 f1             	xor    %rsi,%r9
 252:	48 31 f5             	xor    %rsi,%rbp
 255:	48 89 c7             	mov    %rax,%rdi
 258:	48 21 cf             	and    %rcx,%rdi
 25b:	48 01 cf             	add    %rcx,%rdi
 25e:	48 09 c7             	or     %rax,%rdi
 261:	4c 89 c8             	mov    %r9,%rax
 264:	48 21 c8             	and    %rcx,%rax
 267:	49 89 fb             	mov    %rdi,%r11
 26a:	48 01 c8             	add    %rcx,%rax
 26d:	49 09 cb             	or     %rcx,%r11
 270:	4c 09 c8             	or     %r9,%rax
 273:	49 89 e9             	mov    %rbp,%r9
 276:	4d 89 dc             	mov    %r11,%r12
 279:	49 21 c9             	and    %rcx,%r9
 27c:	49 01 c9             	add    %rcx,%r9
 27f:	49 09 e9             	or     %rbp,%r9
 282:	4c 21 c8             	and    %r9,%rax
 285:	49 89 f1             	mov    %rsi,%r9
 288:	49 21 c9             	and    %rcx,%r9
 28b:	49 01 c9             	add    %rcx,%r9
 28e:	49 09 f1             	or     %rsi,%r9
 291:	4c 21 c8             	and    %r9,%rax
 294:	49 83 f4 ff          	xor    $0xffffffffffffffff,%r12
 298:	41 0f 95 c1          	setne  %r9b
 29c:	45 21 c1             	and    %r8d,%r9d
 29f:	45 84 d2             	test   %r10b,%r10b
 2a2:	0f 84 38 ff ff ff    	je     1e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1e0>
 2a8:	48 09 c8             	or     %rcx,%rax
 2ab:	48 f7 d0             	not    %rax
 2ae:	45 84 c9             	test   %r9b,%r9b
 2b1:	0f 84 57 ff ff ff    	je     20e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
 2b7:	48 85 c0             	test   %rax,%rax
 2ba:	0f 85 78 02 00 00    	jne    538 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x538>
 2c0:	f3 4d 0f bc e4       	tzcnt  %r12,%r12
 2c5:	45 31 c0             	xor    %r8d,%r8d
 2c8:	41 c1 fc 03          	sar    $0x3,%r12d
 2cc:	4a 8d 04 22          	lea    (%rdx,%r12,1),%rax
 2d0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 2d5:	e9 3d ff ff ff       	jmp    217 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x217>
 2da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 2e0:	66 0f 74 cf          	pcmpeqb %xmm7,%xmm1
 2e4:	66 0f eb c1          	por    %xmm1,%xmm0
 2e8:	66 0f d7 f0          	pmovmskb %xmm0,%esi
 2ec:	84 c0                	test   %al,%al
 2ee:	0f 84 ac fe ff ff    	je     1a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1a0>
 2f4:	85 f6                	test   %esi,%esi
 2f6:	75 58                	jne    350 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x350>
 2f8:	45 31 f6             	xor    %r14d,%r14d
 2fb:	8d 77 ff             	lea    -0x1(%rdi),%esi
 2fe:	45 31 c0             	xor    %r8d,%r8d
 301:	f3 44 0f bc f7       	tzcnt  %edi,%r14d
 306:	21 fe                	and    %edi,%esi
 308:	49 01 d6             	add    %rdx,%r14
 30b:	e9 92 fe ff ff       	jmp    1a2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1a2>
 310:	40 80 fe 72          	cmp    $0x72,%sil
 314:	0f 85 9e 01 00 00    	jne    4b8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b8>
 31a:	be 0d 00 00 00       	mov    $0xd,%esi
 31f:	4c 89 ea             	mov    %r13,%rdx
 322:	48 89 df             	mov    %rbx,%rdi
 325:	e8 00 00 00 00       	call   32a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x32a>
			326: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 32a:	84 c0                	test   %al,%al
 32c:	0f 84 42 fd ff ff    	je     74 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74>
 332:	e9 61 fd ff ff       	jmp    98 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x98>
 337:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 33e:	00 00
 340:	f3 0f bc ff          	tzcnt  %edi,%edi
 344:	45 31 c0             	xor    %r8d,%r8d
 347:	4c 8d 34 3a          	lea    (%rdx,%rdi,1),%r14
 34b:	e9 5a fe ff ff       	jmp    1aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1aa>
 350:	31 c9                	xor    %ecx,%ecx
 352:	89 f0                	mov    %esi,%eax
 354:	f3 0f bc f6          	tzcnt  %esi,%esi
 358:	f3 0f bc cf          	tzcnt  %edi,%ecx
 35c:	39 ce                	cmp    %ecx,%esi
 35e:	0f 8e 21 01 00 00    	jle    485 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x485>
 364:	44 8d 67 ff          	lea    -0x1(%rdi),%r12d
 368:	4c 8d 34 0a          	lea    (%rdx,%rcx,1),%r14
 36c:	41 21 fc             	and    %edi,%r12d
 36f:	41 09 c4             	or     %eax,%r12d
 372:	f3 45 0f bc e4       	tzcnt  %r12d,%r12d
 377:	49 01 d4             	add    %rdx,%r12
 37a:	4c 89 f5             	mov    %r14,%rbp
 37d:	4c 89 ee             	mov    %r13,%rsi
 380:	48 89 df             	mov    %rbx,%rdi
 383:	4c 29 ed             	sub    %r13,%rbp
 386:	48 89 ea             	mov    %rbp,%rdx
 389:	e8 00 00 00 00       	call   38e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x38e>
			38a: R_X86_64_PLT32	stomptalk::parser::append(char const*, unsigned long)-0x4
 38e:	84 c0                	test   %al,%al
 390:	0f 84 62 03 00 00    	je     6f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f8>
 396:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 39d:	48 85 c0             	test   %rax,%rax
 3a0:	0f 84 be 04 00 00    	je     864 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x864>
 3a6:	8b 53 78             	mov    0x78(%rbx),%edx
 3a9:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
 3b0:	48 83 f8 0e          	cmp    $0xe,%rax
 3b4:	48 89 83 c8 00 00 00 	mov    %rax,0xc8(%rbx)
 3bb:	0f 94 c0             	sete   %al
 3be:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 3c5:	f7 d2                	not    %edx
 3c7:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
 3ce:	48 c7 83 d0 00 00 00 	movq   $0x0,0xd0(%rbx)
 3d5:	00 00 00 00
 3d9:	48 c7 83 d8 00 00 00 	movq   $0x0,0xd8(%rbx)
 3e0:	00 00 00 00
 3e4:	20 d0                	and    %dl,%al
 3e6:	0f 85 bc 02 00 00    	jne    6a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a8>
 3ec:	88 83 0c 01 00 00    	mov    %al,0x10c(%rbx)
 3f2:	4d 8d 6e 01          	lea    0x1(%r14),%r13
 3f6:	4c 89 e2             	mov    %r12,%rdx
 3f9:	4c 89 ee             	mov    %r13,%rsi
 3fc:	48 89 df             	mov    %rbx,%rdi
 3ff:	4c 29 ea             	sub    %r13,%rdx
 402:	e8 00 00 00 00       	call   407 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x407>
			403: R_X86_64_PLT32	stomptalk::parser::append(char const*, unsigned long)-0x4
 407:	89 c5                	mov    %eax,%ebp
 409:	84 c0                	test   %al,%al
 40b:	0f 84 e7 02 00 00    	je     6f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f8>
 411:	4d 39 e7             	cmp    %r12,%r15
 414:	0f 84 46 03 00 00    	je     760 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x760>
 41a:	41 0f b6 04 24       	movzbl (%r12),%eax
 41f:	3c 5c                	cmp    $0x5c,%al
 421:	0f 85 41 03 00 00    	jne    768 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x768>
 427:	80 bb 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbx)
 42e:	0f 84 9c 01 00 00    	je     5d0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d0>
 434:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 43b:	00 00 00
 43e:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 445:	4c 89 e0             	mov    %r12,%rax
 448:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 44f:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 456:	49 8d 44 24 01       	lea    0x1(%r12),%rax
 45b:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 462:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 467:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 46c:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 471:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 476:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 47b:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 480:	48 83 c4 48          	add    $0x48,%rsp
 484:	c3                   	ret
 485:	09 f8                	or     %edi,%eax
 487:	31 c9                	xor    %ecx,%ecx
 489:	f3 0f bc c8          	tzcnt  %eax,%ecx
 48d:	e9 01 fd ff ff       	jmp    193 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x193>
 492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 498:	be 0a 00 00 00       	mov    $0xa,%esi
 49d:	4c 89 ea             	mov    %r13,%rdx
 4a0:	48 89 df             	mov    %rbx,%rdi
 4a3:	e8 00 00 00 00       	call   4a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4a8>
			4a4: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 4a8:	84 c0                	test   %al,%al
 4aa:	0f 84 c4 fb ff ff    	je     74 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74>
 4b0:	e9 e3 fb ff ff       	jmp    98 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x98>
 4b5:	0f 1f 00             	nopl   (%rax)
 4b8:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 4bf:	00 00 00
 4c2:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 4c7:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 4cc:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 4d3:	4c 89 e8             	mov    %r13,%rax
 4d6:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 4dd:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 4e4:	49 8d 45 01          	lea    0x1(%r13),%rax
 4e8:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 4ed:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 4f4:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 4f9:	48 83 c4 48          	add    $0x48,%rsp
 4fd:	c3                   	ret
 4fe:	66 90                	xchg   %ax,%ax
 500:	48 89 c6             	mov    %rax,%rsi
 503:	48 09 ce             	or     %rcx,%rsi
 506:	48 83 f6 ff          	xor    $0xffffffffffffffff,%rsi
 50a:	75 6c                	jne    578 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x578>
 50c:	31 c0                	xor    %eax,%eax
 50e:	45 31 c0             	xor    %r8d,%r8d
 511:	f3 49 0f bc c4       	tzcnt  %r12,%rax
 516:	c1 f8 03             	sar    $0x3,%eax
 519:	48 01 d0             	add    %rdx,%rax
 51c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 521:	48 c7 c0 fe ff ff ff 	mov    $0xfffffffffffffffe,%rax
 528:	4c 29 d8             	sub    %r11,%rax
 52b:	4c 21 e0             	and    %r12,%rax
 52e:	e9 db fc ff ff       	jmp    20e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
 533:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 538:	31 f6                	xor    %esi,%esi
 53a:	f3 48 0f bc c0       	tzcnt  %rax,%rax
 53f:	f3 49 0f bc f4       	tzcnt  %r12,%rsi
 544:	89 c1                	mov    %eax,%ecx
 546:	39 f0                	cmp    %esi,%eax
 548:	0f 8f c2 00 00 00    	jg     610 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x610>
 54e:	c1 f9 03             	sar    $0x3,%ecx
 551:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 556:	4c 8d 24 0a          	lea    (%rdx,%rcx,1),%r12
 55a:	4d 85 f6             	test   %r14,%r14
 55d:	0f 85 17 fe ff ff    	jne    37a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x37a>
 563:	48 85 f6             	test   %rsi,%rsi
 566:	0f 84 8a fe ff ff    	je     3f6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3f6>
 56c:	49 89 f6             	mov    %rsi,%r14
 56f:	e9 06 fe ff ff       	jmp    37a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x37a>
 574:	0f 1f 40 00          	nopl   0x0(%rax)
 578:	45 31 c0             	xor    %r8d,%r8d
 57b:	45 31 c9             	xor    %r9d,%r9d
 57e:	f3 4d 0f bc c4       	tzcnt  %r12,%r8
 583:	f3 4c 0f bc ce       	tzcnt  %rsi,%r9
 588:	45 39 c8             	cmp    %r9d,%r8d
 58b:	7d 6b                	jge    5f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f8>
 58d:	48 c7 c0 fe ff ff ff 	mov    $0xfffffffffffffffe,%rax
 594:	41 c1 f8 03          	sar    $0x3,%r8d
 598:	4c 29 d8             	sub    %r11,%rax
 59b:	49 01 d0             	add    %rdx,%r8
 59e:	49 21 c4             	and    %rax,%r12
 5a1:	49 09 f4             	or     %rsi,%r12
 5a4:	f3 4d 0f bc e4       	tzcnt  %r12,%r12
 5a9:	41 c1 fc 03          	sar    $0x3,%r12d
 5ad:	49 01 d4             	add    %rdx,%r12
 5b0:	4d 85 f6             	test   %r14,%r14
 5b3:	4d 0f 44 f0          	cmove  %r8,%r14
 5b7:	e9 be fd ff ff       	jmp    37a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x37a>
 5bc:	0f 1f 40 00          	nopl   0x0(%rax)
 5c0:	4c 8d 34 3a          	lea    (%rdx,%rdi,1),%r14
 5c4:	4c 8d 24 0a          	lea    (%rdx,%rcx,1),%r12
 5c8:	e9 ad fd ff ff       	jmp    37a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x37a>
 5cd:	0f 1f 00             	nopl   (%rax)
 5d0:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 5d7:	75 08                	jne    5e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e1>
 5d9:	48 89 df             	mov    %rbx,%rdi
 5dc:	e8 00 00 00 00       	call   5e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e1>
			5dd: R_X86_64_PC32	.text+0x87c
 5e1:	4d 8d 6c 24 01       	lea    0x1(%r12),%r13
 5e6:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 5eb:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 5f0:	e9 a9 fa ff ff       	jmp    9e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9e>
 5f5:	0f 1f 00             	nopl   (%rax)
 5f8:	48 21 c7             	and    %rax,%rdi
 5fb:	48 09 f9             	or     %rdi,%rcx
 5fe:	48 f7 d1             	not    %rcx
 601:	f3 48 0f bc c9       	tzcnt  %rcx,%rcx
 606:	e9 43 ff ff ff       	jmp    54e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54e>
 60b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 610:	c1 fe 03             	sar    $0x3,%esi
 613:	c1 f8 03             	sar    $0x3,%eax
 616:	48 01 d6             	add    %rdx,%rsi
 619:	4d 85 f6             	test   %r14,%r14
 61c:	4c 8d 24 02          	lea    (%rdx,%rax,1),%r12
 620:	4c 0f 44 f6          	cmove  %rsi,%r14
 624:	e9 51 fd ff ff       	jmp    37a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x37a>
 629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 630:	4c 39 fa             	cmp    %r15,%rdx
 633:	0f 83 78 02 00 00    	jae    8b1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8b1>
 639:	31 f6                	xor    %esi,%esi
 63b:	bf 01 24 00 00       	mov    $0x2401,%edi
 640:	eb 15                	jmp    657 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x657>
 642:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 648:	48 89 d6             	mov    %rdx,%rsi
 64b:	45 31 c0             	xor    %r8d,%r8d
 64e:	48 83 c2 01          	add    $0x1,%rdx
 652:	4c 39 fa             	cmp    %r15,%rdx
 655:	73 1b                	jae    672 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x672>
 657:	0f b6 02             	movzbl (%rdx),%eax
 65a:	3c 3a                	cmp    $0x3a,%al
 65c:	0f 94 c1             	sete   %cl
 65f:	45 84 c0             	test   %r8b,%r8b
 662:	74 04                	je     668 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x668>
 664:	84 c9                	test   %cl,%cl
 666:	75 e0                	jne    648 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x648>
 668:	3c 0d                	cmp    $0xd,%al
 66a:	77 24                	ja     690 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x690>
 66c:	48 0f a3 c7          	bt     %rax,%rdi
 670:	73 dc                	jae    64e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x64e>
 672:	49 89 d4             	mov    %rdx,%r12
 675:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
 67b:	0f 84 d9 fe ff ff    	je     55a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x55a>
 681:	4d 85 f6             	test   %r14,%r14
 684:	4c 0f 44 74 24 08    	cmove  0x8(%rsp),%r14
 68a:	e9 eb fc ff ff       	jmp    37a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x37a>
 68f:	90                   	nop
 690:	3c 5c                	cmp    $0x5c,%al
 692:	0f 94 c0             	sete   %al
 695:	08 c8                	or     %cl,%al
 697:	74 b5                	je     64e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x64e>
 699:	44 89 d0             	mov    %r10d,%eax
 69c:	34 01                	xor    $0x1,%al
 69e:	74 ae                	je     64e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x64e>
 6a0:	eb d0                	jmp    672 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x672>
 6a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 6a8:	4c 39 ab 20 01 00 00 	cmp    %r13,0x120(%rbx)
 6af:	73 06                	jae    6b7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b7>
 6b1:	48 83 fd 0e          	cmp    $0xe,%rbp
 6b5:	74 22                	je     6d9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6d9>
 6b7:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 6be:	6e 74 2d
 6c1:	48 39 01             	cmp    %rax,(%rcx)
 6c4:	0f 84 cc 01 00 00    	je     896 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x896>
 6ca:	b8 01 00 00 00       	mov    $0x1,%eax
 6cf:	85 c0                	test   %eax,%eax
 6d1:	0f 94 c0             	sete   %al
 6d4:	e9 13 fd ff ff       	jmp    3ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3ec>
 6d9:	f3 41 0f 6f 45 ff    	movdqu -0x1(%r13),%xmm0
 6df:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 6e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6e7>
 6e6:	00
			6e3: R_X86_64_PC32	.LC31-0x4
 6e7:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 6eb:	3d ff ff 00 00       	cmp    $0xffff,%eax
 6f0:	0f 94 c0             	sete   %al
 6f3:	e9 f4 fc ff ff       	jmp    3ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3ec>
 6f8:	48 8b 83 28 01 00 00 	mov    0x128(%rbx),%rax
 6ff:	e9 5e fd ff ff       	jmp    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 704:	48 83 f8 07          	cmp    $0x7,%rax
 708:	0f 8f ba fa ff ff    	jg     1c8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c8>
 70e:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 715:	00 00
 717:	4d 89 ec             	mov    %r13,%r12
 71a:	4d 39 fd             	cmp    %r15,%r13
 71d:	0f 82 16 ff ff ff    	jb     639 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x639>
 723:	e9 ce fc ff ff       	jmp    3f6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3f6>
 728:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 72f:	00
 730:	48 89 f0             	mov    %rsi,%rax
 733:	e9 52 f9 ff ff       	jmp    8a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a>
 738:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 73f:	00 00
 741:	4c 39 fa             	cmp    %r15,%rdx
 744:	0f 82 ef fe ff ff    	jb     639 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x639>
 74a:	49 89 d4             	mov    %rdx,%r12
 74d:	4d 85 f6             	test   %r14,%r14
 750:	0f 85 24 fc ff ff    	jne    37a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x37a>
 756:	e9 9b fc ff ff       	jmp    3f6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3f6>
 75b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 760:	4c 89 f8             	mov    %r15,%rax
 763:	e9 fa fc ff ff       	jmp    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 768:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 76f:	00
 770:	0f 84 be fc ff ff    	je     434 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x434>
 776:	3c 0d                	cmp    $0xd,%al
 778:	74 08                	je     782 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x782>
 77a:	3c 0a                	cmp    $0xa,%al
 77c:	0f 85 b2 fc ff ff    	jne    434 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x434>
 782:	4c 89 e6             	mov    %r12,%rsi
 785:	48 89 df             	mov    %rbx,%rdi
 788:	e8 00 00 00 00       	call   78d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78d>
			789: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 78d:	84 c0                	test   %al,%al
 78f:	0f 84 63 ff ff ff    	je     6f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f8>
 795:	49 8d 44 24 01       	lea    0x1(%r12),%rax
 79a:	41 80 3c 24 0a       	cmpb   $0xa,(%r12)
 79f:	74 69                	je     80a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x80a>
 7a1:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 7a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a8>
			7a4: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 7a8:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 7af:	00
 7b0:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
 7b4:	4c 39 f8             	cmp    %r15,%rax
 7b7:	0f 83 a5 fc ff ff    	jae    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 7bd:	8b 93 10 01 00 00    	mov    0x110(%rbx),%edx
 7c3:	85 d2                	test   %edx,%edx
 7c5:	0f 85 97 fc ff ff    	jne    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 7cb:	49 8d 74 24 02       	lea    0x2(%r12),%rsi
 7d0:	41 80 7c 24 01 0a    	cmpb   $0xa,0x1(%r12)
 7d6:	0f 84 e9 00 00 00    	je     8c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8c5>
 7dc:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 7e3:	48 89 b3 28 01 00 00 	mov    %rsi,0x128(%rbx)
 7ea:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 7f1:	00 00 00
 7f4:	48 89 93 10 01 00 00 	mov    %rdx,0x110(%rbx)
 7fb:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 802:	48 89 f0             	mov    %rsi,%rax
 805:	e9 58 fc ff ff       	jmp    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 80a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 811 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x811>
			80d: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 811:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 818:	00
 819:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
 81d:	4c 39 f8             	cmp    %r15,%rax
 820:	0f 83 3c fc ff ff    	jae    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 826:	8b 8b 10 01 00 00    	mov    0x110(%rbx),%ecx
 82c:	85 c9                	test   %ecx,%ecx
 82e:	0f 85 2e fc ff ff    	jne    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 834:	4c 89 fa             	mov    %r15,%rdx
 837:	48 89 c6             	mov    %rax,%rsi
 83a:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 83f:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 844:	48 89 df             	mov    %rbx,%rdi
 847:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 84c:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 851:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 856:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 85b:	48 83 c4 48          	add    $0x48,%rsp
 85f:	e9 00 00 00 00       	jmp    864 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x864>
			860: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 864:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 86b:	00 00 00
 86e:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 875:	4c 89 f0             	mov    %r14,%rax
 878:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 87f:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 886:	49 8d 46 01          	lea    0x1(%r14),%rax
 88a:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
 891:	e9 cc fb ff ff       	jmp    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 896:	48 b8 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rax
 89d:	67 74 68
 8a0:	48 39 41 06          	cmp    %rax,0x6(%rcx)
 8a4:	0f 85 20 fe ff ff    	jne    6ca <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ca>
 8aa:	31 c0                	xor    %eax,%eax
 8ac:	e9 1e fe ff ff       	jmp    6cf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6cf>
 8b1:	49 89 d4             	mov    %rdx,%r12
 8b4:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
 8ba:	0f 85 c1 fd ff ff    	jne    681 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x681>
 8c0:	e9 88 fe ff ff       	jmp    74d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74d>
 8c5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 8cc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8cc>
			8c8: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 8cc:	48 89 43 60          	mov    %rax,0x60(%rbx)
 8d0:	4c 39 fe             	cmp    %r15,%rsi
 8d3:	0f 83 29 ff ff ff    	jae    802 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x802>
 8d9:	4c 89 fa             	mov    %r15,%rdx
 8dc:	e9 59 ff ff ff       	jmp    83a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x83a>
 8e1:	31 c9                	xor    %ecx,%ecx
 8e3:	f3 0f bc ce          	tzcnt  %esi,%ecx
 8e7:	e9 a7 f8 ff ff       	jmp    193 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x193>
 8ec:	31 c9                	xor    %ecx,%ecx
 8ee:	f3 48 0f bc c8       	tzcnt  %rax,%rcx
 8f3:	e9 56 fc ff ff       	jmp    54e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54e>

0000000000000000 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	0f b6 06             	movzbl (%rsi),%eax
   7:	3c 0a                	cmp    $0xa,%al
   9:	0f 84 c1 00 00 00    	je     d0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd0>
   f:	3c 0d                	cmp    $0xd,%al
  11:	74 55                	je     68 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x68>
  13:	48 8b 47 18          	mov    0x18(%rdi),%rax
  17:	48 39 87 80 00 00 00 	cmp    %rax,0x80(%rdi)
  1e:	0f 84 f4 00 00 00    	je     118 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x118>
  24:	48 8b 47 08          	mov    0x8(%rdi),%rax
  28:	48 39 87 e8 00 00 00 	cmp    %rax,0xe8(%rdi)
  2f:	0f 84 bb 00 00 00    	je     f0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf0>
  35:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3c>
			38: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
  3c:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  43:	00
  44:	48 89 47 60          	mov    %rax,0x60(%rdi)
  48:	48 39 d6             	cmp    %rdx,%rsi
  4b:	0f 83 a9 00 00 00    	jae    fa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfa>
  51:	8b 87 10 01 00 00    	mov    0x110(%rdi),%eax
  57:	85 c0                	test   %eax,%eax
  59:	0f 85 9b 00 00 00    	jne    fa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfa>
  5f:	e9 00 00 00 00       	jmp    64 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x64>
			60: R_X86_64_PLT32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
  64:	0f 1f 40 00          	nopl   0x0(%rax)
  68:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 6f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6f>
			6b: R_X86_64_PC32	char const* stomptalk::parser::almost_done<3u>(char const*, char const*)-0x4
  6f:	48 8d 46 01          	lea    0x1(%rsi),%rax
  73:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  7a:	00
  7b:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
  7f:	48 39 d0             	cmp    %rdx,%rax
  82:	73 68                	jae    ec <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xec>
  84:	8b 8f 10 01 00 00    	mov    0x110(%rdi),%ecx
  8a:	85 c9                	test   %ecx,%ecx
  8c:	75 5e                	jne    ec <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xec>
  8e:	48 8d 4e 02          	lea    0x2(%rsi),%rcx
  92:	80 7e 01 0a          	cmpb   $0xa,0x1(%rsi)
  96:	0f 84 b4 00 00 00    	je     150 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x150>
  9c:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  a3:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
  aa:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
  b1:	00 00 00
  b4:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
  bb:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  c2:	48 89 c8             	mov    %rcx,%rax
  c5:	c3                   	ret
  c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  cd:	00 00 00
  d0:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # d7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd7>
			d3: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  d7:	48 8d 46 01          	lea    0x1(%rsi),%rax
  db:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  e2:	00
  e3:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
  e7:	48 39 d0             	cmp    %rdx,%rax
  ea:	72 14                	jb     100 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x100>
  ec:	c3                   	ret
  ed:	0f 1f 00             	nopl   (%rax)
  f0:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  f7:	00 00 00
  fa:	48 89 f0             	mov    %rsi,%rax
  fd:	c3                   	ret
  fe:	66 90                	xchg   %ax,%ax
 100:	8b b7 10 01 00 00    	mov    0x110(%rdi),%esi
 106:	85 f6                	test   %esi,%esi
 108:	75 e2                	jne    ec <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xec>
 10a:	48 89 c6             	mov    %rax,%rsi
 10d:	e9 00 00 00 00       	jmp    112 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x112>
			10e: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
 112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 118:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
 11f:	00 00 00
 122:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 129:	48 89 f0             	mov    %rsi,%rax
 12c:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 133:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 13a:	48 8d 46 01          	lea    0x1(%rsi),%rax
 13e:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 145:	c3                   	ret
 146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 14d:	00 00 00
 150:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 157 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x157>
			153: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
 157:	48 89 47 60          	mov    %rax,0x60(%rdi)
 15b:	48 39 d1             	cmp    %rdx,%rcx
 15e:	0f 83 5e ff ff ff    	jae    c2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc2>
 164:	48 89 ce             	mov    %rcx,%rsi
 167:	e9 00 00 00 00       	jmp    16c <.LC74+0x2>
			168: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4

0000000000000000 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 54                	push   %r12
   6:	49 89 fc             	mov    %rdi,%r12
   9:	55                   	push   %rbp
   a:	48 89 d5             	mov    %rdx,%rbp
   d:	53                   	push   %rbx
   e:	48 89 f3             	mov    %rsi,%rbx
  11:	48 39 d6             	cmp    %rdx,%rsi
  14:	72 13                	jb     29 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x29>
  16:	e9 b4 03 00 00       	jmp    3cf <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3cf>
  1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  20:	48 83 c3 01          	add    $0x1,%rbx
  24:	48 39 dd             	cmp    %rbx,%rbp
  27:	74 77                	je     a0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa0>
  29:	0f b6 03             	movzbl (%rbx),%eax
  2c:	83 e8 41             	sub    $0x41,%eax
  2f:	3c 19                	cmp    $0x19,%al
  31:	76 ed                	jbe    20 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20>
  33:	48 89 da             	mov    %rbx,%rdx
  36:	48 29 f2             	sub    %rsi,%rdx
  39:	4c 89 e7             	mov    %r12,%rdi
  3c:	e8 00 00 00 00       	call   41 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41>
			3d: R_X86_64_PLT32	stomptalk::parser::append(char const*, unsigned long)-0x4
  41:	89 c7                	mov    %eax,%edi
  43:	84 c0                	test   %al,%al
  45:	74 6e                	je     b5 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xb5>
  47:	48 39 dd             	cmp    %rbx,%rbp
  4a:	0f 84 6c 04 00 00    	je     4bc <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4bc>
  50:	0f b6 33             	movzbl (%rbx),%esi
  53:	48 8d 43 01          	lea    0x1(%rbx),%rax
  57:	40 80 fe 0a          	cmp    $0xa,%sil
  5b:	0f 95 c1             	setne  %cl
  5e:	40 80 fe 0d          	cmp    $0xd,%sil
  62:	0f 95 c2             	setne  %dl
  65:	20 d1                	and    %dl,%cl
  67:	74 5f                	je     c8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xc8>
  69:	49 2b 9c 24 20 01 00 	sub    0x120(%r12),%rbx
  70:	00
  71:	49 89 84 24 28 01 00 	mov    %rax,0x128(%r12)
  78:	00
  79:	48 ba 03 00 00 00 06 	movabs $0x600000003,%rdx
  80:	00 00 00
  83:	49 89 94 24 10 01 00 	mov    %rdx,0x110(%r12)
  8a:	00
  8b:	49 89 9c 24 18 01 00 	mov    %rbx,0x118(%r12)
  92:	00
  93:	5b                   	pop    %rbx
  94:	5d                   	pop    %rbp
  95:	41 5c                	pop    %r12
  97:	c3                   	ret
  98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  9f:	00
  a0:	48 89 ea             	mov    %rbp,%rdx
  a3:	4c 89 e7             	mov    %r12,%rdi
  a6:	48 29 f2             	sub    %rsi,%rdx
  a9:	e8 00 00 00 00       	call   ae <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xae>
			aa: R_X86_64_PLT32	stomptalk::parser::append(char const*, unsigned long)-0x4
  ae:	84 c0                	test   %al,%al
  b0:	48 89 e8             	mov    %rbp,%rax
  b3:	75 de                	jne    93 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x93>
  b5:	49 8b 84 24 28 01 00 	mov    0x128(%r12),%rax
  bc:	00
  bd:	5b                   	pop    %rbx
  be:	5d                   	pop    %rbp
  bf:	41 5c                	pop    %r12
  c1:	c3                   	ret
  c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  c8:	49 8b 94 24 d8 00 00 	mov    0xd8(%r12),%rdx
  cf:	00
  d0:	48 85 d2             	test   %rdx,%rdx
  d3:	0f 85 bf 00 00 00    	jne    198 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x198>
  d9:	49 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%r12)
  e0:	00 00 00 00 00
  e5:	41 c6 84 24 0d 01 00 	movb   $0x0,0x10d(%r12)
  ec:	00 00
  ee:	49 c7 84 24 a0 00 00 	movq   $0x0,0xa0(%r12)
  f5:	00 00 00 00 00
  fa:	49 c7 84 24 a8 00 00 	movq   $0x0,0xa8(%r12)
 101:	00 00 00 00 00
 106:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
 10d:	49 89 54 24 70       	mov    %rdx,0x70(%r12)
 112:	41 88 8c 24 0b 01 00 	mov    %cl,0x10b(%r12)
 119:	00
 11a:	40 80 fe 0a          	cmp    $0xa,%sil
 11e:	0f 84 cc 00 00 00    	je     1f0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1f0>
 124:	49 c7 44 24 68 00 00 	movq   $0x0,0x68(%r12)
 12b:	00 00
 12d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 134 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x134>
			130: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 134:	49 89 4c 24 60       	mov    %rcx,0x60(%r12)
 139:	48 39 e8             	cmp    %rbp,%rax
 13c:	0f 83 51 ff ff ff    	jae    93 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x93>
 142:	41 8b 94 24 10 01 00 	mov    0x110(%r12),%edx
 149:	00
 14a:	85 d2                	test   %edx,%edx
 14c:	0f 85 41 ff ff ff    	jne    93 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x93>
 152:	48 8d 73 02          	lea    0x2(%rbx),%rsi
 156:	80 7b 01 0a          	cmpb   $0xa,0x1(%rbx)
 15a:	0f 84 76 02 00 00    	je     3d6 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3d6>
 160:	49 2b 84 24 20 01 00 	sub    0x120(%r12),%rax
 167:	00
 168:	49 89 b4 24 28 01 00 	mov    %rsi,0x128(%r12)
 16f:	00
 170:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 177:	00 00 00
 17a:	49 89 94 24 10 01 00 	mov    %rdx,0x110(%r12)
 181:	00
 182:	49 89 84 24 18 01 00 	mov    %rax,0x118(%r12)
 189:	00
 18a:	48 89 f0             	mov    %rsi,%rax
 18d:	e9 01 ff ff ff       	jmp    93 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x93>
 192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 198:	4d 8b 84 24 d0 00 00 	mov    0xd0(%r12),%r8
 19f:	00
 1a0:	49 89 94 24 a8 00 00 	mov    %rdx,0xa8(%r12)
 1a7:	00
 1a8:	48 83 ea 03          	sub    $0x3,%rdx
 1ac:	49 c7 84 24 d0 00 00 	movq   $0x0,0xd0(%r12)
 1b3:	00 00 00 00 00
 1b8:	49 c7 84 24 d8 00 00 	movq   $0x0,0xd8(%r12)
 1bf:	00 00 00 00 00
 1c4:	41 c6 84 24 0d 01 00 	movb   $0x0,0x10d(%r12)
 1cb:	00 00
 1cd:	4d 89 84 24 a0 00 00 	mov    %r8,0xa0(%r12)
 1d4:	00
 1d5:	48 83 fa 08          	cmp    $0x8,%rdx
 1d9:	0f 87 27 ff ff ff    	ja     106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 1df:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 1e6 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1e6>
			1e2: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_-0x4
 1e6:	49 63 14 91          	movslq (%r9,%rdx,4),%rdx
 1ea:	4c 01 ca             	add    %r9,%rdx
 1ed:	3e ff e2             	notrack jmp *%rdx
 1f0:	49 c7 44 24 68 00 00 	movq   $0x0,0x68(%r12)
 1f7:	00 00
 1f9:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 200 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x200>
			1fc: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 200:	49 89 4c 24 60       	mov    %rcx,0x60(%r12)
 205:	48 39 e8             	cmp    %rbp,%rax
 208:	0f 83 85 fe ff ff    	jae    93 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x93>
 20e:	41 8b 8c 24 10 01 00 	mov    0x110(%r12),%ecx
 215:	00
 216:	85 c9                	test   %ecx,%ecx
 218:	0f 85 75 fe ff ff    	jne    93 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x93>
 21e:	48 89 ea             	mov    %rbp,%rdx
 221:	48 89 c6             	mov    %rax,%rsi
 224:	5b                   	pop    %rbx
 225:	4c 89 e7             	mov    %r12,%rdi
 228:	5d                   	pop    %rbp
 229:	41 5c                	pop    %r12
 22b:	e9 00 00 00 00       	jmp    230 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x230>
			22c: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 230:	48 ba 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rdx
 237:	4e 4e 45
 23a:	49 39 10             	cmp    %rdx,(%r8)
 23d:	0f 85 c3 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 243:	ba 07 00 00 00       	mov    $0x7,%edx
 248:	66 41 81 78 08 43 54 	cmpw   $0x5443,0x8(%r8)
 24f:	0f 85 b1 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 255:	e9 b3 fe ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 25a:	48 ba 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rdx
 261:	43 54 45
 264:	49 39 10             	cmp    %rdx,(%r8)
 267:	0f 84 86 01 00 00    	je     3f3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3f3>
 26d:	48 ba 53 55 42 53 43 	movabs $0x4249524353425553,%rdx
 274:	52 49 42
 277:	49 39 10             	cmp    %rdx,(%r8)
 27a:	0f 85 86 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 280:	ba 0e 00 00 00       	mov    $0xe,%edx
 285:	41 80 78 08 45       	cmpb   $0x45,0x8(%r8)
 28a:	0f 85 76 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 290:	e9 78 fe ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 295:	0f 1f 00             	nopl   (%rax)
 298:	48 ba 55 4e 53 55 42 	movabs $0x5243534255534e55,%rdx
 29f:	53 43 52
 2a2:	49 39 10             	cmp    %rdx,(%r8)
 2a5:	0f 85 5b fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 2ab:	ba 0f 00 00 00       	mov    $0xf,%edx
 2b0:	41 81 78 07 52 49 42 	cmpl   $0x45424952,0x7(%r8)
 2b7:	45
 2b8:	0f 85 48 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 2be:	e9 4a fe ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 2c3:	41 0f b6 10          	movzbl (%r8),%edx
 2c7:	83 fa 43             	cmp    $0x43,%edx
 2ca:	0f 84 5c 01 00 00    	je     42c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x42c>
 2d0:	83 fa 4d             	cmp    $0x4d,%edx
 2d3:	0f 84 9c 01 00 00    	je     475 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x475>
 2d9:	83 fa 52             	cmp    $0x52,%edx
 2dc:	0f 85 24 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 2e2:	41 81 38 52 45 43 45 	cmpl   $0x45434552,(%r8)
 2e9:	0f 85 17 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 2ef:	ba 0b 00 00 00       	mov    $0xb,%edx
 2f4:	41 81 78 03 45 49 50 	cmpl   $0x54504945,0x3(%r8)
 2fb:	54
 2fc:	0f 85 04 fe ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 302:	e9 06 fe ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 30e:	00 00
 310:	41 81 38 43 4f 4d 4d 	cmpl   $0x4d4d4f43,(%r8)
 317:	0f 85 e9 fd ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 31d:	ba 04 00 00 00       	mov    $0x4,%edx
 322:	66 41 81 78 04 49 54 	cmpw   $0x5449,0x4(%r8)
 329:	0f 85 d7 fd ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 32f:	e9 d9 fd ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 334:	66 41 81 38 41 43    	cmpw   $0x4341,(%r8)
 33a:	0f 85 c6 fd ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 340:	ba 02 00 00 00       	mov    $0x2,%edx
 345:	41 80 78 02 4b       	cmpb   $0x4b,0x2(%r8)
 34a:	0f 85 b6 fd ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 350:	e9 b8 fd ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 355:	41 0f b6 10          	movzbl (%r8),%edx
 359:	83 fa 41             	cmp    $0x41,%edx
 35c:	0f 84 a8 00 00 00    	je     40a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x40a>
 362:	83 fa 42             	cmp    $0x42,%edx
 365:	0f 84 e8 00 00 00    	je     453 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x453>
 36b:	83 fa 45             	cmp    $0x45,%edx
 36e:	0f 84 26 01 00 00    	je     49a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x49a>
 374:	83 fa 53             	cmp    $0x53,%edx
 377:	0f 85 89 fd ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 37d:	41 81 38 53 54 4f 4d 	cmpl   $0x4d4f5453,(%r8)
 384:	0f 85 7c fd ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 38a:	ba 0d 00 00 00       	mov    $0xd,%edx
 38f:	41 80 78 04 50       	cmpb   $0x50,0x4(%r8)
 394:	0f 85 6c fd ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 39a:	e9 6e fd ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 39f:	90                   	nop
 3a0:	41 8b 38             	mov    (%r8),%edi
 3a3:	ba 0a 00 00 00       	mov    $0xa,%edx
 3a8:	81 ff 4e 41 43 4b    	cmp    $0x4b43414e,%edi
 3ae:	0f 84 59 fd ff ff    	je     10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 3b4:	81 ff 53 45 4e 44    	cmp    $0x444e4553,%edi
 3ba:	ba 0c 00 00 00       	mov    $0xc,%edx
 3bf:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
 3c6:	48 0f 45 d7          	cmovne %rdi,%rdx
 3ca:	e9 3e fd ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 3cf:	31 d2                	xor    %edx,%edx
 3d1:	e9 63 fc ff ff       	jmp    39 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x39>
 3d6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3dd <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3dd>
			3d9: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 3dd:	49 89 44 24 60       	mov    %rax,0x60(%r12)
 3e2:	48 39 ee             	cmp    %rbp,%rsi
 3e5:	0f 83 9f fd ff ff    	jae    18a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x18a>
 3eb:	48 89 ea             	mov    %rbp,%rdx
 3ee:	e9 31 fe ff ff       	jmp    224 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x224>
 3f3:	41 80 78 08 44       	cmpb   $0x44,0x8(%r8)
 3f8:	0f 85 6f fe ff ff    	jne    26d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x26d>
 3fe:	89 f9                	mov    %edi,%ecx
 400:	ba 06 00 00 00       	mov    $0x6,%edx
 405:	e9 03 fd ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 40a:	41 81 38 41 42 4f 52 	cmpl   $0x524f4241,(%r8)
 411:	0f 85 ef fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 417:	ba 01 00 00 00       	mov    $0x1,%edx
 41c:	41 80 78 04 54       	cmpb   $0x54,0x4(%r8)
 421:	0f 85 df fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 427:	e9 e1 fc ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 42c:	41 81 38 43 4f 4e 4e 	cmpl   $0x4e4e4f43,(%r8)
 433:	0f 85 cd fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 439:	41 81 78 03 4e 45 43 	cmpl   $0x5443454e,0x3(%r8)
 440:	54
 441:	0f 85 bf fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 447:	89 f9                	mov    %edi,%ecx
 449:	ba 05 00 00 00       	mov    $0x5,%edx
 44e:	e9 ba fc ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 453:	41 81 38 42 45 47 49 	cmpl   $0x49474542,(%r8)
 45a:	0f 85 a6 fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 460:	ba 03 00 00 00       	mov    $0x3,%edx
 465:	41 80 78 04 4e       	cmpb   $0x4e,0x4(%r8)
 46a:	0f 85 96 fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 470:	e9 98 fc ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 475:	41 81 38 4d 45 53 53 	cmpl   $0x5353454d,(%r8)
 47c:	0f 85 84 fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 482:	ba 09 00 00 00       	mov    $0x9,%edx
 487:	41 81 78 03 53 41 47 	cmpl   $0x45474153,0x3(%r8)
 48e:	45
 48f:	0f 85 71 fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 495:	e9 73 fc ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 49a:	41 81 38 45 52 52 4f 	cmpl   $0x4f525245,(%r8)
 4a1:	0f 85 5f fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 4a7:	ba 08 00 00 00       	mov    $0x8,%edx
 4ac:	41 80 78 04 52       	cmpb   $0x52,0x4(%r8)
 4b1:	0f 85 4f fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 4b7:	e9 51 fc ff ff       	jmp    10d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10d>
 4bc:	48 89 e8             	mov    %rbp,%rax
 4bf:	e9 cf fb ff ff       	jmp    93 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x93>

0000000000000000 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 39 d6             	cmp    %rdx,%rsi
   7:	0f 83 1d 01 00 00    	jae    12a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x12a>
   d:	0f b6 06             	movzbl (%rsi),%eax
  10:	3c 0a                	cmp    $0xa,%al
  12:	0f 84 78 01 00 00    	je     190 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x190>
  18:	3c 0d                	cmp    $0xd,%al
  1a:	0f 84 10 01 00 00    	je     130 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x130>
  20:	83 e8 41             	sub    $0x41,%eax
  23:	3c 19                	cmp    $0x19,%al
  25:	0f 87 bd 00 00 00    	ja     e8 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xe8>
  2b:	48 8b 07             	mov    (%rdi),%rax
  2e:	48 39 87 e0 00 00 00 	cmp    %rax,0xe0(%rdi)
  35:	0f 84 e5 00 00 00    	je     120 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x120>
  3b:	31 c0                	xor    %eax,%eax
  3d:	66 0f ef c0          	pxor   %xmm0,%xmm0
  41:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
  48:	00 00 00 00
  4c:	8b 8f 10 01 00 00    	mov    0x110(%rdi),%ecx
  52:	66 89 87 0c 01 00 00 	mov    %ax,0x10c(%rdi)
  59:	48 8b 47 48          	mov    0x48(%rdi),%rax
  5d:	48 2b 47 40          	sub    0x40(%rdi),%rax
  61:	0f 11 47 70          	movups %xmm0,0x70(%rdi)
  65:	48 89 87 f8 00 00 00 	mov    %rax,0xf8(%rdi)
  6c:	48 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%rax
  73:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
  7a:	00 00 00 00
  7e:	0f 11 87 80 00 00 00 	movups %xmm0,0x80(%rdi)
  85:	0f 11 87 90 00 00 00 	movups %xmm0,0x90(%rdi)
  8c:	0f 11 87 a0 00 00 00 	movups %xmm0,0xa0(%rdi)
  93:	0f 11 87 b0 00 00 00 	movups %xmm0,0xb0(%rdi)
  9a:	f3 0f 6f 87 d0 00 00 	movdqu 0xd0(%rdi),%xmm0
  a1:	00
  a2:	48 89 87 f0 00 00 00 	mov    %rax,0xf0(%rdi)
  a9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xb0>
			ac: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
  b0:	c7 87 08 01 00 00 01 	movl   $0x1,0x108(%rdi)
  b7:	00 00 00
  ba:	48 c7 87 00 01 00 00 	movq   $0x0,0x100(%rdi)
  c1:	00 00 00 00
  c5:	48 89 47 60          	mov    %rax,0x60(%rdi)
  c9:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  d0:	00
  d1:	0f 11 87 c0 00 00 00 	movups %xmm0,0xc0(%rdi)
  d8:	85 c9                	test   %ecx,%ecx
  da:	75 4e                	jne    12a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x12a>
  dc:	e9 00 00 00 00       	jmp    e1 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xe1>
			dd: R_X86_64_PLT32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
  e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  e8:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
  ef:	00 00 00
  f2:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  f9:	48 89 f0             	mov    %rsi,%rax
  fc:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 103:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 10a:	48 8d 46 01          	lea    0x1(%rsi),%rax
 10e:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 115:	c3                   	ret
 116:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 11d:	00 00 00
 120:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
 127:	00 00 00
 12a:	48 89 f0             	mov    %rsi,%rax
 12d:	c3                   	ret
 12e:	66 90                	xchg   %ax,%ax
 130:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 137 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x137>
			133: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
 137:	48 8d 46 01          	lea    0x1(%rsi),%rax
 13b:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 142:	00
 143:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 147:	48 39 d0             	cmp    %rdx,%rax
 14a:	73 e1                	jae    12d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x12d>
 14c:	44 8b 87 10 01 00 00 	mov    0x110(%rdi),%r8d
 153:	45 85 c0             	test   %r8d,%r8d
 156:	75 d5                	jne    12d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x12d>
 158:	0f b6 4e 01          	movzbl 0x1(%rsi),%ecx
 15c:	48 83 c6 02          	add    $0x2,%rsi
 160:	80 f9 0a             	cmp    $0xa,%cl
 163:	74 43                	je     1a8 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1a8>
 165:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 16c:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 173:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 17a:	00 00 00
 17d:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
 184:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 18b:	eb 9d                	jmp    12a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x12a>
 18d:	0f 1f 00             	nopl   (%rax)
 190:	48 83 c6 01          	add    $0x1,%rsi
 194:	48 39 f2             	cmp    %rsi,%rdx
 197:	0f 85 70 fe ff ff    	jne    d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd>
 19d:	48 89 d0             	mov    %rdx,%rax
 1a0:	c3                   	ret
 1a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 1a8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1af <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1af>
			1ab: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 1af:	48 89 47 60          	mov    %rax,0x60(%rdi)
 1b3:	48 39 d6             	cmp    %rdx,%rsi
 1b6:	0f 82 51 fe ff ff    	jb     d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd>
 1bc:	e9 69 ff ff ff       	jmp    12a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x12a>

0000000000000000 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	80 3e 00             	cmpb   $0x0,(%rsi)
   7:	75 37                	jne    40 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x40>
   9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 10 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x10>
			c: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  10:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  17:	00
  18:	48 89 47 60          	mov    %rax,0x60(%rdi)
  1c:	48 39 d6             	cmp    %rdx,%rsi
  1f:	0f 83 bb 00 00 00    	jae    e0 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xe0>
  25:	8b 8f 10 01 00 00    	mov    0x110(%rdi),%ecx
  2b:	85 c9                	test   %ecx,%ecx
  2d:	0f 85 ad 00 00 00    	jne    e0 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xe0>
  33:	e9 00 00 00 00       	jmp    38 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x38>
			34: R_X86_64_PLT32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  3f:	00
  40:	53                   	push   %rbx
  41:	48 89 d0             	mov    %rdx,%rax
  44:	48 29 f0             	sub    %rsi,%rax
  47:	48 89 c3             	mov    %rax,%rbx
  4a:	48 83 ec 20          	sub    $0x20,%rsp
  4e:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  53:	48 89 f7             	mov    %rsi,%rdi
  56:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  5b:	48 89 c2             	mov    %rax,%rdx
  5e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  63:	31 f6                	xor    %esi,%esi
  65:	e8 00 00 00 00       	call   6a <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x6a>
			66: R_X86_64_PLT32	memchr-0x4
  6a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  6f:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  74:	48 85 c0             	test   %rax,%rax
  77:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  7c:	0f 84 9e 00 00 00    	je     120 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x120>
  82:	48 89 c6             	mov    %rax,%rsi
  85:	49 8b 50 20          	mov    0x20(%r8),%rdx
  89:	49 2b 90 90 00 00 00 	sub    0x90(%r8),%rdx
  90:	48 29 ce             	sub    %rcx,%rsi
  93:	48 39 f2             	cmp    %rsi,%rdx
  96:	72 50                	jb     e8 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xe8>
  98:	49 89 88 b8 00 00 00 	mov    %rcx,0xb8(%r8)
  9f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # a6 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xa6>
			a2: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  a6:	49 89 b0 98 00 00 00 	mov    %rsi,0x98(%r8)
  ad:	49 89 48 60          	mov    %rcx,0x60(%r8)
  b1:	49 c7 40 68 00 00 00 	movq   $0x0,0x68(%r8)
  b8:	00
  b9:	4c 39 c8             	cmp    %r9,%rax
  bc:	73 59                	jae    117 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x117>
  be:	41 8b 90 10 01 00 00 	mov    0x110(%r8),%edx
  c5:	85 d2                	test   %edx,%edx
  c7:	75 4e                	jne    117 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x117>
  c9:	48 83 c4 20          	add    $0x20,%rsp
  cd:	4c 89 ca             	mov    %r9,%rdx
  d0:	48 89 c6             	mov    %rax,%rsi
  d3:	4c 89 c7             	mov    %r8,%rdi
  d6:	5b                   	pop    %rbx
  d7:	e9 57 ff ff ff       	jmp    33 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x33>
  dc:	0f 1f 40 00          	nopl   0x0(%rax)
  e0:	48 89 f0             	mov    %rsi,%rax
  e3:	c3                   	ret
  e4:	0f 1f 40 00          	nopl   0x0(%rax)
  e8:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
  ef:	00 00 00
  f2:	49 89 80 10 01 00 00 	mov    %rax,0x110(%r8)
  f9:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
  fd:	49 2b 80 20 01 00 00 	sub    0x120(%r8),%rax
 104:	49 89 80 18 01 00 00 	mov    %rax,0x118(%r8)
 10b:	48 8d 44 11 01       	lea    0x1(%rcx,%rdx,1),%rax
 110:	49 89 80 28 01 00 00 	mov    %rax,0x128(%r8)
 117:	48 83 c4 20          	add    $0x20,%rsp
 11b:	5b                   	pop    %rbx
 11c:	c3                   	ret
 11d:	0f 1f 00             	nopl   (%rax)
 120:	49 8b 50 20          	mov    0x20(%r8),%rdx
 124:	49 2b 90 90 00 00 00 	sub    0x90(%r8),%rdx
 12b:	48 39 da             	cmp    %rbx,%rdx
 12e:	72 b8                	jb     e8 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xe8>
 130:	49 89 88 b8 00 00 00 	mov    %rcx,0xb8(%r8)
 137:	4c 89 c8             	mov    %r9,%rax
 13a:	49 89 98 98 00 00 00 	mov    %rbx,0x98(%r8)
 141:	eb d4                	jmp    117 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x117>
