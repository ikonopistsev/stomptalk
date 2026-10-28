0000000000000280 <stomptalk::parser::own_metadata()>:
     280:	f3 0f 1e fa          	endbr64
     284:	55                   	push   %rbp
     285:	41 57                	push   %r15
     287:	41 56                	push   %r14
     289:	41 55                	push   %r13
     28b:	41 54                	push   %r12
     28d:	53                   	push   %rbx
     28e:	50                   	push   %rax
     28f:	48 89 fb             	mov    %rdi,%rbx
     292:	4c 8b b7 a8 00 00 00 	mov    0xa8(%rdi),%r14
     299:	4d 85 f6             	test   %r14,%r14
     29c:	74 2e                	je     2cc <stomptalk::parser::own_metadata()+0x4c>
     29e:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
     2a5:	48 89 f0             	mov    %rsi,%rax
     2a8:	48 2b 43 40          	sub    0x40(%rbx),%rax
     2ac:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     2b0:	72 1a                	jb     2cc <stomptalk::parser::own_metadata()+0x4c>
     2b2:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     2b6:	4c 89 ff             	mov    %r15,%rdi
     2b9:	4c 89 f2             	mov    %r14,%rdx
     2bc:	e8 00 00 00 00       	call   2c1 <stomptalk::parser::own_metadata()+0x41>
			2bd: R_X86_64_PLT32	memcpy-0x4
     2c1:	4c 01 73 48          	add    %r14,0x48(%rbx)
     2c5:	4c 89 bb a0 00 00 00 	mov    %r15,0xa0(%rbx)
     2cc:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     2d3:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     2da:	0f 83 95 00 00 00    	jae    375 <stomptalk::parser::own_metadata()+0xf5>
     2e0:	4d 89 e5             	mov    %r12,%r13
     2e3:	49 c1 e5 05          	shl    $0x5,%r13
     2e7:	eb 17                	jmp    300 <stomptalk::parser::own_metadata()+0x80>
     2e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     2f0:	49 ff c4             	inc    %r12
     2f3:	49 83 c5 20          	add    $0x20,%r13
     2f7:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     2fe:	73 75                	jae    375 <stomptalk::parser::own_metadata()+0xf5>
     300:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     304:	4e 8b 74 2d 08       	mov    0x8(%rbp,%r13,1),%r14
     309:	4d 85 f6             	test   %r14,%r14
     30c:	74 2e                	je     33c <stomptalk::parser::own_metadata()+0xbc>
     30e:	4a 8b 74 2d 00       	mov    0x0(%rbp,%r13,1),%rsi
     313:	48 89 f0             	mov    %rsi,%rax
     316:	48 2b 43 40          	sub    0x40(%rbx),%rax
     31a:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     31e:	72 1c                	jb     33c <stomptalk::parser::own_metadata()+0xbc>
     320:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     324:	4c 89 ff             	mov    %r15,%rdi
     327:	4c 89 f2             	mov    %r14,%rdx
     32a:	e8 00 00 00 00       	call   32f <stomptalk::parser::own_metadata()+0xaf>
			32b: R_X86_64_PLT32	memcpy-0x4
     32f:	4c 01 73 48          	add    %r14,0x48(%rbx)
     333:	4e 89 7c 2d 00       	mov    %r15,0x0(%rbp,%r13,1)
     338:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     33c:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
     341:	4d 85 f6             	test   %r14,%r14
     344:	74 aa                	je     2f0 <stomptalk::parser::own_metadata()+0x70>
     346:	4a 8b 74 2d 10       	mov    0x10(%rbp,%r13,1),%rsi
     34b:	48 89 f0             	mov    %rsi,%rax
     34e:	48 2b 43 40          	sub    0x40(%rbx),%rax
     352:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     356:	72 98                	jb     2f0 <stomptalk::parser::own_metadata()+0x70>
     358:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     35c:	4c 89 ff             	mov    %r15,%rdi
     35f:	4c 89 f2             	mov    %r14,%rdx
     362:	e8 00 00 00 00       	call   367 <stomptalk::parser::own_metadata()+0xe7>
			363: R_X86_64_PLT32	memcpy-0x4
     367:	4c 01 73 48          	add    %r14,0x48(%rbx)
     36b:	4e 89 7c 2d 10       	mov    %r15,0x10(%rbp,%r13,1)
     370:	e9 7b ff ff ff       	jmp    2f0 <stomptalk::parser::own_metadata()+0x70>
     375:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
     37c:	4d 85 f6             	test   %r14,%r14
     37f:	74 2e                	je     3af <stomptalk::parser::own_metadata()+0x12f>
     381:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     388:	48 89 f0             	mov    %rsi,%rax
     38b:	48 2b 43 40          	sub    0x40(%rbx),%rax
     38f:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     393:	72 1a                	jb     3af <stomptalk::parser::own_metadata()+0x12f>
     395:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     399:	4c 89 ff             	mov    %r15,%rdi
     39c:	4c 89 f2             	mov    %r14,%rdx
     39f:	e8 00 00 00 00       	call   3a4 <stomptalk::parser::own_metadata()+0x124>
			3a0: R_X86_64_PLT32	memcpy-0x4
     3a4:	4c 01 73 48          	add    %r14,0x48(%rbx)
     3a8:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
     3af:	48 83 c4 08          	add    $0x8,%rsp
     3b3:	5b                   	pop    %rbx
     3b4:	41 5c                	pop    %r12
     3b6:	41 5d                	pop    %r13
     3b8:	41 5e                	pop    %r14
     3ba:	41 5f                	pop    %r15
     3bc:	5d                   	pop    %rbp
     3bd:	c3                   	ret
     3be:	66 90                	xchg   %ax,%ax

00000000000003c0 <stomptalk::parser::own_token()>:
     3c0:	f3 0f 1e fa          	endbr64
     3c4:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     3cb:	75 46                	jne    413 <stomptalk::parser::own_token()+0x53>
     3cd:	41 57                	push   %r15
     3cf:	41 56                	push   %r14
     3d1:	53                   	push   %rbx
     3d2:	48 89 fb             	mov    %rdi,%rbx
     3d5:	e8 00 00 00 00       	call   3da <stomptalk::parser::own_token()+0x1a>
			3d6: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     3da:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     3de:	4c 8b bb d8 00 00 00 	mov    0xd8(%rbx),%r15
     3e5:	4d 85 ff             	test   %r15,%r15
     3e8:	74 16                	je     400 <stomptalk::parser::own_token()+0x40>
     3ea:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     3f1:	4c 89 f7             	mov    %r14,%rdi
     3f4:	4c 89 fa             	mov    %r15,%rdx
     3f7:	e8 00 00 00 00       	call   3fc <stomptalk::parser::own_token()+0x3c>
			3f8: R_X86_64_PLT32	memcpy-0x4
     3fc:	4c 01 7b 48          	add    %r15,0x48(%rbx)
     400:	4c 89 b3 d0 00 00 00 	mov    %r14,0xd0(%rbx)
     407:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     40e:	5b                   	pop    %rbx
     40f:	41 5e                	pop    %r14
     411:	41 5f                	pop    %r15
     413:	c3                   	ret
     414:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     41b:	00 00 00 00 00

