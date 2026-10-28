0000000000000000 <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]>:
       0:	48 8b 47 10          	mov    0x10(%rdi),%rax
       4:	4c 8b 87 00 01 00 00 	mov    0x100(%rdi),%r8
       b:	48 89 c1             	mov    %rax,%rcx
       e:	4c 29 c1             	sub    %r8,%rcx
      11:	48 39 d1             	cmp    %rdx,%rcx
      14:	0f 82 96 00 00 00    	jb     b0 <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]+0xb0>
      1a:	48 8b 8f f8 00 00 00 	mov    0xf8(%rdi),%rcx
      21:	4c 01 c1             	add    %r8,%rcx
      24:	48 29 c8             	sub    %rcx,%rax
      27:	48 39 d0             	cmp    %rdx,%rax
      2a:	72 6c                	jb     98 <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]+0x98>
      2c:	49 01 d0             	add    %rdx,%r8
      2f:	48 89 f9             	mov    %rdi,%rcx
      32:	4c 89 87 00 01 00 00 	mov    %r8,0x100(%rdi)
      39:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
      40:	0f 84 a2 00 00 00    	je     e8 <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]+0xe8>
      46:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
      4a:	48 8b 41 50          	mov    0x50(%rcx),%rax
      4e:	48 29 f8             	sub    %rdi,%rax
      51:	48 39 d0             	cmp    %rdx,%rax
      54:	0f 82 b6 00 00 00    	jb     110 <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]+0x110>
      5a:	48 83 ec 18          	sub    $0x18,%rsp
      5e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
      63:	48 89 14 24          	mov    %rdx,(%rsp)
      67:	e8 00 00 00 00       	call   6c <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]+0x6c>
			68: R_X86_64_PLT32	memcpy-0x4
      6c:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
      71:	48 8b 14 24          	mov    (%rsp),%rdx
      75:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
      7c:	48 01 51 48          	add    %rdx,0x48(%rcx)
      80:	48 01 c2             	add    %rax,%rdx
      83:	b8 01 00 00 00       	mov    $0x1,%eax
      88:	48 89 91 d8 00 00 00 	mov    %rdx,0xd8(%rcx)
      8f:	48 83 c4 18          	add    $0x18,%rsp
      93:	c3                   	ret
      94:	0f 1f 40 00          	nopl   0x0(%rax)
      98:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
      9f:	00 00 00
      a2:	31 c0                	xor    %eax,%eax
      a4:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
      ab:	c3                   	ret
      ac:	0f 1f 40 00          	nopl   0x0(%rax)
      b0:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
      b7:	00 00 00
      ba:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
      c1:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
      c5:	48 8d 74 0e 01       	lea    0x1(%rsi,%rcx,1),%rsi
      ca:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
      d1:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
      d8:	31 c0                	xor    %eax,%eax
      da:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
      e1:	c3                   	ret
      e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      e8:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
      ef:	48 85 c0             	test   %rax,%rax
      f2:	75 07                	jne    fb <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]+0xfb>
      f4:	48 89 b7 d0 00 00 00 	mov    %rsi,0xd0(%rdi)
      fb:	48 01 c2             	add    %rax,%rdx
      fe:	b8 01 00 00 00       	mov    $0x1,%eax
     103:	48 89 91 d8 00 00 00 	mov    %rdx,0xd8(%rcx)
     10a:	c3                   	ret
     10b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     110:	48 8b 41 40          	mov    0x40(%rcx),%rax
     114:	48 89 41 48          	mov    %rax,0x48(%rcx)
     118:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
     11f:	eb da                	jmp    fb <stomptalk::parser::append(char const*, unsigned long) [clone .part.0]+0xfb>
     121:	90                   	nop
     122:	0f 1f 00             	nopl   (%rax)
     125:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     12c:	00 00 00 00

00000000000004f0 <stomptalk::parser::reserve(unsigned long, char const*)>:
     4f0:	f3 0f 1e fa          	endbr64
     4f4:	48 8b 47 10          	mov    0x10(%rdi),%rax
     4f8:	48 89 d1             	mov    %rdx,%rcx
     4fb:	48 8b 97 00 01 00 00 	mov    0x100(%rdi),%rdx
     502:	49 89 c0             	mov    %rax,%r8
     505:	49 29 d0             	sub    %rdx,%r8
     508:	49 39 f0             	cmp    %rsi,%r8
     50b:	72 3b                	jb     548 <stomptalk::parser::reserve(unsigned long, char const*)+0x58>
     50d:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
     514:	49 01 d0             	add    %rdx,%r8
     517:	4c 29 c0             	sub    %r8,%rax
     51a:	48 39 f0             	cmp    %rsi,%rax
     51d:	72 11                	jb     530 <stomptalk::parser::reserve(unsigned long, char const*)+0x40>
     51f:	48 01 f2             	add    %rsi,%rdx
     522:	b8 01 00 00 00       	mov    $0x1,%eax
     527:	48 89 97 00 01 00 00 	mov    %rdx,0x100(%rdi)
     52e:	c3                   	ret
     52f:	90                   	nop
     530:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     537:	00 00 00
     53a:	31 c0                	xor    %eax,%eax
     53c:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     543:	c3                   	ret
     544:	0f 1f 40 00          	nopl   0x0(%rax)
     548:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     54f:	00 00 00
     552:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     559:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
     55d:	4a 8d 4c 01 01       	lea    0x1(%rcx,%r8,1),%rcx
     562:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     569:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     570:	31 c0                	xor    %eax,%eax
     572:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     579:	c3                   	ret
     57a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000620 <stomptalk::parser::own_metadata()>:
     620:	f3 0f 1e fa          	endbr64
     624:	48 83 ec 28          	sub    $0x28,%rsp
     628:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
     62d:	48 8b af a8 00 00 00 	mov    0xa8(%rdi),%rbp
     634:	48 89 1c 24          	mov    %rbx,(%rsp)
     638:	48 89 fb             	mov    %rdi,%rbx
     63b:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
     640:	48 85 ed             	test   %rbp,%rbp
     643:	0f 84 d7 01 00 00    	je     820 <stomptalk::parser::own_metadata()+0x200>
     649:	48 8b b7 a0 00 00 00 	mov    0xa0(%rdi),%rsi
     650:	48 8b 47 40          	mov    0x40(%rdi),%rax
     654:	48 89 f2             	mov    %rsi,%rdx
     657:	48 29 c2             	sub    %rax,%rdx
     65a:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
     65e:	72 30                	jb     690 <stomptalk::parser::own_metadata()+0x70>
     660:	48 8b 4f 48          	mov    0x48(%rdi),%rcx
     664:	48 8b 57 50          	mov    0x50(%rdi),%rdx
     668:	48 29 ca             	sub    %rcx,%rdx
     66b:	48 39 ea             	cmp    %rbp,%rdx
     66e:	72 15                	jb     685 <stomptalk::parser::own_metadata()+0x65>
     670:	48 89 cf             	mov    %rcx,%rdi
     673:	48 89 ea             	mov    %rbp,%rdx
     676:	e8 00 00 00 00       	call   67b <stomptalk::parser::own_metadata()+0x5b>
			677: R_X86_64_PLT32	memcpy-0x4
     67b:	48 89 c1             	mov    %rax,%rcx
     67e:	48 8b 43 48          	mov    0x48(%rbx),%rax
     682:	48 01 e8             	add    %rbp,%rax
     685:	48 89 43 48          	mov    %rax,0x48(%rbx)
     689:	48 89 8b a0 00 00 00 	mov    %rcx,0xa0(%rbx)
     690:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     697:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     69e:	0f 83 04 01 00 00    	jae    7a8 <stomptalk::parser::own_metadata()+0x188>
     6a4:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
     6a9:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
     6ae:	e9 aa 00 00 00       	jmp    75d <stomptalk::parser::own_metadata()+0x13d>
     6b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     6b8:	48 8b 75 00          	mov    0x0(%rbp),%rsi
     6bc:	48 8b 43 40          	mov    0x40(%rbx),%rax
     6c0:	48 89 f2             	mov    %rsi,%rdx
     6c3:	48 29 c2             	sub    %rax,%rdx
     6c6:	48 3b 53 10          	cmp    0x10(%rbx),%rdx
     6ca:	72 3a                	jb     706 <stomptalk::parser::own_metadata()+0xe6>
     6cc:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     6d0:	48 8b 53 50          	mov    0x50(%rbx),%rdx
     6d4:	48 89 ef             	mov    %rbp,%rdi
     6d7:	48 29 ca             	sub    %rcx,%rdx
     6da:	4c 39 ea             	cmp    %r13,%rdx
     6dd:	72 1c                	jb     6fb <stomptalk::parser::own_metadata()+0xdb>
     6df:	48 89 cf             	mov    %rcx,%rdi
     6e2:	4c 89 ea             	mov    %r13,%rdx
     6e5:	e8 00 00 00 00       	call   6ea <stomptalk::parser::own_metadata()+0xca>
			6e6: R_X86_64_PLT32	memcpy-0x4
     6ea:	48 8b 7b 38          	mov    0x38(%rbx),%rdi
     6ee:	48 89 c1             	mov    %rax,%rcx
     6f1:	48 8b 43 48          	mov    0x48(%rbx),%rax
     6f5:	4c 01 f7             	add    %r14,%rdi
     6f8:	4c 01 e8             	add    %r13,%rax
     6fb:	48 89 43 48          	mov    %rax,0x48(%rbx)
     6ff:	48 89 4d 00          	mov    %rcx,0x0(%rbp)
     703:	48 89 fd             	mov    %rdi,%rbp
     706:	4c 8b 6d 18          	mov    0x18(%rbp),%r13
     70a:	4d 85 ed             	test   %r13,%r13
     70d:	74 7a                	je     789 <stomptalk::parser::own_metadata()+0x169>
     70f:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     713:	48 8b 43 40          	mov    0x40(%rbx),%rax
     717:	48 89 f2             	mov    %rsi,%rdx
     71a:	48 29 c2             	sub    %rax,%rdx
     71d:	48 3b 53 10          	cmp    0x10(%rbx),%rdx
     721:	72 2d                	jb     750 <stomptalk::parser::own_metadata()+0x130>
     723:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     727:	48 8b 53 50          	mov    0x50(%rbx),%rdx
     72b:	48 29 ca             	sub    %rcx,%rdx
     72e:	4c 39 ea             	cmp    %r13,%rdx
     731:	72 15                	jb     748 <stomptalk::parser::own_metadata()+0x128>
     733:	48 89 cf             	mov    %rcx,%rdi
     736:	4c 89 ea             	mov    %r13,%rdx
     739:	e8 00 00 00 00       	call   73e <stomptalk::parser::own_metadata()+0x11e>
			73a: R_X86_64_PLT32	memcpy-0x4
     73e:	48 89 c1             	mov    %rax,%rcx
     741:	48 8b 43 48          	mov    0x48(%rbx),%rax
     745:	4c 01 e8             	add    %r13,%rax
     748:	48 89 43 48          	mov    %rax,0x48(%rbx)
     74c:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
     750:	49 83 c4 01          	add    $0x1,%r12
     754:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     75b:	73 41                	jae    79e <stomptalk::parser::own_metadata()+0x17e>
     75d:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     761:	4d 89 e6             	mov    %r12,%r14
     764:	49 c1 e6 05          	shl    $0x5,%r14
     768:	4c 01 f5             	add    %r14,%rbp
     76b:	4c 8b 6d 08          	mov    0x8(%rbp),%r13
     76f:	4d 85 ed             	test   %r13,%r13
     772:	0f 85 40 ff ff ff    	jne    6b8 <stomptalk::parser::own_metadata()+0x98>
     778:	4c 8b 6d 18          	mov    0x18(%rbp),%r13
     77c:	48 c7 45 00 00 00 00 	movq   $0x0,0x0(%rbp)
     783:	00
     784:	4d 85 ed             	test   %r13,%r13
     787:	75 86                	jne    70f <stomptalk::parser::own_metadata()+0xef>
     789:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
     790:	00
     791:	49 83 c4 01          	add    $0x1,%r12
     795:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     79c:	72 bf                	jb     75d <stomptalk::parser::own_metadata()+0x13d>
     79e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
     7a3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
     7a8:	48 8b ab c8 00 00 00 	mov    0xc8(%rbx),%rbp
     7af:	48 85 ed             	test   %rbp,%rbp
     7b2:	74 5c                	je     810 <stomptalk::parser::own_metadata()+0x1f0>
     7b4:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     7bb:	48 8b 43 40          	mov    0x40(%rbx),%rax
     7bf:	48 89 f2             	mov    %rsi,%rdx
     7c2:	48 29 c2             	sub    %rax,%rdx
     7c5:	48 3b 53 10          	cmp    0x10(%rbx),%rdx
     7c9:	72 30                	jb     7fb <stomptalk::parser::own_metadata()+0x1db>
     7cb:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     7cf:	48 8b 53 50          	mov    0x50(%rbx),%rdx
     7d3:	48 29 ca             	sub    %rcx,%rdx
     7d6:	48 39 ea             	cmp    %rbp,%rdx
     7d9:	72 15                	jb     7f0 <stomptalk::parser::own_metadata()+0x1d0>
     7db:	48 89 cf             	mov    %rcx,%rdi
     7de:	48 89 ea             	mov    %rbp,%rdx
     7e1:	e8 00 00 00 00       	call   7e6 <stomptalk::parser::own_metadata()+0x1c6>
			7e2: R_X86_64_PLT32	memcpy-0x4
     7e6:	48 89 c1             	mov    %rax,%rcx
     7e9:	48 8b 43 48          	mov    0x48(%rbx),%rax
     7ed:	48 01 e8             	add    %rbp,%rax
     7f0:	48 89 43 48          	mov    %rax,0x48(%rbx)
     7f4:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
     7fb:	48 8b 1c 24          	mov    (%rsp),%rbx
     7ff:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
     804:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
     809:	48 83 c4 28          	add    $0x28,%rsp
     80d:	c3                   	ret
     80e:	66 90                	xchg   %ax,%ax
     810:	48 c7 83 c0 00 00 00 	movq   $0x0,0xc0(%rbx)
     817:	00 00 00 00
     81b:	eb de                	jmp    7fb <stomptalk::parser::own_metadata()+0x1db>
     81d:	0f 1f 00             	nopl   (%rax)
     820:	48 c7 87 a0 00 00 00 	movq   $0x0,0xa0(%rdi)
     827:	00 00 00 00
     82b:	e9 60 fe ff ff       	jmp    690 <stomptalk::parser::own_metadata()+0x70>

0000000000000830 <stomptalk::parser::own_token()>:
     830:	f3 0f 1e fa          	endbr64
     834:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     83b:	74 03                	je     840 <stomptalk::parser::own_token()+0x10>
     83d:	c3                   	ret
     83e:	66 90                	xchg   %ax,%ax
     840:	53                   	push   %rbx
     841:	48 89 fb             	mov    %rdi,%rbx
     844:	48 83 ec 10          	sub    $0x10,%rsp
     848:	e8 00 00 00 00       	call   84d <stomptalk::parser::own_token()+0x1d>
			849: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     84d:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     851:	48 8b 43 50          	mov    0x50(%rbx),%rax
     855:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
     85c:	48 29 c8             	sub    %rcx,%rax
     85f:	48 39 d0             	cmp    %rdx,%rax
     862:	72 2c                	jb     890 <stomptalk::parser::own_token()+0x60>
     864:	48 89 c8             	mov    %rcx,%rax
     867:	48 85 d2             	test   %rdx,%rdx
     86a:	75 34                	jne    8a0 <stomptalk::parser::own_token()+0x70>
     86c:	48 01 d0             	add    %rdx,%rax
     86f:	48 89 43 48          	mov    %rax,0x48(%rbx)
     873:	48 89 8b d0 00 00 00 	mov    %rcx,0xd0(%rbx)
     87a:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     881:	48 83 c4 10          	add    $0x10,%rsp
     885:	5b                   	pop    %rbx
     886:	c3                   	ret
     887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     88e:	00 00
     890:	48 8b 43 40          	mov    0x40(%rbx),%rax
     894:	eb d9                	jmp    86f <stomptalk::parser::own_token()+0x3f>
     896:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     89d:	00 00 00
     8a0:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     8a7:	48 89 cf             	mov    %rcx,%rdi
     8aa:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
     8af:	e8 00 00 00 00       	call   8b4 <stomptalk::parser::own_token()+0x84>
			8b0: R_X86_64_PLT32	memcpy-0x4
     8b4:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
     8b9:	48 89 c1             	mov    %rax,%rcx
     8bc:	48 8b 43 48          	mov    0x48(%rbx),%rax
     8c0:	eb aa                	jmp    86c <stomptalk::parser::own_token()+0x3c>
     8c2:	0f 1f 00             	nopl   (%rax)
     8c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     8cc:	00 00 00 00

00000000000008d0 <stomptalk::parser::append(char const*, unsigned long)>:
     8d0:	f3 0f 1e fa          	endbr64
     8d4:	48 85 d2             	test   %rdx,%rdx
     8d7:	74 5f                	je     938 <stomptalk::parser::append(char const*, unsigned long)+0x68>
     8d9:	48 8b 47 10          	mov    0x10(%rdi),%rax
     8dd:	4c 8b 87 00 01 00 00 	mov    0x100(%rdi),%r8
     8e4:	48 89 c1             	mov    %rax,%rcx
     8e7:	4c 29 c1             	sub    %r8,%rcx
     8ea:	48 39 d1             	cmp    %rdx,%rcx
     8ed:	72 51                	jb     940 <stomptalk::parser::append(char const*, unsigned long)+0x70>
     8ef:	48 8b 8f f8 00 00 00 	mov    0xf8(%rdi),%rcx
     8f6:	4c 01 c1             	add    %r8,%rcx
     8f9:	48 29 c8             	sub    %rcx,%rax
     8fc:	48 39 d0             	cmp    %rdx,%rax
     8ff:	0f 82 c3 00 00 00    	jb     9c8 <stomptalk::parser::append(char const*, unsigned long)+0xf8>
     905:	49 01 d0             	add    %rdx,%r8
     908:	48 89 f9             	mov    %rdi,%rcx
     90b:	4c 89 87 00 01 00 00 	mov    %r8,0x100(%rdi)
     912:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     919:	75 5d                	jne    978 <stomptalk::parser::append(char const*, unsigned long)+0xa8>
     91b:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
     922:	48 85 c0             	test   %rax,%rax
     925:	75 07                	jne    92e <stomptalk::parser::append(char const*, unsigned long)+0x5e>
     927:	48 89 b7 d0 00 00 00 	mov    %rsi,0xd0(%rdi)
     92e:	48 01 d0             	add    %rdx,%rax
     931:	48 89 81 d8 00 00 00 	mov    %rax,0xd8(%rcx)
     938:	b8 01 00 00 00       	mov    $0x1,%eax
     93d:	c3                   	ret
     93e:	66 90                	xchg   %ax,%ax
     940:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     947:	00 00 00
     94a:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     951:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
     955:	48 8d 74 0e 01       	lea    0x1(%rsi,%rcx,1),%rsi
     95a:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     961:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     968:	31 c0                	xor    %eax,%eax
     96a:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     971:	c3                   	ret
     972:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     978:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
     97c:	48 8b 41 50          	mov    0x50(%rcx),%rax
     980:	48 29 f8             	sub    %rdi,%rax
     983:	48 39 d0             	cmp    %rdx,%rax
     986:	72 58                	jb     9e0 <stomptalk::parser::append(char const*, unsigned long)+0x110>
     988:	48 83 ec 18          	sub    $0x18,%rsp
     98c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
     991:	48 89 14 24          	mov    %rdx,(%rsp)
     995:	e8 00 00 00 00       	call   99a <stomptalk::parser::append(char const*, unsigned long)+0xca>
			996: R_X86_64_PLT32	memcpy-0x4
     99a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
     99f:	48 8b 14 24          	mov    (%rsp),%rdx
     9a3:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
     9aa:	48 01 51 48          	add    %rdx,0x48(%rcx)
     9ae:	48 01 d0             	add    %rdx,%rax
     9b1:	48 89 81 d8 00 00 00 	mov    %rax,0xd8(%rcx)
     9b8:	b8 01 00 00 00       	mov    $0x1,%eax
     9bd:	48 83 c4 18          	add    $0x18,%rsp
     9c1:	c3                   	ret
     9c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     9c8:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     9cf:	00 00 00
     9d2:	31 c0                	xor    %eax,%eax
     9d4:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     9db:	c3                   	ret
     9dc:	0f 1f 40 00          	nopl   0x0(%rax)
     9e0:	48 8b 41 40          	mov    0x40(%rcx),%rax
     9e4:	48 89 41 48          	mov    %rax,0x48(%rcx)
     9e8:	48 8b 81 d8 00 00 00 	mov    0xd8(%rcx),%rax
     9ef:	e9 3a ff ff ff       	jmp    92e <stomptalk::parser::append(char const*, unsigned long)+0x5e>
     9f4:	90                   	nop
     9f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     9fc:	00 00 00 00

0000000000000a00 <stomptalk::parser::append(char, char const*)>:
     a00:	f3 0f 1e fa          	endbr64
     a04:	48 89 d1             	mov    %rdx,%rcx
     a07:	48 8b 47 10          	mov    0x10(%rdi),%rax
     a0b:	48 8b 97 00 01 00 00 	mov    0x100(%rdi),%rdx
     a12:	48 39 d0             	cmp    %rdx,%rax
     a15:	0f 84 c5 00 00 00    	je     ae0 <stomptalk::parser::append(char, char const*)+0xe0>
     a1b:	48 2b 87 f8 00 00 00 	sub    0xf8(%rdi),%rax
     a22:	48 39 c2             	cmp    %rax,%rdx
     a25:	0f 84 9d 00 00 00    	je     ac8 <stomptalk::parser::append(char, char const*)+0xc8>
     a2b:	48 83 c2 01          	add    $0x1,%rdx
     a2f:	48 89 f9             	mov    %rdi,%rcx
     a32:	48 89 97 00 01 00 00 	mov    %rdx,0x100(%rdi)
     a39:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     a40:	0f 85 ca 00 00 00    	jne    b10 <stomptalk::parser::append(char, char const*)+0x110>
     a46:	48 83 ec 28          	sub    $0x28,%rsp
     a4a:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     a4f:	40 88 74 24 10       	mov    %sil,0x10(%rsp)
     a54:	e8 00 00 00 00       	call   a59 <stomptalk::parser::append(char, char const*)+0x59>
			a55: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     a59:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
     a5e:	44 0f b6 44 24 10    	movzbl 0x10(%rsp),%r8d
     a64:	48 8b 51 50          	mov    0x50(%rcx),%rdx
     a68:	48 8b 79 48          	mov    0x48(%rcx),%rdi
     a6c:	4c 8b 89 d8 00 00 00 	mov    0xd8(%rcx),%r9
     a73:	48 89 d0             	mov    %rdx,%rax
     a76:	48 29 f8             	sub    %rdi,%rax
     a79:	4c 39 c8             	cmp    %r9,%rax
     a7c:	0f 82 c6 00 00 00    	jb     b48 <stomptalk::parser::append(char, char const*)+0x148>
     a82:	48 89 f8             	mov    %rdi,%rax
     a85:	4d 85 c9             	test   %r9,%r9
     a88:	0f 85 e2 00 00 00    	jne    b70 <stomptalk::parser::append(char, char const*)+0x170>
     a8e:	4c 01 c8             	add    %r9,%rax
     a91:	48 89 b9 d0 00 00 00 	mov    %rdi,0xd0(%rcx)
     a98:	c6 81 0d 01 00 00 01 	movb   $0x1,0x10d(%rcx)
     a9f:	48 39 d0             	cmp    %rdx,%rax
     aa2:	0f 82 b0 00 00 00    	jb     b58 <stomptalk::parser::append(char, char const*)+0x158>
     aa8:	48 8b 41 40          	mov    0x40(%rcx),%rax
     aac:	48 89 41 48          	mov    %rax,0x48(%rcx)
     ab0:	48 83 81 d8 00 00 00 	addq   $0x1,0xd8(%rcx)
     ab7:	01
     ab8:	b8 01 00 00 00       	mov    $0x1,%eax
     abd:	48 83 c4 28          	add    $0x28,%rsp
     ac1:	c3                   	ret
     ac2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     ac8:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     acf:	00 00 00
     ad2:	31 c0                	xor    %eax,%eax
     ad4:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     adb:	c3                   	ret
     adc:	0f 1f 40 00          	nopl   0x0(%rax)
     ae0:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     ae7:	00 00 00
     aea:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     af1:	48 89 c8             	mov    %rcx,%rax
     af4:	48 83 c1 01          	add    $0x1,%rcx
     af8:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     aff:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     b06:	31 c0                	xor    %eax,%eax
     b08:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
     b0f:	c3                   	ret
     b10:	48 8b 47 48          	mov    0x48(%rdi),%rax
     b14:	48 8b 57 50          	mov    0x50(%rdi),%rdx
     b18:	48 39 d0             	cmp    %rdx,%rax
     b1b:	72 1b                	jb     b38 <stomptalk::parser::append(char, char const*)+0x138>
     b1d:	48 8b 47 40          	mov    0x40(%rdi),%rax
     b21:	48 89 47 48          	mov    %rax,0x48(%rdi)
     b25:	48 83 81 d8 00 00 00 	addq   $0x1,0xd8(%rcx)
     b2c:	01
     b2d:	b8 01 00 00 00       	mov    $0x1,%eax
     b32:	c3                   	ret
     b33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     b38:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b3c:	48 89 57 48          	mov    %rdx,0x48(%rdi)
     b40:	40 88 30             	mov    %sil,(%rax)
     b43:	eb e0                	jmp    b25 <stomptalk::parser::append(char, char const*)+0x125>
     b45:	0f 1f 00             	nopl   (%rax)
     b48:	48 8b 41 40          	mov    0x40(%rcx),%rax
     b4c:	e9 40 ff ff ff       	jmp    a91 <stomptalk::parser::append(char, char const*)+0x91>
     b51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     b58:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b5c:	48 89 51 48          	mov    %rdx,0x48(%rcx)
     b60:	44 88 00             	mov    %r8b,(%rax)
     b63:	e9 48 ff ff ff       	jmp    ab0 <stomptalk::parser::append(char, char const*)+0xb0>
     b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     b6f:	00
     b70:	48 8b b1 d0 00 00 00 	mov    0xd0(%rcx),%rsi
     b77:	4c 89 ca             	mov    %r9,%rdx
     b7a:	44 88 44 24 1f       	mov    %r8b,0x1f(%rsp)
     b7f:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
     b84:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
     b89:	e8 00 00 00 00       	call   b8e <stomptalk::parser::append(char, char const*)+0x18e>
			b8a: R_X86_64_PLT32	memcpy-0x4
     b8e:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     b93:	44 0f b6 44 24 1f    	movzbl 0x1f(%rsp),%r8d
     b99:	48 89 c7             	mov    %rax,%rdi
     b9c:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
     ba1:	48 8b 41 48          	mov    0x48(%rcx),%rax
     ba5:	48 8b 51 50          	mov    0x50(%rcx),%rdx
     ba9:	e9 e0 fe ff ff       	jmp    a8e <stomptalk::parser::append(char, char const*)+0x8e>
     bae:	66 90                	xchg   %ax,%ax