00000000000006f0 <stomptalk::parser::finish_value(char const*)>:
     6f0:	f3 0f 1e fa          	endbr64
     6f4:	55                   	push   %rbp
     6f5:	41 57                	push   %r15
     6f7:	41 56                	push   %r14
     6f9:	41 55                	push   %r13
     6fb:	41 54                	push   %r12
     6fd:	53                   	push   %rbx
     6fe:	48 83 ec 28          	sub    $0x28,%rsp
     702:	48 8b 9f d0 00 00 00 	mov    0xd0(%rdi),%rbx
     709:	4c 8b b7 d8 00 00 00 	mov    0xd8(%rdi),%r14
     710:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     717:	0f 57 c9             	xorps  %xmm1,%xmm1
     71a:	0f 11 8f d0 00 00 00 	movups %xmm1,0xd0(%rdi)
     721:	80 bf 0c 01 00 00 01 	cmpb   $0x1,0x10c(%rdi)
     728:	0f 85 b5 0c 00 00    	jne    13e3 <stomptalk::parser::finish_value(char const*)+0xcf3>
     72e:	49 83 fe 15          	cmp    $0x15,%r14
     732:	72 38                	jb     76c <stomptalk::parser::finish_value(char const*)+0x7c>
     734:	4a 8d 04 33          	lea    (%rbx,%r14,1),%rax
     738:	48 83 c0 ec          	add    $0xffffffffffffffec,%rax
     73c:	48 89 d9             	mov    %rbx,%rcx
     73f:	4c 89 f2             	mov    %r14,%rdx
     742:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     749:	1f 84 00 00 00 00 00
     750:	80 39 30             	cmpb   $0x30,(%rcx)
     753:	0f 85 99 00 00 00    	jne    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     759:	48 ff c1             	inc    %rcx
     75c:	48 ff ca             	dec    %rdx
     75f:	48 83 fa 14          	cmp    $0x14,%rdx
     763:	77 eb                	ja     750 <stomptalk::parser::finish_value(char const*)+0x60>
     765:	b9 14 00 00 00       	mov    $0x14,%ecx
     76a:	eb 44                	jmp    7b0 <stomptalk::parser::finish_value(char const*)+0xc0>
     76c:	4d 85 f6             	test   %r14,%r14
     76f:	0f 84 7d 00 00 00    	je     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     775:	4c 89 f1             	mov    %r14,%rcx
     778:	48 89 d8             	mov    %rbx,%rax
     77b:	49 83 fe 13          	cmp    $0x13,%r14
     77f:	73 2f                	jae    7b0 <stomptalk::parser::finish_value(char const*)+0xc0>
     781:	49 8d 46 ff          	lea    -0x1(%r14),%rax
     785:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 78c <stomptalk::parser::finish_value(char const*)+0x9c>
			788: R_X86_64_PC32	.rodata-0x4
     78c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
     790:	48 01 c8             	add    %rcx,%rax
     793:	3e ff e0             	notrack jmp *%rax
     796:	0f b6 03             	movzbl (%rbx),%eax
     799:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     79c:	80 f9 f6             	cmp    $0xf6,%cl
     79f:	72 51                	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     7a1:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
     7a5:	48 85 c0             	test   %rax,%rax
     7a8:	0f 89 15 0c 00 00    	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
     7ae:	eb 42                	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     7b0:	48 8d 51 ee          	lea    -0x12(%rcx),%rdx
     7b4:	45 31 ff             	xor    %r15d,%r15d
     7b7:	45 31 c0             	xor    %r8d,%r8d
     7ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     7c0:	46 0f b6 0c 00       	movzbl (%rax,%r8,1),%r9d
     7c5:	41 83 c1 d0          	add    $0xffffffd0,%r9d
     7c9:	41 83 f9 09          	cmp    $0x9,%r9d
     7cd:	77 23                	ja     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     7cf:	4f 8d 14 bf          	lea    (%r15,%r15,4),%r10
     7d3:	45 89 c9             	mov    %r9d,%r9d
     7d6:	4f 8d 3c 51          	lea    (%r9,%r10,2),%r15
     7da:	49 ff c0             	inc    %r8
     7dd:	4c 39 c2             	cmp    %r8,%rdx
     7e0:	75 de                	jne    7c0 <stomptalk::parser::finish_value(char const*)+0xd0>
     7e2:	44 0f b6 64 08 ee    	movzbl -0x12(%rax,%rcx,1),%r12d
     7e8:	41 8d 54 24 c6       	lea    -0x3a(%r12),%edx
     7ed:	80 fa f6             	cmp    $0xf6,%dl
     7f0:	73 33                	jae    825 <stomptalk::parser::finish_value(char const*)+0x135>
     7f2:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
     7f9:	00 00 00
     7fc:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     803:	48 89 f0             	mov    %rsi,%rax
     806:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     80d:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     814:	48 ff c6             	inc    %rsi
     817:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     81e:	31 c0                	xor    %eax,%eax
     820:	e9 04 0c 00 00       	jmp    1429 <stomptalk::parser::finish_value(char const*)+0xd39>
     825:	48 01 c8             	add    %rcx,%rax
     828:	48 b9 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rcx
     82f:	45 63 01
     832:	4c 0f af e1          	imul   %rcx,%r12
     836:	48 83 c0 ef          	add    $0xffffffffffffffef,%rax
     83a:	49 89 fd             	mov    %rdi,%r13
     83d:	48 89 c7             	mov    %rax,%rdi
     840:	48 89 f5             	mov    %rsi,%rbp
     843:	e8 38 19 00 00       	call   2180 <stomptalk::detail::(anonymous namespace)::antout<long, 17ul>::conv(char const*)>
     848:	0f 57 c9             	xorps  %xmm1,%xmm1
     84b:	48 89 ee             	mov    %rbp,%rsi
     84e:	4c 89 ef             	mov    %r13,%rdi
     851:	48 89 c1             	mov    %rax,%rcx
     854:	4c 01 e1             	add    %r12,%rcx
     857:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
     85e:	f9 62 bd
     861:	48 01 c8             	add    %rcx,%rax
     864:	78 8c                	js     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     866:	49 83 ff 12          	cmp    $0x12,%r15
     86a:	77 86                	ja     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     86c:	75 13                	jne    881 <stomptalk::parser::finish_value(char const*)+0x191>
     86e:	48 b9 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rcx
     875:	27 33 06
     878:	48 39 c8             	cmp    %rcx,%rax
     87b:	0f 87 71 ff ff ff    	ja     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     881:	48 b9 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rcx
     888:	b6 e0 0d
     88b:	4c 0f af f9          	imul   %rcx,%r15
     88f:	4c 01 f8             	add    %r15,%rax
     892:	e9 2c 0b 00 00       	jmp    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
     897:	49 89 ff             	mov    %rdi,%r15
     89a:	48 89 df             	mov    %rbx,%rdi
     89d:	49 89 f4             	mov    %rsi,%r12
     8a0:	e8 db 18 00 00       	call   2180 <stomptalk::detail::(anonymous namespace)::antout<long, 17ul>::conv(char const*)>
     8a5:	e9 07 0b 00 00       	jmp    13b1 <stomptalk::parser::finish_value(char const*)+0xcc1>
     8aa:	0f b6 0b             	movzbl (%rbx),%ecx
     8ad:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     8b0:	3c f6                	cmp    $0xf6,%al
     8b2:	0f 82 3a ff ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     8b8:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     8bf:	00 00 80
     8c2:	48 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rax
     8c9:	5a 00 00
     8cc:	48 0f af c8          	imul   %rax,%rcx
     8d0:	48 b8 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%rax
     8d7:	f2 ee ff
     8da:	48 01 c8             	add    %rcx,%rax
     8dd:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     8e1:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     8e5:	41 80 f8 f6          	cmp    $0xf6,%r8b
     8e9:	0f 82 69 09 00 00    	jb     1258 <stomptalk::parser::finish_value(char const*)+0xb68>
     8ef:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
     8f6:	09 00 00
     8f9:	49 0f af c8          	imul   %r8,%rcx
     8fd:	49 bf 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%r15
     904:	4b fe ff
     907:	49 01 cf             	add    %rcx,%r15
     90a:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
     90e:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     912:	41 80 f8 f6          	cmp    $0xf6,%r8b
     916:	0f 82 39 09 00 00    	jb     1255 <stomptalk::parser::finish_value(char const*)+0xb65>
     91c:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
     923:	00 00 00
     926:	49 0f af c8          	imul   %r8,%rcx
     92a:	49 bc 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r12
     931:	d4 ff ff
     934:	49 01 cc             	add    %rcx,%r12
     937:	0f b6 4b 03          	movzbl 0x3(%rbx),%ecx
     93b:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     93f:	41 80 f8 f6          	cmp    $0xf6,%r8b
     943:	0f 82 09 09 00 00    	jb     1252 <stomptalk::parser::finish_value(char const*)+0xb62>
     949:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
     950:	00 00 00
     953:	49 0f af c8          	imul   %r8,%rcx
     957:	49 bd 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r13
     95e:	fb ff ff
     961:	49 01 cd             	add    %rcx,%r13
     964:	0f b6 4b 04          	movzbl 0x4(%rbx),%ecx
     968:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     96c:	41 80 f8 f6          	cmp    $0xf6,%r8b
     970:	0f 82 d9 08 00 00    	jb     124f <stomptalk::parser::finish_value(char const*)+0xb5f>
     976:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
     97d:	00 00 00
     980:	49 0f af c8          	imul   %r8,%rcx
     984:	48 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rbp
     98b:	ff ff ff
     98e:	48 01 cd             	add    %rcx,%rbp
     991:	0f b6 4b 05          	movzbl 0x5(%rbx),%ecx
     995:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     999:	41 80 f8 f6          	cmp    $0xf6,%r8b
     99d:	72 4c                	jb     9eb <stomptalk::parser::finish_value(char const*)+0x2fb>
     99f:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
     9a6:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
     9ab:	48 8d 4b 06          	lea    0x6(%rbx),%rcx
     9af:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     9b4:	48 89 cf             	mov    %rcx,%rdi
     9b7:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
     9bc:	48 89 04 24          	mov    %rax,(%rsp)
     9c0:	e8 6b 19 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     9c5:	0f 57 c9             	xorps  %xmm1,%xmm1
     9c8:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
     9cd:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
     9d2:	48 89 c1             	mov    %rax,%rcx
     9d5:	48 8b 04 24          	mov    (%rsp),%rax
     9d9:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
     9e0:	ff ff ff
     9e3:	48 01 ca             	add    %rcx,%rdx
     9e6:	48 03 54 24 18       	add    0x18(%rsp),%rdx
     9eb:	48 01 ea             	add    %rbp,%rdx
     9ee:	e9 5c 08 00 00       	jmp    124f <stomptalk::parser::finish_value(char const*)+0xb5f>
     9f3:	0f b6 0b             	movzbl (%rbx),%ecx
     9f6:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     9f9:	3c f6                	cmp    $0xf6,%al
     9fb:	0f 82 f1 fd ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     a01:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     a08:	00 00 80
     a0b:	48 b8 00 e8 76 48 17 	movabs $0x174876e800,%rax
     a12:	00 00 00
     a15:	48 0f af c8          	imul   %rax,%rcx
     a19:	48 b8 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%rax
     a20:	fb ff ff
     a23:	48 01 c8             	add    %rcx,%rax
     a26:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     a2a:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     a2e:	41 80 f8 f6          	cmp    $0xf6,%r8b
     a32:	0f 82 20 08 00 00    	jb     1258 <stomptalk::parser::finish_value(char const*)+0xb68>
     a38:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
     a3f:	00 00 00
     a42:	49 0f af c8          	imul   %r8,%rcx
     a46:	49 bf 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r15
     a4d:	ff ff ff
     a50:	49 01 cf             	add    %rcx,%r15
     a53:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
     a57:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     a5b:	41 80 f8 f6          	cmp    $0xf6,%r8b
     a5f:	0f 82 f0 07 00 00    	jb     1255 <stomptalk::parser::finish_value(char const*)+0xb65>
     a65:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
     a6c:	48 89 0c 24          	mov    %rcx,(%rsp)
     a70:	48 8d 4b 03          	lea    0x3(%rbx),%rcx
     a74:	49 89 fd             	mov    %rdi,%r13
     a77:	48 89 cf             	mov    %rcx,%rdi
     a7a:	48 89 f5             	mov    %rsi,%rbp
     a7d:	49 89 c4             	mov    %rax,%r12
     a80:	e8 ab 18 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     a85:	0f 57 c9             	xorps  %xmm1,%xmm1
     a88:	48 89 ee             	mov    %rbp,%rsi
     a8b:	4c 89 ef             	mov    %r13,%rdi
     a8e:	48 89 c1             	mov    %rax,%rcx
     a91:	4c 89 e0             	mov    %r12,%rax
     a94:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
     a9b:	ff ff ff
     a9e:	48 01 ca             	add    %rcx,%rdx
     aa1:	48 03 14 24          	add    (%rsp),%rdx
     aa5:	e9 ab 07 00 00       	jmp    1255 <stomptalk::parser::finish_value(char const*)+0xb65>
     aaa:	0f b6 03             	movzbl (%rbx),%eax
     aad:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     ab0:	80 f9 f6             	cmp    $0xf6,%cl
     ab3:	0f 82 39 fd ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     ab9:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     ac0:	00 00 80
     ac3:	48 69 c0 10 27 00 00 	imul   $0x2710,%rax,%rax
     aca:	48 05 00 ad f8 ff    	add    $0xfffffffffff8ad00,%rax
     ad0:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
     ad4:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     ad8:	41 80 f8 f6          	cmp    $0xf6,%r8b
     adc:	0f 82 64 08 00 00    	jb     1346 <stomptalk::parser::finish_value(char const*)+0xc56>
     ae2:	48 69 d2 e8 03 00 00 	imul   $0x3e8,%rdx,%rdx
     ae9:	48 81 c2 80 44 ff ff 	add    $0xffffffffffff4480,%rdx
     af0:	44 0f b6 43 02       	movzbl 0x2(%rbx),%r8d
     af5:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     af9:	41 80 f9 f6          	cmp    $0xf6,%r9b
     afd:	0f 82 40 08 00 00    	jb     1343 <stomptalk::parser::finish_value(char const*)+0xc53>
     b03:	4d 6b c0 64          	imul   $0x64,%r8,%r8
     b07:	49 81 c0 40 ed ff ff 	add    $0xffffffffffffed40,%r8
     b0e:	44 0f b6 4b 03       	movzbl 0x3(%rbx),%r9d
     b13:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
     b17:	41 80 fa f6          	cmp    $0xf6,%r10b
     b1b:	0f 82 1f 08 00 00    	jb     1340 <stomptalk::parser::finish_value(char const*)+0xc50>
     b21:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
     b25:	44 0f b6 53 04       	movzbl 0x4(%rbx),%r10d
     b2a:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
     b2e:	49 83 c2 d0          	add    $0xffffffffffffffd0,%r10
     b32:	41 80 fb f6          	cmp    $0xf6,%r11b
     b36:	4c 0f 42 d1          	cmovb  %rcx,%r10
     b3a:	4b 8d 0c 4a          	lea    (%r10,%r9,2),%rcx
     b3e:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
     b45:	e9 f6 07 00 00       	jmp    1340 <stomptalk::parser::finish_value(char const*)+0xc50>
     b4a:	0f b6 0b             	movzbl (%rbx),%ecx
     b4d:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     b50:	3c f6                	cmp    $0xf6,%al
     b52:	0f 82 9a fc ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     b58:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     b5f:	00 00 80
     b62:	48 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%rax
     b69:	00 00 00
     b6c:	48 0f af c8          	imul   %rax,%rcx
     b70:	48 b8 00 00 0d 21 58 	movabs $0xffffd458210d0000,%rax
     b77:	d4 ff ff
     b7a:	48 01 c8             	add    %rcx,%rax
     b7d:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     b81:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     b85:	41 80 f8 f6          	cmp    $0xf6,%r8b
     b89:	0f 82 c9 06 00 00    	jb     1258 <stomptalk::parser::finish_value(char const*)+0xb68>
     b8f:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
     b96:	00 00 00
     b99:	49 0f af c8          	imul   %r8,%rcx
     b9d:	49 bf 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r15
     ba4:	fb ff ff
     ba7:	49 01 cf             	add    %rcx,%r15
     baa:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
     bae:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     bb2:	41 80 f8 f6          	cmp    $0xf6,%r8b
     bb6:	0f 82 99 06 00 00    	jb     1255 <stomptalk::parser::finish_value(char const*)+0xb65>
     bbc:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
     bc3:	00 00 00
     bc6:	49 0f af c8          	imul   %r8,%rcx
     bca:	49 bc 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r12
     bd1:	ff ff ff
     bd4:	49 01 cc             	add    %rcx,%r12
     bd7:	0f b6 4b 03          	movzbl 0x3(%rbx),%ecx
     bdb:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
     bdf:	41 80 f8 f6          	cmp    $0xf6,%r8b
     be3:	0f 82 69 06 00 00    	jb     1252 <stomptalk::parser::finish_value(char const*)+0xb62>
     be9:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
     bf0:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
     bf5:	48 8d 4b 04          	lea    0x4(%rbx),%rcx
     bf9:	48 89 fd             	mov    %rdi,%rbp
     bfc:	48 89 cf             	mov    %rcx,%rdi
     bff:	49 89 f5             	mov    %rsi,%r13
     c02:	48 89 04 24          	mov    %rax,(%rsp)
     c06:	e8 25 17 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     c0b:	0f 57 c9             	xorps  %xmm1,%xmm1
     c0e:	4c 89 ee             	mov    %r13,%rsi
     c11:	48 89 ef             	mov    %rbp,%rdi
     c14:	48 89 c1             	mov    %rax,%rcx
     c17:	48 8b 04 24          	mov    (%rsp),%rax
     c1b:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
     c22:	ff ff ff
     c25:	48 01 ca             	add    %rcx,%rdx
     c28:	48 03 54 24 08       	add    0x8(%rsp),%rdx
     c2d:	e9 20 06 00 00       	jmp    1252 <stomptalk::parser::finish_value(char const*)+0xb62>
     c32:	0f b6 03             	movzbl (%rbx),%eax
     c35:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     c38:	80 f9 f6             	cmp    $0xf6,%cl
     c3b:	0f 82 b1 fb ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     c41:	4c 69 e8 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%r13
     c48:	48 8d 43 01          	lea    0x1(%rbx),%rax
     c4c:	49 89 ff             	mov    %rdi,%r15
     c4f:	48 89 c7             	mov    %rax,%rdi
     c52:	49 89 f4             	mov    %rsi,%r12
     c55:	e8 d6 16 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     c5a:	0f 57 c9             	xorps  %xmm1,%xmm1
     c5d:	4c 89 e6             	mov    %r12,%rsi
     c60:	4c 89 ff             	mov    %r15,%rdi
     c63:	48 89 c1             	mov    %rax,%rcx
     c66:	48 b8 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rax
     c6d:	ff ff ff
     c70:	48 01 c8             	add    %rcx,%rax
     c73:	4c 01 e8             	add    %r13,%rax
     c76:	48 85 c0             	test   %rax,%rax
     c79:	0f 89 44 07 00 00    	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
     c7f:	e9 6e fb ff ff       	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     c84:	0f b6 03             	movzbl (%rbx),%eax
     c87:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     c8a:	80 f9 f6             	cmp    $0xf6,%cl
     c8d:	0f 82 5f fb ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     c93:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     c9a:	00 00 80
     c9d:	48 6b c0 64          	imul   $0x64,%rax,%rax
     ca1:	48 05 40 ed ff ff    	add    $0xffffffffffffed40,%rax
     ca7:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
     cab:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     caf:	41 80 f8 f6          	cmp    $0xf6,%r8b
     cb3:	0f 82 8d 06 00 00    	jb     1346 <stomptalk::parser::finish_value(char const*)+0xc56>
     cb9:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
     cbd:	44 0f b6 43 02       	movzbl 0x2(%rbx),%r8d
     cc2:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     cc6:	49 83 c0 d0          	add    $0xffffffffffffffd0,%r8
     cca:	41 80 f9 f6          	cmp    $0xf6,%r9b
     cce:	4c 0f 42 c1          	cmovb  %rcx,%r8
     cd2:	49 8d 0c 50          	lea    (%r8,%rdx,2),%rcx
     cd6:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
     cdd:	e9 64 06 00 00       	jmp    1346 <stomptalk::parser::finish_value(char const*)+0xc56>
     ce2:	0f b6 13             	movzbl (%rbx),%edx
     ce5:	8d 42 c6             	lea    -0x3a(%rdx),%eax
     ce8:	3c f6                	cmp    $0xf6,%al
     cea:	0f 82 02 fb ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     cf0:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     cf7:	00 00 80
     cfa:	48 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rax
     d01:	8d 03 00
     d04:	48 0f af d0          	imul   %rax,%rdx
     d08:	48 b8 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rax
     d0f:	78 55 ff
     d12:	48 01 d0             	add    %rdx,%rax
     d15:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
     d19:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     d1d:	41 80 f8 f6          	cmp    $0xf6,%r8b
     d21:	0f 82 1f 06 00 00    	jb     1346 <stomptalk::parser::finish_value(char const*)+0xc56>
     d27:	49 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r8
     d2e:	5a 00 00
     d31:	49 0f af d0          	imul   %r8,%rdx
     d35:	49 bf 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%r15
     d3c:	f2 ee ff
     d3f:	49 01 d7             	add    %rdx,%r15
     d42:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
     d46:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     d4a:	41 80 f8 f6          	cmp    $0xf6,%r8b
     d4e:	0f 82 03 01 00 00    	jb     e57 <stomptalk::parser::finish_value(char const*)+0x767>
     d54:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
     d5b:	09 00 00
     d5e:	49 0f af d0          	imul   %r8,%rdx
     d62:	49 bc 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%r12
     d69:	4b fe ff
     d6c:	49 01 d4             	add    %rdx,%r12
     d6f:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
     d73:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     d77:	41 80 f8 f6          	cmp    $0xf6,%r8b
     d7b:	0f 82 d3 00 00 00    	jb     e54 <stomptalk::parser::finish_value(char const*)+0x764>
     d81:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
     d88:	00 00 00
     d8b:	49 0f af d0          	imul   %r8,%rdx
     d8f:	49 bd 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r13
     d96:	d4 ff ff
     d99:	49 01 d5             	add    %rdx,%r13
     d9c:	0f b6 53 04          	movzbl 0x4(%rbx),%edx
     da0:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     da4:	41 80 f8 f6          	cmp    $0xf6,%r8b
     da8:	0f 82 a3 00 00 00    	jb     e51 <stomptalk::parser::finish_value(char const*)+0x761>
     dae:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
     db5:	00 00 00
     db8:	49 0f af d0          	imul   %r8,%rdx
     dbc:	48 bd 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%rbp
     dc3:	fb ff ff
     dc6:	48 01 d5             	add    %rdx,%rbp
     dc9:	0f b6 53 05          	movzbl 0x5(%rbx),%edx
     dcd:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     dd1:	41 80 f8 f6          	cmp    $0xf6,%r8b
     dd5:	72 77                	jb     e4e <stomptalk::parser::finish_value(char const*)+0x75e>
     dd7:	48 89 04 24          	mov    %rax,(%rsp)
     ddb:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
     de0:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     de5:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
     dec:	00 00 00
     def:	48 0f af d0          	imul   %rax,%rdx
     df3:	48 b8 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rax
     dfa:	ff ff ff
     dfd:	48 01 d0             	add    %rdx,%rax
     e00:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     e05:	0f b6 43 06          	movzbl 0x6(%rbx),%eax
     e09:	8d 50 c6             	lea    -0x3a(%rax),%edx
     e0c:	80 fa f6             	cmp    $0xf6,%dl
     e0f:	72 27                	jb     e38 <stomptalk::parser::finish_value(char const*)+0x748>
     e11:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
     e18:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
     e1d:	48 8d 7b 07          	lea    0x7(%rbx),%rdi
     e21:	e8 0a 15 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     e26:	48 b9 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rcx
     e2d:	ff ff ff
     e30:	48 01 c1             	add    %rax,%rcx
     e33:	48 03 4c 24 20       	add    0x20(%rsp),%rcx
     e38:	48 03 4c 24 18       	add    0x18(%rsp),%rcx
     e3d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
     e42:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
     e47:	48 8b 04 24          	mov    (%rsp),%rax
     e4b:	0f 57 c9             	xorps  %xmm1,%xmm1
     e4e:	48 01 e9             	add    %rbp,%rcx
     e51:	4c 01 e9             	add    %r13,%rcx
     e54:	4c 01 e1             	add    %r12,%rcx
     e57:	4c 01 f9             	add    %r15,%rcx
     e5a:	e9 e7 04 00 00       	jmp    1346 <stomptalk::parser::finish_value(char const*)+0xc56>
     e5f:	0f b6 03             	movzbl (%rbx),%eax
     e62:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     e65:	80 f9 f6             	cmp    $0xf6,%cl
     e68:	0f 82 84 f9 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     e6e:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     e75:	00 00 80
     e78:	48 69 c0 e8 03 00 00 	imul   $0x3e8,%rax,%rax
     e7f:	48 05 80 44 ff ff    	add    $0xffffffffffff4480,%rax
     e85:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
     e89:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     e8d:	41 80 f8 f6          	cmp    $0xf6,%r8b
     e91:	0f 82 af 04 00 00    	jb     1346 <stomptalk::parser::finish_value(char const*)+0xc56>
     e97:	48 6b d2 64          	imul   $0x64,%rdx,%rdx
     e9b:	48 81 c2 40 ed ff ff 	add    $0xffffffffffffed40,%rdx
     ea2:	44 0f b6 43 02       	movzbl 0x2(%rbx),%r8d
     ea7:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     eab:	41 80 f9 f6          	cmp    $0xf6,%r9b
     eaf:	0f 82 8e 04 00 00    	jb     1343 <stomptalk::parser::finish_value(char const*)+0xc53>
     eb5:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
     eb9:	44 0f b6 4b 03       	movzbl 0x3(%rbx),%r9d
     ebe:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
     ec2:	49 83 c1 d0          	add    $0xffffffffffffffd0,%r9
     ec6:	41 80 fa f6          	cmp    $0xf6,%r10b
     eca:	4c 0f 42 c9          	cmovb  %rcx,%r9
     ece:	4b 8d 0c 41          	lea    (%r9,%r8,2),%rcx
     ed2:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
     ed9:	e9 65 04 00 00       	jmp    1343 <stomptalk::parser::finish_value(char const*)+0xc53>
     ede:	0f b6 03             	movzbl (%rbx),%eax
     ee1:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     ee4:	80 f9 f6             	cmp    $0xf6,%cl
     ee7:	0f 82 05 f9 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     eed:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     ef4:	00 00 80
     ef7:	48 69 c0 80 96 98 00 	imul   $0x989680,%rax,%rax
     efe:	48 05 00 c8 63 e3    	add    $0xffffffffe363c800,%rax
     f04:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
     f08:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     f0c:	41 80 f8 f6          	cmp    $0xf6,%r8b
     f10:	0f 82 30 04 00 00    	jb     1346 <stomptalk::parser::finish_value(char const*)+0xc56>
     f16:	48 69 d2 40 42 0f 00 	imul   $0xf4240,%rdx,%rdx
     f1d:	48 81 c2 00 94 23 fd 	add    $0xfffffffffd239400,%rdx
     f24:	44 0f b6 43 02       	movzbl 0x2(%rbx),%r8d
     f29:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     f2d:	41 80 f9 f6          	cmp    $0xf6,%r9b
     f31:	0f 82 0c 04 00 00    	jb     1343 <stomptalk::parser::finish_value(char const*)+0xc53>
     f37:	4d 69 c0 a0 86 01 00 	imul   $0x186a0,%r8,%r8
     f3e:	49 81 c0 00 c2 b6 ff 	add    $0xffffffffffb6c200,%r8
     f45:	44 0f b6 4b 03       	movzbl 0x3(%rbx),%r9d
     f4a:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
     f4e:	41 80 fa f6          	cmp    $0xf6,%r10b
     f52:	0f 82 e8 03 00 00    	jb     1340 <stomptalk::parser::finish_value(char const*)+0xc50>
     f58:	4d 69 c9 10 27 00 00 	imul   $0x2710,%r9,%r9
     f5f:	49 81 c1 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r9
     f66:	44 0f b6 53 04       	movzbl 0x4(%rbx),%r10d
     f6b:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
     f6f:	41 80 fb f6          	cmp    $0xf6,%r11b
     f73:	0f 82 c4 03 00 00    	jb     133d <stomptalk::parser::finish_value(char const*)+0xc4d>
     f79:	4d 69 d2 e8 03 00 00 	imul   $0x3e8,%r10,%r10
     f80:	49 81 c2 80 44 ff ff 	add    $0xffffffffffff4480,%r10
     f87:	44 0f b6 5b 05       	movzbl 0x5(%rbx),%r11d
     f8c:	41 8d 6b c6          	lea    -0x3a(%r11),%ebp
     f90:	40 80 fd f6          	cmp    $0xf6,%bpl
     f94:	0f 82 a0 03 00 00    	jb     133a <stomptalk::parser::finish_value(char const*)+0xc4a>
     f9a:	4d 6b db 64          	imul   $0x64,%r11,%r11
     f9e:	49 81 c3 40 ed ff ff 	add    $0xffffffffffffed40,%r11
     fa5:	44 0f b6 7b 06       	movzbl 0x6(%rbx),%r15d
     faa:	41 8d 6f c6          	lea    -0x3a(%r15),%ebp
     fae:	40 80 fd f6          	cmp    $0xf6,%bpl
     fb2:	72 25                	jb     fd9 <stomptalk::parser::finish_value(char const*)+0x8e9>
     fb4:	4f 8d 3c bf          	lea    (%r15,%r15,4),%r15
     fb8:	44 0f b6 63 07       	movzbl 0x7(%rbx),%r12d
     fbd:	41 8d 6c 24 c6       	lea    -0x3a(%r12),%ebp
     fc2:	49 83 c4 d0          	add    $0xffffffffffffffd0,%r12
     fc6:	40 80 fd f6          	cmp    $0xf6,%bpl
     fca:	4c 0f 42 e1          	cmovb  %rcx,%r12
     fce:	4b 8d 0c 7c          	lea    (%r12,%r15,2),%rcx
     fd2:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
     fd9:	4c 01 d9             	add    %r11,%rcx
     fdc:	e9 59 03 00 00       	jmp    133a <stomptalk::parser::finish_value(char const*)+0xc4a>
     fe1:	0f b6 03             	movzbl (%rbx),%eax
     fe4:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     fe7:	80 f9 f6             	cmp    $0xf6,%cl
     fea:	0f 82 02 f8 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
     ff0:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     ff4:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     ff8:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     ffb:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
     fff:	80 fa f6             	cmp    $0xf6,%dl
    1002:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1009:	00 00 80
    100c:	48 0f 43 d1          	cmovae %rcx,%rdx
    1010:	48 8d 04 42          	lea    (%rdx,%rax,2),%rax
    1014:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
    101a:	48 85 c0             	test   %rax,%rax
    101d:	0f 89 a0 03 00 00    	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
    1023:	e9 ca f7 ff ff       	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1028:	44 0f b6 3b          	movzbl (%rbx),%r15d
    102c:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    1030:	3c f6                	cmp    $0xf6,%al
    1032:	0f 82 ba f7 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1038:	48 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rax
    103f:	45 63 01
    1042:	4c 0f af f8          	imul   %rax,%r15
    1046:	48 8d 43 01          	lea    0x1(%rbx),%rax
    104a:	49 89 fc             	mov    %rdi,%r12
    104d:	48 89 c7             	mov    %rax,%rdi
    1050:	49 89 f5             	mov    %rsi,%r13
    1053:	e8 28 11 00 00       	call   2180 <stomptalk::detail::(anonymous namespace)::antout<long, 17ul>::conv(char const*)>
    1058:	0f 57 c9             	xorps  %xmm1,%xmm1
    105b:	4c 89 ee             	mov    %r13,%rsi
    105e:	4c 89 e7             	mov    %r12,%rdi
    1061:	48 89 c1             	mov    %rax,%rcx
    1064:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
    106b:	f9 62 bd
    106e:	48 01 c8             	add    %rcx,%rax
    1071:	4c 01 f8             	add    %r15,%rax
    1074:	48 85 c0             	test   %rax,%rax
    1077:	0f 89 46 03 00 00    	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
    107d:	e9 70 f7 ff ff       	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1082:	0f b6 03             	movzbl (%rbx),%eax
    1085:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    1088:	80 f9 f6             	cmp    $0xf6,%cl
    108b:	0f 82 61 f7 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1091:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1098:	00 00 80
    109b:	48 69 c0 a0 86 01 00 	imul   $0x186a0,%rax,%rax
    10a2:	48 05 00 c2 b6 ff    	add    $0xffffffffffb6c200,%rax
    10a8:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
    10ac:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    10b0:	41 80 f8 f6          	cmp    $0xf6,%r8b
    10b4:	0f 82 8c 02 00 00    	jb     1346 <stomptalk::parser::finish_value(char const*)+0xc56>
    10ba:	48 69 d2 10 27 00 00 	imul   $0x2710,%rdx,%rdx
    10c1:	48 81 c2 00 ad f8 ff 	add    $0xfffffffffff8ad00,%rdx
    10c8:	44 0f b6 43 02       	movzbl 0x2(%rbx),%r8d
    10cd:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    10d1:	41 80 f9 f6          	cmp    $0xf6,%r9b
    10d5:	0f 82 68 02 00 00    	jb     1343 <stomptalk::parser::finish_value(char const*)+0xc53>
    10db:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
    10e2:	49 81 c0 80 44 ff ff 	add    $0xffffffffffff4480,%r8
    10e9:	44 0f b6 4b 03       	movzbl 0x3(%rbx),%r9d
    10ee:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    10f2:	41 80 fa f6          	cmp    $0xf6,%r10b
    10f6:	0f 82 44 02 00 00    	jb     1340 <stomptalk::parser::finish_value(char const*)+0xc50>
    10fc:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    1100:	49 81 c1 40 ed ff ff 	add    $0xffffffffffffed40,%r9
    1107:	44 0f b6 53 04       	movzbl 0x4(%rbx),%r10d
    110c:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    1110:	41 80 fb f6          	cmp    $0xf6,%r11b
    1114:	0f 82 23 02 00 00    	jb     133d <stomptalk::parser::finish_value(char const*)+0xc4d>
    111a:	4f 8d 14 92          	lea    (%r10,%r10,4),%r10
    111e:	44 0f b6 5b 05       	movzbl 0x5(%rbx),%r11d
    1123:	41 8d 6b c6          	lea    -0x3a(%r11),%ebp
    1127:	49 83 c3 d0          	add    $0xffffffffffffffd0,%r11
    112b:	40 80 fd f6          	cmp    $0xf6,%bpl
    112f:	4c 0f 42 d9          	cmovb  %rcx,%r11
    1133:	4b 8d 0c 53          	lea    (%r11,%r10,2),%rcx
    1137:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
    113e:	e9 fa 01 00 00       	jmp    133d <stomptalk::parser::finish_value(char const*)+0xc4d>
    1143:	0f b6 0b             	movzbl (%rbx),%ecx
    1146:	8d 41 c6             	lea    -0x3a(%rcx),%eax
    1149:	3c f6                	cmp    $0xf6,%al
    114b:	0f 82 a1 f6 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1151:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1158:	00 00 80
    115b:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    1162:	09 00 00
    1165:	48 0f af c8          	imul   %rax,%rcx
    1169:	48 b8 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rax
    1170:	4b fe ff
    1173:	48 01 c8             	add    %rcx,%rax
    1176:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
    117a:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
    117e:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1182:	0f 82 d0 00 00 00    	jb     1258 <stomptalk::parser::finish_value(char const*)+0xb68>
    1188:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    118f:	00 00 00
    1192:	49 0f af c8          	imul   %r8,%rcx
    1196:	49 bf 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r15
    119d:	d4 ff ff
    11a0:	49 01 cf             	add    %rcx,%r15
    11a3:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
    11a7:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
    11ab:	41 80 f8 f6          	cmp    $0xf6,%r8b
    11af:	0f 82 a0 00 00 00    	jb     1255 <stomptalk::parser::finish_value(char const*)+0xb65>
    11b5:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    11bc:	00 00 00
    11bf:	49 0f af c8          	imul   %r8,%rcx
    11c3:	49 bc 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r12
    11ca:	fb ff ff
    11cd:	49 01 cc             	add    %rcx,%r12
    11d0:	0f b6 4b 03          	movzbl 0x3(%rbx),%ecx
    11d4:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
    11d8:	41 80 f8 f6          	cmp    $0xf6,%r8b
    11dc:	72 74                	jb     1252 <stomptalk::parser::finish_value(char const*)+0xb62>
    11de:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    11e5:	00 00 00
    11e8:	49 0f af c8          	imul   %r8,%rcx
    11ec:	49 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r13
    11f3:	ff ff ff
    11f6:	49 01 cd             	add    %rcx,%r13
    11f9:	0f b6 4b 04          	movzbl 0x4(%rbx),%ecx
    11fd:	44 8d 41 c6          	lea    -0x3a(%rcx),%r8d
    1201:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1205:	72 48                	jb     124f <stomptalk::parser::finish_value(char const*)+0xb5f>
    1207:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
    120e:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1213:	48 8d 4b 05          	lea    0x5(%rbx),%rcx
    1217:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    121c:	48 89 cf             	mov    %rcx,%rdi
    121f:	48 89 f5             	mov    %rsi,%rbp
    1222:	48 89 04 24          	mov    %rax,(%rsp)
    1226:	e8 05 11 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
    122b:	0f 57 c9             	xorps  %xmm1,%xmm1
    122e:	48 89 ee             	mov    %rbp,%rsi
    1231:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1236:	48 89 c1             	mov    %rax,%rcx
    1239:	48 8b 04 24          	mov    (%rsp),%rax
    123d:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
    1244:	ff ff ff
    1247:	48 01 ca             	add    %rcx,%rdx
    124a:	48 03 54 24 10       	add    0x10(%rsp),%rdx
    124f:	4c 01 ea             	add    %r13,%rdx
    1252:	4c 01 e2             	add    %r12,%rdx
    1255:	4c 01 fa             	add    %r15,%rdx
    1258:	48 01 d0             	add    %rdx,%rax
    125b:	48 85 c0             	test   %rax,%rax
    125e:	0f 89 5f 01 00 00    	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
    1264:	e9 89 f5 ff ff       	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1269:	0f b6 03             	movzbl (%rbx),%eax
    126c:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    126f:	80 f9 f6             	cmp    $0xf6,%cl
    1272:	0f 82 7a f5 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1278:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    127f:	00 00 80
    1282:	48 69 c0 40 42 0f 00 	imul   $0xf4240,%rax,%rax
    1289:	48 05 00 94 23 fd    	add    $0xfffffffffd239400,%rax
    128f:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
    1293:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    1297:	41 80 f8 f6          	cmp    $0xf6,%r8b
    129b:	0f 82 a5 00 00 00    	jb     1346 <stomptalk::parser::finish_value(char const*)+0xc56>
    12a1:	48 69 d2 a0 86 01 00 	imul   $0x186a0,%rdx,%rdx
    12a8:	48 81 c2 00 c2 b6 ff 	add    $0xffffffffffb6c200,%rdx
    12af:	44 0f b6 43 02       	movzbl 0x2(%rbx),%r8d
    12b4:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    12b8:	41 80 f9 f6          	cmp    $0xf6,%r9b
    12bc:	0f 82 81 00 00 00    	jb     1343 <stomptalk::parser::finish_value(char const*)+0xc53>
    12c2:	4d 69 c0 10 27 00 00 	imul   $0x2710,%r8,%r8
    12c9:	49 81 c0 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r8
    12d0:	44 0f b6 4b 03       	movzbl 0x3(%rbx),%r9d
    12d5:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    12d9:	41 80 fa f6          	cmp    $0xf6,%r10b
    12dd:	72 61                	jb     1340 <stomptalk::parser::finish_value(char const*)+0xc50>
    12df:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    12e6:	49 81 c1 80 44 ff ff 	add    $0xffffffffffff4480,%r9
    12ed:	44 0f b6 53 04       	movzbl 0x4(%rbx),%r10d
    12f2:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    12f6:	41 80 fb f6          	cmp    $0xf6,%r11b
    12fa:	72 41                	jb     133d <stomptalk::parser::finish_value(char const*)+0xc4d>
    12fc:	4d 6b d2 64          	imul   $0x64,%r10,%r10
    1300:	49 81 c2 40 ed ff ff 	add    $0xffffffffffffed40,%r10
    1307:	44 0f b6 5b 05       	movzbl 0x5(%rbx),%r11d
    130c:	41 8d 6b c6          	lea    -0x3a(%r11),%ebp
    1310:	40 80 fd f6          	cmp    $0xf6,%bpl
    1314:	72 24                	jb     133a <stomptalk::parser::finish_value(char const*)+0xc4a>
    1316:	4f 8d 1c 9b          	lea    (%r11,%r11,4),%r11
    131a:	44 0f b6 7b 06       	movzbl 0x6(%rbx),%r15d
    131f:	41 8d 6f c6          	lea    -0x3a(%r15),%ebp
    1323:	49 83 c7 d0          	add    $0xffffffffffffffd0,%r15
    1327:	40 80 fd f6          	cmp    $0xf6,%bpl
    132b:	4c 0f 42 f9          	cmovb  %rcx,%r15
    132f:	4b 8d 0c 5f          	lea    (%r15,%r11,2),%rcx
    1333:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
    133a:	4c 01 d1             	add    %r10,%rcx
    133d:	4c 01 c9             	add    %r9,%rcx
    1340:	4c 01 c1             	add    %r8,%rcx
    1343:	48 01 d1             	add    %rdx,%rcx
    1346:	48 01 c8             	add    %rcx,%rax
    1349:	48 85 c0             	test   %rax,%rax
    134c:	79 75                	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
    134e:	e9 9f f4 ff ff       	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1353:	0f b6 0b             	movzbl (%rbx),%ecx
    1356:	8d 41 c6             	lea    -0x3a(%rcx),%eax
    1359:	3c f6                	cmp    $0xf6,%al
    135b:	0f 82 91 f4 ff ff    	jb     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1361:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
    1368:	00 00 00
    136b:	48 0f af c8          	imul   %rax,%rcx
    136f:	48 b8 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rax
    1376:	ff ff ff
    1379:	48 01 c8             	add    %rcx,%rax
    137c:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
    1380:	8d 51 c6             	lea    -0x3a(%rcx),%edx
    1383:	80 fa f6             	cmp    $0xf6,%dl
    1386:	0f 83 ac 00 00 00    	jae    1438 <stomptalk::parser::finish_value(char const*)+0xd48>
    138c:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1393:	00 00 80
    1396:	48 01 d0             	add    %rdx,%rax
    1399:	48 85 c0             	test   %rax,%rax
    139c:	79 25                	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
    139e:	e9 4f f4 ff ff       	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    13a3:	49 89 ff             	mov    %rdi,%r15
    13a6:	48 89 df             	mov    %rbx,%rdi
    13a9:	49 89 f4             	mov    %rsi,%r12
    13ac:	e8 7f 0f 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
    13b1:	0f 57 c9             	xorps  %xmm1,%xmm1
    13b4:	4c 89 e6             	mov    %r12,%rsi
    13b7:	4c 89 ff             	mov    %r15,%rdi
    13ba:	48 85 c0             	test   %rax,%rax
    13bd:	0f 88 2f f4 ff ff    	js     7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    13c3:	48 3b 47 20          	cmp    0x20(%rdi),%rax
    13c7:	76 0f                	jbe    13d8 <stomptalk::parser::finish_value(char const*)+0xce8>
    13c9:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    13d0:	00 00 00
    13d3:	e9 24 f4 ff ff       	jmp    7fc <stomptalk::parser::finish_value(char const*)+0x10c>
    13d8:	48 89 87 88 00 00 00 	mov    %rax,0x88(%rdi)
    13df:	80 4f 78 01          	orb    $0x1,0x78(%rdi)
    13e3:	48 8b 47 38          	mov    0x38(%rdi),%rax
    13e7:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
    13ee:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    13f2:	48 89 97 e8 00 00 00 	mov    %rdx,0xe8(%rdi)
    13f9:	48 c1 e1 05          	shl    $0x5,%rcx
    13fd:	0f 10 87 c0 00 00 00 	movups 0xc0(%rdi),%xmm0
    1404:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    1408:	48 89 5c 08 10       	mov    %rbx,0x10(%rax,%rcx,1)
    140d:	4c 89 74 08 18       	mov    %r14,0x18(%rax,%rcx,1)
    1412:	48 ff 87 80 00 00 00 	incq   0x80(%rdi)
    1419:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
    1420:	0f 11 8f c0 00 00 00 	movups %xmm1,0xc0(%rdi)
    1427:	b0 01                	mov    $0x1,%al
    1429:	48 83 c4 28          	add    $0x28,%rsp
    142d:	5b                   	pop    %rbx
    142e:	41 5c                	pop    %r12
    1430:	41 5d                	pop    %r13
    1432:	41 5e                	pop    %r14
    1434:	41 5f                	pop    %r15
    1436:	5d                   	pop    %rbp
    1437:	c3                   	ret
    1438:	48 69 e9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rbp
    143f:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
    1443:	49 89 fc             	mov    %rdi,%r12
    1446:	48 89 cf             	mov    %rcx,%rdi
    1449:	49 89 f5             	mov    %rsi,%r13
    144c:	49 89 c7             	mov    %rax,%r15
    144f:	e8 dc 0e 00 00       	call   2330 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
    1454:	0f 57 c9             	xorps  %xmm1,%xmm1
    1457:	4c 89 ee             	mov    %r13,%rsi
    145a:	4c 89 e7             	mov    %r12,%rdi
    145d:	48 89 c1             	mov    %rax,%rcx
    1460:	4c 89 f8             	mov    %r15,%rax
    1463:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
    146a:	ff ff ff
    146d:	48 01 ca             	add    %rcx,%rdx
    1470:	48 01 ea             	add    %rbp,%rdx
    1473:	48 01 d0             	add    %rdx,%rax
    1476:	48 85 c0             	test   %rax,%rax
    1479:	0f 89 44 ff ff ff    	jns    13c3 <stomptalk::parser::finish_value(char const*)+0xcd3>
    147f:	e9 6e f3 ff ff       	jmp    7f2 <stomptalk::parser::finish_value(char const*)+0x102>
    1484:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    148b:	00 00 00 00 00

0000000000000000 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 89 f0             	mov    %rsi,%rax
   7:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # e <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xe>
			a: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
   e:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 15 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x15>
			11: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
  15:	48 89 c6             	mov    %rax,%rsi
  18:	48 39 d0             	cmp    %rdx,%rax
  1b:	0f 83 5a 01 00 00    	jae    17b <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x17b>
  21:	48 89 d0             	mov    %rdx,%rax
  24:	48 29 f0             	sub    %rsi,%rax
  27:	31 c9                	xor    %ecx,%ecx
  29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  30:	44 0f b6 14 0e       	movzbl (%rsi,%rcx,1),%r10d
  35:	41 83 fa 0a          	cmp    $0xa,%r10d
  39:	75 15                	jne    50 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x50>
  3b:	48 ff c1             	inc    %rcx
  3e:	48 39 c8             	cmp    %rcx,%rax
  41:	75 ed                	jne    30 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x30>
  43:	e9 8d 00 00 00       	jmp    d5 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd5>
  48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4f:	00
  50:	41 83 fa 0d          	cmp    $0xd,%r10d
  54:	75 43                	jne    99 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x99>
  56:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
  5a:	48 ff c0             	inc    %rax
  5d:	4c 89 47 60          	mov    %r8,0x60(%rdi)
  61:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  68:	00
  69:	48 39 d0             	cmp    %rdx,%rax
  6c:	73 6a                	jae    d8 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd8>
  6e:	80 38 0a             	cmpb   $0xa,(%rax)
  71:	0f 85 08 01 00 00    	jne    17f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x17f>
  77:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
  7b:	48 83 c0 02          	add    $0x2,%rax
  7f:	4c 89 4f 60          	mov    %r9,0x60(%rdi)
  83:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  8a:	00
  8b:	48 39 d0             	cmp    %rdx,%rax
  8e:	72 85                	jb     15 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x15>
  90:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
  94:	48 83 c0 02          	add    $0x2,%rax
  98:	c3                   	ret
  99:	41 80 c2 a5          	add    $0xa5,%r10b
  9d:	41 80 fa e5          	cmp    $0xe5,%r10b
  a1:	77 36                	ja     d9 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd9>
  a3:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
  aa:	00 00 00
  ad:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  b4:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
  b8:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  bf:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  c6:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
  ca:	48 ff c0             	inc    %rax
  cd:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
  d4:	c3                   	ret
  d5:	48 89 d0             	mov    %rdx,%rax
  d8:	c3                   	ret
  d9:	48 01 ce             	add    %rcx,%rsi
  dc:	48 8b 87 e0 00 00 00 	mov    0xe0(%rdi),%rax
  e3:	48 3b 07             	cmp    (%rdi),%rax
  e6:	75 0e                	jne    f6 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xf6>
  e8:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  ef:	00 00 00
  f2:	48 89 f0             	mov    %rsi,%rax
  f5:	c3                   	ret
  f6:	0f 57 c0             	xorps  %xmm0,%xmm0
  f9:	0f 11 87 b0 00 00 00 	movups %xmm0,0xb0(%rdi)
 100:	0f 11 87 a0 00 00 00 	movups %xmm0,0xa0(%rdi)
 107:	0f 11 87 90 00 00 00 	movups %xmm0,0x90(%rdi)
 10e:	0f 11 87 80 00 00 00 	movups %xmm0,0x80(%rdi)
 115:	0f 11 47 70          	movups %xmm0,0x70(%rdi)
 119:	c7 87 09 01 00 00 00 	movl   $0x0,0x109(%rdi)
 120:	00 00 00
 123:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
 12a:	0f 11 87 c0 00 00 00 	movups %xmm0,0xc0(%rdi)
 131:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
 138:	c6 87 08 01 00 00 01 	movb   $0x1,0x108(%rdi)
 13f:	f3 0f 6f 47 40       	movdqu 0x40(%rdi),%xmm0
 144:	f3 0f 6f 4f 48       	movdqu 0x48(%rdi),%xmm1
 149:	66 0f fb c8          	psubq  %xmm0,%xmm1
 14d:	f3 0f 7f 8f f8 00 00 	movdqu %xmm1,0xf8(%rdi)
 154:	00
 155:	48 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%rax
 15c:	48 89 87 f0 00 00 00 	mov    %rax,0xf0(%rdi)
 163:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x16a>
			166: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
 16a:	48 89 47 60          	mov    %rax,0x60(%rdi)
 16e:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 175:	00
 176:	e9 00 00 00 00       	jmp    17b <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x17b>
			177: R_X86_64_PLT32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
 17b:	48 89 f0             	mov    %rsi,%rax
 17e:	c3                   	ret
 17f:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 186:	00 00 00
 189:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 190:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
 194:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 19b:	48 ff c0             	inc    %rax
 19e:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 1a5:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
 1a9:	48 83 c0 02          	add    $0x2,%rax
 1ad:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 1b4:	c3                   	ret