0000000000000bb0 <stomptalk::parser::finish_token()>:
     bb0:	f3 0f 1e fa          	endbr64
     bb4:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
     bbb:	31 d2                	xor    %edx,%edx
     bbd:	48 85 c0             	test   %rax,%rax
     bc0:	74 07                	je     bc9 <stomptalk::parser::finish_token()+0x19>
     bc2:	48 8b 97 d0 00 00 00 	mov    0xd0(%rdi),%rdx
     bc9:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
     bd0:	00 00 00 00
     bd4:	48 92                	xchg   %rax,%rdx
     bd6:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
     bdd:	00 00 00 00
     be1:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     be8:	c3                   	ret
     be9:	90                   	nop
     bea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000f10 <stomptalk::parser::finish_value(char const*)>:
     f10:	f3 0f 1e fa          	endbr64
     f14:	48 83 ec 30          	sub    $0x30,%rsp
     f18:	48 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%rax
     f1f:	0f b6 8f 0c 01 00 00 	movzbl 0x10c(%rdi),%ecx
     f26:	48 85 c0             	test   %rax,%rax
     f29:	0f 85 89 00 00 00    	jne    fb8 <stomptalk::parser::finish_value(char const*)+0xa8>
     f2f:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
     f36:	00 00 00 00
     f3a:	31 d2                	xor    %edx,%edx
     f3c:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     f43:	84 c9                	test   %cl,%cl
     f45:	0f 85 ce 00 00 00    	jne    1019 <stomptalk::parser::finish_value(char const*)+0x109>
     f4b:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
     f52:	4c 8b 87 c0 00 00 00 	mov    0xc0(%rdi),%r8
     f59:	48 8d 71 01          	lea    0x1(%rcx),%rsi
     f5d:	48 c1 e1 05          	shl    $0x5,%rcx
     f61:	48 03 4f 38          	add    0x38(%rdi),%rcx
     f65:	48 89 b7 e8 00 00 00 	mov    %rsi,0xe8(%rdi)
     f6c:	48 8b b7 c8 00 00 00 	mov    0xc8(%rdi),%rsi
     f73:	48 89 41 18          	mov    %rax,0x18(%rcx)
     f77:	b8 01 00 00 00       	mov    $0x1,%eax
     f7c:	4c 89 01             	mov    %r8,(%rcx)
     f7f:	48 89 71 08          	mov    %rsi,0x8(%rcx)
     f83:	48 89 51 10          	mov    %rdx,0x10(%rcx)
     f87:	48 83 87 80 00 00 00 	addq   $0x1,0x80(%rdi)
     f8e:	01
     f8f:	48 c7 87 c0 00 00 00 	movq   $0x0,0xc0(%rdi)
     f96:	00 00 00 00
     f9a:	48 c7 87 c8 00 00 00 	movq   $0x0,0xc8(%rdi)
     fa1:	00 00 00 00
     fa5:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
     fac:	48 83 c4 30          	add    $0x30,%rsp
     fb0:	c3                   	ret
     fb1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     fb8:	48 8b 97 d0 00 00 00 	mov    0xd0(%rdi),%rdx
     fbf:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     fc6:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
     fcd:	00 00 00 00
     fd1:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
     fd8:	00 00 00 00
     fdc:	84 c9                	test   %cl,%cl
     fde:	0f 84 67 ff ff ff    	je     f4b <stomptalk::parser::finish_value(char const*)+0x3b>
     fe4:	4c 89 64 24 10       	mov    %r12,0x10(%rsp)
     fe9:	48 83 f8 14          	cmp    $0x14,%rax
     fed:	0f 86 96 04 00 00    	jbe    1489 <stomptalk::parser::finish_value(char const*)+0x579>
     ff3:	48 89 c1             	mov    %rax,%rcx
     ff6:	49 89 d0             	mov    %rdx,%r8
     ff9:	eb 13                	jmp    100e <stomptalk::parser::finish_value(char const*)+0xfe>
     ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1000:	48 83 e9 01          	sub    $0x1,%rcx
    1004:	49 83 c0 01          	add    $0x1,%r8
    1008:	48 83 f9 14          	cmp    $0x14,%rcx
    100c:	74 42                	je     1050 <stomptalk::parser::finish_value(char const*)+0x140>
    100e:	41 80 38 30          	cmpb   $0x30,(%r8)
    1012:	74 ec                	je     1000 <stomptalk::parser::finish_value(char const*)+0xf0>
    1014:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1019:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
    1020:	00 00 00
    1023:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
    102a:	48 89 f0             	mov    %rsi,%rax
    102d:	48 83 c6 01          	add    $0x1,%rsi
    1031:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
    1038:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
    103f:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
    1046:	31 c0                	xor    %eax,%eax
    1048:	48 83 c4 30          	add    $0x30,%rsp
    104c:	c3                   	ret
    104d:	0f 1f 00             	nopl   (%rax)
    1050:	41 0f b6 08          	movzbl (%r8),%ecx
    1054:	83 e9 30             	sub    $0x30,%ecx
    1057:	83 f9 09             	cmp    $0x9,%ecx
    105a:	0f 87 d1 03 00 00    	ja     1431 <stomptalk::parser::finish_value(char const*)+0x521>
    1060:	41 89 cc             	mov    %ecx,%r12d
    1063:	45 0f b6 48 01       	movzbl 0x1(%r8),%r9d
    1068:	41 83 e9 30          	sub    $0x30,%r9d
    106c:	41 83 f9 09          	cmp    $0x9,%r9d
    1070:	0f 87 09 04 00 00    	ja     147f <stomptalk::parser::finish_value(char const*)+0x56f>
    1076:	4b 8d 0c a4          	lea    (%r12,%r12,4),%rcx
    107a:	4d 8d 24 49          	lea    (%r9,%rcx,2),%r12
    107e:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    1084:	4b 8d 0c 08          	lea    (%r8,%r9,1),%rcx
    1088:	4c 0f be 09          	movsbq (%rcx),%r9
    108c:	49 83 e9 30          	sub    $0x30,%r9
    1090:	49 83 f9 09          	cmp    $0x9,%r9
    1094:	0f 87 bd 18 00 00    	ja     2957 <stomptalk::parser::finish_value(char const*)+0x1a47>
    109a:	48 89 1c 24          	mov    %rbx,(%rsp)
    109e:	4c 0f be 41 01       	movsbq 0x1(%rcx),%r8
    10a3:	49 8d 58 d0          	lea    -0x30(%r8),%rbx
    10a7:	48 83 fb 09          	cmp    $0x9,%rbx
    10ab:	0f 87 b0 18 00 00    	ja     2961 <stomptalk::parser::finish_value(char const*)+0x1a51>
    10b1:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
    10b6:	4c 0f be 41 02       	movsbq 0x2(%rcx),%r8
    10bb:	4d 8d 70 d0          	lea    -0x30(%r8),%r14
    10bf:	49 83 fe 09          	cmp    $0x9,%r14
    10c3:	0f 87 b4 18 00 00    	ja     297d <stomptalk::parser::finish_value(char const*)+0x1a6d>
    10c9:	4c 0f be 51 03       	movsbq 0x3(%rcx),%r10
    10ce:	49 83 ea 30          	sub    $0x30,%r10
    10d2:	49 83 fa 09          	cmp    $0x9,%r10
    10d6:	0f 87 cc 18 00 00    	ja     29a8 <stomptalk::parser::finish_value(char const*)+0x1a98>
    10dc:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    10e1:	4c 0f be 41 04       	movsbq 0x4(%rcx),%r8
    10e6:	4d 8d 78 d0          	lea    -0x30(%r8),%r15
    10ea:	49 83 ff 09          	cmp    $0x9,%r15
    10ee:	0f 87 9c 18 00 00    	ja     2990 <stomptalk::parser::finish_value(char const*)+0x1a80>
    10f4:	4c 0f be 59 05       	movsbq 0x5(%rcx),%r11
    10f9:	49 83 eb 30          	sub    $0x30,%r11
    10fd:	49 83 fb 09          	cmp    $0x9,%r11
    1101:	0f 87 73 02 00 00    	ja     137a <stomptalk::parser::finish_value(char const*)+0x46a>
    1107:	4c 0f be 41 06       	movsbq 0x6(%rcx),%r8
    110c:	49 83 e8 30          	sub    $0x30,%r8
    1110:	49 83 f8 09          	cmp    $0x9,%r8
    1114:	0f 87 26 19 00 00    	ja     2a40 <stomptalk::parser::finish_value(char const*)+0x1b30>
    111a:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
    111f:	48 bd 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rbp
    1126:	45 63 01
    1129:	4c 0f af cd          	imul   %rbp,%r9
    112d:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
    1132:	4c 89 cd             	mov    %r9,%rbp
    1135:	49 b9 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r9
    113c:	86 23 00
    113f:	49 0f af d9          	imul   %r9,%rbx
    1143:	49 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r9
    114a:	8d 03 00
    114d:	4d 0f af f1          	imul   %r9,%r14
    1151:	49 b9 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r9
    1158:	5a 00 00
    115b:	4d 0f af d1          	imul   %r9,%r10
    115f:	49 b9 00 a0 72 4e 18 	movabs $0x9184e72a000,%r9
    1166:	09 00 00
    1169:	4d 0f af f9          	imul   %r9,%r15
    116d:	49 89 dd             	mov    %rbx,%r13
    1170:	49 b9 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r9
    1177:	00 00 00
    117a:	4d 0f af d9          	imul   %r9,%r11
    117e:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
    1185:	00 00 00
    1188:	4d 0f af c1          	imul   %r9,%r8
    118c:	4c 0f be 49 07       	movsbq 0x7(%rcx),%r9
    1191:	4c 89 54 24 b8       	mov    %r10,-0x48(%rsp)
    1196:	49 83 e9 30          	sub    $0x30,%r9
    119a:	4c 89 5c 24 c0       	mov    %r11,-0x40(%rsp)
    119f:	49 83 f9 09          	cmp    $0x9,%r9
    11a3:	0f 87 88 18 00 00    	ja     2a31 <stomptalk::parser::finish_value(char const*)+0x1b21>
    11a9:	49 ba 00 e4 0b 54 02 	movabs $0x2540be400,%r10
    11b0:	00 00 00
    11b3:	4d 0f af ca          	imul   %r10,%r9
    11b7:	4c 0f be 51 08       	movsbq 0x8(%rcx),%r10
    11bc:	49 83 ea 30          	sub    $0x30,%r10
    11c0:	49 83 fa 09          	cmp    $0x9,%r10
    11c4:	0f 87 58 18 00 00    	ja     2a22 <stomptalk::parser::finish_value(char const*)+0x1b12>
    11ca:	4c 0f be 59 09       	movsbq 0x9(%rcx),%r11
    11cf:	4d 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r10
    11d6:	49 83 eb 30          	sub    $0x30,%r11
    11da:	49 83 fb 09          	cmp    $0x9,%r11
    11de:	0f 87 2f 18 00 00    	ja     2a13 <stomptalk::parser::finish_value(char const*)+0x1b03>
    11e4:	49 69 db 00 e1 f5 05 	imul   $0x5f5e100,%r11,%rbx
    11eb:	4c 0f be 59 0a       	movsbq 0xa(%rcx),%r11
    11f0:	49 83 eb 30          	sub    $0x30,%r11
    11f4:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    11f9:	49 83 fb 09          	cmp    $0x9,%r11
    11fd:	0f 87 01 18 00 00    	ja     2a04 <stomptalk::parser::finish_value(char const*)+0x1af4>
    1203:	49 69 db 80 96 98 00 	imul   $0x989680,%r11,%rbx
    120a:	4c 0f be 59 0b       	movsbq 0xb(%rcx),%r11
    120f:	49 83 eb 30          	sub    $0x30,%r11
    1213:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1218:	49 83 fb 09          	cmp    $0x9,%r11
    121c:	0f 87 d3 17 00 00    	ja     29f5 <stomptalk::parser::finish_value(char const*)+0x1ae5>
    1222:	49 69 db 40 42 0f 00 	imul   $0xf4240,%r11,%rbx
    1229:	4c 0f be 59 0c       	movsbq 0xc(%rcx),%r11
    122e:	49 83 eb 30          	sub    $0x30,%r11
    1232:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    1237:	49 83 fb 09          	cmp    $0x9,%r11
    123b:	0f 87 a5 17 00 00    	ja     29e6 <stomptalk::parser::finish_value(char const*)+0x1ad6>
    1241:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    1248:	4c 0f be 59 0d       	movsbq 0xd(%rcx),%r11
    124d:	49 83 eb 30          	sub    $0x30,%r11
    1251:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    1256:	49 83 fb 09          	cmp    $0x9,%r11
    125a:	0f 87 77 17 00 00    	ja     29d7 <stomptalk::parser::finish_value(char const*)+0x1ac7>
    1260:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1267:	4c 0f be 59 0e       	movsbq 0xe(%rcx),%r11
    126c:	49 83 eb 30          	sub    $0x30,%r11
    1270:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
    1275:	49 83 fb 09          	cmp    $0x9,%r11
    1279:	0f 87 4a 17 00 00    	ja     29c9 <stomptalk::parser::finish_value(char const*)+0x1ab9>
    127f:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1286:	4c 0f be 59 0f       	movsbq 0xf(%rcx),%r11
    128b:	49 83 eb 30          	sub    $0x30,%r11
    128f:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
    1294:	49 83 fb 09          	cmp    $0x9,%r11
    1298:	0f 87 1d 17 00 00    	ja     29bb <stomptalk::parser::finish_value(char const*)+0x1aab>
    129e:	49 6b db 64          	imul   $0x64,%r11,%rbx
    12a2:	4c 0f be 59 10       	movsbq 0x10(%rcx),%r11
    12a7:	49 83 eb 30          	sub    $0x30,%r11
    12ab:	48 89 5c 24 f8       	mov    %rbx,-0x8(%rsp)
    12b0:	49 83 fb 09          	cmp    $0x9,%r11
    12b4:	0f 87 b5 16 00 00    	ja     296f <stomptalk::parser::finish_value(char const*)+0x1a5f>
    12ba:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    12be:	4c 0f be 59 11       	movsbq 0x11(%rcx),%r11
    12c3:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    12ca:	00 00 80
    12cd:	49 83 eb 30          	sub    $0x30,%r11
    12d1:	49 83 fb 0a          	cmp    $0xa,%r11
    12d5:	4c 0f 43 d9          	cmovae %rcx,%r11
    12d9:	49 8d 0c 5b          	lea    (%r11,%rbx,2),%rcx
    12dd:	48 8b 5c 24 f8       	mov    -0x8(%rsp),%rbx
    12e2:	48 01 d9             	add    %rbx,%rcx
    12e5:	48 8b 5c 24 f0       	mov    -0x10(%rsp),%rbx
    12ea:	48 01 cb             	add    %rcx,%rbx
    12ed:	4c 8b 5c 24 e8       	mov    -0x18(%rsp),%r11
    12f2:	49 01 db             	add    %rbx,%r11
    12f5:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    12fa:	49 01 db             	add    %rbx,%r11
    12fd:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    1302:	49 01 db             	add    %rbx,%r11
    1305:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    130a:	49 01 db             	add    %rbx,%r11
    130d:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    1312:	49 01 db             	add    %rbx,%r11
    1315:	4d 01 da             	add    %r11,%r10
    1318:	4d 01 d1             	add    %r10,%r9
    131b:	4d 01 c8             	add    %r9,%r8
    131e:	4c 03 44 24 c0       	add    -0x40(%rsp),%r8
    1323:	49 89 e9             	mov    %rbp,%r9
    1326:	4d 01 f8             	add    %r15,%r8
    1329:	4c 03 44 24 b8       	add    -0x48(%rsp),%r8
    132e:	4d 01 f0             	add    %r14,%r8
    1331:	4d 01 e8             	add    %r13,%r8
    1334:	4d 01 c1             	add    %r8,%r9
    1337:	0f 88 fe 00 00 00    	js     143b <stomptalk::parser::finish_value(char const*)+0x52b>
    133d:	49 83 fc 12          	cmp    $0x12,%r12
    1341:	0f 87 16 01 00 00    	ja     145d <stomptalk::parser::finish_value(char const*)+0x54d>
    1347:	75 4f                	jne    1398 <stomptalk::parser::finish_value(char const*)+0x488>
    1349:	49 b8 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%r8
    1350:	27 33 06
    1353:	4d 39 c8             	cmp    %r9,%r8
    1356:	73 40                	jae    1398 <stomptalk::parser::finish_value(char const*)+0x488>
    1358:	48 8b 1c 24          	mov    (%rsp),%rbx
    135c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    1361:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1366:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    136b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1370:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    1375:	e9 9f fc ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    137a:	48 8b 1c 24          	mov    (%rsp),%rbx
    137e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1383:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1388:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    138d:	e9 87 fc ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    1392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1398:	49 b8 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%r8
    139f:	b6 e0 0d
    13a2:	4c 89 e1             	mov    %r12,%rcx
    13a5:	49 0f af c8          	imul   %r8,%rcx
    13a9:	4c 01 c9             	add    %r9,%rcx
    13ac:	48 39 4f 20          	cmp    %rcx,0x20(%rdi)
    13b0:	72 2e                	jb     13e0 <stomptalk::parser::finish_value(char const*)+0x4d0>
    13b2:	48 8b 1c 24          	mov    (%rsp),%rbx
    13b6:	83 4f 78 01          	orl    $0x1,0x78(%rdi)
    13ba:	48 89 8f 88 00 00 00 	mov    %rcx,0x88(%rdi)
    13c1:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    13c6:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    13cb:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    13d0:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    13d5:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    13da:	e9 6c fb ff ff       	jmp    f4b <stomptalk::parser::finish_value(char const*)+0x3b>
    13df:	90                   	nop
    13e0:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    13e7:	00 00 00
    13ea:	48 8b 1c 24          	mov    (%rsp),%rbx
    13ee:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    13f3:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
    13fa:	48 89 f0             	mov    %rsi,%rax
    13fd:	48 83 c6 01          	add    $0x1,%rsi
    1401:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
    1408:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
    140f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1414:	31 c0                	xor    %eax,%eax
    1416:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
    141d:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    1422:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1427:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    142c:	e9 17 fc ff ff       	jmp    1048 <stomptalk::parser::finish_value(char const*)+0x138>
    1431:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1436:	e9 de fb ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    143b:	48 8b 1c 24          	mov    (%rsp),%rbx
    143f:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    1444:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1449:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    144e:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1453:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    1458:	e9 bc fb ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    145d:	48 8b 1c 24          	mov    (%rsp),%rbx
    1461:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    1466:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    146b:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    1470:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1475:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    147a:	e9 9a fb ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    147f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1484:	e9 90 fb ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    1489:	48 89 1c 24          	mov    %rbx,(%rsp)
    148d:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
    1492:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
    1497:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
    149c:	4c 89 7c 24 28       	mov    %r15,0x28(%rsp)
    14a1:	48 83 f8 12          	cmp    $0x12,%rax
    14a5:	0f 87 88 17 00 00    	ja     2c33 <stomptalk::parser::finish_value(char const*)+0x1d23>
    14ab:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 14b2 <stomptalk::parser::finish_value(char const*)+0x5a2>
			14ae: R_X86_64_PC32	.rodata-0x4
    14b2:	4c 0f be 02          	movsbq (%rdx),%r8
    14b6:	4d 63 0c 82          	movslq (%r10,%rax,4),%r9
    14ba:	49 83 e8 30          	sub    $0x30,%r8
    14be:	4d 01 d1             	add    %r10,%r9
    14c1:	4c 89 c1             	mov    %r8,%rcx
    14c4:	49 83 f8 09          	cmp    $0x9,%r8
    14c8:	3e 41 ff e1          	notrack jmp *%r9
    14cc:	0f 87 75 1f 00 00    	ja     3447 <stomptalk::parser::finish_value(char const*)+0x2537>
    14d2:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    14d7:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    14db:	48 83 fb 09          	cmp    $0x9,%rbx
    14df:	0f 87 40 1f 00 00    	ja     3425 <stomptalk::parser::finish_value(char const*)+0x2515>
    14e5:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    14ea:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    14ee:	49 83 ff 09          	cmp    $0x9,%r15
    14f2:	0f 87 0b 1f 00 00    	ja     3403 <stomptalk::parser::finish_value(char const*)+0x24f3>
    14f8:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    14fd:	49 83 eb 30          	sub    $0x30,%r11
    1501:	49 83 fb 09          	cmp    $0x9,%r11
    1505:	0f 87 d6 1e 00 00    	ja     33e1 <stomptalk::parser::finish_value(char const*)+0x24d1>
    150b:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1510:	49 83 ea 30          	sub    $0x30,%r10
    1514:	49 83 fa 09          	cmp    $0x9,%r10
    1518:	0f 87 a1 1e 00 00    	ja     33bf <stomptalk::parser::finish_value(char const*)+0x24af>
    151e:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1523:	49 83 e9 30          	sub    $0x30,%r9
    1527:	49 83 f9 09          	cmp    $0x9,%r9
    152b:	0f 87 6c 1e 00 00    	ja     339d <stomptalk::parser::finish_value(char const*)+0x248d>
    1531:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1536:	48 83 e9 30          	sub    $0x30,%rcx
    153a:	48 83 f9 09          	cmp    $0x9,%rcx
    153e:	0f 87 37 1e 00 00    	ja     337b <stomptalk::parser::finish_value(char const*)+0x246b>
    1544:	49 be 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%r14
    154b:	45 63 01
    154e:	4d 0f af c6          	imul   %r14,%r8
    1552:	4d 89 c6             	mov    %r8,%r14
    1555:	49 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r8
    155c:	86 23 00
    155f:	49 0f af d8          	imul   %r8,%rbx
    1563:	49 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r8
    156a:	8d 03 00
    156d:	4d 0f af f8          	imul   %r8,%r15
    1571:	49 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r8
    1578:	5a 00 00
    157b:	4d 0f af d8          	imul   %r8,%r11
    157f:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    1586:	09 00 00
    1589:	4d 0f af d0          	imul   %r8,%r10
    158d:	48 89 dd             	mov    %rbx,%rbp
    1590:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1597:	00 00 00
    159a:	4d 0f af c8          	imul   %r8,%r9
    159e:	4d 89 fd             	mov    %r15,%r13
    15a1:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    15a8:	00 00 00
    15ab:	49 0f af c8          	imul   %r8,%rcx
    15af:	4d 89 dc             	mov    %r11,%r12
    15b2:	4c 89 54 24 b8       	mov    %r10,-0x48(%rsp)
    15b7:	4c 89 4c 24 c0       	mov    %r9,-0x40(%rsp)
    15bc:	48 89 4c 24 c8       	mov    %rcx,-0x38(%rsp)
    15c1:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
    15c6:	48 83 e9 30          	sub    $0x30,%rcx
    15ca:	48 83 f9 09          	cmp    $0x9,%rcx
    15ce:	0f 87 99 1d 00 00    	ja     336d <stomptalk::parser::finish_value(char const*)+0x245d>
    15d4:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    15db:	00 00 00
    15de:	49 0f af c8          	imul   %r8,%rcx
    15e2:	48 89 4c 24 d0       	mov    %rcx,-0x30(%rsp)
    15e7:	48 0f be 4a 08       	movsbq 0x8(%rdx),%rcx
    15ec:	48 83 e9 30          	sub    $0x30,%rcx
    15f0:	48 83 f9 09          	cmp    $0x9,%rcx
    15f4:	0f 87 65 1d 00 00    	ja     335f <stomptalk::parser::finish_value(char const*)+0x244f>
    15fa:	4c 0f be 42 09       	movsbq 0x9(%rdx),%r8
    15ff:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
    1606:	49 83 e8 30          	sub    $0x30,%r8
    160a:	49 83 f8 09          	cmp    $0x9,%r8
    160e:	0f 87 3c 1d 00 00    	ja     3350 <stomptalk::parser::finish_value(char const*)+0x2440>
    1614:	4c 0f be 4a 0a       	movsbq 0xa(%rdx),%r9
    1619:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
    1620:	49 83 e9 30          	sub    $0x30,%r9
    1624:	49 83 f9 09          	cmp    $0x9,%r9
    1628:	0f 87 13 1d 00 00    	ja     3341 <stomptalk::parser::finish_value(char const*)+0x2431>
    162e:	4c 0f be 52 0b       	movsbq 0xb(%rdx),%r10
    1633:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    163a:	49 83 ea 30          	sub    $0x30,%r10
    163e:	49 83 fa 09          	cmp    $0x9,%r10
    1642:	0f 87 ea 1c 00 00    	ja     3332 <stomptalk::parser::finish_value(char const*)+0x2422>
    1648:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    164d:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    1654:	49 83 eb 30          	sub    $0x30,%r11
    1658:	49 83 fb 09          	cmp    $0x9,%r11
    165c:	0f 87 c1 1c 00 00    	ja     3323 <stomptalk::parser::finish_value(char const*)+0x2413>
    1662:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    1669:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    166e:	49 83 eb 30          	sub    $0x30,%r11
    1672:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    1677:	49 83 fb 09          	cmp    $0x9,%r11
    167b:	0f 87 93 1c 00 00    	ja     3314 <stomptalk::parser::finish_value(char const*)+0x2404>
    1681:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1688:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
    168d:	49 83 eb 30          	sub    $0x30,%r11
    1691:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    1696:	49 83 fb 09          	cmp    $0x9,%r11
    169a:	0f 87 65 1c 00 00    	ja     3305 <stomptalk::parser::finish_value(char const*)+0x23f5>
    16a0:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    16a7:	4c 0f be 5a 0f       	movsbq 0xf(%rdx),%r11
    16ac:	49 83 eb 30          	sub    $0x30,%r11
    16b0:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
    16b5:	49 83 fb 09          	cmp    $0x9,%r11
    16b9:	0f 87 37 1c 00 00    	ja     32f6 <stomptalk::parser::finish_value(char const*)+0x23e6>
    16bf:	49 6b db 64          	imul   $0x64,%r11,%rbx
    16c3:	4c 0f be 5a 10       	movsbq 0x10(%rdx),%r11
    16c8:	49 83 eb 30          	sub    $0x30,%r11
    16cc:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
    16d1:	49 83 fb 09          	cmp    $0x9,%r11
    16d5:	0f 87 4c 14 00 00    	ja     2b27 <stomptalk::parser::finish_value(char const*)+0x1c17>
    16db:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    16e2:	00 00 80
    16e5:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    16e9:	4c 0f be 5a 11       	movsbq 0x11(%rdx),%r11
    16ee:	49 83 eb 30          	sub    $0x30,%r11
    16f2:	49 83 fb 0a          	cmp    $0xa,%r11
    16f6:	4d 0f 43 df          	cmovae %r15,%r11
    16fa:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    16fe:	48 8b 5c 24 f0       	mov    -0x10(%rsp),%rbx
    1703:	49 01 db             	add    %rbx,%r11
    1706:	48 8b 5c 24 e8       	mov    -0x18(%rsp),%rbx
    170b:	49 01 db             	add    %rbx,%r11
    170e:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    1713:	49 01 db             	add    %rbx,%r11
    1716:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    171b:	49 01 db             	add    %rbx,%r11
    171e:	4d 01 da             	add    %r11,%r10
    1721:	4d 01 d1             	add    %r10,%r9
    1724:	4d 01 c8             	add    %r9,%r8
    1727:	4c 01 c1             	add    %r8,%rcx
    172a:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    172f:	48 01 d9             	add    %rbx,%rcx
    1732:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    1737:	48 01 d9             	add    %rbx,%rcx
    173a:	48 03 4c 24 c0       	add    -0x40(%rsp),%rcx
    173f:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
    1744:	4c 01 e1             	add    %r12,%rcx
    1747:	4c 01 e9             	add    %r13,%rcx
    174a:	48 01 e9             	add    %rbp,%rcx
    174d:	4c 01 f1             	add    %r14,%rcx
    1750:	48 85 c9             	test   %rcx,%rcx
    1753:	0f 89 53 fc ff ff    	jns    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    1759:	48 8b 1c 24          	mov    (%rsp),%rbx
    175d:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    1762:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    1767:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    176c:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    1771:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    1776:	e9 9e f8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    177b:	0f 87 53 1b 00 00    	ja     32d4 <stomptalk::parser::finish_value(char const*)+0x23c4>
    1781:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    1786:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    178a:	48 83 fb 09          	cmp    $0x9,%rbx
    178e:	0f 87 1e 1b 00 00    	ja     32b2 <stomptalk::parser::finish_value(char const*)+0x23a2>
    1794:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    1799:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    179d:	49 83 fe 09          	cmp    $0x9,%r14
    17a1:	0f 87 e9 1a 00 00    	ja     3290 <stomptalk::parser::finish_value(char const*)+0x2380>
    17a7:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    17ac:	49 83 eb 30          	sub    $0x30,%r11
    17b0:	49 83 fb 09          	cmp    $0x9,%r11
    17b4:	0f 87 b4 1a 00 00    	ja     326e <stomptalk::parser::finish_value(char const*)+0x235e>
    17ba:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    17bf:	49 83 ea 30          	sub    $0x30,%r10
    17c3:	49 83 fa 09          	cmp    $0x9,%r10
    17c7:	0f 87 7f 1a 00 00    	ja     324c <stomptalk::parser::finish_value(char const*)+0x233c>
    17cd:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    17d2:	49 83 e9 30          	sub    $0x30,%r9
    17d6:	49 83 f9 09          	cmp    $0x9,%r9
    17da:	0f 87 4a 1a 00 00    	ja     322a <stomptalk::parser::finish_value(char const*)+0x231a>
    17e0:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    17e5:	48 83 e9 30          	sub    $0x30,%rcx
    17e9:	48 83 f9 09          	cmp    $0x9,%rcx
    17ed:	0f 87 15 1a 00 00    	ja     3208 <stomptalk::parser::finish_value(char const*)+0x22f8>
    17f3:	49 bf 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r15
    17fa:	86 23 00
    17fd:	4d 0f af c7          	imul   %r15,%r8
    1801:	4c 89 c5             	mov    %r8,%rbp
    1804:	49 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r8
    180b:	8d 03 00
    180e:	49 0f af d8          	imul   %r8,%rbx
    1812:	49 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r8
    1819:	5a 00 00
    181c:	4d 0f af f0          	imul   %r8,%r14
    1820:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    1827:	09 00 00
    182a:	4d 0f af d8          	imul   %r8,%r11
    182e:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1835:	00 00 00
    1838:	4d 0f af d0          	imul   %r8,%r10
    183c:	49 89 dd             	mov    %rbx,%r13
    183f:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1846:	00 00 00
    1849:	4d 0f af c8          	imul   %r8,%r9
    184d:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1854:	00 00 00
    1857:	49 0f af c8          	imul   %r8,%rcx
    185b:	4d 89 dc             	mov    %r11,%r12
    185e:	4c 89 54 24 b8       	mov    %r10,-0x48(%rsp)
    1863:	4c 89 4c 24 c0       	mov    %r9,-0x40(%rsp)
    1868:	48 89 4c 24 c8       	mov    %rcx,-0x38(%rsp)
    186d:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
    1872:	48 83 e9 30          	sub    $0x30,%rcx
    1876:	48 83 f9 09          	cmp    $0x9,%rcx
    187a:	0f 87 7a 19 00 00    	ja     31fa <stomptalk::parser::finish_value(char const*)+0x22ea>
    1880:	4c 0f be 42 08       	movsbq 0x8(%rdx),%r8
    1885:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
    188c:	49 83 e8 30          	sub    $0x30,%r8
    1890:	49 83 f8 09          	cmp    $0x9,%r8
    1894:	0f 87 51 19 00 00    	ja     31eb <stomptalk::parser::finish_value(char const*)+0x22db>
    189a:	4c 0f be 4a 09       	movsbq 0x9(%rdx),%r9
    189f:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
    18a6:	49 83 e9 30          	sub    $0x30,%r9
    18aa:	49 83 f9 09          	cmp    $0x9,%r9
    18ae:	0f 87 28 19 00 00    	ja     31dc <stomptalk::parser::finish_value(char const*)+0x22cc>
    18b4:	4c 0f be 52 0a       	movsbq 0xa(%rdx),%r10
    18b9:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    18c0:	49 83 ea 30          	sub    $0x30,%r10
    18c4:	49 83 fa 09          	cmp    $0x9,%r10
    18c8:	0f 87 ff 18 00 00    	ja     31cd <stomptalk::parser::finish_value(char const*)+0x22bd>
    18ce:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    18d3:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    18da:	49 83 eb 30          	sub    $0x30,%r11
    18de:	49 83 fb 09          	cmp    $0x9,%r11
    18e2:	0f 87 d6 18 00 00    	ja     31be <stomptalk::parser::finish_value(char const*)+0x22ae>
    18e8:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    18ef:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    18f4:	49 83 eb 30          	sub    $0x30,%r11
    18f8:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    18fd:	49 83 fb 09          	cmp    $0x9,%r11
    1901:	0f 87 a8 18 00 00    	ja     31af <stomptalk::parser::finish_value(char const*)+0x229f>
    1907:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    190e:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    1913:	49 83 eb 30          	sub    $0x30,%r11
    1917:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    191c:	49 83 fb 09          	cmp    $0x9,%r11
    1920:	0f 87 7a 18 00 00    	ja     31a0 <stomptalk::parser::finish_value(char const*)+0x2290>
    1926:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    192d:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
    1932:	49 83 eb 30          	sub    $0x30,%r11
    1936:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    193b:	49 83 fb 09          	cmp    $0x9,%r11
    193f:	0f 87 4c 18 00 00    	ja     3191 <stomptalk::parser::finish_value(char const*)+0x2281>
    1945:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1949:	4c 0f be 5a 0f       	movsbq 0xf(%rdx),%r11
    194e:	49 83 eb 30          	sub    $0x30,%r11
    1952:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
    1957:	49 83 fb 09          	cmp    $0x9,%r11
    195b:	0f 87 21 18 00 00    	ja     3182 <stomptalk::parser::finish_value(char const*)+0x2272>
    1961:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    1968:	00 00 80
    196b:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    196f:	4c 0f be 5a 10       	movsbq 0x10(%rdx),%r11
    1974:	49 83 eb 30          	sub    $0x30,%r11
    1978:	49 83 fb 0a          	cmp    $0xa,%r11
    197c:	4d 0f 43 df          	cmovae %r15,%r11
    1980:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1984:	48 8b 5c 24 e8       	mov    -0x18(%rsp),%rbx
    1989:	49 01 db             	add    %rbx,%r11
    198c:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    1991:	49 01 db             	add    %rbx,%r11
    1994:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    1999:	49 01 db             	add    %rbx,%r11
    199c:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    19a1:	49 01 db             	add    %rbx,%r11
    19a4:	4d 01 da             	add    %r11,%r10
    19a7:	4d 01 d1             	add    %r10,%r9
    19aa:	4d 01 c8             	add    %r9,%r8
    19ad:	4c 01 c1             	add    %r8,%rcx
    19b0:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    19b5:	48 01 d9             	add    %rbx,%rcx
    19b8:	48 03 4c 24 c0       	add    -0x40(%rsp),%rcx
    19bd:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
    19c2:	4c 01 e1             	add    %r12,%rcx
    19c5:	4c 01 f1             	add    %r14,%rcx
    19c8:	4c 01 e9             	add    %r13,%rcx
    19cb:	48 01 e9             	add    %rbp,%rcx
    19ce:	e9 7d fd ff ff       	jmp    1750 <stomptalk::parser::finish_value(char const*)+0x840>
    19d3:	0f 87 81 13 00 00    	ja     2d5a <stomptalk::parser::finish_value(char const*)+0x1e4a>
    19d9:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    19de:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    19e2:	48 83 fb 09          	cmp    $0x9,%rbx
    19e6:	0f 87 4c 13 00 00    	ja     2d38 <stomptalk::parser::finish_value(char const*)+0x1e28>
    19ec:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    19f1:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    19f5:	49 83 ff 09          	cmp    $0x9,%r15
    19f9:	0f 87 17 13 00 00    	ja     2d16 <stomptalk::parser::finish_value(char const*)+0x1e06>
    19ff:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1a04:	49 83 eb 30          	sub    $0x30,%r11
    1a08:	49 83 fb 09          	cmp    $0x9,%r11
    1a0c:	0f 87 e2 12 00 00    	ja     2cf4 <stomptalk::parser::finish_value(char const*)+0x1de4>
    1a12:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1a17:	49 83 ea 30          	sub    $0x30,%r10
    1a1b:	49 83 fa 09          	cmp    $0x9,%r10
    1a1f:	0f 87 68 12 00 00    	ja     2c8d <stomptalk::parser::finish_value(char const*)+0x1d7d>
    1a25:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1a2a:	49 83 e9 30          	sub    $0x30,%r9
    1a2e:	49 83 f9 09          	cmp    $0x9,%r9
    1a32:	0f 87 33 12 00 00    	ja     2c6b <stomptalk::parser::finish_value(char const*)+0x1d5b>
    1a38:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1a3d:	48 83 e9 30          	sub    $0x30,%rcx
    1a41:	48 83 f9 09          	cmp    $0x9,%rcx
    1a45:	0f 87 67 10 00 00    	ja     2ab2 <stomptalk::parser::finish_value(char const*)+0x1ba2>
    1a4b:	49 be 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r14
    1a52:	8d 03 00
    1a55:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
    1a5c:	4d 0f af c6          	imul   %r14,%r8
    1a60:	4d 89 c6             	mov    %r8,%r14
    1a63:	49 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r8
    1a6a:	5a 00 00
    1a6d:	49 0f af d8          	imul   %r8,%rbx
    1a71:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    1a78:	09 00 00
    1a7b:	4d 0f af f8          	imul   %r8,%r15
    1a7f:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1a86:	00 00 00
    1a89:	4d 0f af d8          	imul   %r8,%r11
    1a8d:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1a94:	00 00 00
    1a97:	4d 0f af d0          	imul   %r8,%r10
    1a9b:	48 89 dd             	mov    %rbx,%rbp
    1a9e:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1aa5:	00 00 00
    1aa8:	4d 0f af c8          	imul   %r8,%r9
    1aac:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    1ab1:	4d 89 fd             	mov    %r15,%r13
    1ab4:	4d 89 dc             	mov    %r11,%r12
    1ab7:	49 83 e8 30          	sub    $0x30,%r8
    1abb:	4c 89 54 24 b8       	mov    %r10,-0x48(%rsp)
    1ac0:	4c 89 4c 24 c0       	mov    %r9,-0x40(%rsp)
    1ac5:	49 83 f8 09          	cmp    $0x9,%r8
    1ac9:	0f 87 89 0f 00 00    	ja     2a58 <stomptalk::parser::finish_value(char const*)+0x1b48>
    1acf:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    1ad4:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
    1adb:	49 83 e9 30          	sub    $0x30,%r9
    1adf:	49 83 f9 09          	cmp    $0x9,%r9
    1ae3:	0f 87 ab 0f 00 00    	ja     2a94 <stomptalk::parser::finish_value(char const*)+0x1b84>
    1ae9:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    1aee:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    1af5:	49 83 ea 30          	sub    $0x30,%r10
    1af9:	49 83 fa 09          	cmp    $0x9,%r10
    1afd:	0f 87 82 0f 00 00    	ja     2a85 <stomptalk::parser::finish_value(char const*)+0x1b75>
    1b03:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    1b08:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    1b0f:	49 83 eb 30          	sub    $0x30,%r11
    1b13:	49 83 fb 09          	cmp    $0x9,%r11
    1b17:	0f 87 59 0f 00 00    	ja     2a76 <stomptalk::parser::finish_value(char const*)+0x1b66>
    1b1d:	49 69 db a0 86 01 00 	imul   $0x186a0,%r11,%rbx
    1b24:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    1b29:	49 83 eb 30          	sub    $0x30,%r11
    1b2d:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    1b32:	49 83 fb 09          	cmp    $0x9,%r11
    1b36:	0f 87 2b 0f 00 00    	ja     2a67 <stomptalk::parser::finish_value(char const*)+0x1b57>
    1b3c:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1b43:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    1b48:	49 83 eb 30          	sub    $0x30,%r11
    1b4c:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1b51:	49 83 fb 09          	cmp    $0x9,%r11
    1b55:	0f 87 48 0f 00 00    	ja     2aa3 <stomptalk::parser::finish_value(char const*)+0x1b93>
    1b5b:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1b62:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    1b67:	49 83 eb 30          	sub    $0x30,%r11
    1b6b:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    1b70:	49 83 fb 09          	cmp    $0x9,%r11
    1b74:	0f 87 5a 0f 00 00    	ja     2ad4 <stomptalk::parser::finish_value(char const*)+0x1bc4>
    1b7a:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1b7e:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
    1b83:	49 83 eb 30          	sub    $0x30,%r11
    1b87:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
    1b8c:	49 83 fb 09          	cmp    $0x9,%r11
    1b90:	0f 87 8e 10 00 00    	ja     2c24 <stomptalk::parser::finish_value(char const*)+0x1d14>
    1b96:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    1b9d:	00 00 80
    1ba0:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1ba4:	4c 0f be 5a 0f       	movsbq 0xf(%rdx),%r11
    1ba9:	49 83 eb 30          	sub    $0x30,%r11
    1bad:	49 83 fb 0a          	cmp    $0xa,%r11
    1bb1:	4d 0f 43 df          	cmovae %r15,%r11
    1bb5:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1bb9:	48 8b 5c 24 e0       	mov    -0x20(%rsp),%rbx
    1bbe:	49 01 db             	add    %rbx,%r11
    1bc1:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    1bc6:	49 01 db             	add    %rbx,%r11
    1bc9:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    1bce:	49 01 db             	add    %rbx,%r11
    1bd1:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    1bd6:	49 01 db             	add    %rbx,%r11
    1bd9:	4d 01 da             	add    %r11,%r10
    1bdc:	4d 01 d1             	add    %r10,%r9
    1bdf:	4d 01 c8             	add    %r9,%r8
    1be2:	4c 01 c1             	add    %r8,%rcx
    1be5:	e9 50 fb ff ff       	jmp    173a <stomptalk::parser::finish_value(char const*)+0x82a>
    1bea:	0f 87 12 10 00 00    	ja     2c02 <stomptalk::parser::finish_value(char const*)+0x1cf2>
    1bf0:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    1bf5:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1bf9:	48 83 fb 09          	cmp    $0x9,%rbx
    1bfd:	0f 87 dd 0f 00 00    	ja     2be0 <stomptalk::parser::finish_value(char const*)+0x1cd0>
    1c03:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    1c08:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    1c0c:	49 83 fe 09          	cmp    $0x9,%r14
    1c10:	0f 87 a8 0f 00 00    	ja     2bbe <stomptalk::parser::finish_value(char const*)+0x1cae>
    1c16:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1c1b:	49 83 eb 30          	sub    $0x30,%r11
    1c1f:	49 83 fb 09          	cmp    $0x9,%r11
    1c23:	0f 87 73 0f 00 00    	ja     2b9c <stomptalk::parser::finish_value(char const*)+0x1c8c>
    1c29:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1c2e:	49 83 ea 30          	sub    $0x30,%r10
    1c32:	49 83 fa 09          	cmp    $0x9,%r10
    1c36:	0f 87 b9 19 00 00    	ja     35f5 <stomptalk::parser::finish_value(char const*)+0x26e5>
    1c3c:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1c41:	49 83 e9 30          	sub    $0x30,%r9
    1c45:	49 83 f9 09          	cmp    $0x9,%r9
    1c49:	0f 87 84 19 00 00    	ja     35d3 <stomptalk::parser::finish_value(char const*)+0x26c3>
    1c4f:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1c54:	48 83 e9 30          	sub    $0x30,%rcx
    1c58:	48 83 f9 09          	cmp    $0x9,%rcx
    1c5c:	0f 87 4f 19 00 00    	ja     35b1 <stomptalk::parser::finish_value(char const*)+0x26a1>
    1c62:	49 bf 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r15
    1c69:	5a 00 00
    1c6c:	48 69 c9 00 e1 f5 05 	imul   $0x5f5e100,%rcx,%rcx
    1c73:	4d 0f af c7          	imul   %r15,%r8
    1c77:	4c 89 c5             	mov    %r8,%rbp
    1c7a:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    1c81:	09 00 00
    1c84:	49 0f af d8          	imul   %r8,%rbx
    1c88:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    1c8f:	00 00 00
    1c92:	4d 0f af f0          	imul   %r8,%r14
    1c96:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1c9d:	00 00 00
    1ca0:	4d 0f af d8          	imul   %r8,%r11
    1ca4:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1cab:	00 00 00
    1cae:	4d 0f af d0          	imul   %r8,%r10
    1cb2:	49 89 dd             	mov    %rbx,%r13
    1cb5:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    1cba:	49 69 d9 00 ca 9a 3b 	imul   $0x3b9aca00,%r9,%rbx
    1cc1:	49 83 e8 30          	sub    $0x30,%r8
    1cc5:	4d 89 dc             	mov    %r11,%r12
    1cc8:	4c 89 54 24 b8       	mov    %r10,-0x48(%rsp)
    1ccd:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    1cd2:	49 83 f8 09          	cmp    $0x9,%r8
    1cd6:	0f 87 c6 18 00 00    	ja     35a2 <stomptalk::parser::finish_value(char const*)+0x2692>
    1cdc:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    1ce1:	4d 69 c0 80 96 98 00 	imul   $0x989680,%r8,%r8
    1ce8:	49 83 e9 30          	sub    $0x30,%r9
    1cec:	49 83 f9 09          	cmp    $0x9,%r9
    1cf0:	0f 87 9d 18 00 00    	ja     3593 <stomptalk::parser::finish_value(char const*)+0x2683>
    1cf6:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    1cfb:	4d 69 c9 40 42 0f 00 	imul   $0xf4240,%r9,%r9
    1d02:	49 83 ea 30          	sub    $0x30,%r10
    1d06:	49 83 fa 09          	cmp    $0x9,%r10
    1d0a:	0f 87 74 18 00 00    	ja     3584 <stomptalk::parser::finish_value(char const*)+0x2674>
    1d10:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    1d15:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    1d1c:	49 83 eb 30          	sub    $0x30,%r11
    1d20:	49 83 fb 09          	cmp    $0x9,%r11
    1d24:	0f 87 4b 18 00 00    	ja     3575 <stomptalk::parser::finish_value(char const*)+0x2665>
    1d2a:	49 69 db 10 27 00 00 	imul   $0x2710,%r11,%rbx
    1d31:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    1d36:	49 83 eb 30          	sub    $0x30,%r11
    1d3a:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    1d3f:	49 83 fb 09          	cmp    $0x9,%r11
    1d43:	0f 87 1d 18 00 00    	ja     3566 <stomptalk::parser::finish_value(char const*)+0x2656>
    1d49:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    1d50:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    1d55:	49 83 eb 30          	sub    $0x30,%r11
    1d59:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    1d5e:	49 83 fb 09          	cmp    $0x9,%r11
    1d62:	0f 87 f4 1a 00 00    	ja     385c <stomptalk::parser::finish_value(char const*)+0x294c>
    1d68:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1d6c:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    1d71:	49 83 eb 30          	sub    $0x30,%r11
    1d75:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
    1d7a:	49 83 fb 09          	cmp    $0x9,%r11
    1d7e:	0f 87 c9 1a 00 00    	ja     384d <stomptalk::parser::finish_value(char const*)+0x293d>
    1d84:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    1d8b:	00 00 80
    1d8e:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1d92:	4c 0f be 5a 0e       	movsbq 0xe(%rdx),%r11
    1d97:	49 83 eb 30          	sub    $0x30,%r11
    1d9b:	49 83 fb 0a          	cmp    $0xa,%r11
    1d9f:	4d 0f 43 df          	cmovae %r15,%r11
    1da3:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1da7:	48 8b 5c 24 d8       	mov    -0x28(%rsp),%rbx
    1dac:	49 01 db             	add    %rbx,%r11
    1daf:	48 8b 5c 24 d0       	mov    -0x30(%rsp),%rbx
    1db4:	49 01 db             	add    %rbx,%r11
    1db7:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    1dbc:	49 01 db             	add    %rbx,%r11
    1dbf:	4d 01 da             	add    %r11,%r10
    1dc2:	4d 01 d1             	add    %r10,%r9
    1dc5:	4d 01 c8             	add    %r9,%r8
    1dc8:	4c 01 c1             	add    %r8,%rcx
    1dcb:	e9 e8 fb ff ff       	jmp    19b8 <stomptalk::parser::finish_value(char const*)+0xaa8>
    1dd0:	0f 87 6e 17 00 00    	ja     3544 <stomptalk::parser::finish_value(char const*)+0x2634>
    1dd6:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    1ddb:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1ddf:	48 83 fb 09          	cmp    $0x9,%rbx
    1de3:	0f 87 39 17 00 00    	ja     3522 <stomptalk::parser::finish_value(char const*)+0x2612>
    1de9:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    1dee:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    1df2:	49 83 fe 09          	cmp    $0x9,%r14
    1df6:	0f 87 04 17 00 00    	ja     3500 <stomptalk::parser::finish_value(char const*)+0x25f0>
    1dfc:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    1e01:	49 83 eb 30          	sub    $0x30,%r11
    1e05:	49 83 fb 09          	cmp    $0x9,%r11
    1e09:	0f 87 cf 16 00 00    	ja     34de <stomptalk::parser::finish_value(char const*)+0x25ce>
    1e0f:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1e14:	49 83 ea 30          	sub    $0x30,%r10
    1e18:	49 83 fa 09          	cmp    $0x9,%r10
    1e1c:	0f 87 9a 16 00 00    	ja     34bc <stomptalk::parser::finish_value(char const*)+0x25ac>
    1e22:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1e27:	49 83 e9 30          	sub    $0x30,%r9
    1e2b:	49 83 f9 09          	cmp    $0x9,%r9
    1e2f:	0f 87 65 16 00 00    	ja     349a <stomptalk::parser::finish_value(char const*)+0x258a>
    1e35:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1e3a:	48 83 e9 30          	sub    $0x30,%rcx
    1e3e:	48 83 f9 09          	cmp    $0x9,%rcx
    1e42:	0f 87 30 16 00 00    	ja     3478 <stomptalk::parser::finish_value(char const*)+0x2568>
    1e48:	49 bf 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r15
    1e4f:	00 00 00
    1e52:	4d 69 e3 00 ca 9a 3b 	imul   $0x3b9aca00,%r11,%r12
    1e59:	4d 0f af c7          	imul   %r15,%r8
    1e5d:	48 69 c9 40 42 0f 00 	imul   $0xf4240,%rcx,%rcx
    1e64:	4d 89 c7             	mov    %r8,%r15
    1e67:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    1e6e:	00 00 00
    1e71:	49 0f af d8          	imul   %r8,%rbx
    1e75:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1e7c:	00 00 00
    1e7f:	4d 0f af f0          	imul   %r8,%r14
    1e83:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    1e88:	48 89 dd             	mov    %rbx,%rbp
    1e8b:	49 69 da 00 e1 f5 05 	imul   $0x5f5e100,%r10,%rbx
    1e92:	49 83 e8 30          	sub    $0x30,%r8
    1e96:	4d 89 f5             	mov    %r14,%r13
    1e99:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    1e9e:	49 69 d9 80 96 98 00 	imul   $0x989680,%r9,%rbx
    1ea5:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    1eaa:	49 83 f8 09          	cmp    $0x9,%r8
    1eae:	0f 87 b5 15 00 00    	ja     3469 <stomptalk::parser::finish_value(char const*)+0x2559>
    1eb4:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    1eb9:	4d 69 c0 a0 86 01 00 	imul   $0x186a0,%r8,%r8
    1ec0:	49 83 e9 30          	sub    $0x30,%r9
    1ec4:	49 83 f9 09          	cmp    $0x9,%r9
    1ec8:	0f 87 70 19 00 00    	ja     383e <stomptalk::parser::finish_value(char const*)+0x292e>
    1ece:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    1ed3:	4d 69 c9 10 27 00 00 	imul   $0x2710,%r9,%r9
    1eda:	49 83 ea 30          	sub    $0x30,%r10
    1ede:	49 83 fa 09          	cmp    $0x9,%r10
    1ee2:	0f 87 47 19 00 00    	ja     382f <stomptalk::parser::finish_value(char const*)+0x291f>
    1ee8:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    1eed:	4d 69 d2 e8 03 00 00 	imul   $0x3e8,%r10,%r10
    1ef4:	49 83 eb 30          	sub    $0x30,%r11
    1ef8:	49 83 fb 09          	cmp    $0x9,%r11
    1efc:	0f 87 1e 19 00 00    	ja     3820 <stomptalk::parser::finish_value(char const*)+0x2910>
    1f02:	49 6b db 64          	imul   $0x64,%r11,%rbx
    1f06:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    1f0b:	49 83 eb 30          	sub    $0x30,%r11
    1f0f:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    1f14:	49 83 fb 09          	cmp    $0x9,%r11
    1f18:	0f 87 f3 18 00 00    	ja     3811 <stomptalk::parser::finish_value(char const*)+0x2901>
    1f1e:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    1f25:	00 00 80
    1f28:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    1f2c:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    1f31:	49 83 eb 30          	sub    $0x30,%r11
    1f35:	49 83 fb 0a          	cmp    $0xa,%r11
    1f39:	4d 0f 43 de          	cmovae %r14,%r11
    1f3d:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    1f41:	48 8b 5c 24 c8       	mov    -0x38(%rsp),%rbx
    1f46:	49 01 db             	add    %rbx,%r11
    1f49:	4d 01 da             	add    %r11,%r10
    1f4c:	4d 01 d1             	add    %r10,%r9
    1f4f:	4d 01 c8             	add    %r9,%r8
    1f52:	4c 01 c1             	add    %r8,%rcx
    1f55:	48 03 4c 24 c0       	add    -0x40(%rsp),%rcx
    1f5a:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
    1f5f:	4c 01 e1             	add    %r12,%rcx
    1f62:	4c 01 e9             	add    %r13,%rcx
    1f65:	48 01 e9             	add    %rbp,%rcx
    1f68:	4c 01 f9             	add    %r15,%rcx
    1f6b:	e9 e0 f7 ff ff       	jmp    1750 <stomptalk::parser::finish_value(char const*)+0x840>
    1f70:	0f 87 7c 17 00 00    	ja     36f2 <stomptalk::parser::finish_value(char const*)+0x27e2>
    1f76:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    1f7b:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    1f7f:	48 83 fb 09          	cmp    $0x9,%rbx
    1f83:	0f 87 47 17 00 00    	ja     36d0 <stomptalk::parser::finish_value(char const*)+0x27c0>
    1f89:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    1f8e:	49 83 eb 30          	sub    $0x30,%r11
    1f92:	49 83 fb 09          	cmp    $0x9,%r11
    1f96:	0f 87 12 17 00 00    	ja     36ae <stomptalk::parser::finish_value(char const*)+0x279e>
    1f9c:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    1fa1:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    1fa5:	49 83 ff 09          	cmp    $0x9,%r15
    1fa9:	0f 87 dd 16 00 00    	ja     368c <stomptalk::parser::finish_value(char const*)+0x277c>
    1faf:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    1fb4:	49 83 ea 30          	sub    $0x30,%r10
    1fb8:	49 83 fa 09          	cmp    $0x9,%r10
    1fbc:	0f 87 a8 16 00 00    	ja     366a <stomptalk::parser::finish_value(char const*)+0x275a>
    1fc2:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    1fc7:	49 83 e9 30          	sub    $0x30,%r9
    1fcb:	49 83 f9 09          	cmp    $0x9,%r9
    1fcf:	0f 87 73 16 00 00    	ja     3648 <stomptalk::parser::finish_value(char const*)+0x2738>
    1fd5:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    1fda:	48 83 e9 30          	sub    $0x30,%rcx
    1fde:	48 83 f9 09          	cmp    $0x9,%rcx
    1fe2:	0f 87 3e 16 00 00    	ja     3626 <stomptalk::parser::finish_value(char const*)+0x2716>
    1fe8:	49 be 00 e8 76 48 17 	movabs $0x174876e800,%r14
    1fef:	00 00 00
    1ff2:	4d 69 db 00 ca 9a 3b 	imul   $0x3b9aca00,%r11,%r11
    1ff9:	4d 0f af c6          	imul   %r14,%r8
    1ffd:	4d 69 ef 00 e1 f5 05 	imul   $0x5f5e100,%r15,%r13
    2004:	4d 69 e2 80 96 98 00 	imul   $0x989680,%r10,%r12
    200b:	4d 89 c6             	mov    %r8,%r14
    200e:	48 69 c9 a0 86 01 00 	imul   $0x186a0,%rcx,%rcx
    2015:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    201c:	00 00 00
    201f:	49 0f af d8          	imul   %r8,%rbx
    2023:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    2028:	49 83 e8 30          	sub    $0x30,%r8
    202c:	48 89 dd             	mov    %rbx,%rbp
    202f:	49 69 d9 40 42 0f 00 	imul   $0xf4240,%r9,%rbx
    2036:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    203b:	49 83 f8 09          	cmp    $0x9,%r8
    203f:	0f 87 d2 15 00 00    	ja     3617 <stomptalk::parser::finish_value(char const*)+0x2707>
    2045:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    204a:	4d 69 c0 10 27 00 00 	imul   $0x2710,%r8,%r8
    2051:	49 83 e9 30          	sub    $0x30,%r9
    2055:	49 83 f9 09          	cmp    $0x9,%r9
    2059:	0f 87 48 10 00 00    	ja     30a7 <stomptalk::parser::finish_value(char const*)+0x2197>
    205f:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    2064:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    206b:	49 83 ea 30          	sub    $0x30,%r10
    206f:	49 83 fa 09          	cmp    $0x9,%r10
    2073:	0f 87 1f 10 00 00    	ja     3098 <stomptalk::parser::finish_value(char const*)+0x2188>
    2079:	49 6b da 64          	imul   $0x64,%r10,%rbx
    207d:	4c 0f be 52 0a       	movsbq 0xa(%rdx),%r10
    2082:	49 83 ea 30          	sub    $0x30,%r10
    2086:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    208b:	49 83 fa 09          	cmp    $0x9,%r10
    208f:	0f 87 7f 16 00 00    	ja     3714 <stomptalk::parser::finish_value(char const*)+0x2804>
    2095:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    209c:	00 00 80
    209f:	4b 8d 1c 92          	lea    (%r10,%r10,4),%rbx
    20a3:	4c 0f be 52 0b       	movsbq 0xb(%rdx),%r10
    20a8:	49 83 ea 30          	sub    $0x30,%r10
    20ac:	49 83 fa 0a          	cmp    $0xa,%r10
    20b0:	4d 0f 43 d7          	cmovae %r15,%r10
    20b4:	4d 8d 14 5a          	lea    (%r10,%rbx,2),%r10
    20b8:	48 8b 5c 24 c0       	mov    -0x40(%rsp),%rbx
    20bd:	49 01 da             	add    %rbx,%r10
    20c0:	4d 01 d1             	add    %r10,%r9
    20c3:	4d 01 c8             	add    %r9,%r8
    20c6:	4c 01 c1             	add    %r8,%rcx
    20c9:	48 03 4c 24 b8       	add    -0x48(%rsp),%rcx
    20ce:	4c 01 e1             	add    %r12,%rcx
    20d1:	4c 01 e9             	add    %r13,%rcx
    20d4:	4c 01 d9             	add    %r11,%rcx
    20d7:	48 01 e9             	add    %rbp,%rcx
    20da:	4c 01 f1             	add    %r14,%rcx
    20dd:	e9 6e f6 ff ff       	jmp    1750 <stomptalk::parser::finish_value(char const*)+0x840>
    20e2:	0f 87 7c 18 00 00    	ja     3964 <stomptalk::parser::finish_value(char const*)+0x2a54>
    20e8:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    20ed:	49 83 ea 30          	sub    $0x30,%r10
    20f1:	49 83 fa 09          	cmp    $0x9,%r10
    20f5:	0f 87 47 18 00 00    	ja     3942 <stomptalk::parser::finish_value(char const*)+0x2a32>
    20fb:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    2100:	49 83 eb 30          	sub    $0x30,%r11
    2104:	49 83 fb 09          	cmp    $0x9,%r11
    2108:	0f 87 12 18 00 00    	ja     3920 <stomptalk::parser::finish_value(char const*)+0x2a10>
    210e:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    2113:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    2117:	48 83 fb 09          	cmp    $0x9,%rbx
    211b:	0f 87 dd 17 00 00    	ja     38fe <stomptalk::parser::finish_value(char const*)+0x29ee>
    2121:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    2126:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    212a:	49 83 fe 09          	cmp    $0x9,%r14
    212e:	0f 87 a8 17 00 00    	ja     38dc <stomptalk::parser::finish_value(char const*)+0x29cc>
    2134:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    2139:	49 83 e9 30          	sub    $0x30,%r9
    213d:	49 83 f9 09          	cmp    $0x9,%r9
    2141:	0f 87 73 17 00 00    	ja     38ba <stomptalk::parser::finish_value(char const*)+0x29aa>
    2147:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    214c:	48 83 e9 30          	sub    $0x30,%rcx
    2150:	48 83 f9 09          	cmp    $0x9,%rcx
    2154:	0f 87 3e 17 00 00    	ja     3898 <stomptalk::parser::finish_value(char const*)+0x2988>
    215a:	49 bf 00 e4 0b 54 02 	movabs $0x2540be400,%r15
    2161:	00 00 00
    2164:	4d 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%r10
    216b:	4d 0f af c7          	imul   %r15,%r8
    216f:	4d 69 db 00 e1 f5 05 	imul   $0x5f5e100,%r11,%r11
    2176:	48 69 eb 80 96 98 00 	imul   $0x989680,%rbx,%rbp
    217d:	4d 89 c7             	mov    %r8,%r15
    2180:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    2185:	4d 69 ee 40 42 0f 00 	imul   $0xf4240,%r14,%r13
    218c:	4d 69 e1 a0 86 01 00 	imul   $0x186a0,%r9,%r12
    2193:	49 83 e8 30          	sub    $0x30,%r8
    2197:	48 69 c9 10 27 00 00 	imul   $0x2710,%rcx,%rcx
    219e:	49 83 f8 09          	cmp    $0x9,%r8
    21a2:	0f 87 e1 16 00 00    	ja     3889 <stomptalk::parser::finish_value(char const*)+0x2979>
    21a8:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    21ad:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
    21b4:	49 83 e9 30          	sub    $0x30,%r9
    21b8:	49 83 f9 09          	cmp    $0x9,%r9
    21bc:	0f 87 b8 16 00 00    	ja     387a <stomptalk::parser::finish_value(char const*)+0x296a>
    21c2:	49 6b d9 64          	imul   $0x64,%r9,%rbx
    21c6:	4c 0f be 4a 09       	movsbq 0x9(%rdx),%r9
    21cb:	49 83 e9 30          	sub    $0x30,%r9
    21cf:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    21d4:	49 83 f9 09          	cmp    $0x9,%r9
    21d8:	0f 87 8d 16 00 00    	ja     386b <stomptalk::parser::finish_value(char const*)+0x295b>
    21de:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    21e5:	00 00 80
    21e8:	4b 8d 1c 89          	lea    (%r9,%r9,4),%rbx
    21ec:	4c 0f be 4a 0a       	movsbq 0xa(%rdx),%r9
    21f1:	49 83 e9 30          	sub    $0x30,%r9
    21f5:	49 83 f9 0a          	cmp    $0xa,%r9
    21f9:	4d 0f 43 ce          	cmovae %r14,%r9
    21fd:	4d 8d 0c 59          	lea    (%r9,%rbx,2),%r9
    2201:	48 8b 5c 24 b8       	mov    -0x48(%rsp),%rbx
    2206:	49 01 d9             	add    %rbx,%r9
    2209:	4d 01 c8             	add    %r9,%r8
    220c:	4c 01 c1             	add    %r8,%rcx
    220f:	4c 01 e1             	add    %r12,%rcx
    2212:	4c 01 e9             	add    %r13,%rcx
    2215:	48 01 e9             	add    %rbp,%rcx
    2218:	4c 01 d9             	add    %r11,%rcx
    221b:	4c 01 d1             	add    %r10,%rcx
    221e:	4c 01 f9             	add    %r15,%rcx
    2221:	e9 2a f5 ff ff       	jmp    1750 <stomptalk::parser::finish_value(char const*)+0x840>
    2226:	0f 87 4a 0e 00 00    	ja     3076 <stomptalk::parser::finish_value(char const*)+0x2166>
    222c:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    2231:	49 83 e9 30          	sub    $0x30,%r9
    2235:	49 83 f9 09          	cmp    $0x9,%r9
    2239:	0f 87 15 0e 00 00    	ja     3054 <stomptalk::parser::finish_value(char const*)+0x2144>
    223f:	4c 0f be 52 02       	movsbq 0x2(%rdx),%r10
    2244:	49 83 ea 30          	sub    $0x30,%r10
    2248:	49 83 fa 09          	cmp    $0x9,%r10
    224c:	0f 87 e0 0d 00 00    	ja     3032 <stomptalk::parser::finish_value(char const*)+0x2122>
    2252:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    2257:	49 83 eb 30          	sub    $0x30,%r11
    225b:	49 83 fb 09          	cmp    $0x9,%r11
    225f:	0f 87 ab 0d 00 00    	ja     3010 <stomptalk::parser::finish_value(char const*)+0x2100>
    2265:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    226a:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    226e:	48 83 fb 09          	cmp    $0x9,%rbx
    2272:	0f 87 76 0d 00 00    	ja     2fee <stomptalk::parser::finish_value(char const*)+0x20de>
    2278:	48 0f be 4a 05       	movsbq 0x5(%rdx),%rcx
    227d:	4c 8d 71 d0          	lea    -0x30(%rcx),%r14
    2281:	49 83 fe 09          	cmp    $0x9,%r14
    2285:	0f 87 41 0d 00 00    	ja     2fcc <stomptalk::parser::finish_value(char const*)+0x20bc>
    228b:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    2290:	48 83 e9 30          	sub    $0x30,%rcx
    2294:	48 83 f9 09          	cmp    $0x9,%rcx
    2298:	0f 87 0c 0d 00 00    	ja     2faa <stomptalk::parser::finish_value(char const*)+0x209a>
    229e:	4c 6b e9 64          	imul   $0x64,%rcx,%r13
    22a2:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
    22a7:	4d 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%r8,%r8
    22ae:	48 83 e9 30          	sub    $0x30,%rcx
    22b2:	4d 69 c9 80 96 98 00 	imul   $0x989680,%r9,%r9
    22b9:	4d 69 d2 40 42 0f 00 	imul   $0xf4240,%r10,%r10
    22c0:	4d 69 db a0 86 01 00 	imul   $0x186a0,%r11,%r11
    22c7:	4c 69 fb 10 27 00 00 	imul   $0x2710,%rbx,%r15
    22ce:	49 69 ee e8 03 00 00 	imul   $0x3e8,%r14,%rbp
    22d5:	48 83 f9 09          	cmp    $0x9,%rcx
    22d9:	0f 87 bd 0c 00 00    	ja     2f9c <stomptalk::parser::finish_value(char const*)+0x208c>
    22df:	49 be 00 00 00 00 00 	movabs $0x8000000000000000,%r14
    22e6:	00 00 80
    22e9:	48 8d 1c 89          	lea    (%rcx,%rcx,4),%rbx
    22ed:	48 0f be 4a 08       	movsbq 0x8(%rdx),%rcx
    22f2:	48 83 e9 30          	sub    $0x30,%rcx
    22f6:	48 83 f9 0a          	cmp    $0xa,%rcx
    22fa:	49 0f 43 ce          	cmovae %r14,%rcx
    22fe:	48 8d 0c 59          	lea    (%rcx,%rbx,2),%rcx
    2302:	4c 01 e9             	add    %r13,%rcx
    2305:	48 01 e9             	add    %rbp,%rcx
    2308:	4c 01 f9             	add    %r15,%rcx
    230b:	4c 01 d9             	add    %r11,%rcx
    230e:	4c 01 d1             	add    %r10,%rcx
    2311:	4c 01 c9             	add    %r9,%rcx
    2314:	4c 01 c1             	add    %r8,%rcx
    2317:	e9 34 f4 ff ff       	jmp    1750 <stomptalk::parser::finish_value(char const*)+0x840>
    231c:	0f 87 ca 16 00 00    	ja     39ec <stomptalk::parser::finish_value(char const*)+0x2adc>
    2322:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    2327:	49 83 e9 30          	sub    $0x30,%r9
    232b:	49 83 f9 09          	cmp    $0x9,%r9
    232f:	0f 87 95 16 00 00    	ja     39ca <stomptalk::parser::finish_value(char const*)+0x2aba>
    2335:	4c 0f be 52 02       	movsbq 0x2(%rdx),%r10
    233a:	49 83 ea 30          	sub    $0x30,%r10
    233e:	49 83 fa 09          	cmp    $0x9,%r10
    2342:	0f 87 60 16 00 00    	ja     39a8 <stomptalk::parser::finish_value(char const*)+0x2a98>
    2348:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    234d:	49 83 eb 30          	sub    $0x30,%r11
    2351:	49 83 fb 09          	cmp    $0x9,%r11
    2355:	0f 87 2b 16 00 00    	ja     3986 <stomptalk::parser::finish_value(char const*)+0x2a76>
    235b:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    2360:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    2364:	48 83 fb 09          	cmp    $0x9,%rbx
    2368:	0f 87 c2 16 00 00    	ja     3a30 <stomptalk::parser::finish_value(char const*)+0x2b20>
    236e:	48 0f be 4a 05       	movsbq 0x5(%rdx),%rcx
    2373:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    2377:	49 83 ff 09          	cmp    $0x9,%r15
    237b:	0f 87 8d 16 00 00    	ja     3a0e <stomptalk::parser::finish_value(char const*)+0x2afe>
    2381:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    2386:	48 83 e9 30          	sub    $0x30,%rcx
    238a:	48 83 f9 09          	cmp    $0x9,%rcx
    238e:	0f 87 be 16 00 00    	ja     3a52 <stomptalk::parser::finish_value(char const*)+0x2b42>
    2394:	4d 69 c0 80 96 98 00 	imul   $0x989680,%r8,%r8
    239b:	4c 8d 34 89          	lea    (%rcx,%rcx,4),%r14
    239f:	48 0f be 4a 07       	movsbq 0x7(%rdx),%rcx
    23a4:	48 bd 00 00 00 00 00 	movabs $0x8000000000000000,%rbp
    23ab:	00 00 80
    23ae:	4d 69 c9 40 42 0f 00 	imul   $0xf4240,%r9,%r9
    23b5:	48 83 e9 30          	sub    $0x30,%rcx
    23b9:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    23c0:	4d 69 db 10 27 00 00 	imul   $0x2710,%r11,%r11
    23c7:	48 69 db e8 03 00 00 	imul   $0x3e8,%rbx,%rbx
    23ce:	4d 6b ff 64          	imul   $0x64,%r15,%r15
    23d2:	48 83 f9 0a          	cmp    $0xa,%rcx
    23d6:	48 0f 43 cd          	cmovae %rbp,%rcx
    23da:	4a 8d 0c 71          	lea    (%rcx,%r14,2),%rcx
    23de:	4c 01 f9             	add    %r15,%rcx
    23e1:	48 01 d9             	add    %rbx,%rcx
    23e4:	4c 01 d9             	add    %r11,%rcx
    23e7:	4c 01 d1             	add    %r10,%rcx
    23ea:	4c 01 c9             	add    %r9,%rcx
    23ed:	4c 01 c1             	add    %r8,%rcx
    23f0:	e9 5b f3 ff ff       	jmp    1750 <stomptalk::parser::finish_value(char const*)+0x840>
    23f5:	0f 87 f7 0a 00 00    	ja     2ef2 <stomptalk::parser::finish_value(char const*)+0x1fe2>
    23fb:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    2400:	49 83 ea 30          	sub    $0x30,%r10
    2404:	49 83 fa 09          	cmp    $0x9,%r10
    2408:	0f 87 c2 0a 00 00    	ja     2ed0 <stomptalk::parser::finish_value(char const*)+0x1fc0>
    240e:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    2413:	49 83 eb 30          	sub    $0x30,%r11
    2417:	49 83 fb 09          	cmp    $0x9,%r11
    241b:	0f 87 8d 0a 00 00    	ja     2eae <stomptalk::parser::finish_value(char const*)+0x1f9e>
    2421:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    2426:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    242a:	48 83 fb 09          	cmp    $0x9,%rbx
    242e:	0f 87 58 0a 00 00    	ja     2e8c <stomptalk::parser::finish_value(char const*)+0x1f7c>
    2434:	4c 0f be 4a 04       	movsbq 0x4(%rdx),%r9
    2439:	49 83 e9 30          	sub    $0x30,%r9
    243d:	49 83 f9 09          	cmp    $0x9,%r9
    2441:	0f 87 57 09 00 00    	ja     2d9e <stomptalk::parser::finish_value(char const*)+0x1e8e>
    2447:	48 0f be 4a 05       	movsbq 0x5(%rdx),%rcx
    244c:	48 83 e9 30          	sub    $0x30,%rcx
    2450:	48 83 f9 09          	cmp    $0x9,%rcx
    2454:	0f 87 22 09 00 00    	ja     2d7c <stomptalk::parser::finish_value(char const*)+0x1e6c>
    245a:	4c 0f be 7a 06       	movsbq 0x6(%rdx),%r15
    245f:	4d 8d 77 d0          	lea    -0x30(%r15),%r14
    2463:	49 83 fe 09          	cmp    $0x9,%r14
    2467:	0f 87 53 09 00 00    	ja     2dc0 <stomptalk::parser::finish_value(char const*)+0x1eb0>
    246d:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    2471:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    2475:	4d 69 db 10 27 00 00 	imul   $0x2710,%r11,%r11
    247c:	49 8d 0c 4e          	lea    (%r14,%rcx,2),%rcx
    2480:	4d 69 d2 a0 86 01 00 	imul   $0x186a0,%r10,%r10
    2487:	4c 01 c9             	add    %r9,%rcx
    248a:	4c 69 cb e8 03 00 00 	imul   $0x3e8,%rbx,%r9
    2491:	4d 69 c0 40 42 0f 00 	imul   $0xf4240,%r8,%r8
    2498:	4c 01 c9             	add    %r9,%rcx
    249b:	4c 01 d9             	add    %r11,%rcx
    249e:	4c 01 d1             	add    %r10,%rcx
    24a1:	4c 01 c1             	add    %r8,%rcx
    24a4:	e9 03 ef ff ff       	jmp    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    24a9:	0f 87 bb 09 00 00    	ja     2e6a <stomptalk::parser::finish_value(char const*)+0x1f5a>
    24af:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    24b4:	49 83 e9 30          	sub    $0x30,%r9
    24b8:	49 83 f9 09          	cmp    $0x9,%r9
    24bc:	0f 87 86 09 00 00    	ja     2e48 <stomptalk::parser::finish_value(char const*)+0x1f38>
    24c2:	4c 0f be 52 02       	movsbq 0x2(%rdx),%r10
    24c7:	49 83 ea 30          	sub    $0x30,%r10
    24cb:	49 83 fa 09          	cmp    $0x9,%r10
    24cf:	0f 87 51 09 00 00    	ja     2e26 <stomptalk::parser::finish_value(char const*)+0x1f16>
    24d5:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    24da:	48 83 e9 30          	sub    $0x30,%rcx
    24de:	48 83 f9 09          	cmp    $0x9,%rcx
    24e2:	0f 87 1c 09 00 00    	ja     2e04 <stomptalk::parser::finish_value(char const*)+0x1ef4>
    24e8:	4c 0f be 5a 04       	movsbq 0x4(%rdx),%r11
    24ed:	49 83 eb 30          	sub    $0x30,%r11
    24f1:	49 83 fb 09          	cmp    $0x9,%r11
    24f5:	0f 87 e7 08 00 00    	ja     2de2 <stomptalk::parser::finish_value(char const*)+0x1ed2>
    24fb:	4d 6b d2 64          	imul   $0x64,%r10,%r10
    24ff:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    2503:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    250a:	49 8d 0c 4b          	lea    (%r11,%rcx,2),%rcx
    250e:	4d 69 c0 10 27 00 00 	imul   $0x2710,%r8,%r8
    2515:	4c 01 d1             	add    %r10,%rcx
    2518:	4c 01 c9             	add    %r9,%rcx
    251b:	4c 01 c1             	add    %r8,%rcx
    251e:	e9 89 ee ff ff       	jmp    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    2523:	0f 87 51 0a 00 00    	ja     2f7a <stomptalk::parser::finish_value(char const*)+0x206a>
    2529:	4c 0f be 4a 01       	movsbq 0x1(%rdx),%r9
    252e:	49 83 e9 30          	sub    $0x30,%r9
    2532:	49 83 f9 09          	cmp    $0x9,%r9
    2536:	0f 87 1c 0a 00 00    	ja     2f58 <stomptalk::parser::finish_value(char const*)+0x2048>
    253c:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    2541:	48 83 e9 30          	sub    $0x30,%rcx
    2545:	48 83 f9 09          	cmp    $0x9,%rcx
    2549:	0f 87 e7 09 00 00    	ja     2f36 <stomptalk::parser::finish_value(char const*)+0x2026>
    254f:	4c 0f be 52 03       	movsbq 0x3(%rdx),%r10
    2554:	49 83 ea 30          	sub    $0x30,%r10
    2558:	49 83 fa 09          	cmp    $0x9,%r10
    255c:	0f 87 b2 09 00 00    	ja     2f14 <stomptalk::parser::finish_value(char const*)+0x2004>
    2562:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    2566:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    256a:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
    2571:	49 8d 0c 4a          	lea    (%r10,%rcx,2),%rcx
    2575:	4c 01 c9             	add    %r9,%rcx
    2578:	4c 01 c1             	add    %r8,%rcx
    257b:	e9 2c ee ff ff       	jmp    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    2580:	0f 87 f4 05 00 00    	ja     2b7a <stomptalk::parser::finish_value(char const*)+0x1c6a>
    2586:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    258b:	48 83 e9 30          	sub    $0x30,%rcx
    258f:	48 83 f9 09          	cmp    $0x9,%rcx
    2593:	0f 87 bf 05 00 00    	ja     2b58 <stomptalk::parser::finish_value(char const*)+0x1c48>
    2599:	4c 0f be 4a 02       	movsbq 0x2(%rdx),%r9
    259e:	49 83 e9 30          	sub    $0x30,%r9
    25a2:	49 83 f9 09          	cmp    $0x9,%r9
    25a6:	0f 87 8a 05 00 00    	ja     2b36 <stomptalk::parser::finish_value(char const*)+0x1c26>
    25ac:	4d 6b c0 64          	imul   $0x64,%r8,%r8
    25b0:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    25b4:	49 8d 0c 49          	lea    (%r9,%rcx,2),%rcx
    25b8:	4c 01 c1             	add    %r8,%rcx
    25bb:	e9 ec ed ff ff       	jmp    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    25c0:	0f 87 3f 05 00 00    	ja     2b05 <stomptalk::parser::finish_value(char const*)+0x1bf5>
    25c6:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    25cb:	48 83 e9 30          	sub    $0x30,%rcx
    25cf:	48 83 f9 09          	cmp    $0x9,%rcx
    25d3:	0f 87 0a 05 00 00    	ja     2ae3 <stomptalk::parser::finish_value(char const*)+0x1bd3>
    25d9:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
    25dd:	4a 8d 0c 41          	lea    (%rcx,%r8,2),%rcx
    25e1:	e9 c6 ed ff ff       	jmp    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    25e6:	0f 87 03 12 00 00    	ja     37ef <stomptalk::parser::finish_value(char const*)+0x28df>
    25ec:	48 0f be 4a 01       	movsbq 0x1(%rdx),%rcx
    25f1:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    25f5:	48 83 fb 09          	cmp    $0x9,%rbx
    25f9:	0f 87 ce 11 00 00    	ja     37cd <stomptalk::parser::finish_value(char const*)+0x28bd>
    25ff:	48 0f be 4a 02       	movsbq 0x2(%rdx),%rcx
    2604:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    2608:	49 83 ff 09          	cmp    $0x9,%r15
    260c:	0f 87 99 11 00 00    	ja     37ab <stomptalk::parser::finish_value(char const*)+0x289b>
    2612:	4c 0f be 5a 03       	movsbq 0x3(%rdx),%r11
    2617:	49 83 eb 30          	sub    $0x30,%r11
    261b:	49 83 fb 09          	cmp    $0x9,%r11
    261f:	0f 87 64 11 00 00    	ja     3789 <stomptalk::parser::finish_value(char const*)+0x2879>
    2625:	4c 0f be 52 04       	movsbq 0x4(%rdx),%r10
    262a:	49 83 ea 30          	sub    $0x30,%r10
    262e:	49 83 fa 09          	cmp    $0x9,%r10
    2632:	0f 87 2f 11 00 00    	ja     3767 <stomptalk::parser::finish_value(char const*)+0x2857>
    2638:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    263d:	49 83 e9 30          	sub    $0x30,%r9
    2641:	49 83 f9 09          	cmp    $0x9,%r9
    2645:	0f 87 fa 10 00 00    	ja     3745 <stomptalk::parser::finish_value(char const*)+0x2835>
    264b:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    2650:	48 83 e9 30          	sub    $0x30,%rcx
    2654:	48 83 f9 09          	cmp    $0x9,%rcx
    2658:	0f 87 c5 10 00 00    	ja     3723 <stomptalk::parser::finish_value(char const*)+0x2813>
    265e:	49 be 00 a0 72 4e 18 	movabs $0x9184e72a000,%r14
    2665:	09 00 00
    2668:	48 69 c9 80 96 98 00 	imul   $0x989680,%rcx,%rcx
    266f:	4d 0f af c6          	imul   %r14,%r8
    2673:	4d 89 c6             	mov    %r8,%r14
    2676:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    267d:	00 00 00
    2680:	49 0f af d8          	imul   %r8,%rbx
    2684:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    268b:	00 00 00
    268e:	4d 0f af f8          	imul   %r8,%r15
    2692:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    2699:	00 00 00
    269c:	4d 0f af d8          	imul   %r8,%r11
    26a0:	4c 0f be 42 07       	movsbq 0x7(%rdx),%r8
    26a5:	48 89 dd             	mov    %rbx,%rbp
    26a8:	49 69 da 00 ca 9a 3b 	imul   $0x3b9aca00,%r10,%rbx
    26af:	49 83 e8 30          	sub    $0x30,%r8
    26b3:	4d 89 fd             	mov    %r15,%r13
    26b6:	4d 89 dc             	mov    %r11,%r12
    26b9:	48 89 5c 24 b8       	mov    %rbx,-0x48(%rsp)
    26be:	49 69 d9 00 e1 f5 05 	imul   $0x5f5e100,%r9,%rbx
    26c5:	48 89 5c 24 c0       	mov    %rbx,-0x40(%rsp)
    26ca:	49 83 f8 09          	cmp    $0x9,%r8
    26ce:	0f 87 84 03 00 00    	ja     2a58 <stomptalk::parser::finish_value(char const*)+0x1b48>
    26d4:	4c 0f be 4a 08       	movsbq 0x8(%rdx),%r9
    26d9:	4d 69 c0 40 42 0f 00 	imul   $0xf4240,%r8,%r8
    26e0:	49 83 e9 30          	sub    $0x30,%r9
    26e4:	49 83 f9 09          	cmp    $0x9,%r9
    26e8:	0f 87 a6 03 00 00    	ja     2a94 <stomptalk::parser::finish_value(char const*)+0x1b84>
    26ee:	4c 0f be 52 09       	movsbq 0x9(%rdx),%r10
    26f3:	4d 69 c9 a0 86 01 00 	imul   $0x186a0,%r9,%r9
    26fa:	49 83 ea 30          	sub    $0x30,%r10
    26fe:	49 83 fa 09          	cmp    $0x9,%r10
    2702:	0f 87 7d 03 00 00    	ja     2a85 <stomptalk::parser::finish_value(char const*)+0x1b75>
    2708:	4c 0f be 5a 0a       	movsbq 0xa(%rdx),%r11
    270d:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    2714:	49 83 eb 30          	sub    $0x30,%r11
    2718:	49 83 fb 09          	cmp    $0x9,%r11
    271c:	0f 87 54 03 00 00    	ja     2a76 <stomptalk::parser::finish_value(char const*)+0x1b66>
    2722:	49 69 db e8 03 00 00 	imul   $0x3e8,%r11,%rbx
    2729:	4c 0f be 5a 0b       	movsbq 0xb(%rdx),%r11
    272e:	49 83 eb 30          	sub    $0x30,%r11
    2732:	48 89 5c 24 c8       	mov    %rbx,-0x38(%rsp)
    2737:	49 83 fb 09          	cmp    $0x9,%r11
    273b:	0f 87 26 03 00 00    	ja     2a67 <stomptalk::parser::finish_value(char const*)+0x1b57>
    2741:	49 6b db 64          	imul   $0x64,%r11,%rbx
    2745:	4c 0f be 5a 0c       	movsbq 0xc(%rdx),%r11
    274a:	49 83 eb 30          	sub    $0x30,%r11
    274e:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
    2753:	49 83 fb 09          	cmp    $0x9,%r11
    2757:	0f 87 46 03 00 00    	ja     2aa3 <stomptalk::parser::finish_value(char const*)+0x1b93>
    275d:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    2764:	00 00 80
    2767:	4b 8d 1c 9b          	lea    (%r11,%r11,4),%rbx
    276b:	4c 0f be 5a 0d       	movsbq 0xd(%rdx),%r11
    2770:	49 83 eb 30          	sub    $0x30,%r11
    2774:	49 83 fb 0a          	cmp    $0xa,%r11
    2778:	4d 0f 43 df          	cmovae %r15,%r11
    277c:	4d 8d 1c 5b          	lea    (%r11,%rbx,2),%r11
    2780:	e9 44 f4 ff ff       	jmp    1bc9 <stomptalk::parser::finish_value(char const*)+0xcb9>
    2785:	0f 87 d3 13 00 00    	ja     3b5e <stomptalk::parser::finish_value(char const*)+0x2c4e>
    278b:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    2790:	49 83 ea 30          	sub    $0x30,%r10
    2794:	49 83 fa 09          	cmp    $0x9,%r10
    2798:	0f 87 9e 13 00 00    	ja     3b3c <stomptalk::parser::finish_value(char const*)+0x2c2c>
    279e:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    27a3:	49 83 eb 30          	sub    $0x30,%r11
    27a7:	49 83 fb 09          	cmp    $0x9,%r11
    27ab:	0f 87 69 13 00 00    	ja     3b1a <stomptalk::parser::finish_value(char const*)+0x2c0a>
    27b1:	48 0f be 4a 03       	movsbq 0x3(%rdx),%rcx
    27b6:	48 8d 59 d0          	lea    -0x30(%rcx),%rbx
    27ba:	48 83 fb 09          	cmp    $0x9,%rbx
    27be:	0f 87 34 13 00 00    	ja     3af8 <stomptalk::parser::finish_value(char const*)+0x2be8>
    27c4:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    27c9:	4c 8d 79 d0          	lea    -0x30(%rcx),%r15
    27cd:	49 83 ff 09          	cmp    $0x9,%r15
    27d1:	0f 87 ff 12 00 00    	ja     3ad6 <stomptalk::parser::finish_value(char const*)+0x2bc6>
    27d7:	4c 0f be 4a 05       	movsbq 0x5(%rdx),%r9
    27dc:	49 83 e9 30          	sub    $0x30,%r9
    27e0:	49 83 f9 09          	cmp    $0x9,%r9
    27e4:	0f 87 ca 12 00 00    	ja     3ab4 <stomptalk::parser::finish_value(char const*)+0x2ba4>
    27ea:	48 0f be 4a 06       	movsbq 0x6(%rdx),%rcx
    27ef:	48 83 e9 30          	sub    $0x30,%rcx
    27f3:	48 83 f9 09          	cmp    $0x9,%rcx
    27f7:	0f 87 95 12 00 00    	ja     3a92 <stomptalk::parser::finish_value(char const*)+0x2b82>
    27fd:	4d 69 e1 10 27 00 00 	imul   $0x2710,%r9,%r12
    2804:	4c 0f be 4a 07       	movsbq 0x7(%rdx),%r9
    2809:	4d 69 f0 00 ca 9a 3b 	imul   $0x3b9aca00,%r8,%r14
    2810:	49 83 e9 30          	sub    $0x30,%r9
    2814:	4d 69 d2 00 e1 f5 05 	imul   $0x5f5e100,%r10,%r10
    281b:	4d 69 db 80 96 98 00 	imul   $0x989680,%r11,%r11
    2822:	48 69 eb 40 42 0f 00 	imul   $0xf4240,%rbx,%rbp
    2829:	4d 69 ef a0 86 01 00 	imul   $0x186a0,%r15,%r13
    2830:	48 69 c9 e8 03 00 00 	imul   $0x3e8,%rcx,%rcx
    2837:	49 83 f9 09          	cmp    $0x9,%r9
    283b:	0f 87 42 12 00 00    	ja     3a83 <stomptalk::parser::finish_value(char const*)+0x2b73>
    2841:	4c 0f be 42 08       	movsbq 0x8(%rdx),%r8
    2846:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    284a:	49 83 e8 30          	sub    $0x30,%r8
    284e:	49 83 f8 09          	cmp    $0x9,%r8
    2852:	0f 87 1c 12 00 00    	ja     3a74 <stomptalk::parser::finish_value(char const*)+0x2b64>
    2858:	49 bf 00 00 00 00 00 	movabs $0x8000000000000000,%r15
    285f:	00 00 80
    2862:	4b 8d 1c 80          	lea    (%r8,%r8,4),%rbx
    2866:	4c 0f be 42 09       	movsbq 0x9(%rdx),%r8
    286b:	49 83 e8 30          	sub    $0x30,%r8
    286f:	49 83 f8 0a          	cmp    $0xa,%r8
    2873:	4d 0f 43 c7          	cmovae %r15,%r8
    2877:	4d 8d 04 58          	lea    (%r8,%rbx,2),%r8
    287b:	4d 01 c1             	add    %r8,%r9
    287e:	4c 01 c9             	add    %r9,%rcx
    2881:	4c 01 e1             	add    %r12,%rcx
    2884:	4c 01 e9             	add    %r13,%rcx
    2887:	48 01 e9             	add    %rbp,%rcx
    288a:	4c 01 d9             	add    %r11,%rcx
    288d:	4c 01 d1             	add    %r10,%rcx
    2890:	4c 01 f1             	add    %r14,%rcx
    2893:	e9 b8 ee ff ff       	jmp    1750 <stomptalk::parser::finish_value(char const*)+0x840>
    2898:	0f 87 c2 08 00 00    	ja     3160 <stomptalk::parser::finish_value(char const*)+0x2250>
    289e:	4c 0f be 52 01       	movsbq 0x1(%rdx),%r10
    28a3:	49 83 ea 30          	sub    $0x30,%r10
    28a7:	49 83 fa 09          	cmp    $0x9,%r10
    28ab:	0f 87 8d 08 00 00    	ja     313e <stomptalk::parser::finish_value(char const*)+0x222e>
    28b1:	4c 0f be 5a 02       	movsbq 0x2(%rdx),%r11
    28b6:	49 83 eb 30          	sub    $0x30,%r11
    28ba:	49 83 fb 09          	cmp    $0x9,%r11
    28be:	0f 87 58 08 00 00    	ja     311c <stomptalk::parser::finish_value(char const*)+0x220c>
    28c4:	4c 0f be 4a 03       	movsbq 0x3(%rdx),%r9
    28c9:	49 83 e9 30          	sub    $0x30,%r9
    28cd:	49 83 f9 09          	cmp    $0x9,%r9
    28d1:	0f 87 23 08 00 00    	ja     30fa <stomptalk::parser::finish_value(char const*)+0x21ea>
    28d7:	48 0f be 4a 04       	movsbq 0x4(%rdx),%rcx
    28dc:	48 83 e9 30          	sub    $0x30,%rcx
    28e0:	48 83 f9 09          	cmp    $0x9,%rcx
    28e4:	0f 87 ee 07 00 00    	ja     30d8 <stomptalk::parser::finish_value(char const*)+0x21c8>
    28ea:	48 0f be 5a 05       	movsbq 0x5(%rdx),%rbx
    28ef:	48 83 eb 30          	sub    $0x30,%rbx
    28f3:	48 83 fb 09          	cmp    $0x9,%rbx
    28f7:	0f 87 b9 07 00 00    	ja     30b6 <stomptalk::parser::finish_value(char const*)+0x21a6>
    28fd:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    2901:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    2905:	4d 69 db e8 03 00 00 	imul   $0x3e8,%r11,%r11
    290c:	48 8d 0c 4b          	lea    (%rbx,%rcx,2),%rcx
    2910:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    2917:	4d 69 c0 a0 86 01 00 	imul   $0x186a0,%r8,%r8
    291e:	4c 01 c9             	add    %r9,%rcx
    2921:	4c 01 d9             	add    %r11,%rcx
    2924:	4c 01 d1             	add    %r10,%rcx
    2927:	4c 01 c1             	add    %r8,%rcx
    292a:	e9 7d ea ff ff       	jmp    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    292f:	0f 86 77 ea ff ff    	jbe    13ac <stomptalk::parser::finish_value(char const*)+0x49c>
    2935:	48 8b 1c 24          	mov    (%rsp),%rbx
    2939:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    293e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2943:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2948:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    294d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2952:	e9 c2 e6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2957:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    295c:	e9 b8 e6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2961:	48 8b 1c 24          	mov    (%rsp),%rbx
    2965:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    296a:	e9 aa e6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    296f:	b9 01 00 00 00       	mov    $0x1,%ecx
    2974:	48 c1 e1 3f          	shl    $0x3f,%rcx
    2978:	e9 60 e9 ff ff       	jmp    12dd <stomptalk::parser::finish_value(char const*)+0x3cd>
    297d:	48 8b 1c 24          	mov    (%rsp),%rbx
    2981:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2986:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    298b:	e9 89 e6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2990:	48 8b 1c 24          	mov    (%rsp),%rbx
    2994:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2999:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    299e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    29a3:	e9 71 e6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    29a8:	48 8b 1c 24          	mov    (%rsp),%rbx
    29ac:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    29b1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    29b6:	e9 5e e6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    29bb:	b9 01 00 00 00       	mov    $0x1,%ecx
    29c0:	48 c1 e1 3f          	shl    $0x3f,%rcx
    29c4:	e9 1c e9 ff ff       	jmp    12e5 <stomptalk::parser::finish_value(char const*)+0x3d5>
    29c9:	bb 01 00 00 00       	mov    $0x1,%ebx
    29ce:	48 c1 e3 3f          	shl    $0x3f,%rbx
    29d2:	e9 16 e9 ff ff       	jmp    12ed <stomptalk::parser::finish_value(char const*)+0x3dd>
    29d7:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    29de:	00 00 80
    29e1:	e9 0f e9 ff ff       	jmp    12f5 <stomptalk::parser::finish_value(char const*)+0x3e5>
    29e6:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    29ed:	00 00 80
    29f0:	e9 08 e9 ff ff       	jmp    12fd <stomptalk::parser::finish_value(char const*)+0x3ed>
    29f5:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    29fc:	00 00 80
    29ff:	e9 01 e9 ff ff       	jmp    1305 <stomptalk::parser::finish_value(char const*)+0x3f5>
    2a04:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2a0b:	00 00 80
    2a0e:	e9 fa e8 ff ff       	jmp    130d <stomptalk::parser::finish_value(char const*)+0x3fd>
    2a13:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2a1a:	00 00 80
    2a1d:	e9 f3 e8 ff ff       	jmp    1315 <stomptalk::parser::finish_value(char const*)+0x405>
    2a22:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2a29:	00 00 80
    2a2c:	e9 e7 e8 ff ff       	jmp    1318 <stomptalk::parser::finish_value(char const*)+0x408>
    2a31:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2a38:	00 00 80
    2a3b:	e9 db e8 ff ff       	jmp    131b <stomptalk::parser::finish_value(char const*)+0x40b>
    2a40:	48 8b 1c 24          	mov    (%rsp),%rbx
    2a44:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2a49:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2a4e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2a53:	e9 c1 e5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2a58:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    2a5f:	00 00 80
    2a62:	e9 7b f1 ff ff       	jmp    1be2 <stomptalk::parser::finish_value(char const*)+0xcd2>
    2a67:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2a6e:	00 00 80
    2a71:	e9 5b f1 ff ff       	jmp    1bd1 <stomptalk::parser::finish_value(char const*)+0xcc1>
    2a76:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2a7d:	00 00 80
    2a80:	e9 54 f1 ff ff       	jmp    1bd9 <stomptalk::parser::finish_value(char const*)+0xcc9>
    2a85:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    2a8c:	00 00 80
    2a8f:	e9 48 f1 ff ff       	jmp    1bdc <stomptalk::parser::finish_value(char const*)+0xccc>
    2a94:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    2a9b:	00 00 80
    2a9e:	e9 3c f1 ff ff       	jmp    1bdf <stomptalk::parser::finish_value(char const*)+0xccf>
    2aa3:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2aaa:	00 00 80
    2aad:	e9 17 f1 ff ff       	jmp    1bc9 <stomptalk::parser::finish_value(char const*)+0xcb9>
    2ab2:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ab6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2abb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ac0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ac5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2aca:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2acf:	e9 45 e5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2ad4:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2adb:	00 00 80
    2ade:	e9 de f0 ff ff       	jmp    1bc1 <stomptalk::parser::finish_value(char const*)+0xcb1>
    2ae3:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ae7:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2aec:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2af1:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2af6:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2afb:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b00:	e9 14 e5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2b05:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b09:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b0e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2b13:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b18:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b1d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b22:	e9 f2 e4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2b27:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2b2e:	00 00 80
    2b31:	e9 c8 eb ff ff       	jmp    16fe <stomptalk::parser::finish_value(char const*)+0x7ee>
    2b36:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b3a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b3f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2b44:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b49:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b4e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b53:	e9 c1 e4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2b58:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b5c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b61:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2b66:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b6b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b70:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b75:	e9 9f e4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2b7a:	48 8b 1c 24          	mov    (%rsp),%rbx
    2b7e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2b83:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2b88:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2b8d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2b92:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2b97:	e9 7d e4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2b9c:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ba0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ba5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2baa:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2baf:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2bb4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2bb9:	e9 5b e4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2bbe:	48 8b 1c 24          	mov    (%rsp),%rbx
    2bc2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2bc7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2bcc:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2bd1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2bd6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2bdb:	e9 39 e4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2be0:	48 8b 1c 24          	mov    (%rsp),%rbx
    2be4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2be9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2bee:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2bf3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2bf8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2bfd:	e9 17 e4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2c02:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c06:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c0b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2c10:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2c15:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2c1a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c1f:	e9 f5 e3 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2c24:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    2c2b:	00 00 80
    2c2e:	e9 86 ef ff ff       	jmp    1bb9 <stomptalk::parser::finish_value(char const*)+0xca9>
    2c33:	0f b6 0a             	movzbl (%rdx),%ecx
    2c36:	83 e9 30             	sub    $0x30,%ecx
    2c39:	83 f9 09             	cmp    $0x9,%ecx
    2c3c:	0f 87 90 00 00 00    	ja     2cd2 <stomptalk::parser::finish_value(char const*)+0x1dc2>
    2c42:	41 89 cc             	mov    %ecx,%r12d
    2c45:	49 89 d0             	mov    %rdx,%r8
    2c48:	48 83 f8 14          	cmp    $0x14,%rax
    2c4c:	75 61                	jne    2caf <stomptalk::parser::finish_value(char const*)+0x1d9f>
    2c4e:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c52:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c57:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2c5c:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2c61:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c66:	e9 f8 e3 ff ff       	jmp    1063 <stomptalk::parser::finish_value(char const*)+0x153>
    2c6b:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c6f:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c74:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2c79:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2c7e:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2c83:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2c88:	e9 8c e3 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2c8d:	48 8b 1c 24          	mov    (%rsp),%rbx
    2c91:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2c96:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2c9b:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ca0:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ca5:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2caa:	e9 6a e3 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2caf:	48 8b 1c 24          	mov    (%rsp),%rbx
    2cb3:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2cb8:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    2cbe:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2cc3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2cc8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2ccd:	e9 b2 e3 ff ff       	jmp    1084 <stomptalk::parser::finish_value(char const*)+0x174>
    2cd2:	48 8b 1c 24          	mov    (%rsp),%rbx
    2cd6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2cdb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ce0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ce5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2cea:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2cef:	e9 25 e3 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2cf4:	48 8b 1c 24          	mov    (%rsp),%rbx
    2cf8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2cfd:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d02:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d07:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d0c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d11:	e9 03 e3 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2d16:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d1a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d1f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d24:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d29:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d2e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d33:	e9 e1 e2 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2d38:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d3c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d41:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d46:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d4b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d50:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d55:	e9 bf e2 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2d5a:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d5e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d63:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d68:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d6d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d72:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d77:	e9 9d e2 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2d7c:	48 8b 1c 24          	mov    (%rsp),%rbx
    2d80:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2d85:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2d8a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2d8f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2d94:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2d99:	e9 7b e2 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2d9e:	48 8b 1c 24          	mov    (%rsp),%rbx
    2da2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2da7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2dac:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2db1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2db6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2dbb:	e9 59 e2 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2dc0:	48 8b 1c 24          	mov    (%rsp),%rbx
    2dc4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2dc9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2dce:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2dd3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2dd8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2ddd:	e9 37 e2 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2de2:	48 8b 1c 24          	mov    (%rsp),%rbx
    2de6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2deb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2df0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2df5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2dfa:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2dff:	e9 15 e2 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2e04:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e08:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e0d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e12:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e17:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e1c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e21:	e9 f3 e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2e26:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e2a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e2f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e34:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e39:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e3e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e43:	e9 d1 e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2e48:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e4c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e51:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e56:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e5b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e60:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e65:	e9 af e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2e6a:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e6e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e73:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e78:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e7d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2e82:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2e87:	e9 8d e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2e8c:	48 8b 1c 24          	mov    (%rsp),%rbx
    2e90:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2e95:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2e9a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2e9f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ea4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2ea9:	e9 6b e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2eae:	48 8b 1c 24          	mov    (%rsp),%rbx
    2eb2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2eb7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ebc:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ec1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ec6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2ecb:	e9 49 e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2ed0:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ed4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ed9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ede:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2ee3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2ee8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2eed:	e9 27 e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2ef2:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ef6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2efb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2f00:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2f05:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2f0a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2f0f:	e9 05 e1 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2f14:	48 8b 1c 24          	mov    (%rsp),%rbx
    2f18:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2f1d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2f22:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2f27:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2f2c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2f31:	e9 e3 e0 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2f36:	48 8b 1c 24          	mov    (%rsp),%rbx
    2f3a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2f3f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2f44:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2f49:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2f4e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2f53:	e9 c1 e0 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2f58:	48 8b 1c 24          	mov    (%rsp),%rbx
    2f5c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2f61:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2f66:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2f6b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2f70:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2f75:	e9 9f e0 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2f7a:	48 8b 1c 24          	mov    (%rsp),%rbx
    2f7e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2f83:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2f88:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2f8d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2f92:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2f97:	e9 7d e0 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2f9c:	b9 01 00 00 00       	mov    $0x1,%ecx
    2fa1:	48 c1 e1 3f          	shl    $0x3f,%rcx
    2fa5:	e9 58 f3 ff ff       	jmp    2302 <stomptalk::parser::finish_value(char const*)+0x13f2>
    2faa:	48 8b 1c 24          	mov    (%rsp),%rbx
    2fae:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2fb3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2fb8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2fbd:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2fc2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2fc7:	e9 4d e0 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2fcc:	48 8b 1c 24          	mov    (%rsp),%rbx
    2fd0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2fd5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2fda:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    2fdf:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    2fe4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    2fe9:	e9 2b e0 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    2fee:	48 8b 1c 24          	mov    (%rsp),%rbx
    2ff2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    2ff7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    2ffc:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3001:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3006:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    300b:	e9 09 e0 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3010:	48 8b 1c 24          	mov    (%rsp),%rbx
    3014:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3019:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    301e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3023:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3028:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    302d:	e9 e7 df ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3032:	48 8b 1c 24          	mov    (%rsp),%rbx
    3036:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    303b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3040:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3045:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    304a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    304f:	e9 c5 df ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3054:	48 8b 1c 24          	mov    (%rsp),%rbx
    3058:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    305d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3062:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3067:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    306c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3071:	e9 a3 df ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3076:	48 8b 1c 24          	mov    (%rsp),%rbx
    307a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    307f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3084:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3089:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    308e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3093:	e9 81 df ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3098:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    309f:	00 00 80
    30a2:	e9 19 f0 ff ff       	jmp    20c0 <stomptalk::parser::finish_value(char const*)+0x11b0>
    30a7:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    30ae:	00 00 80
    30b1:	e9 0d f0 ff ff       	jmp    20c3 <stomptalk::parser::finish_value(char const*)+0x11b3>
    30b6:	48 8b 1c 24          	mov    (%rsp),%rbx
    30ba:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    30bf:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    30c4:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    30c9:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    30ce:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    30d3:	e9 41 df ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    30d8:	48 8b 1c 24          	mov    (%rsp),%rbx
    30dc:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    30e1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    30e6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    30eb:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    30f0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    30f5:	e9 1f df ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    30fa:	48 8b 1c 24          	mov    (%rsp),%rbx
    30fe:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3103:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3108:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    310d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3112:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3117:	e9 fd de ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    311c:	48 8b 1c 24          	mov    (%rsp),%rbx
    3120:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3125:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    312a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    312f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3134:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3139:	e9 db de ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    313e:	48 8b 1c 24          	mov    (%rsp),%rbx
    3142:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3147:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    314c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3151:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3156:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    315b:	e9 b9 de ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3160:	48 8b 1c 24          	mov    (%rsp),%rbx
    3164:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3169:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    316e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3173:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3178:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    317d:	e9 97 de ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3182:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    3189:	00 00 80
    318c:	e9 f3 e7 ff ff       	jmp    1984 <stomptalk::parser::finish_value(char const*)+0xa74>
    3191:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    3198:	00 00 80
    319b:	e9 ec e7 ff ff       	jmp    198c <stomptalk::parser::finish_value(char const*)+0xa7c>
    31a0:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    31a7:	00 00 80
    31aa:	e9 e5 e7 ff ff       	jmp    1994 <stomptalk::parser::finish_value(char const*)+0xa84>
    31af:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    31b6:	00 00 80
    31b9:	e9 de e7 ff ff       	jmp    199c <stomptalk::parser::finish_value(char const*)+0xa8c>
    31be:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    31c5:	00 00 80
    31c8:	e9 d7 e7 ff ff       	jmp    19a4 <stomptalk::parser::finish_value(char const*)+0xa94>
    31cd:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    31d4:	00 00 80
    31d7:	e9 cb e7 ff ff       	jmp    19a7 <stomptalk::parser::finish_value(char const*)+0xa97>
    31dc:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    31e3:	00 00 80
    31e6:	e9 bf e7 ff ff       	jmp    19aa <stomptalk::parser::finish_value(char const*)+0xa9a>
    31eb:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    31f2:	00 00 80
    31f5:	e9 b3 e7 ff ff       	jmp    19ad <stomptalk::parser::finish_value(char const*)+0xa9d>
    31fa:	b9 01 00 00 00       	mov    $0x1,%ecx
    31ff:	48 c1 e1 3f          	shl    $0x3f,%rcx
    3203:	e9 a8 e7 ff ff       	jmp    19b0 <stomptalk::parser::finish_value(char const*)+0xaa0>
    3208:	48 8b 1c 24          	mov    (%rsp),%rbx
    320c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3211:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3216:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    321b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3220:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3225:	e9 ef dd ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    322a:	48 8b 1c 24          	mov    (%rsp),%rbx
    322e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3233:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3238:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    323d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3242:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3247:	e9 cd dd ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    324c:	48 8b 1c 24          	mov    (%rsp),%rbx
    3250:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3255:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    325a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    325f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3264:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3269:	e9 ab dd ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    326e:	48 8b 1c 24          	mov    (%rsp),%rbx
    3272:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3277:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    327c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3281:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3286:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    328b:	e9 89 dd ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3290:	48 8b 1c 24          	mov    (%rsp),%rbx
    3294:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3299:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    329e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    32a3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    32a8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    32ad:	e9 67 dd ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    32b2:	48 8b 1c 24          	mov    (%rsp),%rbx
    32b6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    32bb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    32c0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    32c5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    32ca:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    32cf:	e9 45 dd ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    32d4:	48 8b 1c 24          	mov    (%rsp),%rbx
    32d8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    32dd:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    32e2:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    32e7:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    32ec:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    32f1:	e9 23 dd ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    32f6:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    32fd:	00 00 80
    3300:	e9 01 e4 ff ff       	jmp    1706 <stomptalk::parser::finish_value(char const*)+0x7f6>
    3305:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    330c:	00 00 80
    330f:	e9 fa e3 ff ff       	jmp    170e <stomptalk::parser::finish_value(char const*)+0x7fe>
    3314:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    331b:	00 00 80
    331e:	e9 f3 e3 ff ff       	jmp    1716 <stomptalk::parser::finish_value(char const*)+0x806>
    3323:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    332a:	00 00 80
    332d:	e9 ec e3 ff ff       	jmp    171e <stomptalk::parser::finish_value(char const*)+0x80e>
    3332:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    3339:	00 00 80
    333c:	e9 e0 e3 ff ff       	jmp    1721 <stomptalk::parser::finish_value(char const*)+0x811>
    3341:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    3348:	00 00 80
    334b:	e9 d4 e3 ff ff       	jmp    1724 <stomptalk::parser::finish_value(char const*)+0x814>
    3350:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    3357:	00 00 80
    335a:	e9 c8 e3 ff ff       	jmp    1727 <stomptalk::parser::finish_value(char const*)+0x817>
    335f:	b9 01 00 00 00       	mov    $0x1,%ecx
    3364:	48 c1 e1 3f          	shl    $0x3f,%rcx
    3368:	e9 bd e3 ff ff       	jmp    172a <stomptalk::parser::finish_value(char const*)+0x81a>
    336d:	b9 01 00 00 00       	mov    $0x1,%ecx
    3372:	48 c1 e1 3f          	shl    $0x3f,%rcx
    3376:	e9 b7 e3 ff ff       	jmp    1732 <stomptalk::parser::finish_value(char const*)+0x822>
    337b:	48 8b 1c 24          	mov    (%rsp),%rbx
    337f:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3384:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3389:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    338e:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3393:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3398:	e9 7c dc ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    339d:	48 8b 1c 24          	mov    (%rsp),%rbx
    33a1:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    33a6:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    33ab:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    33b0:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    33b5:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    33ba:	e9 5a dc ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    33bf:	48 8b 1c 24          	mov    (%rsp),%rbx
    33c3:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    33c8:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    33cd:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    33d2:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    33d7:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    33dc:	e9 38 dc ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    33e1:	48 8b 1c 24          	mov    (%rsp),%rbx
    33e5:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    33ea:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    33ef:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    33f4:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    33f9:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    33fe:	e9 16 dc ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3403:	48 8b 1c 24          	mov    (%rsp),%rbx
    3407:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    340c:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3411:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3416:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    341b:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3420:	e9 f4 db ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3425:	48 8b 1c 24          	mov    (%rsp),%rbx
    3429:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    342e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3433:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3438:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    343d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3442:	e9 d2 db ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3447:	48 8b 1c 24          	mov    (%rsp),%rbx
    344b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3450:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3455:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    345a:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    345f:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3464:	e9 b0 db ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3469:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    3470:	00 00 80
    3473:	e9 da ea ff ff       	jmp    1f52 <stomptalk::parser::finish_value(char const*)+0x1042>
    3478:	48 8b 1c 24          	mov    (%rsp),%rbx
    347c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3481:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3486:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    348b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3490:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3495:	e9 7f db ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    349a:	48 8b 1c 24          	mov    (%rsp),%rbx
    349e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    34a3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    34a8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    34ad:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    34b2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    34b7:	e9 5d db ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    34bc:	48 8b 1c 24          	mov    (%rsp),%rbx
    34c0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    34c5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    34ca:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    34cf:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    34d4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    34d9:	e9 3b db ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    34de:	48 8b 1c 24          	mov    (%rsp),%rbx
    34e2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    34e7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    34ec:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    34f1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    34f6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    34fb:	e9 19 db ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3500:	48 8b 1c 24          	mov    (%rsp),%rbx
    3504:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3509:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    350e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3513:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3518:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    351d:	e9 f7 da ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3522:	48 8b 1c 24          	mov    (%rsp),%rbx
    3526:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    352b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3530:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3535:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    353a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    353f:	e9 d5 da ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3544:	48 8b 1c 24          	mov    (%rsp),%rbx
    3548:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    354d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3552:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3557:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    355c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3561:	e9 b3 da ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3566:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    356d:	00 00 80
    3570:	e9 42 e8 ff ff       	jmp    1db7 <stomptalk::parser::finish_value(char const*)+0xea7>
    3575:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    357c:	00 00 80
    357f:	e9 3b e8 ff ff       	jmp    1dbf <stomptalk::parser::finish_value(char const*)+0xeaf>
    3584:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    358b:	00 00 80
    358e:	e9 2f e8 ff ff       	jmp    1dc2 <stomptalk::parser::finish_value(char const*)+0xeb2>
    3593:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    359a:	00 00 80
    359d:	e9 23 e8 ff ff       	jmp    1dc5 <stomptalk::parser::finish_value(char const*)+0xeb5>
    35a2:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    35a9:	00 00 80
    35ac:	e9 17 e8 ff ff       	jmp    1dc8 <stomptalk::parser::finish_value(char const*)+0xeb8>
    35b1:	48 8b 1c 24          	mov    (%rsp),%rbx
    35b5:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    35ba:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    35bf:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    35c4:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    35c9:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    35ce:	e9 46 da ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    35d3:	48 8b 1c 24          	mov    (%rsp),%rbx
    35d7:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    35dc:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    35e1:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    35e6:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    35eb:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    35f0:	e9 24 da ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    35f5:	48 8b 1c 24          	mov    (%rsp),%rbx
    35f9:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    35fe:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3603:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3608:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    360d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3612:	e9 02 da ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3617:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    361e:	00 00 80
    3621:	e9 a0 ea ff ff       	jmp    20c6 <stomptalk::parser::finish_value(char const*)+0x11b6>
    3626:	48 8b 1c 24          	mov    (%rsp),%rbx
    362a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    362f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3634:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3639:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    363e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3643:	e9 d1 d9 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3648:	48 8b 1c 24          	mov    (%rsp),%rbx
    364c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3651:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3656:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    365b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3660:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3665:	e9 af d9 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    366a:	48 8b 1c 24          	mov    (%rsp),%rbx
    366e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3673:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3678:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    367d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3682:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3687:	e9 8d d9 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    368c:	48 8b 1c 24          	mov    (%rsp),%rbx
    3690:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3695:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    369a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    369f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    36a4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    36a9:	e9 6b d9 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    36ae:	48 8b 1c 24          	mov    (%rsp),%rbx
    36b2:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    36b7:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    36bc:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    36c1:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    36c6:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    36cb:	e9 49 d9 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    36d0:	48 8b 1c 24          	mov    (%rsp),%rbx
    36d4:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    36d9:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    36de:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    36e3:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    36e8:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    36ed:	e9 27 d9 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    36f2:	48 8b 1c 24          	mov    (%rsp),%rbx
    36f6:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    36fb:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3700:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3705:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    370a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    370f:	e9 05 d9 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3714:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    371b:	00 00 80
    371e:	e9 95 e9 ff ff       	jmp    20b8 <stomptalk::parser::finish_value(char const*)+0x11a8>
    3723:	48 8b 1c 24          	mov    (%rsp),%rbx
    3727:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    372c:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3731:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3736:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    373b:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3740:	e9 d4 d8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3745:	48 8b 1c 24          	mov    (%rsp),%rbx
    3749:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    374e:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3753:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3758:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    375d:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3762:	e9 b2 d8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3767:	48 8b 1c 24          	mov    (%rsp),%rbx
    376b:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3770:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3775:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    377a:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    377f:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3784:	e9 90 d8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3789:	48 8b 1c 24          	mov    (%rsp),%rbx
    378d:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3792:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3797:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    379c:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    37a1:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    37a6:	e9 6e d8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    37ab:	48 8b 1c 24          	mov    (%rsp),%rbx
    37af:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    37b4:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    37b9:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    37be:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    37c3:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    37c8:	e9 4c d8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    37cd:	48 8b 1c 24          	mov    (%rsp),%rbx
    37d1:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    37d6:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    37db:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    37e0:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    37e5:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    37ea:	e9 2a d8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    37ef:	48 8b 1c 24          	mov    (%rsp),%rbx
    37f3:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    37f8:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    37fd:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3802:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3807:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    380c:	e9 08 d8 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3811:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    3818:	00 00 80
    381b:	e9 21 e7 ff ff       	jmp    1f41 <stomptalk::parser::finish_value(char const*)+0x1031>
    3820:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    3827:	00 00 80
    382a:	e9 1a e7 ff ff       	jmp    1f49 <stomptalk::parser::finish_value(char const*)+0x1039>
    382f:	49 ba 00 00 00 00 00 	movabs $0x8000000000000000,%r10
    3836:	00 00 80
    3839:	e9 0e e7 ff ff       	jmp    1f4c <stomptalk::parser::finish_value(char const*)+0x103c>
    383e:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    3845:	00 00 80
    3848:	e9 02 e7 ff ff       	jmp    1f4f <stomptalk::parser::finish_value(char const*)+0x103f>
    384d:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    3854:	00 00 80
    3857:	e9 4b e5 ff ff       	jmp    1da7 <stomptalk::parser::finish_value(char const*)+0xe97>
    385c:	49 bb 00 00 00 00 00 	movabs $0x8000000000000000,%r11
    3863:	00 00 80
    3866:	e9 44 e5 ff ff       	jmp    1daf <stomptalk::parser::finish_value(char const*)+0xe9f>
    386b:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    3872:	00 00 80
    3875:	e9 87 e9 ff ff       	jmp    2201 <stomptalk::parser::finish_value(char const*)+0x12f1>
    387a:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    3881:	00 00 80
    3884:	e9 80 e9 ff ff       	jmp    2209 <stomptalk::parser::finish_value(char const*)+0x12f9>
    3889:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    3890:	00 00 80
    3893:	e9 74 e9 ff ff       	jmp    220c <stomptalk::parser::finish_value(char const*)+0x12fc>
    3898:	48 8b 1c 24          	mov    (%rsp),%rbx
    389c:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    38a1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    38a6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    38ab:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    38b0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    38b5:	e9 5f d7 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    38ba:	48 8b 1c 24          	mov    (%rsp),%rbx
    38be:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    38c3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    38c8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    38cd:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    38d2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    38d7:	e9 3d d7 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    38dc:	48 8b 1c 24          	mov    (%rsp),%rbx
    38e0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    38e5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    38ea:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    38ef:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    38f4:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    38f9:	e9 1b d7 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    38fe:	48 8b 1c 24          	mov    (%rsp),%rbx
    3902:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3907:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    390c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3911:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3916:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    391b:	e9 f9 d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3920:	48 8b 1c 24          	mov    (%rsp),%rbx
    3924:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3929:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    392e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3933:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3938:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    393d:	e9 d7 d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3942:	48 8b 1c 24          	mov    (%rsp),%rbx
    3946:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    394b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3950:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3955:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    395a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    395f:	e9 b5 d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3964:	48 8b 1c 24          	mov    (%rsp),%rbx
    3968:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    396d:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3972:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3977:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    397c:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3981:	e9 93 d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3986:	48 8b 1c 24          	mov    (%rsp),%rbx
    398a:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    398f:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3994:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3999:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    399e:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    39a3:	e9 71 d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    39a8:	48 8b 1c 24          	mov    (%rsp),%rbx
    39ac:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    39b1:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    39b6:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    39bb:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    39c0:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    39c5:	e9 4f d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    39ca:	48 8b 1c 24          	mov    (%rsp),%rbx
    39ce:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    39d3:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    39d8:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    39dd:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    39e2:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    39e7:	e9 2d d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    39ec:	48 8b 1c 24          	mov    (%rsp),%rbx
    39f0:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    39f5:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    39fa:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    39ff:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3a04:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3a09:	e9 0b d6 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3a0e:	48 8b 1c 24          	mov    (%rsp),%rbx
    3a12:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3a17:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3a1c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3a21:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3a26:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3a2b:	e9 e9 d5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3a30:	48 8b 1c 24          	mov    (%rsp),%rbx
    3a34:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3a39:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3a3e:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3a43:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3a48:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3a4d:	e9 c7 d5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3a52:	48 8b 1c 24          	mov    (%rsp),%rbx
    3a56:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3a5b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3a60:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3a65:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3a6a:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3a6f:	e9 a5 d5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3a74:	49 b8 00 00 00 00 00 	movabs $0x8000000000000000,%r8
    3a7b:	00 00 80
    3a7e:	e9 f8 ed ff ff       	jmp    287b <stomptalk::parser::finish_value(char const*)+0x196b>
    3a83:	49 b9 00 00 00 00 00 	movabs $0x8000000000000000,%r9
    3a8a:	00 00 80
    3a8d:	e9 ec ed ff ff       	jmp    287e <stomptalk::parser::finish_value(char const*)+0x196e>
    3a92:	48 8b 1c 24          	mov    (%rsp),%rbx
    3a96:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3a9b:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3aa0:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3aa5:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3aaa:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3aaf:	e9 65 d5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3ab4:	48 8b 1c 24          	mov    (%rsp),%rbx
    3ab8:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3abd:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3ac2:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3ac7:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3acc:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3ad1:	e9 43 d5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3ad6:	48 8b 1c 24          	mov    (%rsp),%rbx
    3ada:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3adf:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3ae4:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3ae9:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3aee:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3af3:	e9 21 d5 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3af8:	48 8b 1c 24          	mov    (%rsp),%rbx
    3afc:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3b01:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3b06:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3b0b:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3b10:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3b15:	e9 ff d4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3b1a:	48 8b 1c 24          	mov    (%rsp),%rbx
    3b1e:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3b23:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3b28:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3b2d:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3b32:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3b37:	e9 dd d4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3b3c:	48 8b 1c 24          	mov    (%rsp),%rbx
    3b40:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3b45:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3b4a:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3b4f:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3b54:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3b59:	e9 bb d4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>
    3b5e:	48 8b 1c 24          	mov    (%rsp),%rbx
    3b62:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
    3b67:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    3b6c:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    3b71:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    3b76:	4c 8b 7c 24 28       	mov    0x28(%rsp),%r15
    3b7b:	e9 99 d4 ff ff       	jmp    1019 <stomptalk::parser::finish_value(char const*)+0x109>