0000000000000000 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 54                	push   %r12
   a:	53                   	push   %rbx
   b:	50                   	push   %rax
   c:	48 89 f0             	mov    %rsi,%rax
   f:	48 39 d6             	cmp    %rdx,%rsi
  12:	0f 83 ea 00 00 00    	jae    102 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x102>
  18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1f:	00
  20:	0f b6 08             	movzbl (%rax),%ecx
  23:	80 c1 bf             	add    $0xbf,%cl
  26:	80 f9 19             	cmp    $0x19,%cl
  29:	77 0b                	ja     36 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x36>
  2b:	48 ff c0             	inc    %rax
  2e:	48 39 d0             	cmp    %rdx,%rax
  31:	75 ed                	jne    20 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20>
  33:	48 89 d0             	mov    %rdx,%rax
  36:	48 89 c3             	mov    %rax,%rbx
  39:	48 29 f3             	sub    %rsi,%rbx
  3c:	0f 84 bd 00 00 00    	je     ff <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xff>
  42:	48 8b 8f 00 01 00 00 	mov    0x100(%rdi),%rcx
  49:	49 89 c8             	mov    %rcx,%r8
  4c:	49 29 d8             	sub    %rbx,%r8
  4f:	73 51                	jae    a2 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xa2>
  51:	48 8b 97 f8 00 00 00 	mov    0xf8(%rdi),%rdx
  58:	4c 8d 04 0a          	lea    (%rdx,%rcx,1),%r8
  5c:	b8 02 00 00 00       	mov    $0x2,%eax
  61:	4c 39 c3             	cmp    %r8,%rbx
  64:	76 2a                	jbe    90 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x90>
  66:	48 01 ce             	add    %rcx,%rsi
  69:	48 8d 04 16          	lea    (%rsi,%rdx,1),%rax
  6d:	c7 87 14 01 00 00 0d 	movl   $0xd,0x114(%rdi)
  74:	00 00 00
  77:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  7e:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  85:	48 01 d6             	add    %rdx,%rsi
  88:	48 ff c6             	inc    %rsi
  8b:	b8 03 00 00 00       	mov    $0x3,%eax
  90:	89 87 10 01 00 00    	mov    %eax,0x110(%rdi)
  96:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
  9d:	e9 fc 03 00 00       	jmp    49e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x49e>
  a2:	4c 89 87 00 01 00 00 	mov    %r8,0x100(%rdi)
  a9:	80 bf 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rdi)
  b0:	75 2e                	jne    e0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe0>
  b2:	48 8b 4f 48          	mov    0x48(%rdi),%rcx
  b6:	49 89 fe             	mov    %rdi,%r14
  b9:	48 89 cf             	mov    %rcx,%rdi
  bc:	49 89 d7             	mov    %rdx,%r15
  bf:	48 89 da             	mov    %rbx,%rdx
  c2:	49 89 c4             	mov    %rax,%r12
  c5:	e8 00 00 00 00       	call   ca <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xca>
			c6: R_X86_64_PLT32	memcpy-0x4
  ca:	4c 89 fa             	mov    %r15,%rdx
  cd:	4c 89 e0             	mov    %r12,%rax
  d0:	4c 89 f7             	mov    %r14,%rdi
  d3:	49 01 5e 48          	add    %rbx,0x48(%r14)
  d7:	49 8b 8e d8 00 00 00 	mov    0xd8(%r14),%rcx
  de:	eb 15                	jmp    f5 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xf5>
  e0:	48 8b 8f d8 00 00 00 	mov    0xd8(%rdi),%rcx
  e7:	48 85 c9             	test   %rcx,%rcx
  ea:	75 09                	jne    f5 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xf5>
  ec:	48 89 b7 d0 00 00 00 	mov    %rsi,0xd0(%rdi)
  f3:	31 c9                	xor    %ecx,%ecx
  f5:	48 01 d9             	add    %rbx,%rcx
  f8:	48 89 8f d8 00 00 00 	mov    %rcx,0xd8(%rdi)
  ff:	48 89 c6             	mov    %rax,%rsi
 102:	48 39 d0             	cmp    %rdx,%rax
 105:	0f 84 96 03 00 00    	je     4a1 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4a1>
 10b:	0f b6 08             	movzbl (%rax),%ecx
 10e:	83 f9 0a             	cmp    $0xa,%ecx
 111:	74 05                	je     118 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x118>
 113:	83 f9 0d             	cmp    $0xd,%ecx
 116:	75 7e                	jne    196 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x196>
 118:	4c 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%r8
 11f:	4c 8b 8f d8 00 00 00 	mov    0xd8(%rdi),%r9
 126:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
 12d:	0f 57 c0             	xorps  %xmm0,%xmm0
 130:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
 137:	4c 89 87 a0 00 00 00 	mov    %r8,0xa0(%rdi)
 13e:	4c 89 8f a8 00 00 00 	mov    %r9,0xa8(%rdi)
 145:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
 14c:	49 83 c1 fd          	add    $0xfffffffffffffffd,%r9
 150:	49 83 f9 08          	cmp    $0x8,%r9
 154:	0f 87 c2 02 00 00    	ja     41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 15a:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 161 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x161>
			15d: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_-0x4
 161:	4f 63 0c 8a          	movslq (%r10,%r9,4),%r9
 165:	4d 01 d1             	add    %r10,%r9
 168:	3e 41 ff e1          	notrack jmp *%r9
 16c:	41 0f b7 30          	movzwl (%r8),%esi
 170:	81 f6 41 43 00 00    	xor    $0x4341,%esi
 176:	45 0f b6 40 02       	movzbl 0x2(%r8),%r8d
 17b:	41 83 f0 4b          	xor    $0x4b,%r8d
 17f:	45 31 c9             	xor    %r9d,%r9d
 182:	66 41 09 f0          	or     %si,%r8w
 186:	41 0f 94 c1          	sete   %r9b
 18a:	4b 8d 34 49          	lea    (%r9,%r9,2),%rsi
 18e:	48 ff ce             	dec    %rsi
 191:	e9 86 02 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 196:	48 b9 03 00 00 00 06 	movabs $0x600000003,%rcx
 19d:	00 00 00
 1a0:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 1a7:	48 2b b7 20 01 00 00 	sub    0x120(%rdi),%rsi
 1ae:	48 89 b7 18 01 00 00 	mov    %rsi,0x118(%rdi)
 1b5:	48 ff c0             	inc    %rax
 1b8:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 1bf:	e9 dd 02 00 00       	jmp    4a1 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4a1>
 1c4:	48 be 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rsi
 1cb:	43 54 45
 1ce:	49 33 30             	xor    (%r8),%rsi
 1d1:	45 0f b6 48 08       	movzbl 0x8(%r8),%r9d
 1d6:	49 83 f1 44          	xor    $0x44,%r9
 1da:	49 09 f1             	or     %rsi,%r9
 1dd:	0f 84 6d 01 00 00    	je     350 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x350>
 1e3:	49 b9 53 55 42 53 43 	movabs $0x4249524353425553,%r9
 1ea:	52 49 42
 1ed:	4d 33 08             	xor    (%r8),%r9
 1f0:	45 0f b6 40 08       	movzbl 0x8(%r8),%r8d
 1f5:	49 83 f0 45          	xor    $0x45,%r8
 1f9:	31 f6                	xor    %esi,%esi
 1fb:	4d 09 c8             	or     %r9,%r8
 1fe:	40 0f 95 c6          	setne  %sil
 202:	48 f7 de             	neg    %rsi
 205:	48 83 ce 0e          	or     $0xe,%rsi
 209:	e9 0e 02 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 20e:	41 81 38 4e 41 43 4b 	cmpl   $0x4b43414e,(%r8)
 215:	0f 84 3f 01 00 00    	je     35a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x35a>
 21b:	31 f6                	xor    %esi,%esi
 21d:	41 81 38 53 45 4e 44 	cmpl   $0x444e4553,(%r8)
 224:	40 0f 95 c6          	setne  %sil
 228:	48 f7 de             	neg    %rsi
 22b:	48 83 ce 0c          	or     $0xc,%rsi
 22f:	e9 e8 01 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 234:	48 be 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rsi
 23b:	4e 4e 45
 23e:	49 33 30             	xor    (%r8),%rsi
 241:	45 0f b7 40 08       	movzwl 0x8(%r8),%r8d
 246:	49 81 f0 43 54 00 00 	xor    $0x5443,%r8
 24d:	45 31 c9             	xor    %r9d,%r9d
 250:	49 09 f0             	or     %rsi,%r8
 253:	41 0f 94 c1          	sete   %r9b
 257:	4a 8d 34 cd ff ff ff 	lea    -0x1(,%r9,8),%rsi
 25e:	ff
 25f:	e9 b8 01 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 264:	49 b9 55 4e 53 55 42 	movabs $0x5243534255534e55,%r9
 26b:	53 43 52
 26e:	4d 33 08             	xor    (%r8),%r9
 271:	49 ba 55 42 53 43 52 	movabs $0x4542495243534255,%r10
 278:	49 42 45
 27b:	4d 33 50 03          	xor    0x3(%r8),%r10
 27f:	31 f6                	xor    %esi,%esi
 281:	4d 09 ca             	or     %r9,%r10
 284:	40 0f 95 c6          	setne  %sil
 288:	48 f7 de             	neg    %rsi
 28b:	48 83 ce 0f          	or     $0xf,%rsi
 28f:	e9 88 01 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 294:	45 0f b6 08          	movzbl (%r8),%r9d
 298:	41 83 c1 bf          	add    $0xffffffbf,%r9d
 29c:	41 83 f9 12          	cmp    $0x12,%r9d
 2a0:	0f 87 76 01 00 00    	ja     41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 2a6:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 2ad <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2ad>
			2a9: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_+0x20
 2ad:	4f 63 0c 8a          	movslq (%r10,%r9,4),%r9
 2b1:	4d 01 d1             	add    %r10,%r9
 2b4:	3e 41 ff e1          	notrack jmp *%r9
 2b8:	be 41 42 4f 52       	mov    $0x524f4241,%esi
 2bd:	41 33 30             	xor    (%r8),%esi
 2c0:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 2c5:	41 83 f0 54          	xor    $0x54,%r8d
 2c9:	45 31 c9             	xor    %r9d,%r9d
 2cc:	41 09 f0             	or     %esi,%r8d
 2cf:	41 0f 94 c1          	sete   %r9b
 2d3:	4a 8d 34 4d ff ff ff 	lea    -0x1(,%r9,2),%rsi
 2da:	ff
 2db:	e9 3c 01 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 2e0:	be 43 4f 4d 4d       	mov    $0x4d4d4f43,%esi
 2e5:	41 33 30             	xor    (%r8),%esi
 2e8:	45 0f b7 40 04       	movzwl 0x4(%r8),%r8d
 2ed:	41 81 f0 49 54 00 00 	xor    $0x5449,%r8d
 2f4:	45 31 c9             	xor    %r9d,%r9d
 2f7:	41 09 f0             	or     %esi,%r8d
 2fa:	41 0f 94 c1          	sete   %r9b
 2fe:	4b 8d 34 89          	lea    (%r9,%r9,4),%rsi
 302:	48 ff ce             	dec    %rsi
 305:	e9 12 01 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 30a:	45 0f b6 08          	movzbl (%r8),%r9d
 30e:	41 83 f9 52          	cmp    $0x52,%r9d
 312:	74 78                	je     38c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x38c>
 314:	41 83 f9 4d          	cmp    $0x4d,%r9d
 318:	74 4a                	je     364 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x364>
 31a:	41 83 f9 43          	cmp    $0x43,%r9d
 31e:	0f 85 f8 00 00 00    	jne    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 324:	41 b9 43 4f 4e 4e    	mov    $0x4e4e4f43,%r9d
 32a:	45 33 08             	xor    (%r8),%r9d
 32d:	41 ba 4e 45 43 54    	mov    $0x5443454e,%r10d
 333:	45 33 50 03          	xor    0x3(%r8),%r10d
 337:	45 09 ca             	or     %r9d,%r10d
 33a:	0f 85 dc 00 00 00    	jne    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 340:	48 c7 47 70 05 00 00 	movq   $0x5,0x70(%rdi)
 347:	00
 348:	40 b6 01             	mov    $0x1,%sil
 34b:	e9 d8 00 00 00       	jmp    428 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x428>
 350:	be 06 00 00 00       	mov    $0x6,%esi
 355:	e9 c2 00 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 35a:	be 0a 00 00 00       	mov    $0xa,%esi
 35f:	e9 b8 00 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 364:	41 b9 4d 45 53 53    	mov    $0x5353454d,%r9d
 36a:	45 33 08             	xor    (%r8),%r9d
 36d:	41 ba 53 41 47 45    	mov    $0x45474153,%r10d
 373:	45 33 50 03          	xor    0x3(%r8),%r10d
 377:	31 f6                	xor    %esi,%esi
 379:	45 09 ca             	or     %r9d,%r10d
 37c:	40 0f 95 c6          	setne  %sil
 380:	48 f7 de             	neg    %rsi
 383:	48 83 ce 09          	or     $0x9,%rsi
 387:	e9 90 00 00 00       	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 38c:	41 b9 52 45 43 45    	mov    $0x45434552,%r9d
 392:	45 33 08             	xor    (%r8),%r9d
 395:	41 ba 45 49 50 54    	mov    $0x54504945,%r10d
 39b:	45 33 50 03          	xor    0x3(%r8),%r10d
 39f:	31 f6                	xor    %esi,%esi
 3a1:	45 09 ca             	or     %r9d,%r10d
 3a4:	40 0f 95 c6          	setne  %sil
 3a8:	48 f7 de             	neg    %rsi
 3ab:	48 83 ce 0b          	or     $0xb,%rsi
 3af:	eb 6b                	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 3b1:	be 45 52 52 4f       	mov    $0x4f525245,%esi
 3b6:	41 33 30             	xor    (%r8),%esi
 3b9:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 3be:	41 83 f0 52          	xor    $0x52,%r8d
 3c2:	45 31 c9             	xor    %r9d,%r9d
 3c5:	41 09 f0             	or     %esi,%r8d
 3c8:	41 0f 94 c1          	sete   %r9b
 3cc:	4b 8d 34 c9          	lea    (%r9,%r9,8),%rsi
 3d0:	48 ff ce             	dec    %rsi
 3d3:	eb 47                	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 3d5:	be 42 45 47 49       	mov    $0x49474542,%esi
 3da:	41 33 30             	xor    (%r8),%esi
 3dd:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 3e2:	41 83 f0 4e          	xor    $0x4e,%r8d
 3e6:	45 31 c9             	xor    %r9d,%r9d
 3e9:	41 09 f0             	or     %esi,%r8d
 3ec:	41 0f 94 c1          	sete   %r9b
 3f0:	4a 8d 34 8d ff ff ff 	lea    -0x1(,%r9,4),%rsi
 3f7:	ff
 3f8:	eb 22                	jmp    41c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x41c>
 3fa:	41 b9 53 54 4f 4d    	mov    $0x4d4f5453,%r9d
 400:	45 33 08             	xor    (%r8),%r9d
 403:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 408:	41 83 f0 50          	xor    $0x50,%r8d
 40c:	31 f6                	xor    %esi,%esi
 40e:	45 09 c8             	or     %r9d,%r8d
 411:	40 0f 95 c6          	setne  %sil
 415:	48 f7 de             	neg    %rsi
 418:	48 83 ce 0d          	or     $0xd,%rsi
 41c:	48 89 77 70          	mov    %rsi,0x70(%rdi)
 420:	48 83 fe 06          	cmp    $0x6,%rsi
 424:	40 0f 94 c6          	sete   %sil
 428:	40 88 b7 0b 01 00 00 	mov    %sil,0x10b(%rdi)
 42f:	48 8d 70 01          	lea    0x1(%rax),%rsi
 433:	80 f9 0a             	cmp    $0xa,%cl
 436:	75 28                	jne    460 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x460>
 438:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 43f <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x43f>
			43b: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 43f:	48 89 47 60          	mov    %rax,0x60(%rdi)
 443:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 44a:	00
 44b:	48 39 d6             	cmp    %rdx,%rsi
 44e:	73 4e                	jae    49e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x49e>
 450:	48 83 c4 08          	add    $0x8,%rsp
 454:	5b                   	pop    %rbx
 455:	41 5c                	pop    %r12
 457:	41 5e                	pop    %r14
 459:	41 5f                	pop    %r15
 45b:	e9 00 00 00 00       	jmp    460 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x460>
			45c: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 460:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 467 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x467>
			463: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 467:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 46b:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 472:	00
 473:	48 39 d6             	cmp    %rdx,%rsi
 476:	73 26                	jae    49e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x49e>
 478:	80 3e 0a             	cmpb   $0xa,(%rsi)
 47b:	75 30                	jne    4ad <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4ad>
 47d:	48 83 c0 02          	add    $0x2,%rax
 481:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 488 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x488>
			484: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 488:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 48c:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 493:	00
 494:	48 39 d0             	cmp    %rdx,%rax
 497:	73 08                	jae    4a1 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4a1>
 499:	48 89 c6             	mov    %rax,%rsi
 49c:	eb b2                	jmp    450 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x450>
 49e:	48 89 f0             	mov    %rsi,%rax
 4a1:	48 83 c4 08          	add    $0x8,%rsp
 4a5:	5b                   	pop    %rbx
 4a6:	41 5c                	pop    %r12
 4a8:	41 5e                	pop    %r14
 4aa:	41 5f                	pop    %r15
 4ac:	c3                   	ret
 4ad:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
 4b4:	00 00 00
 4b7:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 4be:	48 2b b7 20 01 00 00 	sub    0x120(%rdi),%rsi
 4c5:	48 89 b7 18 01 00 00 	mov    %rsi,0x118(%rdi)
 4cc:	48 83 c0 02          	add    $0x2,%rax
 4d0:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 4d7:	eb c8                	jmp    4a1 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4a1>