0000000000000000 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 83 ec 58          	sub    $0x58,%rsp
   8:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
   d:	48 89 f3             	mov    %rsi,%rbx
  10:	48 39 d6             	cmp    %rdx,%rsi
  13:	0f 83 8f 08 00 00    	jae    8a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a8>
  19:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
  1e:	48 89 fd             	mov    %rdi,%rbp
  21:	4c 89 64 24 38       	mov    %r12,0x38(%rsp)
  26:	49 89 d4             	mov    %rdx,%r12
  29:	80 bf 0a 01 00 00 00 	cmpb   $0x0,0x10a(%rdi)
  30:	74 6a                	je     9c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c>
  32:	0f be 33             	movsbl (%rbx),%esi
  35:	40 80 fe 6e          	cmp    $0x6e,%sil
  39:	0f 84 c1 01 00 00    	je     200 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x200>
  3f:	0f 8f 4b 01 00 00    	jg     190 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x190>
  45:	40 80 fe 5c          	cmp    $0x5c,%sil
  49:	74 0f                	je     5a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a>
  4b:	40 80 fe 63          	cmp    $0x63,%sil
  4f:	0f 85 63 01 00 00    	jne    1b8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b8>
  55:	be 3a 00 00 00       	mov    $0x3a,%esi
  5a:	48 89 da             	mov    %rbx,%rdx
  5d:	48 89 ef             	mov    %rbp,%rdi
  60:	e8 00 00 00 00       	call   65 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x65>
			61: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
  65:	84 c0                	test   %al,%al
  67:	75 1f                	jne    88 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88>
  69:	48 8b 85 28 01 00 00 	mov    0x128(%rbp),%rax
  70:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
  75:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
  7a:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  7f:	48 83 c4 58          	add    $0x58,%rsp
  83:	c3                   	ret
  84:	0f 1f 40 00          	nopl   0x0(%rax)
  88:	48 83 c3 01          	add    $0x1,%rbx
  8c:	c6 85 0a 01 00 00 00 	movb   $0x0,0x10a(%rbp)
  93:	4c 39 e3             	cmp    %r12,%rbx
  96:	0f 83 1f 05 00 00    	jae    5bb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5bb>
  9c:	48 83 bd c8 00 00 00 	cmpq   $0x0,0xc8(%rbp)
  a3:	00
  a4:	4c 89 e0             	mov    %r12,%rax
  a7:	44 0f b6 8d 0b 01 00 	movzbl 0x10b(%rbp),%r9d
  ae:	00
  af:	0f 94 c1             	sete   %cl
  b2:	48 29 d8             	sub    %rbx,%rax
  b5:	48 83 f8 0f          	cmp    $0xf,%rax
  b9:	0f 8e c0 07 00 00    	jle    87f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x87f>
  bf:	b8 0a 0a 0a 0a       	mov    $0xa0a0a0a,%eax
  c4:	66 0f ef f6          	pxor   %xmm6,%xmm6
  c8:	45 31 d2             	xor    %r10d,%r10d
  cb:	66 0f 6e d8          	movd   %eax,%xmm3
  cf:	b8 0d 0d 0d 0d       	mov    $0xd0d0d0d,%eax
  d4:	66 0f 6e d0          	movd   %eax,%xmm2
  d8:	b8 3a 3a 3a 3a       	mov    $0x3a3a3a3a,%eax
  dd:	66 0f 70 e3 00       	pshufd $0x0,%xmm3,%xmm4
  e2:	66 0f 6e e8          	movd   %eax,%xmm5
  e6:	66 0f 70 d2 00       	pshufd $0x0,%xmm2,%xmm2
  eb:	48 89 d8             	mov    %rbx,%rax
  ee:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
  f3:	45 84 c9             	test   %r9b,%r9b
  f6:	0f 85 24 01 00 00    	jne    220 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x220>
  fc:	bf 5c 5c 5c 5c       	mov    $0x5c5c5c5c,%edi
 101:	66 0f 6f da          	movdqa %xmm2,%xmm3
 105:	66 0f 6e ff          	movd   %edi,%xmm7
 109:	66 0f 70 ff 00       	pshufd $0x0,%xmm7,%xmm7
 10e:	eb 36                	jmp    146 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x146>
 110:	85 d2                	test   %edx,%edx
 112:	0f 85 d8 02 00 00    	jne    3f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3f0>
 118:	45 31 d2             	xor    %r10d,%r10d
 11b:	8d 56 ff             	lea    -0x1(%rsi),%edx
 11e:	31 c9                	xor    %ecx,%ecx
 120:	f3 44 0f bc d6       	tzcnt  %esi,%r10d
 125:	21 d6                	and    %edx,%esi
 127:	49 01 c2             	add    %rax,%r10
 12a:	85 f6                	test   %esi,%esi
 12c:	0f 85 8e 09 00 00    	jne    ac0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xac0>
 132:	48 83 c0 10          	add    $0x10,%rax
 136:	4c 89 e2             	mov    %r12,%rdx
 139:	48 29 c2             	sub    %rax,%rdx
 13c:	48 83 fa 0f          	cmp    $0xf,%rdx
 140:	0f 8e 3a 05 00 00    	jle    680 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x680>
 146:	f3 0f 6f 00          	movdqu (%rax),%xmm0
 14a:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 14e:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 152:	66 0f 74 cd          	pcmpeqb %xmm5,%xmm1
 156:	66 0f 74 d6          	pcmpeqb %xmm6,%xmm2
 15a:	66 0f d7 f1          	pmovmskb %xmm1,%esi
 15e:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 162:	66 0f 74 cf          	pcmpeqb %xmm7,%xmm1
 166:	66 0f eb ca          	por    %xmm2,%xmm1
 16a:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 16e:	66 0f 74 d3          	pcmpeqb %xmm3,%xmm2
 172:	66 0f 74 c4          	pcmpeqb %xmm4,%xmm0
 176:	66 0f eb c2          	por    %xmm2,%xmm0
 17a:	66 0f eb c1          	por    %xmm1,%xmm0
 17e:	66 0f d7 d0          	pmovmskb %xmm0,%edx
 182:	85 f6                	test   %esi,%esi
 184:	74 04                	je     18a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x18a>
 186:	84 c9                	test   %cl,%cl
 188:	75 86                	jne    110 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
 18a:	09 d6                	or     %edx,%esi
 18c:	eb 9c                	jmp    12a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x12a>
 18e:	66 90                	xchg   %ax,%ax
 190:	40 80 fe 72          	cmp    $0x72,%sil
 194:	75 22                	jne    1b8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b8>
 196:	be 0d 00 00 00       	mov    $0xd,%esi
 19b:	48 89 da             	mov    %rbx,%rdx
 19e:	48 89 ef             	mov    %rbp,%rdi
 1a1:	e8 00 00 00 00       	call   1a6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1a6>
			1a2: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 1a6:	84 c0                	test   %al,%al
 1a8:	0f 84 bb fe ff ff    	je     69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
 1ae:	e9 d5 fe ff ff       	jmp    88 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88>
 1b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1b8:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 1bf:	00 00 00
 1c2:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 1c7:	48 89 85 10 01 00 00 	mov    %rax,0x110(%rbp)
 1ce:	48 89 d8             	mov    %rbx,%rax
 1d1:	48 2b 85 20 01 00 00 	sub    0x120(%rbp),%rax
 1d8:	48 89 85 18 01 00 00 	mov    %rax,0x118(%rbp)
 1df:	48 8d 43 01          	lea    0x1(%rbx),%rax
 1e3:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 1e8:	48 89 85 28 01 00 00 	mov    %rax,0x128(%rbp)
 1ef:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 1f4:	48 83 c4 58          	add    $0x58,%rsp
 1f8:	c3                   	ret
 1f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 200:	be 0a 00 00 00       	mov    $0xa,%esi
 205:	48 89 da             	mov    %rbx,%rdx
 208:	48 89 ef             	mov    %rbp,%rdi
 20b:	e8 00 00 00 00       	call   210 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x210>
			20c: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 210:	84 c0                	test   %al,%al
 212:	0f 84 51 fe ff ff    	je     69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
 218:	e9 6b fe ff ff       	jmp    88 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88>
 21d:	0f 1f 00             	nopl   (%rax)
 220:	66 0f 6f dc          	movdqa %xmm4,%xmm3
 224:	66 0f 6f e6          	movdqa %xmm6,%xmm4
 228:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 22f:	00
 230:	f3 0f 6f 00          	movdqu (%rax),%xmm0
 234:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 238:	66 0f 6f f0          	movdqa %xmm0,%xmm6
 23c:	66 0f 74 cd          	pcmpeqb %xmm5,%xmm1
 240:	66 0f 74 f2          	pcmpeqb %xmm2,%xmm6
 244:	66 0f d7 f9          	pmovmskb %xmm1,%edi
 248:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 24c:	66 0f 74 cb          	pcmpeqb %xmm3,%xmm1
 250:	66 0f 74 c4          	pcmpeqb %xmm4,%xmm0
 254:	66 0f eb ce          	por    %xmm6,%xmm1
 258:	66 0f eb c1          	por    %xmm1,%xmm0
 25c:	66 0f d7 d0          	pmovmskb %xmm0,%edx
 260:	89 d6                	mov    %edx,%esi
 262:	85 ff                	test   %edi,%edi
 264:	74 2a                	je     290 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x290>
 266:	84 c9                	test   %cl,%cl
 268:	74 26                	je     290 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x290>
 26a:	85 d2                	test   %edx,%edx
 26c:	0f 84 6e 01 00 00    	je     3e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
 272:	f3 0f bc ff          	tzcnt  %edi,%edi
 276:	f3 0f bc d2          	tzcnt  %edx,%edx
 27a:	39 fa                	cmp    %edi,%edx
 27c:	0f 8f be 02 00 00    	jg     540 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x540>
 282:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
 286:	4c 89 d7             	mov    %r10,%rdi
 289:	e9 3e 01 00 00       	jmp    3cc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3cc>
 28e:	66 90                	xchg   %ax,%ax
 290:	85 d2                	test   %edx,%edx
 292:	0f 85 28 08 00 00    	jne    ac0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xac0>
 298:	48 83 c0 10          	add    $0x10,%rax
 29c:	4c 89 e2             	mov    %r12,%rdx
 29f:	48 29 c2             	sub    %rax,%rdx
 2a2:	48 83 fa 0f          	cmp    $0xf,%rdx
 2a6:	7f 88                	jg     230 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x230>
 2a8:	48 83 fa 07          	cmp    $0x7,%rdx
 2ac:	0f 8e 2e 06 00 00    	jle    8e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8e0>
 2b2:	4c 89 6c 24 40       	mov    %r13,0x40(%rsp)
 2b7:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 2be:	00 00
 2c0:	48 bf 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rdi
 2c7:	7f 7f 7f
 2ca:	eb 48                	jmp    314 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x314>
 2cc:	0f 1f 40 00          	nopl   0x0(%rax)
 2d0:	84 c9                	test   %cl,%cl
 2d2:	0f 84 b5 00 00 00    	je     38d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x38d>
 2d8:	48 85 f6             	test   %rsi,%rsi
 2db:	0f 85 bf 00 00 00    	jne    3a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a0>
 2e1:	f3 48 0f bc d2       	tzcnt  %rdx,%rdx
 2e6:	c1 fa 03             	sar    $0x3,%edx
 2e9:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
 2ed:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 2f2:	31 c9                	xor    %ecx,%ecx
 2f4:	90                   	nop
 2f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 2fc:	00 00 00 00
 300:	48 83 c0 08          	add    $0x8,%rax
 304:	4c 89 e2             	mov    %r12,%rdx
 307:	48 29 c2             	sub    %rax,%rdx
 30a:	48 83 fa 07          	cmp    $0x7,%rdx
 30e:	0f 8e e6 02 00 00    	jle    5fa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5fa>
 314:	48 ba 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rdx
 31b:	3a 3a 3a
 31e:	4c 8b 18             	mov    (%rax),%r11
 321:	49 bd 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r13
 328:	0d 0d 0d
 32b:	4c 31 da             	xor    %r11,%rdx
 32e:	4d 31 dd             	xor    %r11,%r13
 331:	49 89 d0             	mov    %rdx,%r8
 334:	49 21 f8             	and    %rdi,%r8
 337:	49 01 f8             	add    %rdi,%r8
 33a:	49 09 d0             	or     %rdx,%r8
 33d:	48 ba 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%rdx
 344:	0a 0a 0a
 347:	4c 31 da             	xor    %r11,%rdx
 34a:	49 09 f8             	or     %rdi,%r8
 34d:	48 89 d6             	mov    %rdx,%rsi
 350:	48 21 fe             	and    %rdi,%rsi
 353:	48 01 fe             	add    %rdi,%rsi
 356:	48 09 d6             	or     %rdx,%rsi
 359:	4c 89 ea             	mov    %r13,%rdx
 35c:	48 21 fa             	and    %rdi,%rdx
 35f:	48 01 fa             	add    %rdi,%rdx
 362:	4c 09 ea             	or     %r13,%rdx
 365:	48 21 d6             	and    %rdx,%rsi
 368:	4c 89 da             	mov    %r11,%rdx
 36b:	48 21 fa             	and    %rdi,%rdx
 36e:	48 01 fa             	add    %rdi,%rdx
 371:	4c 09 da             	or     %r11,%rdx
 374:	48 21 d6             	and    %rdx,%rsi
 377:	4c 89 c2             	mov    %r8,%rdx
 37a:	48 09 fe             	or     %rdi,%rsi
 37d:	48 f7 d2             	not    %rdx
 380:	48 f7 d6             	not    %rsi
 383:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
 387:	0f 85 43 ff ff ff    	jne    2d0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2d0>
 38d:	48 85 f6             	test   %rsi,%rsi
 390:	0f 84 6a ff ff ff    	je     300 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x300>
 396:	f3 48 0f bc f6       	tzcnt  %rsi,%rsi
 39b:	eb 19                	jmp    3b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b6>
 39d:	0f 1f 00             	nopl   (%rax)
 3a0:	31 c9                	xor    %ecx,%ecx
 3a2:	f3 48 0f bc d2       	tzcnt  %rdx,%rdx
 3a7:	f3 48 0f bc ce       	tzcnt  %rsi,%rcx
 3ac:	89 ce                	mov    %ecx,%esi
 3ae:	39 ca                	cmp    %ecx,%edx
 3b0:	0f 8c 1a 02 00 00    	jl     5d0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d0>
 3b6:	c1 fe 03             	sar    $0x3,%esi
 3b9:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 3be:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 3c3:	48 8d 0c 30          	lea    (%rax,%rsi,1),%rcx
 3c7:	4d 85 d2             	test   %r10,%r10
 3ca:	75 4a                	jne    416 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
 3cc:	48 85 ff             	test   %rdi,%rdi
 3cf:	0f 84 dd 00 00 00    	je     4b2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b2>
 3d5:	49 89 fa             	mov    %rdi,%r10
 3d8:	eb 3c                	jmp    416 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
 3da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 3e0:	f3 0f bc ff          	tzcnt  %edi,%edi
 3e4:	31 c9                	xor    %ecx,%ecx
 3e6:	4c 8d 14 38          	lea    (%rax,%rdi,1),%r10
 3ea:	e9 a9 fe ff ff       	jmp    298 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x298>
 3ef:	90                   	nop
 3f0:	31 c9                	xor    %ecx,%ecx
 3f2:	31 ff                	xor    %edi,%edi
 3f4:	f3 0f bc ce          	tzcnt  %esi,%ecx
 3f8:	f3 0f bc fa          	tzcnt  %edx,%edi
 3fc:	39 cf                	cmp    %ecx,%edi
 3fe:	0f 8e 31 01 00 00    	jle    535 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x535>
 404:	4c 8d 14 08          	lea    (%rax,%rcx,1),%r10
 408:	8d 4e ff             	lea    -0x1(%rsi),%ecx
 40b:	21 f1                	and    %esi,%ecx
 40d:	09 d1                	or     %edx,%ecx
 40f:	f3 0f bc c9          	tzcnt  %ecx,%ecx
 413:	48 01 c1             	add    %rax,%rcx
 416:	4d 89 d0             	mov    %r10,%r8
 419:	49 29 d8             	sub    %rbx,%r8
 41c:	74 34                	je     452 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x452>
 41e:	4c 89 c2             	mov    %r8,%rdx
 421:	48 89 de             	mov    %rbx,%rsi
 424:	48 89 ef             	mov    %rbp,%rdi
 427:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
 42c:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
 431:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
 436:	e8 00 00 00 00       	call   43b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x43b>
			437: R_X86_64_PC32	.text-0x4
 43b:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 440:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
 445:	84 c0                	test   %al,%al
 447:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
 44c:	0f 84 17 fc ff ff    	je     69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
 452:	48 8b 85 d8 00 00 00 	mov    0xd8(%rbp),%rax
 459:	48 85 c0             	test   %rax,%rax
 45c:	0f 84 b2 05 00 00    	je     a14 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa14>
 462:	8b 55 78             	mov    0x78(%rbp),%edx
 465:	48 8b b5 d0 00 00 00 	mov    0xd0(%rbp),%rsi
 46c:	48 83 f8 0e          	cmp    $0xe,%rax
 470:	48 89 85 c8 00 00 00 	mov    %rax,0xc8(%rbp)
 477:	0f 94 c0             	sete   %al
 47a:	c6 85 0d 01 00 00 00 	movb   $0x0,0x10d(%rbp)
 481:	f7 d2                	not    %edx
 483:	48 89 b5 c0 00 00 00 	mov    %rsi,0xc0(%rbp)
 48a:	48 c7 85 d0 00 00 00 	movq   $0x0,0xd0(%rbp)
 491:	00 00 00 00
 495:	48 c7 85 d8 00 00 00 	movq   $0x0,0xd8(%rbp)
 49c:	00 00 00 00
 4a0:	20 d0                	and    %dl,%al
 4a2:	0f 85 88 03 00 00    	jne    830 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x830>
 4a8:	88 85 0c 01 00 00    	mov    %al,0x10c(%rbp)
 4ae:	49 8d 5a 01          	lea    0x1(%r10),%rbx
 4b2:	48 89 ca             	mov    %rcx,%rdx
 4b5:	48 29 da             	sub    %rbx,%rdx
 4b8:	74 1d                	je     4d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d7>
 4ba:	48 89 de             	mov    %rbx,%rsi
 4bd:	48 89 ef             	mov    %rbp,%rdi
 4c0:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 4c5:	e8 00 00 00 00       	call   4ca <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4ca>
			4c6: R_X86_64_PC32	.text-0x4
 4ca:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 4cf:	84 c0                	test   %al,%al
 4d1:	0f 84 92 fb ff ff    	je     69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
 4d7:	49 39 cc             	cmp    %rcx,%r12
 4da:	0f 84 28 04 00 00    	je     908 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x908>
 4e0:	0f b6 01             	movzbl (%rcx),%eax
 4e3:	3c 5c                	cmp    $0x5c,%al
 4e5:	0f 85 2f 04 00 00    	jne    91a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x91a>
 4eb:	80 bd 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbp)
 4f2:	74 5c                	je     550 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x550>
 4f4:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 4fb:	00 00 00
 4fe:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 503:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 508:	48 89 85 10 01 00 00 	mov    %rax,0x110(%rbp)
 50f:	48 89 c8             	mov    %rcx,%rax
 512:	48 2b 85 20 01 00 00 	sub    0x120(%rbp),%rax
 519:	48 89 85 18 01 00 00 	mov    %rax,0x118(%rbp)
 520:	48 8d 41 01          	lea    0x1(%rcx),%rax
 524:	48 89 85 28 01 00 00 	mov    %rax,0x128(%rbp)
 52b:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 530:	48 83 c4 58          	add    $0x58,%rsp
 534:	c3                   	ret
 535:	09 f2                	or     %esi,%edx
 537:	f3 0f bc d2          	tzcnt  %edx,%edx
 53b:	e9 42 fd ff ff       	jmp    282 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x282>
 540:	4c 8d 14 38          	lea    (%rax,%rdi,1),%r10
 544:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
 548:	e9 c9 fe ff ff       	jmp    416 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
 54d:	0f 1f 00             	nopl   (%rax)
 550:	80 bd 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbp)
 557:	75 4e                	jne    5a7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a7>
 559:	48 89 ef             	mov    %rbp,%rdi
 55c:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 561:	e8 00 00 00 00       	call   566 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x566>
			562: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
 566:	48 8b 7d 48          	mov    0x48(%rbp),%rdi
 56a:	48 8b 45 50          	mov    0x50(%rbp),%rax
 56e:	48 8b 9d d8 00 00 00 	mov    0xd8(%rbp),%rbx
 575:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 57a:	48 29 f8             	sub    %rdi,%rax
 57d:	48 39 d8             	cmp    %rbx,%rax
 580:	0f 82 9f 02 00 00    	jb     825 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x825>
 586:	48 89 f8             	mov    %rdi,%rax
 589:	48 85 db             	test   %rbx,%rbx
 58c:	0f 85 1e 03 00 00    	jne    8b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8b0>
 592:	48 01 d8             	add    %rbx,%rax
 595:	48 89 45 48          	mov    %rax,0x48(%rbp)
 599:	48 89 bd d0 00 00 00 	mov    %rdi,0xd0(%rbp)
 5a0:	c6 85 0d 01 00 00 01 	movb   $0x1,0x10d(%rbp)
 5a7:	48 8d 59 01          	lea    0x1(%rcx),%rbx
 5ab:	c6 85 0a 01 00 00 01 	movb   $0x1,0x10a(%rbp)
 5b2:	4c 39 e3             	cmp    %r12,%rbx
 5b5:	0f 82 77 fa ff ff    	jb     32 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x32>
 5bb:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 5c0:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 5c5:	48 89 d8             	mov    %rbx,%rax
 5c8:	e9 ad fa ff ff       	jmp    7a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
 5cd:	0f 1f 00             	nopl   (%rax)
 5d0:	c1 f9 03             	sar    $0x3,%ecx
 5d3:	c1 fa 03             	sar    $0x3,%edx
 5d6:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 5db:	48 01 c2             	add    %rax,%rdx
 5de:	48 01 c1             	add    %rax,%rcx
 5e1:	4d 85 d2             	test   %r10,%r10
 5e4:	4c 0f 44 d2          	cmove  %rdx,%r10
 5e8:	e9 29 fe ff ff       	jmp    416 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
 5ed:	0f 1f 00             	nopl   (%rax)
 5f0:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 5f5:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 5fa:	4c 39 e0             	cmp    %r12,%rax
 5fd:	0f 83 68 04 00 00    	jae    a6b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa6b>
 603:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 608:	31 ff                	xor    %edi,%edi
 60a:	41 b8 01 24 00 00    	mov    $0x2401,%r8d
 610:	eb 14                	jmp    626 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x626>
 612:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 618:	48 89 c7             	mov    %rax,%rdi
 61b:	31 c9                	xor    %ecx,%ecx
 61d:	48 83 c0 01          	add    $0x1,%rax
 621:	4c 39 e0             	cmp    %r12,%rax
 624:	73 1e                	jae    644 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x644>
 626:	0f b6 10             	movzbl (%rax),%edx
 629:	80 fa 3a             	cmp    $0x3a,%dl
 62c:	40 0f 94 c6          	sete   %sil
 630:	84 c9                	test   %cl,%cl
 632:	74 05                	je     639 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x639>
 634:	40 84 f6             	test   %sil,%sil
 637:	75 df                	jne    618 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x618>
 639:	80 fa 0d             	cmp    $0xd,%dl
 63c:	77 2a                	ja     668 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x668>
 63e:	49 0f a3 d0          	bt     %rdx,%r8
 642:	73 d9                	jae    61d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61d>
 644:	48 89 c1             	mov    %rax,%rcx
 647:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
 64d:	0f 84 74 fd ff ff    	je     3c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c7>
 653:	4d 85 d2             	test   %r10,%r10
 656:	4c 0f 44 54 24 08    	cmove  0x8(%rsp),%r10
 65c:	e9 b5 fd ff ff       	jmp    416 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
 661:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 668:	80 fa 5c             	cmp    $0x5c,%dl
 66b:	0f 94 c2             	sete   %dl
 66e:	40 08 f2             	or     %sil,%dl
 671:	74 aa                	je     61d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61d>
 673:	44 89 ce             	mov    %r9d,%esi
 676:	40 80 f6 01          	xor    $0x1,%sil
 67a:	74 a1                	je     61d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61d>
 67c:	eb c6                	jmp    644 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x644>
 67e:	66 90                	xchg   %ax,%ax
 680:	48 83 fa 07          	cmp    $0x7,%rdx
 684:	0f 8e 56 02 00 00    	jle    8e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8e0>
 68a:	4c 89 6c 24 40       	mov    %r13,0x40(%rsp)
 68f:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
 694:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
 699:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 6a0:	00 00
 6a2:	48 ba 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rdx
 6a9:	7f 7f 7f
 6ac:	eb 58                	jmp    706 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x706>
 6ae:	66 90                	xchg   %ax,%ax
 6b0:	84 c9                	test   %cl,%cl
 6b2:	0f 84 e0 00 00 00    	je     798 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
 6b8:	48 89 f1             	mov    %rsi,%rcx
 6bb:	48 09 d1             	or     %rdx,%rcx
 6be:	48 83 f1 ff          	xor    $0xffffffffffffffff,%rcx
 6c2:	0f 85 e8 00 00 00    	jne    7b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b0>
 6c8:	31 c9                	xor    %ecx,%ecx
 6ca:	48 c7 c6 fe ff ff ff 	mov    $0xfffffffffffffffe,%rsi
 6d1:	f3 48 0f bc cf       	tzcnt  %rdi,%rcx
 6d6:	4c 29 de             	sub    %r11,%rsi
 6d9:	c1 f9 03             	sar    $0x3,%ecx
 6dc:	48 21 fe             	and    %rdi,%rsi
 6df:	48 01 c1             	add    %rax,%rcx
 6e2:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 6e7:	31 c9                	xor    %ecx,%ecx
 6e9:	48 85 f6             	test   %rsi,%rsi
 6ec:	0f 85 d9 03 00 00    	jne    acb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xacb>
 6f2:	48 83 c0 08          	add    $0x8,%rax
 6f6:	4c 89 e6             	mov    %r12,%rsi
 6f9:	48 29 c6             	sub    %rax,%rsi
 6fc:	48 83 fe 07          	cmp    $0x7,%rsi
 700:	0f 8e ea fe ff ff    	jle    5f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f0>
 706:	48 be 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rsi
 70d:	3a 3a 3a
 710:	48 8b 38             	mov    (%rax),%rdi
 713:	49 be 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r14
 71a:	0d 0d 0d
 71d:	49 bf 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r15
 724:	0a 0a 0a
 727:	49 bd 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%r13
 72e:	5c 5c 5c
 731:	48 31 fe             	xor    %rdi,%rsi
 734:	49 31 fe             	xor    %rdi,%r14
 737:	49 31 ff             	xor    %rdi,%r15
 73a:	49 31 fd             	xor    %rdi,%r13
 73d:	49 89 f0             	mov    %rsi,%r8
 740:	49 21 d0             	and    %rdx,%r8
 743:	49 01 d0             	add    %rdx,%r8
 746:	49 09 f0             	or     %rsi,%r8
 749:	4c 89 f6             	mov    %r14,%rsi
 74c:	48 21 d6             	and    %rdx,%rsi
 74f:	4d 89 c3             	mov    %r8,%r11
 752:	48 01 d6             	add    %rdx,%rsi
 755:	49 09 d3             	or     %rdx,%r11
 758:	4c 09 f6             	or     %r14,%rsi
 75b:	4d 89 fe             	mov    %r15,%r14
 75e:	49 21 d6             	and    %rdx,%r14
 761:	49 01 d6             	add    %rdx,%r14
 764:	4d 09 fe             	or     %r15,%r14
 767:	4c 21 f6             	and    %r14,%rsi
 76a:	49 89 fe             	mov    %rdi,%r14
 76d:	49 21 d6             	and    %rdx,%r14
 770:	49 01 d6             	add    %rdx,%r14
 773:	4c 09 f7             	or     %r14,%rdi
 776:	48 21 fe             	and    %rdi,%rsi
 779:	4c 89 ef             	mov    %r13,%rdi
 77c:	48 21 d7             	and    %rdx,%rdi
 77f:	48 01 d7             	add    %rdx,%rdi
 782:	4c 09 ef             	or     %r13,%rdi
 785:	48 21 fe             	and    %rdi,%rsi
 788:	4c 89 df             	mov    %r11,%rdi
 78b:	48 f7 d7             	not    %rdi
 78e:	49 83 fb ff          	cmp    $0xffffffffffffffff,%r11
 792:	0f 85 18 ff ff ff    	jne    6b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b0>
 798:	4c 21 c6             	and    %r8,%rsi
 79b:	48 09 d6             	or     %rdx,%rsi
 79e:	48 f7 d6             	not    %rsi
 7a1:	e9 43 ff ff ff       	jmp    6e9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6e9>
 7a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 7ad:	00 00 00
 7b0:	45 31 c9             	xor    %r9d,%r9d
 7b3:	45 31 ff             	xor    %r15d,%r15d
 7b6:	f3 4c 0f bc cf       	tzcnt  %rdi,%r9
 7bb:	f3 4c 0f bc f9       	tzcnt  %rcx,%r15
 7c0:	45 39 cf             	cmp    %r9d,%r15d
 7c3:	7e 43                	jle    808 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x808>
 7c5:	48 c7 c2 fe ff ff ff 	mov    $0xfffffffffffffffe,%rdx
 7cc:	41 c1 f9 03          	sar    $0x3,%r9d
 7d0:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 7d5:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 7da:	4c 29 da             	sub    %r11,%rdx
 7dd:	49 01 c1             	add    %rax,%r9
 7e0:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 7e5:	48 21 fa             	and    %rdi,%rdx
 7e8:	48 09 d1             	or     %rdx,%rcx
 7eb:	f3 48 0f bc c9       	tzcnt  %rcx,%rcx
 7f0:	c1 f9 03             	sar    $0x3,%ecx
 7f3:	48 01 c1             	add    %rax,%rcx
 7f6:	4d 85 d2             	test   %r10,%r10
 7f9:	4d 0f 44 d1          	cmove  %r9,%r10
 7fd:	e9 14 fc ff ff       	jmp    416 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
 802:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 808:	4c 21 c6             	and    %r8,%rsi
 80b:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 810:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 815:	48 09 d6             	or     %rdx,%rsi
 818:	48 f7 d6             	not    %rsi
 81b:	f3 48 0f bc f6       	tzcnt  %rsi,%rsi
 820:	e9 91 fb ff ff       	jmp    3b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b6>
 825:	48 8b 45 40          	mov    0x40(%rbp),%rax
 829:	e9 67 fd ff ff       	jmp    595 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x595>
 82e:	66 90                	xchg   %ax,%ax
 830:	48 39 9d 20 01 00 00 	cmp    %rbx,0x120(%rbp)
 837:	73 06                	jae    83f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x83f>
 839:	49 83 f8 0e          	cmp    $0xe,%r8
 83d:	74 22                	je     861 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x861>
 83f:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 846:	6e 74 2d
 849:	48 39 06             	cmp    %rax,(%rsi)
 84c:	0f 84 fe 01 00 00    	je     a50 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa50>
 852:	b8 01 00 00 00       	mov    $0x1,%eax
 857:	85 c0                	test   %eax,%eax
 859:	0f 94 c0             	sete   %al
 85c:	e9 47 fc ff ff       	jmp    4a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4a8>
 861:	f3 0f 6f 43 ff       	movdqu -0x1(%rbx),%xmm0
 866:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 86e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x86e>
 86d:	00
			86a: R_X86_64_PC32	.LC29-0x4
 86e:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 872:	3d ff ff 00 00       	cmp    $0xffff,%eax
 877:	0f 94 c0             	sete   %al
 87a:	e9 29 fc ff ff       	jmp    4a8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4a8>
 87f:	48 83 f8 07          	cmp    $0x7,%rax
 883:	0f 8e 17 02 00 00    	jle    aa0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaa0>
 889:	4c 89 6c 24 40       	mov    %r13,0x40(%rsp)
 88e:	45 84 c9             	test   %r9b,%r9b
 891:	75 42                	jne    8d5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8d5>
 893:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
 898:	48 89 d8             	mov    %rbx,%rax
 89b:	45 31 d2             	xor    %r10d,%r10d
 89e:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
 8a3:	e9 f1 fd ff ff       	jmp    699 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x699>
 8a8:	48 89 f0             	mov    %rsi,%rax
 8ab:	e9 ca f7 ff ff       	jmp    7a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
 8b0:	48 8b b5 d0 00 00 00 	mov    0xd0(%rbp),%rsi
 8b7:	48 89 da             	mov    %rbx,%rdx
 8ba:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 8bf:	e8 00 00 00 00       	call   8c4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8c4>
			8c0: R_X86_64_PLT32	memcpy-0x4
 8c4:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 8c9:	48 89 c7             	mov    %rax,%rdi
 8cc:	48 8b 45 48          	mov    0x48(%rbp),%rax
 8d0:	e9 bd fc ff ff       	jmp    592 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x592>
 8d5:	48 89 d8             	mov    %rbx,%rax
 8d8:	45 31 d2             	xor    %r10d,%r10d
 8db:	e9 d7 f9 ff ff       	jmp    2b7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2b7>
 8e0:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 8e7:	00 00
 8e9:	4c 39 e0             	cmp    %r12,%rax
 8ec:	0f 82 16 fd ff ff    	jb     608 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x608>
 8f2:	48 89 c1             	mov    %rax,%rcx
 8f5:	4d 85 d2             	test   %r10,%r10
 8f8:	0f 85 18 fb ff ff    	jne    416 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x416>
 8fe:	e9 af fb ff ff       	jmp    4b2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b2>
 903:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 908:	4c 89 e0             	mov    %r12,%rax
 90b:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 910:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 915:	e9 60 f7 ff ff       	jmp    7a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
 91a:	48 83 bd c8 00 00 00 	cmpq   $0x0,0xc8(%rbp)
 921:	00
 922:	0f 84 cc fb ff ff    	je     4f4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f4>
 928:	3c 0d                	cmp    $0xd,%al
 92a:	74 08                	je     934 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x934>
 92c:	3c 0a                	cmp    $0xa,%al
 92e:	0f 85 c0 fb ff ff    	jne    4f4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f4>
 934:	48 89 ce             	mov    %rcx,%rsi
 937:	48 89 ef             	mov    %rbp,%rdi
 93a:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 93f:	e8 00 00 00 00       	call   944 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x944>
			940: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 944:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 949:	84 c0                	test   %al,%al
 94b:	0f 84 18 f7 ff ff    	je     69 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69>
 951:	48 8d 41 01          	lea    0x1(%rcx),%rax
 955:	80 39 0a             	cmpb   $0xa,(%rcx)
 958:	74 77                	je     9d1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9d1>
 95a:	48 8d 1d 00 00 00 00 	lea    0x0(%rip),%rbx        # 961 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x961>
			95d: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 961:	48 c7 45 68 00 00 00 	movq   $0x0,0x68(%rbp)
 968:	00
 969:	48 89 5d 60          	mov    %rbx,0x60(%rbp)
 96d:	4c 39 e0             	cmp    %r12,%rax
 970:	73 50                	jae    9c2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
 972:	8b 95 10 01 00 00    	mov    0x110(%rbp),%edx
 978:	85 d2                	test   %edx,%edx
 97a:	75 46                	jne    9c2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
 97c:	48 8d 71 02          	lea    0x2(%rcx),%rsi
 980:	80 79 01 0a          	cmpb   $0xa,0x1(%rcx)
 984:	0f 84 fa 00 00 00    	je     a84 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa84>
 98a:	48 2b 85 20 01 00 00 	sub    0x120(%rbp),%rax
 991:	48 89 b5 28 01 00 00 	mov    %rsi,0x128(%rbp)
 998:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 99f:	00 00 00
 9a2:	48 89 95 10 01 00 00 	mov    %rdx,0x110(%rbp)
 9a9:	48 89 85 18 01 00 00 	mov    %rax,0x118(%rbp)
 9b0:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 9b5:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 9ba:	48 89 f0             	mov    %rsi,%rax
 9bd:	e9 b8 f6 ff ff       	jmp    7a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
 9c2:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 9c7:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 9cc:	e9 a9 f6 ff ff       	jmp    7a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
 9d1:	48 8d 1d 00 00 00 00 	lea    0x0(%rip),%rbx        # 9d8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9d8>
			9d4: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 9d8:	48 c7 45 68 00 00 00 	movq   $0x0,0x68(%rbp)
 9df:	00
 9e0:	48 89 5d 60          	mov    %rbx,0x60(%rbp)
 9e4:	4c 39 e0             	cmp    %r12,%rax
 9e7:	73 d9                	jae    9c2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
 9e9:	8b 8d 10 01 00 00    	mov    0x110(%rbp),%ecx
 9ef:	85 c9                	test   %ecx,%ecx
 9f1:	75 cf                	jne    9c2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c2>
 9f3:	4c 89 e2             	mov    %r12,%rdx
 9f6:	48 89 c6             	mov    %rax,%rsi
 9f9:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 9fe:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
 a03:	48 89 ef             	mov    %rbp,%rdi
 a06:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 a0b:	48 83 c4 58          	add    $0x58,%rsp
 a0f:	e9 00 00 00 00       	jmp    a14 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa14>
			a10: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 a14:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 a1b:	00 00 00
 a1e:	4c 8b 64 24 38       	mov    0x38(%rsp),%r12
 a23:	48 89 85 10 01 00 00 	mov    %rax,0x110(%rbp)
 a2a:	4c 89 d0             	mov    %r10,%rax
 a2d:	48 2b 85 20 01 00 00 	sub    0x120(%rbp),%rax
 a34:	48 89 85 18 01 00 00 	mov    %rax,0x118(%rbp)
 a3b:	49 8d 42 01          	lea    0x1(%r10),%rax
 a3f:	48 89 85 28 01 00 00 	mov    %rax,0x128(%rbp)
 a46:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
 a4b:	e9 2a f6 ff ff       	jmp    7a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a>
 a50:	48 b8 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rax
 a57:	67 74 68
 a5a:	48 39 46 06          	cmp    %rax,0x6(%rsi)
 a5e:	0f 85 ee fd ff ff    	jne    852 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x852>
 a64:	31 c0                	xor    %eax,%eax
 a66:	e9 ec fd ff ff       	jmp    857 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x857>
 a6b:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
 a70:	48 89 c1             	mov    %rax,%rcx
 a73:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
 a79:	0f 85 d4 fb ff ff    	jne    653 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x653>
 a7f:	e9 71 fe ff ff       	jmp    8f5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8f5>
 a84:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a8b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa8b>
			a87: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 a8b:	48 89 45 60          	mov    %rax,0x60(%rbp)
 a8f:	4c 39 e6             	cmp    %r12,%rsi
 a92:	0f 83 18 ff ff ff    	jae    9b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9b0>
 a98:	4c 89 e2             	mov    %r12,%rdx
 a9b:	e9 59 ff ff ff       	jmp    9f9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9f9>
 aa0:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 aa7:	00 00
 aa9:	48 89 d8             	mov    %rbx,%rax
 aac:	45 31 d2             	xor    %r10d,%r10d
 aaf:	4c 39 e3             	cmp    %r12,%rbx
 ab2:	0f 82 50 fb ff ff    	jb     608 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x608>
 ab8:	48 89 d9             	mov    %rbx,%rcx
 abb:	e9 17 fa ff ff       	jmp    4d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d7>
 ac0:	31 d2                	xor    %edx,%edx
 ac2:	f3 0f bc d6          	tzcnt  %esi,%edx
 ac6:	e9 b7 f7 ff ff       	jmp    282 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x282>
 acb:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
 ad0:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
 ad5:	e9 bc f8 ff ff       	jmp    396 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x396>

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
   4:	53                   	push   %rbx
   5:	48 89 f1             	mov    %rsi,%rcx
   8:	48 89 d3             	mov    %rdx,%rbx
   b:	48 83 ec 10          	sub    $0x10,%rsp
   f:	48 39 d6             	cmp    %rdx,%rsi
  12:	72 19                	jb     2d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2d>
  14:	eb 48                	jmp    5e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x5e>
  16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  1d:	00 00 00
  20:	48 83 c1 01          	add    $0x1,%rcx
  24:	48 39 cb             	cmp    %rcx,%rbx
  27:	0f 84 3b 01 00 00    	je     168 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x168>
  2d:	0f b6 01             	movzbl (%rcx),%eax
  30:	83 e8 41             	sub    $0x41,%eax
  33:	3c 19                	cmp    $0x19,%al
  35:	76 e9                	jbe    20 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20>
  37:	48 89 ca             	mov    %rcx,%rdx
  3a:	48 29 f2             	sub    %rsi,%rdx
  3d:	74 1f                	je     5e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x5e>
  3f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  44:	48 89 3c 24          	mov    %rdi,(%rsp)
  48:	e8 00 00 00 00       	call   4d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4d>
			49: R_X86_64_PC32	.text-0x4
  4d:	48 8b 3c 24          	mov    (%rsp),%rdi
  51:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  56:	84 c0                	test   %al,%al
  58:	0f 84 28 01 00 00    	je     186 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x186>
  5e:	48 39 cb             	cmp    %rcx,%rbx
  61:	0f 84 f2 03 00 00    	je     459 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x459>
  67:	44 0f b6 01          	movzbl (%rcx),%r8d
  6b:	48 8d 41 01          	lea    0x1(%rcx),%rax
  6f:	41 80 f8 0a          	cmp    $0xa,%r8b
  73:	40 0f 95 c6          	setne  %sil
  77:	41 80 f8 0d          	cmp    $0xd,%r8b
  7b:	0f 95 c2             	setne  %dl
  7e:	40 20 d6             	and    %dl,%sil
  81:	74 2d                	je     b0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xb0>
  83:	48 2b 8f 20 01 00 00 	sub    0x120(%rdi),%rcx
  8a:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
  91:	48 ba 03 00 00 00 06 	movabs $0x600000003,%rdx
  98:	00 00 00
  9b:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
  a2:	48 89 8f 18 01 00 00 	mov    %rcx,0x118(%rdi)
  a9:	48 83 c4 10          	add    $0x10,%rsp
  ad:	5b                   	pop    %rbx
  ae:	c3                   	ret
  af:	90                   	nop
  b0:	48 8b 97 d8 00 00 00 	mov    0xd8(%rdi),%rdx
  b7:	48 85 d2             	test   %rdx,%rdx
  ba:	0f 85 d8 00 00 00    	jne    198 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x198>
  c0:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
  c7:	00 00 00 00
  cb:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
  d2:	48 c7 87 a0 00 00 00 	movq   $0x0,0xa0(%rdi)
  d9:	00 00 00 00
  dd:	48 c7 87 a8 00 00 00 	movq   $0x0,0xa8(%rdi)
  e4:	00 00 00 00
  e8:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  ef:	48 89 57 70          	mov    %rdx,0x70(%rdi)
  f3:	40 88 b7 0b 01 00 00 	mov    %sil,0x10b(%rdi)
  fa:	41 80 f8 0a          	cmp    $0xa,%r8b
  fe:	0f 84 ec 00 00 00    	je     1f0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1f0>
 104:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 10b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10b>
			107: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 10b:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 112:	00
 113:	48 89 77 60          	mov    %rsi,0x60(%rdi)
 117:	48 39 d8             	cmp    %rbx,%rax
 11a:	73 8d                	jae    a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa9>
 11c:	8b 97 10 01 00 00    	mov    0x110(%rdi),%edx
 122:	85 d2                	test   %edx,%edx
 124:	75 83                	jne    a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa9>
 126:	48 8d 71 02          	lea    0x2(%rcx),%rsi
 12a:	80 79 01 0a          	cmpb   $0xa,0x1(%rcx)
 12e:	0f 84 9e 02 00 00    	je     3d2 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3d2>
 134:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 13b:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 142:	48 ba 03 00 00 00 09 	movabs $0x900000003,%rdx
 149:	00 00 00
 14c:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
 153:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 15a:	48 89 f0             	mov    %rsi,%rax
 15d:	e9 47 ff ff ff       	jmp    a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa9>
 162:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 168:	48 89 da             	mov    %rbx,%rdx
 16b:	48 89 3c 24          	mov    %rdi,(%rsp)
 16f:	48 29 f2             	sub    %rsi,%rdx
 172:	e8 00 00 00 00       	call   177 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x177>
			173: R_X86_64_PC32	.text-0x4
 177:	48 8b 3c 24          	mov    (%rsp),%rdi
 17b:	84 c0                	test   %al,%al
 17d:	48 89 d8             	mov    %rbx,%rax
 180:	0f 85 23 ff ff ff    	jne    a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa9>
 186:	48 8b 87 28 01 00 00 	mov    0x128(%rdi),%rax
 18d:	48 83 c4 10          	add    $0x10,%rsp
 191:	5b                   	pop    %rbx
 192:	c3                   	ret
 193:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 198:	4c 8b 8f d0 00 00 00 	mov    0xd0(%rdi),%r9
 19f:	48 89 97 a8 00 00 00 	mov    %rdx,0xa8(%rdi)
 1a6:	48 83 ea 03          	sub    $0x3,%rdx
 1aa:	48 c7 87 d0 00 00 00 	movq   $0x0,0xd0(%rdi)
 1b1:	00 00 00 00
 1b5:	48 c7 87 d8 00 00 00 	movq   $0x0,0xd8(%rdi)
 1bc:	00 00 00 00
 1c0:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
 1c7:	4c 89 8f a0 00 00 00 	mov    %r9,0xa0(%rdi)
 1ce:	48 83 fa 08          	cmp    $0x8,%rdx
 1d2:	0f 87 10 ff ff ff    	ja     e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 1d8:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 1df <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1df>
			1db: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_-0x4
 1df:	49 63 14 92          	movslq (%r10,%rdx,4),%rdx
 1e3:	4c 01 d2             	add    %r10,%rdx
 1e6:	3e ff e2             	notrack jmp *%rdx
 1e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 1f0:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1f7 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1f7>
			1f3: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 1f7:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 1fe:	00
 1ff:	48 89 77 60          	mov    %rsi,0x60(%rdi)
 203:	48 39 d8             	cmp    %rbx,%rax
 206:	0f 83 9d fe ff ff    	jae    a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa9>
 20c:	8b 8f 10 01 00 00    	mov    0x110(%rdi),%ecx
 212:	85 c9                	test   %ecx,%ecx
 214:	0f 85 8f fe ff ff    	jne    a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa9>
 21a:	48 83 c4 10          	add    $0x10,%rsp
 21e:	48 89 da             	mov    %rbx,%rdx
 221:	48 89 c6             	mov    %rax,%rsi
 224:	5b                   	pop    %rbx
 225:	e9 00 00 00 00       	jmp    22a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x22a>
			226: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 22a:	48 ba 55 4e 53 55 42 	movabs $0x5243534255534e55,%rdx
 231:	53 43 52
 234:	49 39 11             	cmp    %rdx,(%r9)
 237:	0f 85 ab fe ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 23d:	ba 0f 00 00 00       	mov    $0xf,%edx
 242:	41 81 79 07 52 49 42 	cmpl   $0x45424952,0x7(%r9)
 249:	45
 24a:	0f 85 98 fe ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 250:	e9 9a fe ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 255:	48 ba 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rdx
 25c:	4e 4e 45
 25f:	49 39 11             	cmp    %rdx,(%r9)
 262:	0f 85 80 fe ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 268:	ba 07 00 00 00       	mov    $0x7,%edx
 26d:	66 41 81 79 08 43 54 	cmpw   $0x5443,0x8(%r9)
 274:	0f 85 6e fe ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 27a:	e9 70 fe ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 27f:	48 ba 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rdx
 286:	43 54 45
 289:	49 39 11             	cmp    %rdx,(%r9)
 28c:	0f 84 83 01 00 00    	je     415 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x415>
 292:	48 ba 53 55 42 53 43 	movabs $0x4249524353425553,%rdx
 299:	52 49 42
 29c:	49 39 11             	cmp    %rdx,(%r9)
 29f:	0f 85 43 fe ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 2a5:	ba 0e 00 00 00       	mov    $0xe,%edx
 2aa:	41 80 79 08 45       	cmpb   $0x45,0x8(%r9)
 2af:	0f 85 33 fe ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 2b5:	e9 35 fe ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 2ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 2c0:	41 0f b6 11          	movzbl (%r9),%edx
 2c4:	83 fa 43             	cmp    $0x43,%edx
 2c7:	0f 84 62 01 00 00    	je     42f <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x42f>
 2cd:	83 fa 4d             	cmp    $0x4d,%edx
 2d0:	0f 84 8b 01 00 00    	je     461 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x461>
 2d6:	83 fa 52             	cmp    $0x52,%edx
 2d9:	0f 85 09 fe ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 2df:	41 81 39 52 45 43 45 	cmpl   $0x45434552,(%r9)
 2e6:	0f 85 fc fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 2ec:	ba 0b 00 00 00       	mov    $0xb,%edx
 2f1:	41 81 79 03 45 49 50 	cmpl   $0x54504945,0x3(%r9)
 2f8:	54
 2f9:	0f 85 e9 fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 2ff:	e9 eb fd ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 304:	0f 1f 40 00          	nopl   0x0(%rax)
 308:	41 81 39 43 4f 4d 4d 	cmpl   $0x4d4d4f43,(%r9)
 30f:	0f 85 d3 fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 315:	ba 04 00 00 00       	mov    $0x4,%edx
 31a:	66 41 81 79 04 49 54 	cmpw   $0x5449,0x4(%r9)
 321:	0f 85 c1 fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 327:	e9 c3 fd ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 32c:	41 0f b6 11          	movzbl (%r9),%edx
 330:	83 fa 41             	cmp    $0x41,%edx
 333:	0f 84 ba 00 00 00    	je     3f3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3f3>
 339:	83 fa 42             	cmp    $0x42,%edx
 33c:	0f 84 44 01 00 00    	je     486 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x486>
 342:	83 fa 45             	cmp    $0x45,%edx
 345:	0f 84 5d 01 00 00    	je     4a8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4a8>
 34b:	83 fa 53             	cmp    $0x53,%edx
 34e:	0f 85 94 fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 354:	41 81 39 53 54 4f 4d 	cmpl   $0x4d4f5453,(%r9)
 35b:	0f 85 87 fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 361:	ba 0d 00 00 00       	mov    $0xd,%edx
 366:	41 80 79 04 50       	cmpb   $0x50,0x4(%r9)
 36b:	0f 85 77 fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 371:	e9 79 fd ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 376:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 37d:	00 00 00
 380:	45 8b 09             	mov    (%r9),%r9d
 383:	ba 0a 00 00 00       	mov    $0xa,%edx
 388:	41 81 f9 4e 41 43 4b 	cmp    $0x4b43414e,%r9d
 38f:	0f 84 5a fd ff ff    	je     ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 395:	41 81 f9 53 45 4e 44 	cmp    $0x444e4553,%r9d
 39c:	ba 0c 00 00 00       	mov    $0xc,%edx
 3a1:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
 3a8:	49 0f 45 d1          	cmovne %r9,%rdx
 3ac:	e9 3e fd ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 3b1:	66 41 81 39 41 43    	cmpw   $0x4341,(%r9)
 3b7:	0f 85 2b fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 3bd:	ba 02 00 00 00       	mov    $0x2,%edx
 3c2:	41 80 79 02 4b       	cmpb   $0x4b,0x2(%r9)
 3c7:	0f 85 1b fd ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 3cd:	e9 1d fd ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 3d2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3d9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3d9>
			3d5: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 3d9:	48 89 47 60          	mov    %rax,0x60(%rdi)
 3dd:	48 39 de             	cmp    %rbx,%rsi
 3e0:	0f 83 74 fd ff ff    	jae    15a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x15a>
 3e6:	48 83 c4 10          	add    $0x10,%rsp
 3ea:	48 89 da             	mov    %rbx,%rdx
 3ed:	5b                   	pop    %rbx
 3ee:	e9 00 00 00 00       	jmp    3f3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x3f3>
			3ef: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 3f3:	41 81 39 41 42 4f 52 	cmpl   $0x524f4241,(%r9)
 3fa:	0f 85 e8 fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 400:	ba 01 00 00 00       	mov    $0x1,%edx
 405:	41 80 79 04 54       	cmpb   $0x54,0x4(%r9)
 40a:	0f 85 d8 fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 410:	e9 da fc ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 415:	41 80 79 08 44       	cmpb   $0x44,0x8(%r9)
 41a:	0f 85 72 fe ff ff    	jne    292 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x292>
 420:	be 01 00 00 00       	mov    $0x1,%esi
 425:	ba 06 00 00 00       	mov    $0x6,%edx
 42a:	e9 c0 fc ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 42f:	41 81 39 43 4f 4e 4e 	cmpl   $0x4e4e4f43,(%r9)
 436:	0f 85 ac fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 43c:	41 81 79 03 4e 45 43 	cmpl   $0x5443454e,0x3(%r9)
 443:	54
 444:	0f 85 9e fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 44a:	be 01 00 00 00       	mov    $0x1,%esi
 44f:	ba 05 00 00 00       	mov    $0x5,%edx
 454:	e9 96 fc ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 459:	48 89 d8             	mov    %rbx,%rax
 45c:	e9 48 fc ff ff       	jmp    a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa9>
 461:	41 81 39 4d 45 53 53 	cmpl   $0x5353454d,(%r9)
 468:	0f 85 7a fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 46e:	ba 09 00 00 00       	mov    $0x9,%edx
 473:	41 81 79 03 53 41 47 	cmpl   $0x45474153,0x3(%r9)
 47a:	45
 47b:	0f 85 67 fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 481:	e9 69 fc ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 486:	41 81 39 42 45 47 49 	cmpl   $0x49474542,(%r9)
 48d:	0f 85 55 fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 493:	ba 03 00 00 00       	mov    $0x3,%edx
 498:	41 80 79 04 4e       	cmpb   $0x4e,0x4(%r9)
 49d:	0f 85 45 fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 4a3:	e9 47 fc ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>
 4a8:	41 81 39 45 52 52 4f 	cmpl   $0x4f525245,(%r9)
 4af:	0f 85 33 fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 4b5:	ba 08 00 00 00       	mov    $0x8,%edx
 4ba:	41 80 79 04 52       	cmpb   $0x52,0x4(%r9)
 4bf:	0f 85 23 fc ff ff    	jne    e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe8>
 4c5:	e9 25 fc ff ff       	jmp    ef <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xef>

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
   7:	75 67                	jne    70 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x70>
   9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 10 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x10>
			c: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  10:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  17:	00
  18:	48 89 47 60          	mov    %rax,0x60(%rdi)
  1c:	48 39 d6             	cmp    %rdx,%rsi
  1f:	0f 83 eb 00 00 00    	jae    110 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x110>
  25:	44 8b 87 10 01 00 00 	mov    0x110(%rdi),%r8d
  2c:	45 85 c0             	test   %r8d,%r8d
  2f:	0f 85 db 00 00 00    	jne    110 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x110>
  35:	48 8d 46 01          	lea    0x1(%rsi),%rax
  39:	80 3e 00             	cmpb   $0x0,(%rsi)
  3c:	0f 84 36 01 00 00    	je     178 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x178>
  42:	48 2b b7 20 01 00 00 	sub    0x120(%rdi),%rsi
  49:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
  50:	48 ba 03 00 00 00 0b 	movabs $0xb00000003,%rdx
  57:	00 00 00
  5a:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
  61:	48 89 b7 18 01 00 00 	mov    %rsi,0x118(%rdi)
  68:	c3                   	ret
  69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  70:	53                   	push   %rbx
  71:	48 89 d0             	mov    %rdx,%rax
  74:	48 29 f0             	sub    %rsi,%rax
  77:	48 89 c3             	mov    %rax,%rbx
  7a:	48 83 ec 20          	sub    $0x20,%rsp
  7e:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
  83:	48 89 f7             	mov    %rsi,%rdi
  86:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  8b:	48 89 c2             	mov    %rax,%rdx
  8e:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  93:	31 f6                	xor    %esi,%esi
  95:	e8 00 00 00 00       	call   9a <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x9a>
			96: R_X86_64_PLT32	memchr-0x4
  9a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  9f:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
  a4:	48 85 c0             	test   %rax,%rax
  a7:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  ac:	0f 84 9e 00 00 00    	je     150 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x150>
  b2:	48 89 c6             	mov    %rax,%rsi
  b5:	49 8b 50 20          	mov    0x20(%r8),%rdx
  b9:	49 2b 90 90 00 00 00 	sub    0x90(%r8),%rdx
  c0:	48 29 ce             	sub    %rcx,%rsi
  c3:	48 39 f2             	cmp    %rsi,%rdx
  c6:	72 50                	jb     118 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x118>
  c8:	49 89 88 b8 00 00 00 	mov    %rcx,0xb8(%r8)
  cf:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # d6 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xd6>
			d2: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  d6:	49 89 b0 98 00 00 00 	mov    %rsi,0x98(%r8)
  dd:	49 89 48 60          	mov    %rcx,0x60(%r8)
  e1:	49 c7 40 68 00 00 00 	movq   $0x0,0x68(%r8)
  e8:	00
  e9:	4c 39 c8             	cmp    %r9,%rax
  ec:	73 59                	jae    147 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x147>
  ee:	41 8b 90 10 01 00 00 	mov    0x110(%r8),%edx
  f5:	85 d2                	test   %edx,%edx
  f7:	75 4e                	jne    147 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x147>
  f9:	48 83 c4 20          	add    $0x20,%rsp
  fd:	4c 89 ca             	mov    %r9,%rdx
 100:	48 89 c6             	mov    %rax,%rsi
 103:	4c 89 c7             	mov    %r8,%rdi
 106:	5b                   	pop    %rbx
 107:	e9 00 00 00 00       	jmp    10c <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x10c>
			108: R_X86_64_PLT32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
 10c:	0f 1f 40 00          	nopl   0x0(%rax)
 110:	48 89 f0             	mov    %rsi,%rax
 113:	c3                   	ret
 114:	0f 1f 40 00          	nopl   0x0(%rax)
 118:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
 11f:	00 00 00
 122:	49 89 80 10 01 00 00 	mov    %rax,0x110(%r8)
 129:	48 8d 04 11          	lea    (%rcx,%rdx,1),%rax
 12d:	49 2b 80 20 01 00 00 	sub    0x120(%r8),%rax
 134:	49 89 80 18 01 00 00 	mov    %rax,0x118(%r8)
 13b:	48 8d 44 11 01       	lea    0x1(%rcx,%rdx,1),%rax
 140:	49 89 80 28 01 00 00 	mov    %rax,0x128(%r8)
 147:	48 83 c4 20          	add    $0x20,%rsp
 14b:	5b                   	pop    %rbx
 14c:	c3                   	ret
 14d:	0f 1f 00             	nopl   (%rax)
 150:	49 8b 50 20          	mov    0x20(%r8),%rdx
 154:	49 2b 90 90 00 00 00 	sub    0x90(%r8),%rdx
 15b:	48 39 da             	cmp    %rbx,%rdx
 15e:	72 b8                	jb     118 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x118>
 160:	49 89 88 b8 00 00 00 	mov    %rcx,0xb8(%r8)
 167:	4c 89 c8             	mov    %r9,%rax
 16a:	49 89 98 98 00 00 00 	mov    %rbx,0x98(%r8)
 171:	eb d4                	jmp    147 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x147>
 173:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 178:	31 c9                	xor    %ecx,%ecx
 17a:	48 83 bf 80 00 00 00 	cmpq   $0x0,0x80(%rdi)
 181:	00
 182:	74 0f                	je     193 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x193>
 184:	48 8b 8f f0 00 00 00 	mov    0xf0(%rdi),%rcx
 18b:	48 c1 e1 05          	shl    $0x5,%rcx
 18f:	48 03 4f 38          	add    0x38(%rdi),%rcx
 193:	48 89 8f b0 00 00 00 	mov    %rcx,0xb0(%rdi)
 19a:	8b 4f 78             	mov    0x78(%rdi),%ecx
 19d:	83 e1 01             	and    $0x1,%ecx
 1a0:	89 ce                	mov    %ecx,%esi
 1a2:	83 ce 02             	or     $0x2,%esi
 1a5:	80 bf 09 01 00 00 00 	cmpb   $0x0,0x109(%rdi)
 1ac:	0f 44 ce             	cmove  %esi,%ecx
 1af:	83 c9 04             	or     $0x4,%ecx
 1b2:	89 4f 78             	mov    %ecx,0x78(%rdi)
 1b5:	48 8b 8f e0 00 00 00 	mov    0xe0(%rdi),%rcx
 1bc:	f3 0f 6f 47 70       	movdqu 0x70(%rdi),%xmm0
 1c1:	48 8d 71 01          	lea    0x1(%rcx),%rsi
 1c5:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
 1c9:	48 c1 e1 04          	shl    $0x4,%rcx
 1cd:	48 03 4f 30          	add    0x30(%rdi),%rcx
 1d1:	48 89 b7 e0 00 00 00 	mov    %rsi,0xe0(%rdi)
 1d8:	0f 11 01             	movups %xmm0,(%rcx)
 1db:	f3 0f 6f 87 80 00 00 	movdqu 0x80(%rdi),%xmm0
 1e2:	00
 1e3:	0f 11 41 10          	movups %xmm0,0x10(%rcx)
 1e7:	f3 0f 6f 87 90 00 00 	movdqu 0x90(%rdi),%xmm0
 1ee:	00
 1ef:	0f 11 41 20          	movups %xmm0,0x20(%rcx)
 1f3:	f3 0f 6f 87 a0 00 00 	movdqu 0xa0(%rdi),%xmm0
 1fa:	00
 1fb:	0f 11 41 30          	movups %xmm0,0x30(%rcx)
 1ff:	f3 0f 6f 87 b0 00 00 	movdqu 0xb0(%rdi),%xmm0
 206:	00
 207:	0f 11 41 40          	movups %xmm0,0x40(%rcx)
 20b:	f3 0f 6f 87 90 00 00 	movdqu 0x90(%rdi),%xmm0
 212:	00
 213:	b9 00 01 00 00       	mov    $0x100,%ecx
 218:	66 89 8f 08 01 00 00 	mov    %cx,0x108(%rdi)
 21f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 226 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x226>
			222: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 226:	66 0f 6f c8          	movdqa %xmm0,%xmm1
 22a:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 22e:	66 0f 73 d9 08       	psrldq $0x8,%xmm1
 233:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 23a:	00
 23b:	48 c7 87 b8 00 00 00 	movq   $0x0,0xb8(%rdi)
 242:	00 00 00 00
 246:	66 0f d4 c1          	paddq  %xmm1,%xmm0
 24a:	48 c7 87 98 00 00 00 	movq   $0x0,0x98(%rdi)
 251:	00 00 00 00
 255:	66 0f d6 87 90 00 00 	movq   %xmm0,0x90(%rdi)
 25c:	00
 25d:	48 39 d0             	cmp    %rdx,%rax
 260:	73 0e                	jae    270 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x270>
 262:	48 89 c6             	mov    %rax,%rsi
 265:	e9 00 00 00 00       	jmp    26a <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x26a>
			266: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 26a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 270:	c3                   	ret