0000000000000000 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	0f b6 06             	movzbl (%rsi),%eax
   7:	83 f8 0d             	cmp    $0xd,%eax
   a:	74 42                	je     4e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4e>
   c:	83 f8 0a             	cmp    $0xa,%eax
   f:	0f 85 83 00 00 00    	jne    98 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x98>
  15:	48 ff c6             	inc    %rsi
  18:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f>
			1b: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  1f:	48 89 47 60          	mov    %rax,0x60(%rdi)
  23:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  2a:	00
  2b:	48 39 d6             	cmp    %rdx,%rsi
  2e:	0f 83 16 01 00 00    	jae    14a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14a>
  34:	f6 47 78 01          	testb  $0x1,0x78(%rdi)
  38:	0f 85 b2 00 00 00    	jne    f0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf0>
  3e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 45 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x45>
			41: R_X86_64_PC32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
  45:	48 89 47 60          	mov    %rax,0x60(%rdi)
  49:	e9 00 00 00 00       	jmp    4e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4e>
			4a: R_X86_64_PLT32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
  4e:	48 8d 46 01          	lea    0x1(%rsi),%rax
  52:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 59 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x59>
			55: R_X86_64_PC32	char const* stomptalk::parser::almost_done<3u>(char const*, char const*)-0x4
  59:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
  5d:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  64:	00
  65:	48 39 d0             	cmp    %rdx,%rax
  68:	73 6a                	jae    d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd4>
  6a:	80 38 0a             	cmpb   $0xa,(%rax)
  6d:	0f 85 8d 00 00 00    	jne    100 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x100>
  73:	48 83 c6 02          	add    $0x2,%rsi
  77:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e>
			7a: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  7e:	48 89 47 60          	mov    %rax,0x60(%rdi)
  82:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  89:	00
  8a:	48 39 d6             	cmp    %rdx,%rsi
  8d:	0f 83 b7 00 00 00    	jae    14a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14a>
  93:	e9 00 00 00 00       	jmp    98 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x98>
			94: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  98:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
  9f:	48 3b 47 18          	cmp    0x18(%rdi),%rax
  a3:	75 30                	jne    d5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd5>
  a5:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
  ac:	00 00 00
  af:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  b6:	48 89 f0             	mov    %rsi,%rax
  b9:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  c0:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  c7:	48 ff c6             	inc    %rsi
  ca:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
  d1:	48 89 f0             	mov    %rsi,%rax
  d4:	c3                   	ret
  d5:	48 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%rax
  dc:	48 3b 47 08          	cmp    0x8(%rdi),%rax
  e0:	75 4c                	jne    12e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12e>
  e2:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  e9:	00 00 00
  ec:	48 89 f0             	mov    %rsi,%rax
  ef:	c3                   	ret
  f0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf7>
			f3: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
  f7:	48 89 47 60          	mov    %rax,0x60(%rdi)
  fb:	e9 00 00 00 00       	jmp    100 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x100>
			fc: R_X86_64_PLT32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
 100:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
 107:	00 00 00
 10a:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 111:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 118:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 11f:	48 83 c6 02          	add    $0x2,%rsi
 123:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 12a:	48 89 f0             	mov    %rsi,%rax
 12d:	c3                   	ret
 12e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 135 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x135>
			131: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 135:	48 89 47 60          	mov    %rax,0x60(%rdi)
 139:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 140:	00
 141:	48 39 d6             	cmp    %rdx,%rsi
 144:	0f 82 00 00 00 00    	jb     14a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14a>
			146: R_X86_64_PLT32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 14a:	48 89 f0             	mov    %rsi,%rax
 14d:	c3                   	ret

0000000000000000 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	41 57                	push   %r15
   7:	41 56                	push   %r14
   9:	41 55                	push   %r13
   b:	41 54                	push   %r12
   d:	53                   	push   %rbx
   e:	50                   	push   %rax
   f:	48 39 d6             	cmp    %rdx,%rsi
  12:	0f 83 9e 07 00 00    	jae    7b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b6>
  18:	49 89 d0             	mov    %rdx,%r8
  1b:	48 89 fb             	mov    %rdi,%rbx
  1e:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
  25:	80 80 80
  28:	49 be 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r14
  2f:	7f 7f 7f
  32:	0f b6 af 0a 01 00 00 	movzbl 0x10a(%rdi),%ebp
  39:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 41 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x41>
  40:	00
			3d: R_X86_64_PC32	.LCPI48_0-0x4
  41:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 49 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x49>
  48:	00
			45: R_X86_64_PC32	.LCPI48_1-0x4
  49:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 51 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x51>
  50:	00
			4d: R_X86_64_PC32	.LCPI48_2-0x4
  51:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 59 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59>
  58:	00
			55: R_X86_64_PC32	.LCPI48_3-0x4
  59:	48 89 14 24          	mov    %rdx,(%rsp)
  5d:	eb 53                	jmp    b2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb2>
  5f:	90                   	nop
  60:	4c 89 a3 d0 00 00 00 	mov    %r12,0xd0(%rbx)
  67:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
  6e:	4c 8b 04 24          	mov    (%rsp),%r8
  72:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
  79:	80 80 80
  7c:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 84 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x84>
  83:	00
			80: R_X86_64_PC32	.LCPI48_0-0x4
  84:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 8c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8c>
  8b:	00
			88: R_X86_64_PC32	.LCPI48_1-0x4
  8c:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 94 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x94>
  93:	00
			90: R_X86_64_PC32	.LCPI48_2-0x4
  94:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 9c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c>
  9b:	00
			98: R_X86_64_PC32	.LCPI48_3-0x4
  9c:	40 88 ab 0a 01 00 00 	mov    %bpl,0x10a(%rbx)
  a3:	49 ff c7             	inc    %r15
  a6:	4c 89 fe             	mov    %r15,%rsi
  a9:	4d 39 c7             	cmp    %r8,%r15
  ac:	0f 83 07 07 00 00    	jae    7b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b9>
  b2:	40 80 fd 01          	cmp    $0x1,%bpl
  b6:	75 68                	jne    120 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x120>
  b8:	0f b6 06             	movzbl (%rsi),%eax
  bb:	04 a4                	add    $0xa4,%al
  bd:	3c 17                	cmp    $0x17,%al
  bf:	0f 83 b1 05 00 00    	jae    676 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x676>
  c5:	0f b6 c0             	movzbl %al,%eax
  c8:	b9 81 00 44 00       	mov    $0x440081,%ecx
  cd:	0f a3 c1             	bt     %eax,%ecx
  d0:	0f 83 a0 05 00 00    	jae    676 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x676>
  d6:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
  dd:	48 85 c9             	test   %rcx,%rcx
  e0:	0f 84 91 06 00 00    	je     777 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x777>
  e6:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # ed <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xed>
			e9: R_X86_64_PC32	.rodata+0x1f4
  ed:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
  f1:	48 ff c9             	dec    %rcx
  f4:	48 89 8b 00 01 00 00 	mov    %rcx,0x100(%rbx)
  fb:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
  ff:	48 8d 51 01          	lea    0x1(%rcx),%rdx
 103:	48 89 53 48          	mov    %rdx,0x48(%rbx)
 107:	88 01                	mov    %al,(%rcx)
 109:	48 ff 83 d8 00 00 00 	incq   0xd8(%rbx)
 110:	31 ed                	xor    %ebp,%ebp
 112:	49 89 f7             	mov    %rsi,%r15
 115:	eb 85                	jmp    9c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c>
 117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 11e:	00 00
 120:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 127:	00
 128:	0f 94 c0             	sete   %al
 12b:	0f b6 8b 0b 01 00 00 	movzbl 0x10b(%rbx),%ecx
 132:	4c 89 c2             	mov    %r8,%rdx
 135:	48 29 f2             	sub    %rsi,%rdx
 138:	48 83 fa 10          	cmp    $0x10,%rdx
 13c:	0f 8c ae 00 00 00    	jl     1f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1f0>
 142:	49 89 f7             	mov    %rsi,%r15
 145:	31 ed                	xor    %ebp,%ebp
 147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 14e:	00 00
 150:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
 155:	66 0f ef c9          	pxor   %xmm1,%xmm1
 159:	66 0f ef d2          	pxor   %xmm2,%xmm2
 15d:	84 c9                	test   %cl,%cl
 15f:	75 08                	jne    169 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x169>
 161:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 165:	66 0f 74 d7          	pcmpeqb %xmm7,%xmm2
 169:	66 0f 6f d8          	movdqa %xmm0,%xmm3
 16d:	66 0f 74 dc          	pcmpeqb %xmm4,%xmm3
 171:	66 0f d7 fb          	pmovmskb %xmm3,%edi
 175:	66 0f 74 c8          	pcmpeqb %xmm0,%xmm1
 179:	66 0f 6f d8          	movdqa %xmm0,%xmm3
 17d:	66 0f 74 dd          	pcmpeqb %xmm5,%xmm3
 181:	66 0f 74 c6          	pcmpeqb %xmm6,%xmm0
 185:	66 0f eb c3          	por    %xmm3,%xmm0
 189:	66 0f eb c1          	por    %xmm1,%xmm0
 18d:	66 0f eb c2          	por    %xmm2,%xmm0
 191:	66 44 0f d7 c0       	pmovmskb %xmm0,%r8d
 196:	85 ff                	test   %edi,%edi
 198:	74 2c                	je     1c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c6>
 19a:	a8 01                	test   $0x1,%al
 19c:	74 28                	je     1c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c6>
 19e:	f3 44 0f bc cf       	tzcnt  %edi,%r9d
 1a3:	45 85 c0             	test   %r8d,%r8d
 1a6:	74 0c                	je     1b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b4>
 1a8:	f3 45 0f bc d0       	tzcnt  %r8d,%r10d
 1ad:	b0 01                	mov    $0x1,%al
 1af:	45 39 d1             	cmp    %r10d,%r9d
 1b2:	73 12                	jae    1c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c6>
 1b4:	44 89 cd             	mov    %r9d,%ebp
 1b7:	4c 01 fd             	add    %r15,%rbp
 1ba:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
 1be:	41 21 f9             	and    %edi,%r9d
 1c1:	31 c0                	xor    %eax,%eax
 1c3:	44 89 cf             	mov    %r9d,%edi
 1c6:	84 c9                	test   %cl,%cl
 1c8:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 1ce:	41 0f 45 f9          	cmovne %r9d,%edi
 1d2:	44 09 c7             	or     %r8d,%edi
 1d5:	0f 85 80 01 00 00    	jne    35b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x35b>
 1db:	49 83 c7 10          	add    $0x10,%r15
 1df:	48 83 c2 f0          	add    $0xfffffffffffffff0,%rdx
 1e3:	48 83 fa 0f          	cmp    $0xf,%rdx
 1e7:	0f 8f 63 ff ff ff    	jg     150 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x150>
 1ed:	eb 06                	jmp    1f5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1f5>
 1ef:	90                   	nop
 1f0:	31 ed                	xor    %ebp,%ebp
 1f2:	49 89 f7             	mov    %rsi,%r15
 1f5:	48 8b 3c 24          	mov    (%rsp),%rdi
 1f9:	4c 29 ff             	sub    %r15,%rdi
 1fc:	31 d2                	xor    %edx,%edx
 1fe:	48 83 ff 08          	cmp    $0x8,%rdi
 202:	0f 8c fa 00 00 00    	jl     302 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x302>
 208:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 20f:	00
 210:	4d 8b 17             	mov    (%r15),%r10
 213:	4d 89 d1             	mov    %r10,%r9
 216:	4d 21 f1             	and    %r14,%r9
 219:	4f 8d 04 31          	lea    (%r9,%r14,1),%r8
 21d:	4d 09 d0             	or     %r10,%r8
 220:	49 f7 d0             	not    %r8
 223:	4d 89 cb             	mov    %r9,%r11
 226:	49 bd 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r13
 22d:	0a 0a 0a
 230:	4d 31 eb             	xor    %r13,%r11
 233:	4d 01 f3             	add    %r14,%r11
 236:	4d 09 d3             	or     %r10,%r11
 239:	49 f7 d3             	not    %r11
 23c:	4d 09 c3             	or     %r8,%r11
 23f:	4d 89 c8             	mov    %r9,%r8
 242:	49 bd 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r13
 249:	0d 0d 0d
 24c:	4d 31 e8             	xor    %r13,%r8
 24f:	4d 01 f0             	add    %r14,%r8
 252:	4d 09 d0             	or     %r10,%r8
 255:	49 f7 d0             	not    %r8
 258:	4d 09 d8             	or     %r11,%r8
 25b:	4d 21 e0             	and    %r12,%r8
 25e:	84 c9                	test   %cl,%cl
 260:	75 1f                	jne    281 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x281>
 262:	4d 89 cb             	mov    %r9,%r11
 265:	49 bd 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%r13
 26c:	5c 5c 5c
 26f:	4d 31 eb             	xor    %r13,%r11
 272:	4d 01 f3             	add    %r14,%r11
 275:	4d 09 d3             	or     %r10,%r11
 278:	49 f7 d3             	not    %r11
 27b:	4d 21 e3             	and    %r12,%r11
 27e:	4d 09 d8             	or     %r11,%r8
 281:	49 bb 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%r11
 288:	3a 3a 3a
 28b:	4d 31 d9             	xor    %r11,%r9
 28e:	4d 01 f1             	add    %r14,%r9
 291:	4d 09 d1             	or     %r10,%r9
 294:	4d 21 e1             	and    %r12,%r9
 297:	4d 89 ca             	mov    %r9,%r10
 29a:	4d 31 e2             	xor    %r12,%r10
 29d:	4d 39 e1             	cmp    %r12,%r9
 2a0:	74 39                	je     2db <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2db>
 2a2:	a8 01                	test   $0x1,%al
 2a4:	74 35                	je     2db <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2db>
 2a6:	f3 4d 0f bc da       	tzcnt  %r10,%r11
 2ab:	4d 85 c0             	test   %r8,%r8
 2ae:	74 16                	je     2c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c6>
 2b0:	f3 4d 0f bc e0       	tzcnt  %r8,%r12
 2b5:	b0 01                	mov    $0x1,%al
 2b7:	45 39 e3             	cmp    %r12d,%r11d
 2ba:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
 2c1:	80 80 80
 2c4:	73 15                	jae    2db <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2db>
 2c6:	41 c1 eb 03          	shr    $0x3,%r11d
 2ca:	4d 01 fb             	add    %r15,%r11
 2cd:	49 f7 d1             	not    %r9
 2d0:	4d 01 e1             	add    %r12,%r9
 2d3:	4d 21 ca             	and    %r9,%r10
 2d6:	31 c0                	xor    %eax,%eax
 2d8:	4c 89 da             	mov    %r11,%rdx
 2db:	84 c9                	test   %cl,%cl
 2dd:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 2e3:	4d 0f 44 ca          	cmove  %r10,%r9
 2e7:	4d 09 c1             	or     %r8,%r9
 2ea:	0f 85 90 00 00 00    	jne    380 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x380>
 2f0:	49 83 c7 08          	add    $0x8,%r15
 2f4:	48 83 c7 f8          	add    $0xfffffffffffffff8,%rdi
 2f8:	48 83 ff 07          	cmp    $0x7,%rdi
 2fc:	0f 8f 0e ff ff ff    	jg     210 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x210>
 302:	4c 8b 04 24          	mov    (%rsp),%r8
 306:	4d 39 c7             	cmp    %r8,%r15
 309:	73 49                	jae    354 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x354>
 30b:	84 c9                	test   %cl,%cl
 30d:	0f 84 8e 00 00 00    	je     3a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a1>
 313:	31 c9                	xor    %ecx,%ecx
 315:	eb 1a                	jmp    331 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x331>
 317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 31e:	00 00
 320:	31 c0                	xor    %eax,%eax
 322:	4c 89 f9             	mov    %r15,%rcx
 325:	49 ff c7             	inc    %r15
 328:	4d 39 c7             	cmp    %r8,%r15
 32b:	0f 83 cd 00 00 00    	jae    3fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fe>
 331:	41 0f b6 3f          	movzbl (%r15),%edi
 335:	83 ff 3a             	cmp    $0x3a,%edi
 338:	75 04                	jne    33e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x33e>
 33a:	a8 01                	test   $0x1,%al
 33c:	75 e2                	jne    320 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x320>
 33e:	83 ff 0d             	cmp    $0xd,%edi
 341:	77 e2                	ja     325 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x325>
 343:	41 b9 01 24 00 00    	mov    $0x2401,%r9d
 349:	41 0f a3 f9          	bt     %edi,%r9d
 34d:	73 d6                	jae    325 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x325>
 34f:	e9 bc 00 00 00       	jmp    410 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
 354:	31 c9                	xor    %ecx,%ecx
 356:	e9 b5 00 00 00       	jmp    410 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
 35b:	f3 0f bc c7          	tzcnt  %edi,%eax
 35f:	49 01 c7             	add    %rax,%r15
 362:	4c 8b 04 24          	mov    (%rsp),%r8
 366:	48 85 ed             	test   %rbp,%rbp
 369:	0f 85 b8 00 00 00    	jne    427 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x427>
 36f:	48 89 f5             	mov    %rsi,%rbp
 372:	49 39 f7             	cmp    %rsi,%r15
 375:	0f 85 f6 01 00 00    	jne    571 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x571>
 37b:	e9 94 02 00 00       	jmp    614 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x614>
 380:	f3 49 0f bc c1       	tzcnt  %r9,%rax
 385:	c1 e8 03             	shr    $0x3,%eax
 388:	49 01 c7             	add    %rax,%r15
 38b:	4c 8b 04 24          	mov    (%rsp),%r8
 38f:	48 85 ed             	test   %rbp,%rbp
 392:	48 0f 44 ea          	cmove  %rdx,%rbp
 396:	48 85 ed             	test   %rbp,%rbp
 399:	0f 85 88 00 00 00    	jne    427 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x427>
 39f:	eb ce                	jmp    36f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x36f>
 3a1:	31 c9                	xor    %ecx,%ecx
 3a3:	eb 18                	jmp    3bd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3bd>
 3a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 3ac:	00 00 00 00
 3b0:	83 ff 5c             	cmp    $0x5c,%edi
 3b3:	74 5b                	je     410 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
 3b5:	49 ff c7             	inc    %r15
 3b8:	4d 39 c7             	cmp    %r8,%r15
 3bb:	73 41                	jae    3fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fe>
 3bd:	41 0f b6 3f          	movzbl (%r15),%edi
 3c1:	83 ff 3a             	cmp    $0x3a,%edi
 3c4:	75 1a                	jne    3e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
 3c6:	a8 01                	test   $0x1,%al
 3c8:	74 16                	je     3e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
 3ca:	31 c0                	xor    %eax,%eax
 3cc:	4c 89 f9             	mov    %r15,%rcx
 3cf:	49 ff c7             	inc    %r15
 3d2:	4d 39 c7             	cmp    %r8,%r15
 3d5:	72 e6                	jb     3bd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3bd>
 3d7:	eb 25                	jmp    3fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fe>
 3d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 3e0:	83 ff 3a             	cmp    $0x3a,%edi
 3e3:	77 cb                	ja     3b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b0>
 3e5:	41 89 f8             	mov    %edi,%r8d
 3e8:	49 b9 01 24 00 00 00 	movabs $0x400000000002401,%r9
 3ef:	00 00 04
 3f2:	4d 0f a3 c1          	bt     %r8,%r9
 3f6:	4c 8b 04 24          	mov    (%rsp),%r8
 3fa:	73 b4                	jae    3b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b0>
 3fc:	eb 12                	jmp    410 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
 3fe:	4d 89 c7             	mov    %r8,%r15
 401:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 408:	0f 1f 84 00 00 00 00
 40f:	00
 410:	48 85 d2             	test   %rdx,%rdx
 413:	48 0f 44 d1          	cmove  %rcx,%rdx
 417:	48 85 ed             	test   %rbp,%rbp
 41a:	48 0f 44 ea          	cmove  %rdx,%rbp
 41e:	48 85 ed             	test   %rbp,%rbp
 421:	0f 84 48 ff ff ff    	je     36f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x36f>
 427:	49 89 ec             	mov    %rbp,%r12
 42a:	49 29 f4             	sub    %rsi,%r12
 42d:	74 66                	je     495 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x495>
 42f:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 436:	48 89 c8             	mov    %rcx,%rax
 439:	4c 29 e0             	sub    %r12,%rax
 43c:	0f 82 f9 02 00 00    	jb     73b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x73b>
 442:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 449:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 450:	75 4c                	jne    49e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x49e>
 452:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 456:	49 89 f5             	mov    %rsi,%r13
 459:	4c 89 e2             	mov    %r12,%rdx
 45c:	e8 00 00 00 00       	call   461 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x461>
			45d: R_X86_64_PLT32	memcpy-0x4
 461:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 469 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x469>
 468:	00
			465: R_X86_64_PC32	.LCPI48_3-0x4
 469:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 471 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x471>
 470:	00
			46d: R_X86_64_PC32	.LCPI48_2-0x4
 471:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 479 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x479>
 478:	00
			475: R_X86_64_PC32	.LCPI48_1-0x4
 479:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 481 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x481>
 480:	00
			47d: R_X86_64_PC32	.LCPI48_0-0x4
 481:	4c 89 ee             	mov    %r13,%rsi
 484:	4c 8b 04 24          	mov    (%rsp),%r8
 488:	4c 01 63 48          	add    %r12,0x48(%rbx)
 48c:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 493:	eb 21                	jmp    4b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b6>
 495:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 49c:	eb 22                	jmp    4c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c0>
 49e:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 4a5:	48 85 c0             	test   %rax,%rax
 4a8:	75 0c                	jne    4b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b6>
 4aa:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 4b1:	48 89 30             	mov    %rsi,(%rax)
 4b4:	31 c0                	xor    %eax,%eax
 4b6:	4c 01 e0             	add    %r12,%rax
 4b9:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 4c0:	48 85 c0             	test   %rax,%rax
 4c3:	0f 84 02 03 00 00    	je     7cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7cb>
 4c9:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
 4d0:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 4d7:	48 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%rdx
 4de:	66 0f ef c0          	pxor   %xmm0,%xmm0
 4e2:	f3 0f 7f 02          	movdqu %xmm0,(%rdx)
 4e6:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
 4ed:	48 89 83 c8 00 00 00 	mov    %rax,0xc8(%rbx)
 4f4:	31 d2                	xor    %edx,%edx
 4f6:	48 83 f8 0e          	cmp    $0xe,%rax
 4fa:	75 56                	jne    552 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x552>
 4fc:	8b 43 78             	mov    0x78(%rbx),%eax
 4ff:	83 e0 01             	and    $0x1,%eax
 502:	75 4e                	jne    552 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x552>
 504:	49 83 fc 0e          	cmp    $0xe,%r12
 508:	75 21                	jne    52b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x52b>
 50a:	48 3b b3 20 01 00 00 	cmp    0x120(%rbx),%rsi
 511:	76 18                	jbe    52b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x52b>
 513:	f3 0f 6f 46 ff       	movdqu -0x1(%rsi),%xmm0
 518:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 520 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x520>
 51f:	00
			51c: R_X86_64_PC32	.LCPI48_4-0x4
 520:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 524:	35 ff ff 00 00       	xor    $0xffff,%eax
 529:	eb 24                	jmp    54f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54f>
 52b:	48 8b 01             	mov    (%rcx),%rax
 52e:	48 ba 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rdx
 535:	6e 74 2d
 538:	48 31 d0             	xor    %rdx,%rax
 53b:	48 8b 49 06          	mov    0x6(%rcx),%rcx
 53f:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
 546:	67 74 68
 549:	48 31 d1             	xor    %rdx,%rcx
 54c:	48 09 c1             	or     %rax,%rcx
 54f:	0f 94 c2             	sete   %dl
 552:	88 93 0c 01 00 00    	mov    %dl,0x10c(%rbx)
 558:	48 ff c5             	inc    %rbp
 55b:	48 89 ee             	mov    %rbp,%rsi
 55e:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
 565:	80 80 80
 568:	49 39 f7             	cmp    %rsi,%r15
 56b:	0f 84 a3 00 00 00    	je     614 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x614>
 571:	4d 89 fc             	mov    %r15,%r12
 574:	49 29 ec             	sub    %rbp,%r12
 577:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 57e:	48 89 c8             	mov    %rcx,%rax
 581:	4c 29 e0             	sub    %r12,%rax
 584:	0f 82 b1 01 00 00    	jb     73b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x73b>
 58a:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 591:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 598:	75 3f                	jne    5d9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d9>
 59a:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 59e:	4c 89 e2             	mov    %r12,%rdx
 5a1:	4d 89 c5             	mov    %r8,%r13
 5a4:	e8 00 00 00 00       	call   5a9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a9>
			5a5: R_X86_64_PLT32	memcpy-0x4
 5a9:	4d 89 e8             	mov    %r13,%r8
 5ac:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 5b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5b4>
 5b3:	00
			5b0: R_X86_64_PC32	.LCPI48_3-0x4
 5b4:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 5bc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5bc>
 5bb:	00
			5b8: R_X86_64_PC32	.LCPI48_2-0x4
 5bc:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 5c4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c4>
 5c3:	00
			5c0: R_X86_64_PC32	.LCPI48_1-0x4
 5c4:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 5cc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5cc>
 5cb:	00
			5c8: R_X86_64_PC32	.LCPI48_0-0x4
 5cc:	4c 01 63 48          	add    %r12,0x48(%rbx)
 5d0:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 5d7:	eb 27                	jmp    600 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x600>
 5d9:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 5e0:	48 85 c0             	test   %rax,%rax
 5e3:	75 1b                	jne    600 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x600>
 5e5:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 5ec:	48 89 30             	mov    %rsi,(%rax)
 5ef:	31 c0                	xor    %eax,%eax
 5f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 5f8:	0f 1f 84 00 00 00 00
 5ff:	00
 600:	4c 01 e0             	add    %r12,%rax
 603:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 60a:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
 611:	80 80 80
 614:	4d 39 c7             	cmp    %r8,%r15
 617:	0f 84 9c 01 00 00    	je     7b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b9>
 61d:	41 0f b6 07          	movzbl (%r15),%eax
 621:	83 f8 5c             	cmp    $0x5c,%eax
 624:	75 7a                	jne    6a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a0>
 626:	80 bb 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbx)
 62d:	75 71                	jne    6a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a0>
 62f:	40 b5 01             	mov    $0x1,%bpl
 632:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 639:	0f 85 5d fa ff ff    	jne    9c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c>
 63f:	48 89 df             	mov    %rbx,%rdi
 642:	e8 00 00 00 00       	call   647 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x647>
			643: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
 647:	4c 8b 63 48          	mov    0x48(%rbx),%r12
 64b:	4c 8b ab d8 00 00 00 	mov    0xd8(%rbx),%r13
 652:	4d 85 ed             	test   %r13,%r13
 655:	0f 84 05 fa ff ff    	je     60 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x60>
 65b:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
 662:	4c 89 e7             	mov    %r12,%rdi
 665:	4c 89 ea             	mov    %r13,%rdx
 668:	e8 00 00 00 00       	call   66d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x66d>
			669: R_X86_64_PLT32	memcpy-0x4
 66d:	4c 01 6b 48          	add    %r13,0x48(%rbx)
 671:	e9 ea f9 ff ff       	jmp    60 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x60>
 676:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 67d:	00 00 00
 680:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 687:	48 89 f0             	mov    %rsi,%rax
 68a:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 691:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 698:	48 ff c6             	inc    %rsi
 69b:	e9 0f 01 00 00       	jmp    7af <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7af>
 6a0:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 6a7:	00
 6a8:	74 63                	je     70d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x70d>
 6aa:	83 f8 0a             	cmp    $0xa,%eax
 6ad:	74 05                	je     6b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b4>
 6af:	83 f8 0d             	cmp    $0xd,%eax
 6b2:	75 59                	jne    70d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x70d>
 6b4:	4d 89 c6             	mov    %r8,%r14
 6b7:	48 89 df             	mov    %rbx,%rdi
 6ba:	4c 89 fe             	mov    %r15,%rsi
 6bd:	e8 00 00 00 00       	call   6c2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6c2>
			6be: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 6c2:	84 c0                	test   %al,%al
 6c4:	0f 84 32 01 00 00    	je     7fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7fc>
 6ca:	49 8d 77 01          	lea    0x1(%r15),%rsi
 6ce:	41 80 3f 0a          	cmpb   $0xa,(%r15)
 6d2:	0f 85 2d 01 00 00    	jne    805 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x805>
 6d8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 6df <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6df>
			6db: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 6df:	48 89 43 60          	mov    %rax,0x60(%rbx)
 6e3:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 6ea:	00
 6eb:	4c 39 f6             	cmp    %r14,%rsi
 6ee:	0f 83 c2 00 00 00    	jae    7b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b6>
 6f4:	4c 89 f2             	mov    %r14,%rdx
 6f7:	48 89 df             	mov    %rbx,%rdi
 6fa:	48 83 c4 08          	add    $0x8,%rsp
 6fe:	5b                   	pop    %rbx
 6ff:	41 5c                	pop    %r12
 701:	41 5d                	pop    %r13
 703:	41 5e                	pop    %r14
 705:	41 5f                	pop    %r15
 707:	5d                   	pop    %rbp
 708:	e9 00 00 00 00       	jmp    70d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x70d>
			709: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 70d:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 714:	00 00 00
 717:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 71e:	4c 89 f8             	mov    %r15,%rax
 721:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 728:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 72f:	49 ff c7             	inc    %r15
 732:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 739:	eb 7e                	jmp    7b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b9>
 73b:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 742:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
 746:	b8 02 00 00 00       	mov    $0x2,%eax
 74b:	49 39 fc             	cmp    %rdi,%r12
 74e:	76 59                	jbe    7a9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a9>
 750:	48 01 ce             	add    %rcx,%rsi
 753:	48 8d 04 16          	lea    (%rsi,%rdx,1),%rax
 757:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 75e:	00 00 00
 761:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 768:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 76f:	48 01 d6             	add    %rdx,%rsi
 772:	48 ff c6             	inc    %rsi
 775:	eb 2d                	jmp    7a4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a4>
 777:	b8 02 00 00 00       	mov    $0x2,%eax
 77c:	48 83 bb f8 00 00 00 	cmpq   $0x0,0xf8(%rbx)
 783:	00
 784:	75 23                	jne    7a9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a9>
 786:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 78d:	00 00 00
 790:	48 89 f0             	mov    %rsi,%rax
 793:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 79a:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 7a1:	48 ff c6             	inc    %rsi
 7a4:	b8 03 00 00 00       	mov    $0x3,%eax
 7a9:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
 7af:	48 89 b3 28 01 00 00 	mov    %rsi,0x128(%rbx)
 7b6:	49 89 f7             	mov    %rsi,%r15
 7b9:	4c 89 f8             	mov    %r15,%rax
 7bc:	48 83 c4 08          	add    $0x8,%rsp
 7c0:	5b                   	pop    %rbx
 7c1:	41 5c                	pop    %r12
 7c3:	41 5d                	pop    %r13
 7c5:	41 5e                	pop    %r14
 7c7:	41 5f                	pop    %r15
 7c9:	5d                   	pop    %rbp
 7ca:	c3                   	ret
 7cb:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 7d2:	00 00 00
 7d5:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 7dc:	48 89 e8             	mov    %rbp,%rax
 7df:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 7e6:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 7ed:	48 ff c5             	inc    %rbp
 7f0:	48 89 ab 28 01 00 00 	mov    %rbp,0x128(%rbx)
 7f7:	49 89 ef             	mov    %rbp,%r15
 7fa:	eb bd                	jmp    7b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b9>
 7fc:	4c 8b bb 28 01 00 00 	mov    0x128(%rbx),%r15
 803:	eb b4                	jmp    7b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b9>
 805:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 80c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x80c>
			808: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 80c:	48 89 43 60          	mov    %rax,0x60(%rbx)
 810:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 817:	00
 818:	4c 39 f6             	cmp    %r14,%rsi
 81b:	73 99                	jae    7b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b6>
 81d:	80 3e 0a             	cmpb   $0xa,(%rsi)
 820:	75 2e                	jne    850 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x850>
 822:	4c 89 f2             	mov    %r14,%rdx
 825:	49 83 c7 02          	add    $0x2,%r15
 829:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 830 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x830>
			82c: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 830:	48 89 43 60          	mov    %rax,0x60(%rbx)
 834:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 83b:	00
 83c:	4d 39 f7             	cmp    %r14,%r15
 83f:	0f 83 74 ff ff ff    	jae    7b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b9>
 845:	48 89 df             	mov    %rbx,%rdi
 848:	4c 89 fe             	mov    %r15,%rsi
 84b:	e9 aa fe ff ff       	jmp    6fa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6fa>
 850:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 857:	00 00 00
 85a:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 861:	48 2b b3 20 01 00 00 	sub    0x120(%rbx),%rsi
 868:	48 89 b3 18 01 00 00 	mov    %rsi,0x118(%rbx)
 86f:	49 83 c7 02          	add    $0x2,%r15
 873:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 87a:	e9 3a ff ff ff       	jmp    7b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b9>

0000000000000000 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	53                   	push   %rbx
   9:	48 89 d3             	mov    %rdx,%rbx
   c:	49 89 f7             	mov    %rsi,%r15
   f:	49 89 fe             	mov    %rdi,%r14
  12:	80 3e 00             	cmpb   $0x0,(%rsi)
  15:	74 67                	je     7e <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x7e>
  17:	48 89 da             	mov    %rbx,%rdx
  1a:	4c 29 fa             	sub    %r15,%rdx
  1d:	4c 89 ff             	mov    %r15,%rdi
  20:	31 f6                	xor    %esi,%esi
  22:	e8 00 00 00 00       	call   27 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x27>
			23: R_X86_64_PLT32	memchr-0x4
  27:	48 85 c0             	test   %rax,%rax
  2a:	48 89 c1             	mov    %rax,%rcx
  2d:	48 0f 44 cb          	cmove  %rbx,%rcx
  31:	4c 29 f9             	sub    %r15,%rcx
  34:	49 8b 56 20          	mov    0x20(%r14),%rdx
  38:	49 2b 96 90 00 00 00 	sub    0x90(%r14),%rdx
  3f:	48 39 d1             	cmp    %rdx,%rcx
  42:	0f 86 90 00 00 00    	jbe    d8 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xd8>
  48:	49 8d 04 17          	lea    (%r15,%rdx,1),%rax
  4c:	48 b9 03 00 00 00 0e 	movabs $0xe00000003,%rcx
  53:	00 00 00
  56:	49 89 8e 10 01 00 00 	mov    %rcx,0x110(%r14)
  5d:	49 2b 86 20 01 00 00 	sub    0x120(%r14),%rax
  64:	49 89 86 18 01 00 00 	mov    %rax,0x118(%r14)
  6b:	49 8d 1c 17          	lea    (%r15,%rdx,1),%rbx
  6f:	48 ff c3             	inc    %rbx
  72:	49 89 9e 28 01 00 00 	mov    %rbx,0x128(%r14)
  79:	e9 c7 02 00 00       	jmp    345 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x345>
  7e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 85 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x85>
			81: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  85:	49 89 46 60          	mov    %rax,0x60(%r14)
  89:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
  90:	00
  91:	49 39 df             	cmp    %rbx,%r15
  94:	0f 83 a3 01 00 00    	jae    23d <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x23d>
  9a:	41 80 3f 00          	cmpb   $0x0,(%r15)
  9e:	0f 84 a4 00 00 00    	je     148 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x148>
  a4:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
  ab:	00 00 00
  ae:	49 89 86 10 01 00 00 	mov    %rax,0x110(%r14)
  b5:	4c 89 f8             	mov    %r15,%rax
  b8:	49 2b 86 20 01 00 00 	sub    0x120(%r14),%rax
  bf:	49 89 86 18 01 00 00 	mov    %rax,0x118(%r14)
  c6:	49 ff c7             	inc    %r15
  c9:	4d 89 be 28 01 00 00 	mov    %r15,0x128(%r14)
  d0:	4c 89 fb             	mov    %r15,%rbx
  d3:	e9 6d 02 00 00       	jmp    345 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x345>
  d8:	4d 89 be b8 00 00 00 	mov    %r15,0xb8(%r14)
  df:	49 89 8e 98 00 00 00 	mov    %rcx,0x98(%r14)
  e6:	48 85 c0             	test   %rax,%rax
  e9:	0f 84 56 02 00 00    	je     345 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x345>
  ef:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # f6 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xf6>
			f2: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  f6:	49 89 4e 60          	mov    %rcx,0x60(%r14)
  fa:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
 101:	00
 102:	48 39 d8             	cmp    %rbx,%rax
 105:	0f 83 37 02 00 00    	jae    342 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x342>
 10b:	80 38 00             	cmpb   $0x0,(%rax)
 10e:	0f 84 31 01 00 00    	je     245 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x245>
 114:	48 b9 03 00 00 00 0b 	movabs $0xb00000003,%rcx
 11b:	00 00 00
 11e:	49 89 8e 10 01 00 00 	mov    %rcx,0x110(%r14)
 125:	49 8b 8e 20 01 00 00 	mov    0x120(%r14),%rcx
 12c:	48 89 c2             	mov    %rax,%rdx
 12f:	48 29 ca             	sub    %rcx,%rdx
 132:	49 89 96 18 01 00 00 	mov    %rdx,0x118(%r14)
 139:	48 ff c0             	inc    %rax
 13c:	49 89 86 28 01 00 00 	mov    %rax,0x128(%r14)
 143:	e9 fa 01 00 00       	jmp    342 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x342>
 148:	49 8b 86 f0 00 00 00 	mov    0xf0(%r14),%rax
 14f:	48 c1 e0 05          	shl    $0x5,%rax
 153:	49 03 46 38          	add    0x38(%r14),%rax
 157:	49 8b 8e 80 00 00 00 	mov    0x80(%r14),%rcx
 15e:	48 85 c9             	test   %rcx,%rcx
 161:	48 0f 44 c1          	cmove  %rcx,%rax
 165:	49 89 86 b0 00 00 00 	mov    %rax,0xb0(%r14)
 16c:	41 8b 46 78          	mov    0x78(%r14),%eax
 170:	83 e0 01             	and    $0x1,%eax
 173:	41 0f b6 8e 09 01 00 	movzbl 0x109(%r14),%ecx
 17a:	00
 17b:	83 f1 01             	xor    $0x1,%ecx
 17e:	8d 04 48             	lea    (%rax,%rcx,2),%eax
 181:	83 c0 04             	add    $0x4,%eax
 184:	41 89 46 78          	mov    %eax,0x78(%r14)
 188:	49 8b 46 30          	mov    0x30(%r14),%rax
 18c:	49 8b 8e e0 00 00 00 	mov    0xe0(%r14),%rcx
 193:	48 8d 51 01          	lea    0x1(%rcx),%rdx
 197:	49 89 96 e0 00 00 00 	mov    %rdx,0xe0(%r14)
 19e:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
 1a2:	48 c1 e1 04          	shl    $0x4,%rcx
 1a6:	41 0f 10 86 a0 00 00 	movups 0xa0(%r14),%xmm0
 1ad:	00
 1ae:	0f 11 44 08 30       	movups %xmm0,0x30(%rax,%rcx,1)
 1b3:	41 0f 10 86 90 00 00 	movups 0x90(%r14),%xmm0
 1ba:	00
 1bb:	0f 11 44 08 20       	movups %xmm0,0x20(%rax,%rcx,1)
 1c0:	41 0f 10 86 80 00 00 	movups 0x80(%r14),%xmm0
 1c7:	00
 1c8:	0f 11 44 08 10       	movups %xmm0,0x10(%rax,%rcx,1)
 1cd:	41 0f 10 46 70       	movups 0x70(%r14),%xmm0
 1d2:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
 1d6:	41 0f 10 86 b0 00 00 	movups 0xb0(%r14),%xmm0
 1dd:	00
 1de:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
 1e3:	49 8b 86 98 00 00 00 	mov    0x98(%r14),%rax
 1ea:	49 01 86 90 00 00 00 	add    %rax,0x90(%r14)
 1f1:	49 c7 86 b8 00 00 00 	movq   $0x0,0xb8(%r14)
 1f8:	00 00 00 00
 1fc:	49 c7 86 98 00 00 00 	movq   $0x0,0x98(%r14)
 203:	00 00 00 00
 207:	41 c6 86 09 01 00 00 	movb   $0x1,0x109(%r14)
 20e:	01
 20f:	41 c6 86 08 01 00 00 	movb   $0x0,0x108(%r14)
 216:	00
 217:	49 ff c7             	inc    %r15
 21a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 221 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x221>
			21d: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 221:	49 89 46 60          	mov    %rax,0x60(%r14)
 225:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
 22c:	00
 22d:	49 39 df             	cmp    %rbx,%r15
 230:	73 0b                	jae    23d <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x23d>
 232:	4c 89 f7             	mov    %r14,%rdi
 235:	4c 89 fe             	mov    %r15,%rsi
 238:	e9 f8 00 00 00       	jmp    335 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x335>
 23d:	4c 89 fb             	mov    %r15,%rbx
 240:	e9 00 01 00 00       	jmp    345 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x345>
 245:	49 8b 8e f0 00 00 00 	mov    0xf0(%r14),%rcx
 24c:	48 c1 e1 05          	shl    $0x5,%rcx
 250:	49 03 4e 38          	add    0x38(%r14),%rcx
 254:	49 8b 96 80 00 00 00 	mov    0x80(%r14),%rdx
 25b:	48 85 d2             	test   %rdx,%rdx
 25e:	48 0f 44 ca          	cmove  %rdx,%rcx
 262:	49 89 8e b0 00 00 00 	mov    %rcx,0xb0(%r14)
 269:	41 8b 4e 78          	mov    0x78(%r14),%ecx
 26d:	83 e1 01             	and    $0x1,%ecx
 270:	41 0f b6 96 09 01 00 	movzbl 0x109(%r14),%edx
 277:	00
 278:	83 f2 01             	xor    $0x1,%edx
 27b:	8d 0c 51             	lea    (%rcx,%rdx,2),%ecx
 27e:	83 c1 04             	add    $0x4,%ecx
 281:	41 89 4e 78          	mov    %ecx,0x78(%r14)
 285:	49 8b 4e 30          	mov    0x30(%r14),%rcx
 289:	49 8b 96 e0 00 00 00 	mov    0xe0(%r14),%rdx
 290:	48 8d 72 01          	lea    0x1(%rdx),%rsi
 294:	49 89 b6 e0 00 00 00 	mov    %rsi,0xe0(%r14)
 29b:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
 29f:	48 c1 e2 04          	shl    $0x4,%rdx
 2a3:	41 0f 10 86 a0 00 00 	movups 0xa0(%r14),%xmm0
 2aa:	00
 2ab:	0f 11 44 11 30       	movups %xmm0,0x30(%rcx,%rdx,1)
 2b0:	41 0f 10 86 90 00 00 	movups 0x90(%r14),%xmm0
 2b7:	00
 2b8:	0f 11 44 11 20       	movups %xmm0,0x20(%rcx,%rdx,1)
 2bd:	41 0f 10 86 80 00 00 	movups 0x80(%r14),%xmm0
 2c4:	00
 2c5:	0f 11 44 11 10       	movups %xmm0,0x10(%rcx,%rdx,1)
 2ca:	41 0f 10 46 70       	movups 0x70(%r14),%xmm0
 2cf:	0f 11 04 11          	movups %xmm0,(%rcx,%rdx,1)
 2d3:	41 0f 10 86 b0 00 00 	movups 0xb0(%r14),%xmm0
 2da:	00
 2db:	0f 11 44 11 40       	movups %xmm0,0x40(%rcx,%rdx,1)
 2e0:	49 8b 8e 98 00 00 00 	mov    0x98(%r14),%rcx
 2e7:	49 01 8e 90 00 00 00 	add    %rcx,0x90(%r14)
 2ee:	49 c7 86 b8 00 00 00 	movq   $0x0,0xb8(%r14)
 2f5:	00 00 00 00
 2f9:	49 c7 86 98 00 00 00 	movq   $0x0,0x98(%r14)
 300:	00 00 00 00
 304:	41 c6 86 09 01 00 00 	movb   $0x1,0x109(%r14)
 30b:	01
 30c:	41 c6 86 08 01 00 00 	movb   $0x0,0x108(%r14)
 313:	00
 314:	48 ff c0             	inc    %rax
 317:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 31e <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x31e>
			31a: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 31e:	49 89 4e 60          	mov    %rcx,0x60(%r14)
 322:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
 329:	00
 32a:	48 39 d8             	cmp    %rbx,%rax
 32d:	73 13                	jae    342 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x342>
 32f:	4c 89 f7             	mov    %r14,%rdi
 332:	48 89 c6             	mov    %rax,%rsi
 335:	48 89 da             	mov    %rbx,%rdx
 338:	5b                   	pop    %rbx
 339:	41 5e                	pop    %r14
 33b:	41 5f                	pop    %r15
 33d:	e9 00 00 00 00       	jmp    342 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x342>
			33e: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 342:	48 89 c3             	mov    %rax,%rbx
 345:	48 89 d8             	mov    %rbx,%rax
 348:	5b                   	pop    %rbx
 349:	41 5e                	pop    %r14
 34b:	41 5f                	pop    %r15
 34d:	c3                   	ret
