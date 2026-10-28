0000000000000270 <stomptalk::parser::own_metadata()>:
     270:	f3 0f 1e fa          	endbr64
     274:	55                   	push   %rbp
     275:	41 57                	push   %r15
     277:	41 56                	push   %r14
     279:	41 55                	push   %r13
     27b:	41 54                	push   %r12
     27d:	53                   	push   %rbx
     27e:	50                   	push   %rax
     27f:	48 89 fb             	mov    %rdi,%rbx
     282:	4c 8b b7 a8 00 00 00 	mov    0xa8(%rdi),%r14
     289:	4d 85 f6             	test   %r14,%r14
     28c:	74 2e                	je     2bc <stomptalk::parser::own_metadata()+0x4c>
     28e:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
     295:	48 89 f0             	mov    %rsi,%rax
     298:	48 2b 43 40          	sub    0x40(%rbx),%rax
     29c:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     2a0:	72 1a                	jb     2bc <stomptalk::parser::own_metadata()+0x4c>
     2a2:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     2a6:	4c 89 ff             	mov    %r15,%rdi
     2a9:	4c 89 f2             	mov    %r14,%rdx
     2ac:	e8 00 00 00 00       	call   2b1 <stomptalk::parser::own_metadata()+0x41>
			2ad: R_X86_64_PLT32	memcpy-0x4
     2b1:	4c 01 73 48          	add    %r14,0x48(%rbx)
     2b5:	4c 89 bb a0 00 00 00 	mov    %r15,0xa0(%rbx)
     2bc:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     2c3:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     2ca:	0f 83 95 00 00 00    	jae    365 <stomptalk::parser::own_metadata()+0xf5>
     2d0:	4d 89 e5             	mov    %r12,%r13
     2d3:	49 c1 e5 05          	shl    $0x5,%r13
     2d7:	eb 17                	jmp    2f0 <stomptalk::parser::own_metadata()+0x80>
     2d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     2e0:	49 ff c4             	inc    %r12
     2e3:	49 83 c5 20          	add    $0x20,%r13
     2e7:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     2ee:	73 75                	jae    365 <stomptalk::parser::own_metadata()+0xf5>
     2f0:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     2f4:	4e 8b 74 2d 08       	mov    0x8(%rbp,%r13,1),%r14
     2f9:	4d 85 f6             	test   %r14,%r14
     2fc:	74 2e                	je     32c <stomptalk::parser::own_metadata()+0xbc>
     2fe:	4a 8b 74 2d 00       	mov    0x0(%rbp,%r13,1),%rsi
     303:	48 89 f0             	mov    %rsi,%rax
     306:	48 2b 43 40          	sub    0x40(%rbx),%rax
     30a:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     30e:	72 1c                	jb     32c <stomptalk::parser::own_metadata()+0xbc>
     310:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     314:	4c 89 ff             	mov    %r15,%rdi
     317:	4c 89 f2             	mov    %r14,%rdx
     31a:	e8 00 00 00 00       	call   31f <stomptalk::parser::own_metadata()+0xaf>
			31b: R_X86_64_PLT32	memcpy-0x4
     31f:	4c 01 73 48          	add    %r14,0x48(%rbx)
     323:	4e 89 7c 2d 00       	mov    %r15,0x0(%rbp,%r13,1)
     328:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     32c:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
     331:	4d 85 f6             	test   %r14,%r14
     334:	74 aa                	je     2e0 <stomptalk::parser::own_metadata()+0x70>
     336:	4a 8b 74 2d 10       	mov    0x10(%rbp,%r13,1),%rsi
     33b:	48 89 f0             	mov    %rsi,%rax
     33e:	48 2b 43 40          	sub    0x40(%rbx),%rax
     342:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     346:	72 98                	jb     2e0 <stomptalk::parser::own_metadata()+0x70>
     348:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     34c:	4c 89 ff             	mov    %r15,%rdi
     34f:	4c 89 f2             	mov    %r14,%rdx
     352:	e8 00 00 00 00       	call   357 <stomptalk::parser::own_metadata()+0xe7>
			353: R_X86_64_PLT32	memcpy-0x4
     357:	4c 01 73 48          	add    %r14,0x48(%rbx)
     35b:	4e 89 7c 2d 10       	mov    %r15,0x10(%rbp,%r13,1)
     360:	e9 7b ff ff ff       	jmp    2e0 <stomptalk::parser::own_metadata()+0x70>
     365:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
     36c:	4d 85 f6             	test   %r14,%r14
     36f:	74 2e                	je     39f <stomptalk::parser::own_metadata()+0x12f>
     371:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     378:	48 89 f0             	mov    %rsi,%rax
     37b:	48 2b 43 40          	sub    0x40(%rbx),%rax
     37f:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     383:	72 1a                	jb     39f <stomptalk::parser::own_metadata()+0x12f>
     385:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     389:	4c 89 ff             	mov    %r15,%rdi
     38c:	4c 89 f2             	mov    %r14,%rdx
     38f:	e8 00 00 00 00       	call   394 <stomptalk::parser::own_metadata()+0x124>
			390: R_X86_64_PLT32	memcpy-0x4
     394:	4c 01 73 48          	add    %r14,0x48(%rbx)
     398:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
     39f:	48 83 c4 08          	add    $0x8,%rsp
     3a3:	5b                   	pop    %rbx
     3a4:	41 5c                	pop    %r12
     3a6:	41 5d                	pop    %r13
     3a8:	41 5e                	pop    %r14
     3aa:	41 5f                	pop    %r15
     3ac:	5d                   	pop    %rbp
     3ad:	c3                   	ret
     3ae:	66 90                	xchg   %ax,%ax

00000000000003b0 <stomptalk::parser::own_token()>:
     3b0:	f3 0f 1e fa          	endbr64
     3b4:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     3bb:	75 46                	jne    403 <stomptalk::parser::own_token()+0x53>
     3bd:	41 57                	push   %r15
     3bf:	41 56                	push   %r14
     3c1:	53                   	push   %rbx
     3c2:	48 89 fb             	mov    %rdi,%rbx
     3c5:	e8 00 00 00 00       	call   3ca <stomptalk::parser::own_token()+0x1a>
			3c6: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     3ca:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     3ce:	4c 8b bb d8 00 00 00 	mov    0xd8(%rbx),%r15
     3d5:	4d 85 ff             	test   %r15,%r15
     3d8:	74 16                	je     3f0 <stomptalk::parser::own_token()+0x40>
     3da:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     3e1:	4c 89 f7             	mov    %r14,%rdi
     3e4:	4c 89 fa             	mov    %r15,%rdx
     3e7:	e8 00 00 00 00       	call   3ec <stomptalk::parser::own_token()+0x3c>
			3e8: R_X86_64_PLT32	memcpy-0x4
     3ec:	4c 01 7b 48          	add    %r15,0x48(%rbx)
     3f0:	4c 89 b3 d0 00 00 00 	mov    %r14,0xd0(%rbx)
     3f7:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     3fe:	5b                   	pop    %rbx
     3ff:	41 5e                	pop    %r14
     401:	41 5f                	pop    %r15
     403:	c3                   	ret
     404:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     40b:	00 00 00 00 00

00000000000006e0 <stomptalk::parser::finish_value(char const*)>:
     6e0:	f3 0f 1e fa          	endbr64
     6e4:	55                   	push   %rbp
     6e5:	41 57                	push   %r15
     6e7:	41 56                	push   %r14
     6e9:	41 55                	push   %r13
     6eb:	41 54                	push   %r12
     6ed:	53                   	push   %rbx
     6ee:	48 83 ec 28          	sub    $0x28,%rsp
     6f2:	48 8b 9f d0 00 00 00 	mov    0xd0(%rdi),%rbx
     6f9:	4c 8b bf d8 00 00 00 	mov    0xd8(%rdi),%r15
     700:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     707:	0f 57 c9             	xorps  %xmm1,%xmm1
     70a:	0f 11 8f d0 00 00 00 	movups %xmm1,0xd0(%rdi)
     711:	80 bf 0c 01 00 00 01 	cmpb   $0x1,0x10c(%rdi)
     718:	0f 85 4b 0a 00 00    	jne    1169 <stomptalk::parser::finish_value(char const*)+0xa89>
     71e:	49 83 ff 15          	cmp    $0x15,%r15
     722:	72 38                	jb     75c <stomptalk::parser::finish_value(char const*)+0x7c>
     724:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
     728:	48 83 c0 ec          	add    $0xffffffffffffffec,%rax
     72c:	48 89 d9             	mov    %rbx,%rcx
     72f:	4c 89 fa             	mov    %r15,%rdx
     732:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     739:	1f 84 00 00 00 00 00
     740:	80 39 30             	cmpb   $0x30,(%rcx)
     743:	0f 85 22 0b 00 00    	jne    126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     749:	48 ff c1             	inc    %rcx
     74c:	48 ff ca             	dec    %rdx
     74f:	48 83 fa 14          	cmp    $0x14,%rdx
     753:	77 eb                	ja     740 <stomptalk::parser::finish_value(char const*)+0x60>
     755:	b9 14 00 00 00       	mov    $0x14,%ecx
     75a:	eb 43                	jmp    79f <stomptalk::parser::finish_value(char const*)+0xbf>
     75c:	4d 85 ff             	test   %r15,%r15
     75f:	0f 84 06 0b 00 00    	je     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     765:	4c 89 f9             	mov    %r15,%rcx
     768:	48 89 d8             	mov    %rbx,%rax
     76b:	49 83 ff 13          	cmp    $0x13,%r15
     76f:	73 2e                	jae    79f <stomptalk::parser::finish_value(char const*)+0xbf>
     771:	49 8d 47 ff          	lea    -0x1(%r15),%rax
     775:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 77c <stomptalk::parser::finish_value(char const*)+0x9c>
			778: R_X86_64_PC32	.rodata-0x4
     77c:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
     780:	48 01 c8             	add    %rcx,%rax
     783:	3e ff e0             	notrack jmp *%rax
     786:	44 0f b6 33          	movzbl (%rbx),%r14d
     78a:	41 8d 46 c6          	lea    -0x3a(%r14),%eax
     78e:	3c f6                	cmp    $0xf6,%al
     790:	0f 82 d5 0a 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     796:	49 83 c6 d0          	add    $0xffffffffffffffd0,%r14
     79a:	e9 a1 09 00 00       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
     79f:	48 8d 51 ee          	lea    -0x12(%rcx),%rdx
     7a3:	45 31 e4             	xor    %r12d,%r12d
     7a6:	45 31 c0             	xor    %r8d,%r8d
     7a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     7b0:	46 0f b6 0c 00       	movzbl (%rax,%r8,1),%r9d
     7b5:	41 83 c1 d0          	add    $0xffffffd0,%r9d
     7b9:	41 83 f9 09          	cmp    $0x9,%r9d
     7bd:	0f 87 a8 0a 00 00    	ja     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     7c3:	4f 8d 14 a4          	lea    (%r12,%r12,4),%r10
     7c7:	45 89 c9             	mov    %r9d,%r9d
     7ca:	4f 8d 24 51          	lea    (%r9,%r10,2),%r12
     7ce:	49 ff c0             	inc    %r8
     7d1:	4c 39 c2             	cmp    %r8,%rdx
     7d4:	75 da                	jne    7b0 <stomptalk::parser::finish_value(char const*)+0xd0>
     7d6:	0f b6 54 08 ee       	movzbl -0x12(%rax,%rcx,1),%edx
     7db:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     7df:	41 80 f8 f6          	cmp    $0xf6,%r8b
     7e3:	0f 82 82 0a 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     7e9:	48 01 c8             	add    %rcx,%rax
     7ec:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     7f3:	00 00 80
     7f6:	49 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%r8
     7fd:	45 63 01
     800:	49 0f af d0          	imul   %r8,%rdx
     804:	49 be 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%r14
     80b:	f9 62 bd
     80e:	49 01 d6             	add    %rdx,%r14
     811:	0f b6 50 ef          	movzbl -0x11(%rax),%edx
     815:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     819:	41 80 f8 f6          	cmp    $0xf6,%r8b
     81d:	72 71                	jb     890 <stomptalk::parser::finish_value(char const*)+0x1b0>
     81f:	49 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r8
     826:	86 23 00
     829:	49 0f af d0          	imul   %r8,%rdx
     82d:	49 bd 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r13
     834:	b2 56 f9
     837:	49 01 d5             	add    %rdx,%r13
     83a:	0f b6 68 f0          	movzbl -0x10(%rax),%ebp
     83e:	8d 55 c6             	lea    -0x3a(%rbp),%edx
     841:	80 fa f6             	cmp    $0xf6,%dl
     844:	72 47                	jb     88d <stomptalk::parser::finish_value(char const*)+0x1ad>
     846:	48 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rcx
     84d:	8d 03 00
     850:	48 0f af e9          	imul   %rcx,%rbp
     854:	48 83 c0 f1          	add    $0xfffffffffffffff1,%rax
     858:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
     85d:	48 89 c7             	mov    %rax,%rdi
     860:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
     865:	49 89 f6             	mov    %rsi,%r14
     868:	e8 93 17 00 00       	call   2000 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     86d:	0f 57 c9             	xorps  %xmm1,%xmm1
     870:	4c 89 f6             	mov    %r14,%rsi
     873:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
     878:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
     87d:	48 b9 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rcx
     884:	78 55 ff
     887:	48 01 c1             	add    %rax,%rcx
     88a:	48 01 e9             	add    %rbp,%rcx
     88d:	4c 01 e9             	add    %r13,%rcx
     890:	49 01 ce             	add    %rcx,%r14
     893:	0f 88 d2 09 00 00    	js     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     899:	49 83 fc 12          	cmp    $0x12,%r12
     89d:	0f 87 c8 09 00 00    	ja     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     8a3:	75 13                	jne    8b8 <stomptalk::parser::finish_value(char const*)+0x1d8>
     8a5:	48 b8 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rax
     8ac:	27 33 06
     8af:	49 39 c6             	cmp    %rax,%r14
     8b2:	0f 87 b3 09 00 00    	ja     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     8b8:	48 b8 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rax
     8bf:	b6 e0 0d
     8c2:	4c 0f af e0          	imul   %rax,%r12
     8c6:	4d 01 e6             	add    %r12,%r14
     8c9:	e9 7b 08 00 00       	jmp    1149 <stomptalk::parser::finish_value(char const*)+0xa69>
     8ce:	0f b6 03             	movzbl (%rbx),%eax
     8d1:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     8d4:	80 f9 f6             	cmp    $0xf6,%cl
     8d7:	0f 82 8e 09 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     8dd:	48 b9 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rcx
     8e4:	86 23 00
     8e7:	48 0f af c1          	imul   %rcx,%rax
     8eb:	49 be 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r14
     8f2:	b2 56 f9
     8f5:	49 01 c6             	add    %rax,%r14
     8f8:	44 0f b6 63 01       	movzbl 0x1(%rbx),%r12d
     8fd:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     902:	3c f6                	cmp    $0xf6,%al
     904:	0f 82 0e 03 00 00    	jb     c18 <stomptalk::parser::finish_value(char const*)+0x538>
     90a:	48 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rax
     911:	8d 03 00
     914:	4c 0f af e0          	imul   %rax,%r12
     918:	48 8d 43 02          	lea    0x2(%rbx),%rax
     91c:	49 89 fd             	mov    %rdi,%r13
     91f:	48 89 c7             	mov    %rax,%rdi
     922:	4c 89 f5             	mov    %r14,%rbp
     925:	49 89 f6             	mov    %rsi,%r14
     928:	e8 d3 16 00 00       	call   2000 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     92d:	0f 57 c9             	xorps  %xmm1,%xmm1
     930:	4c 89 f6             	mov    %r14,%rsi
     933:	49 89 ee             	mov    %rbp,%r14
     936:	4c 89 ef             	mov    %r13,%rdi
     939:	48 b9 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rcx
     940:	78 55 ff
     943:	48 01 c1             	add    %rax,%rcx
     946:	4c 01 e1             	add    %r12,%rcx
     949:	49 01 ce             	add    %rcx,%r14
     94c:	e9 ef 07 00 00       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
     951:	49 89 fe             	mov    %rdi,%r14
     954:	48 89 df             	mov    %rbx,%rdi
     957:	49 89 f4             	mov    %rsi,%r12
     95a:	e8 a1 16 00 00       	call   2000 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     95f:	e9 f8 03 00 00       	jmp    d5c <stomptalk::parser::finish_value(char const*)+0x67c>
     964:	0f b6 03             	movzbl (%rbx),%eax
     967:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     96a:	80 f9 f6             	cmp    $0xf6,%cl
     96d:	0f 82 f8 08 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     973:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     97a:	00 00 80
     97d:	48 ba 00 e8 76 48 17 	movabs $0x174876e800,%rdx
     984:	00 00 00
     987:	48 0f af c2          	imul   %rdx,%rax
     98b:	49 be 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r14
     992:	fb ff ff
     995:	49 01 c6             	add    %rax,%r14
     998:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     99c:	8d 50 c6             	lea    -0x3a(%rax),%edx
     99f:	80 fa f6             	cmp    $0xf6,%dl
     9a2:	0f 82 b4 06 00 00    	jb     105c <stomptalk::parser::finish_value(char const*)+0x97c>
     9a8:	48 ba 00 e4 0b 54 02 	movabs $0x2540be400,%rdx
     9af:	00 00 00
     9b2:	48 0f af c2          	imul   %rdx,%rax
     9b6:	49 bc 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r12
     9bd:	ff ff ff
     9c0:	49 01 c4             	add    %rax,%r12
     9c3:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
     9c7:	8d 50 c6             	lea    -0x3a(%rax),%edx
     9ca:	80 fa f6             	cmp    $0xf6,%dl
     9cd:	0f 82 86 06 00 00    	jb     1059 <stomptalk::parser::finish_value(char const*)+0x979>
     9d3:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
     9da:	49 bd 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%r13
     9e1:	ff ff ff
     9e4:	49 01 c5             	add    %rax,%r13
     9e7:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
     9eb:	8d 50 c6             	lea    -0x3a(%rax),%edx
     9ee:	80 fa f6             	cmp    $0xf6,%dl
     9f1:	0f 82 5f 06 00 00    	jb     1056 <stomptalk::parser::finish_value(char const*)+0x976>
     9f7:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
     9fe:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
     a03:	48 8d 43 04          	lea    0x4(%rbx),%rax
     a07:	48 89 fd             	mov    %rdi,%rbp
     a0a:	48 89 c7             	mov    %rax,%rdi
     a0d:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
     a12:	49 89 f6             	mov    %rsi,%r14
     a15:	e8 46 17 00 00       	call   2160 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
     a1a:	0f 57 c9             	xorps  %xmm1,%xmm1
     a1d:	4c 89 f6             	mov    %r14,%rsi
     a20:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
     a25:	48 89 ef             	mov    %rbp,%rdi
     a28:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
     a2f:	ff ff ff
     a32:	48 01 c1             	add    %rax,%rcx
     a35:	48 03 4c 24 10       	add    0x10(%rsp),%rcx
     a3a:	e9 17 06 00 00       	jmp    1056 <stomptalk::parser::finish_value(char const*)+0x976>
     a3f:	0f b6 0b             	movzbl (%rbx),%ecx
     a42:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     a45:	3c f6                	cmp    $0xf6,%al
     a47:	0f 82 1e 08 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     a4d:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     a54:	00 00 80
     a57:	4c 69 f1 10 27 00 00 	imul   $0x2710,%rcx,%r14
     a5e:	49 81 c6 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r14
     a65:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     a69:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     a6c:	80 fa f6             	cmp    $0xf6,%dl
     a6f:	0f 82 c8 06 00 00    	jb     113d <stomptalk::parser::finish_value(char const*)+0xa5d>
     a75:	48 69 c9 e8 03 00 00 	imul   $0x3e8,%rcx,%rcx
     a7c:	48 81 c1 80 44 ff ff 	add    $0xffffffffffff4480,%rcx
     a83:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
     a87:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     a8b:	41 80 f8 f6          	cmp    $0xf6,%r8b
     a8f:	0f 82 a5 06 00 00    	jb     113a <stomptalk::parser::finish_value(char const*)+0xa5a>
     a95:	48 6b d2 64          	imul   $0x64,%rdx,%rdx
     a99:	48 81 c2 40 ed ff ff 	add    $0xffffffffffffed40,%rdx
     aa0:	44 0f b6 43 03       	movzbl 0x3(%rbx),%r8d
     aa5:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     aa9:	41 80 f9 f6          	cmp    $0xf6,%r9b
     aad:	0f 82 84 06 00 00    	jb     1137 <stomptalk::parser::finish_value(char const*)+0xa57>
     ab3:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
     ab7:	44 0f b6 4b 04       	movzbl 0x4(%rbx),%r9d
     abc:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
     ac0:	49 83 c1 d0          	add    $0xffffffffffffffd0,%r9
     ac4:	41 80 fa f6          	cmp    $0xf6,%r10b
     ac8:	4c 0f 42 c8          	cmovb  %rax,%r9
     acc:	4b 8d 04 41          	lea    (%r9,%r8,2),%rax
     ad0:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
     ad6:	e9 5c 06 00 00       	jmp    1137 <stomptalk::parser::finish_value(char const*)+0xa57>
     adb:	0f b6 03             	movzbl (%rbx),%eax
     ade:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     ae1:	80 f9 f6             	cmp    $0xf6,%cl
     ae4:	0f 82 81 07 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     aea:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     af1:	00 00 80
     af4:	48 ba 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%rdx
     afb:	00 00 00
     afe:	48 0f af c2          	imul   %rdx,%rax
     b02:	49 be 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r14
     b09:	d4 ff ff
     b0c:	49 01 c6             	add    %rax,%r14
     b0f:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     b13:	8d 50 c6             	lea    -0x3a(%rax),%edx
     b16:	80 fa f6             	cmp    $0xf6,%dl
     b19:	0f 82 3d 05 00 00    	jb     105c <stomptalk::parser::finish_value(char const*)+0x97c>
     b1f:	48 ba 00 e8 76 48 17 	movabs $0x174876e800,%rdx
     b26:	00 00 00
     b29:	48 0f af c2          	imul   %rdx,%rax
     b2d:	49 bc 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r12
     b34:	fb ff ff
     b37:	49 01 c4             	add    %rax,%r12
     b3a:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
     b3e:	8d 50 c6             	lea    -0x3a(%rax),%edx
     b41:	80 fa f6             	cmp    $0xf6,%dl
     b44:	0f 82 0f 05 00 00    	jb     1059 <stomptalk::parser::finish_value(char const*)+0x979>
     b4a:	48 ba 00 e4 0b 54 02 	movabs $0x2540be400,%rdx
     b51:	00 00 00
     b54:	48 0f af c2          	imul   %rdx,%rax
     b58:	49 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r13
     b5f:	ff ff ff
     b62:	49 01 c5             	add    %rax,%r13
     b65:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
     b69:	8d 50 c6             	lea    -0x3a(%rax),%edx
     b6c:	80 fa f6             	cmp    $0xf6,%dl
     b6f:	0f 82 e1 04 00 00    	jb     1056 <stomptalk::parser::finish_value(char const*)+0x976>
     b75:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
     b7c:	48 bd 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rbp
     b83:	ff ff ff
     b86:	48 01 c5             	add    %rax,%rbp
     b89:	0f b6 43 04          	movzbl 0x4(%rbx),%eax
     b8d:	8d 50 c6             	lea    -0x3a(%rax),%edx
     b90:	80 fa f6             	cmp    $0xf6,%dl
     b93:	0f 82 ba 04 00 00    	jb     1053 <stomptalk::parser::finish_value(char const*)+0x973>
     b99:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
     ba0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     ba5:	48 8d 43 05          	lea    0x5(%rbx),%rax
     ba9:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
     bae:	48 89 c7             	mov    %rax,%rdi
     bb1:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
     bb6:	49 89 f6             	mov    %rsi,%r14
     bb9:	e8 a2 15 00 00       	call   2160 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
     bbe:	0f 57 c9             	xorps  %xmm1,%xmm1
     bc1:	4c 89 f6             	mov    %r14,%rsi
     bc4:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
     bc9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
     bce:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
     bd5:	ff ff ff
     bd8:	48 01 c1             	add    %rax,%rcx
     bdb:	48 03 4c 24 18       	add    0x18(%rsp),%rcx
     be0:	e9 6e 04 00 00       	jmp    1053 <stomptalk::parser::finish_value(char const*)+0x973>
     be5:	0f b6 03             	movzbl (%rbx),%eax
     be8:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     beb:	80 f9 f6             	cmp    $0xf6,%cl
     bee:	0f 82 77 06 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     bf4:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
     bfb:	49 be 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%r14
     c02:	ff ff ff
     c05:	49 01 c6             	add    %rax,%r14
     c08:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     c0c:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     c0f:	80 f9 f6             	cmp    $0xf6,%cl
     c12:	0f 83 c7 06 00 00    	jae    12df <stomptalk::parser::finish_value(char const*)+0xbff>
     c18:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     c1f:	00 00 80
     c22:	49 01 ce             	add    %rcx,%r14
     c25:	e9 16 05 00 00       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
     c2a:	0f b6 0b             	movzbl (%rbx),%ecx
     c2d:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     c30:	3c f6                	cmp    $0xf6,%al
     c32:	0f 82 33 06 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     c38:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     c3f:	00 00 80
     c42:	4c 6b f1 64          	imul   $0x64,%rcx,%r14
     c46:	49 81 c6 40 ed ff ff 	add    $0xffffffffffffed40,%r14
     c4d:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     c51:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     c54:	80 fa f6             	cmp    $0xf6,%dl
     c57:	0f 82 e0 04 00 00    	jb     113d <stomptalk::parser::finish_value(char const*)+0xa5d>
     c5d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     c61:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
     c65:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     c69:	48 83 c2 d0          	add    $0xffffffffffffffd0,%rdx
     c6d:	41 80 f8 f6          	cmp    $0xf6,%r8b
     c71:	48 0f 42 d0          	cmovb  %rax,%rdx
     c75:	48 8d 04 4a          	lea    (%rdx,%rcx,2),%rax
     c79:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
     c7f:	e9 b9 04 00 00       	jmp    113d <stomptalk::parser::finish_value(char const*)+0xa5d>
     c84:	44 0f b6 23          	movzbl (%rbx),%r12d
     c88:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     c8d:	3c f6                	cmp    $0xf6,%al
     c8f:	0f 82 d6 05 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     c95:	48 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rax
     c9c:	8d 03 00
     c9f:	4c 0f af e0          	imul   %rax,%r12
     ca3:	48 8d 43 01          	lea    0x1(%rbx),%rax
     ca7:	49 89 fe             	mov    %rdi,%r14
     caa:	48 89 c7             	mov    %rax,%rdi
     cad:	49 89 f5             	mov    %rsi,%r13
     cb0:	e8 4b 13 00 00       	call   2000 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     cb5:	0f 57 c9             	xorps  %xmm1,%xmm1
     cb8:	4c 89 ee             	mov    %r13,%rsi
     cbb:	4c 89 f7             	mov    %r14,%rdi
     cbe:	49 be 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%r14
     cc5:	78 55 ff
     cc8:	49 01 c6             	add    %rax,%r14
     ccb:	4d 01 e6             	add    %r12,%r14
     cce:	e9 6d 04 00 00       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
     cd3:	0f b6 0b             	movzbl (%rbx),%ecx
     cd6:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     cd9:	3c f6                	cmp    $0xf6,%al
     cdb:	0f 82 8a 05 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     ce1:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     ce8:	00 00 80
     ceb:	4c 69 f1 e8 03 00 00 	imul   $0x3e8,%rcx,%r14
     cf2:	49 81 c6 80 44 ff ff 	add    $0xffffffffffff4480,%r14
     cf9:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     cfd:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     d00:	80 fa f6             	cmp    $0xf6,%dl
     d03:	0f 82 34 04 00 00    	jb     113d <stomptalk::parser::finish_value(char const*)+0xa5d>
     d09:	48 6b c9 64          	imul   $0x64,%rcx,%rcx
     d0d:	48 81 c1 40 ed ff ff 	add    $0xffffffffffffed40,%rcx
     d14:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
     d18:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     d1c:	41 80 f8 f6          	cmp    $0xf6,%r8b
     d20:	0f 82 14 04 00 00    	jb     113a <stomptalk::parser::finish_value(char const*)+0xa5a>
     d26:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
     d2a:	44 0f b6 43 03       	movzbl 0x3(%rbx),%r8d
     d2f:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     d33:	49 83 c0 d0          	add    $0xffffffffffffffd0,%r8
     d37:	41 80 f9 f6          	cmp    $0xf6,%r9b
     d3b:	4c 0f 42 c0          	cmovb  %rax,%r8
     d3f:	49 8d 04 50          	lea    (%r8,%rdx,2),%rax
     d43:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
     d49:	e9 ec 03 00 00       	jmp    113a <stomptalk::parser::finish_value(char const*)+0xa5a>
     d4e:	49 89 fe             	mov    %rdi,%r14
     d51:	48 89 df             	mov    %rbx,%rdi
     d54:	49 89 f4             	mov    %rsi,%r12
     d57:	e8 04 14 00 00       	call   2160 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
     d5c:	0f 57 c9             	xorps  %xmm1,%xmm1
     d5f:	4c 89 e6             	mov    %r12,%rsi
     d62:	4c 89 f7             	mov    %r14,%rdi
     d65:	49 89 c6             	mov    %rax,%r14
     d68:	e9 d3 03 00 00       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
     d6d:	0f b6 03             	movzbl (%rbx),%eax
     d70:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     d73:	80 f9 f6             	cmp    $0xf6,%cl
     d76:	0f 82 ef 04 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     d7c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     d80:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     d84:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     d87:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
     d8b:	80 fa f6             	cmp    $0xf6,%dl
     d8e:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     d95:	00 00 80
     d98:	48 0f 43 d1          	cmovae %rcx,%rdx
     d9c:	4c 8d 34 42          	lea    (%rdx,%rax,2),%r14
     da0:	49 81 c6 20 fe ff ff 	add    $0xfffffffffffffe20,%r14
     da7:	e9 94 03 00 00       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
     dac:	0f b6 03             	movzbl (%rbx),%eax
     daf:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     db2:	80 f9 f6             	cmp    $0xf6,%cl
     db5:	0f 82 b0 04 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     dbb:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     dc2:	00 00 80
     dc5:	48 ba 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rdx
     dcc:	45 63 01
     dcf:	48 0f af c2          	imul   %rdx,%rax
     dd3:	49 be 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%r14
     dda:	f9 62 bd
     ddd:	49 01 c6             	add    %rax,%r14
     de0:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     de4:	8d 50 c6             	lea    -0x3a(%rax),%edx
     de7:	80 fa f6             	cmp    $0xf6,%dl
     dea:	0f 82 6c 02 00 00    	jb     105c <stomptalk::parser::finish_value(char const*)+0x97c>
     df0:	48 ba 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rdx
     df7:	86 23 00
     dfa:	48 0f af c2          	imul   %rdx,%rax
     dfe:	49 bc 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r12
     e05:	b2 56 f9
     e08:	49 01 c4             	add    %rax,%r12
     e0b:	44 0f b6 6b 02       	movzbl 0x2(%rbx),%r13d
     e10:	41 8d 45 c6          	lea    -0x3a(%r13),%eax
     e14:	3c f6                	cmp    $0xf6,%al
     e16:	0f 82 3d 02 00 00    	jb     1059 <stomptalk::parser::finish_value(char const*)+0x979>
     e1c:	48 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rax
     e23:	8d 03 00
     e26:	4c 0f af e8          	imul   %rax,%r13
     e2a:	48 8d 43 03          	lea    0x3(%rbx),%rax
     e2e:	48 89 fd             	mov    %rdi,%rbp
     e31:	48 89 c7             	mov    %rax,%rdi
     e34:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
     e39:	49 89 f6             	mov    %rsi,%r14
     e3c:	e8 bf 11 00 00       	call   2000 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     e41:	0f 57 c9             	xorps  %xmm1,%xmm1
     e44:	4c 89 f6             	mov    %r14,%rsi
     e47:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
     e4c:	48 89 ef             	mov    %rbp,%rdi
     e4f:	48 b9 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rcx
     e56:	78 55 ff
     e59:	48 01 c1             	add    %rax,%rcx
     e5c:	e9 f5 01 00 00       	jmp    1056 <stomptalk::parser::finish_value(char const*)+0x976>
     e61:	0f b6 0b             	movzbl (%rbx),%ecx
     e64:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     e67:	3c f6                	cmp    $0xf6,%al
     e69:	0f 82 fc 03 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     e6f:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     e76:	00 00 80
     e79:	4c 69 f1 a0 86 01 00 	imul   $0x186a0,%rcx,%r14
     e80:	49 81 c6 00 c2 b6 ff 	add    $0xffffffffffb6c200,%r14
     e87:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     e8b:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     e8e:	80 fa f6             	cmp    $0xf6,%dl
     e91:	0f 82 a6 02 00 00    	jb     113d <stomptalk::parser::finish_value(char const*)+0xa5d>
     e97:	48 69 c9 10 27 00 00 	imul   $0x2710,%rcx,%rcx
     e9e:	48 81 c1 00 ad f8 ff 	add    $0xfffffffffff8ad00,%rcx
     ea5:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
     ea9:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     ead:	41 80 f8 f6          	cmp    $0xf6,%r8b
     eb1:	0f 82 83 02 00 00    	jb     113a <stomptalk::parser::finish_value(char const*)+0xa5a>
     eb7:	48 69 d2 e8 03 00 00 	imul   $0x3e8,%rdx,%rdx
     ebe:	48 81 c2 80 44 ff ff 	add    $0xffffffffffff4480,%rdx
     ec5:	44 0f b6 43 03       	movzbl 0x3(%rbx),%r8d
     eca:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     ece:	41 80 f9 f6          	cmp    $0xf6,%r9b
     ed2:	0f 82 5f 02 00 00    	jb     1137 <stomptalk::parser::finish_value(char const*)+0xa57>
     ed8:	4d 6b c0 64          	imul   $0x64,%r8,%r8
     edc:	49 81 c0 40 ed ff ff 	add    $0xffffffffffffed40,%r8
     ee3:	44 0f b6 4b 04       	movzbl 0x4(%rbx),%r9d
     ee8:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
     eec:	41 80 fa f6          	cmp    $0xf6,%r10b
     ef0:	0f 82 3e 02 00 00    	jb     1134 <stomptalk::parser::finish_value(char const*)+0xa54>
     ef6:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
     efa:	44 0f b6 53 05       	movzbl 0x5(%rbx),%r10d
     eff:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
     f03:	49 83 c2 d0          	add    $0xffffffffffffffd0,%r10
     f07:	41 80 fb f6          	cmp    $0xf6,%r11b
     f0b:	4c 0f 42 d0          	cmovb  %rax,%r10
     f0f:	4b 8d 04 4a          	lea    (%r10,%r9,2),%rax
     f13:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
     f19:	e9 16 02 00 00       	jmp    1134 <stomptalk::parser::finish_value(char const*)+0xa54>
     f1e:	0f b6 03             	movzbl (%rbx),%eax
     f21:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     f24:	80 f9 f6             	cmp    $0xf6,%cl
     f27:	0f 82 3e 03 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
     f2d:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     f34:	00 00 80
     f37:	48 ba 00 a0 72 4e 18 	movabs $0x9184e72a000,%rdx
     f3e:	09 00 00
     f41:	48 0f af c2          	imul   %rdx,%rax
     f45:	49 be 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%r14
     f4c:	4b fe ff
     f4f:	49 01 c6             	add    %rax,%r14
     f52:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     f56:	8d 50 c6             	lea    -0x3a(%rax),%edx
     f59:	80 fa f6             	cmp    $0xf6,%dl
     f5c:	0f 82 fa 00 00 00    	jb     105c <stomptalk::parser::finish_value(char const*)+0x97c>
     f62:	48 ba 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%rdx
     f69:	00 00 00
     f6c:	48 0f af c2          	imul   %rdx,%rax
     f70:	49 bc 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r12
     f77:	d4 ff ff
     f7a:	49 01 c4             	add    %rax,%r12
     f7d:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
     f81:	8d 50 c6             	lea    -0x3a(%rax),%edx
     f84:	80 fa f6             	cmp    $0xf6,%dl
     f87:	0f 82 cc 00 00 00    	jb     1059 <stomptalk::parser::finish_value(char const*)+0x979>
     f8d:	48 ba 00 e8 76 48 17 	movabs $0x174876e800,%rdx
     f94:	00 00 00
     f97:	48 0f af c2          	imul   %rdx,%rax
     f9b:	49 bd 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r13
     fa2:	fb ff ff
     fa5:	49 01 c5             	add    %rax,%r13
     fa8:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
     fac:	8d 50 c6             	lea    -0x3a(%rax),%edx
     faf:	80 fa f6             	cmp    $0xf6,%dl
     fb2:	0f 82 9e 00 00 00    	jb     1056 <stomptalk::parser::finish_value(char const*)+0x976>
     fb8:	48 ba 00 e4 0b 54 02 	movabs $0x2540be400,%rdx
     fbf:	00 00 00
     fc2:	48 0f af c2          	imul   %rdx,%rax
     fc6:	48 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rbp
     fcd:	ff ff ff
     fd0:	48 01 c5             	add    %rax,%rbp
     fd3:	0f b6 43 04          	movzbl 0x4(%rbx),%eax
     fd7:	8d 50 c6             	lea    -0x3a(%rax),%edx
     fda:	80 fa f6             	cmp    $0xf6,%dl
     fdd:	72 74                	jb     1053 <stomptalk::parser::finish_value(char const*)+0x973>
     fdf:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
     fe6:	49 b8 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%r8
     fed:	ff ff ff
     ff0:	49 01 c0             	add    %rax,%r8
     ff3:	0f b6 43 05          	movzbl 0x5(%rbx),%eax
     ff7:	8d 50 c6             	lea    -0x3a(%rax),%edx
     ffa:	80 fa f6             	cmp    $0xf6,%dl
     ffd:	72 51                	jb     1050 <stomptalk::parser::finish_value(char const*)+0x970>
     fff:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
    1006:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    100b:	48 8d 43 06          	lea    0x6(%rbx),%rax
    100f:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    1014:	48 89 c7             	mov    %rax,%rdi
    1017:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
    101c:	49 89 f6             	mov    %rsi,%r14
    101f:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1024:	e8 37 11 00 00       	call   2160 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    1029:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    102e:	0f 57 c9             	xorps  %xmm1,%xmm1
    1031:	4c 89 f6             	mov    %r14,%rsi
    1034:	4c 8b 74 24 08       	mov    0x8(%rsp),%r14
    1039:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    103e:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
    1045:	ff ff ff
    1048:	48 01 c1             	add    %rax,%rcx
    104b:	48 03 4c 24 20       	add    0x20(%rsp),%rcx
    1050:	4c 01 c1             	add    %r8,%rcx
    1053:	48 01 e9             	add    %rbp,%rcx
    1056:	4c 01 e9             	add    %r13,%rcx
    1059:	4c 01 e1             	add    %r12,%rcx
    105c:	49 01 ce             	add    %rcx,%r14
    105f:	e9 dc 00 00 00       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
    1064:	0f b6 0b             	movzbl (%rbx),%ecx
    1067:	8d 41 c6             	lea    -0x3a(%rcx),%eax
    106a:	3c f6                	cmp    $0xf6,%al
    106c:	0f 82 f9 01 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
    1072:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1079:	00 00 80
    107c:	4c 69 f1 40 42 0f 00 	imul   $0xf4240,%rcx,%r14
    1083:	49 81 c6 00 94 23 fd 	add    $0xfffffffffd239400,%r14
    108a:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
    108e:	8d 51 c6             	lea    -0x3a(%rcx),%edx
    1091:	80 fa f6             	cmp    $0xf6,%dl
    1094:	0f 82 a3 00 00 00    	jb     113d <stomptalk::parser::finish_value(char const*)+0xa5d>
    109a:	48 69 c9 a0 86 01 00 	imul   $0x186a0,%rcx,%rcx
    10a1:	48 81 c1 00 c2 b6 ff 	add    $0xffffffffffb6c200,%rcx
    10a8:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
    10ac:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    10b0:	41 80 f8 f6          	cmp    $0xf6,%r8b
    10b4:	0f 82 80 00 00 00    	jb     113a <stomptalk::parser::finish_value(char const*)+0xa5a>
    10ba:	48 69 d2 10 27 00 00 	imul   $0x2710,%rdx,%rdx
    10c1:	48 81 c2 00 ad f8 ff 	add    $0xfffffffffff8ad00,%rdx
    10c8:	44 0f b6 43 03       	movzbl 0x3(%rbx),%r8d
    10cd:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    10d1:	41 80 f9 f6          	cmp    $0xf6,%r9b
    10d5:	72 60                	jb     1137 <stomptalk::parser::finish_value(char const*)+0xa57>
    10d7:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
    10de:	49 81 c0 80 44 ff ff 	add    $0xffffffffffff4480,%r8
    10e5:	44 0f b6 4b 04       	movzbl 0x4(%rbx),%r9d
    10ea:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    10ee:	41 80 fa f6          	cmp    $0xf6,%r10b
    10f2:	72 40                	jb     1134 <stomptalk::parser::finish_value(char const*)+0xa54>
    10f4:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    10f8:	49 81 c1 40 ed ff ff 	add    $0xffffffffffffed40,%r9
    10ff:	44 0f b6 53 05       	movzbl 0x5(%rbx),%r10d
    1104:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    1108:	41 80 fb f6          	cmp    $0xf6,%r11b
    110c:	72 23                	jb     1131 <stomptalk::parser::finish_value(char const*)+0xa51>
    110e:	4f 8d 14 92          	lea    (%r10,%r10,4),%r10
    1112:	44 0f b6 5b 06       	movzbl 0x6(%rbx),%r11d
    1117:	41 8d 6b c6          	lea    -0x3a(%r11),%ebp
    111b:	49 83 c3 d0          	add    $0xffffffffffffffd0,%r11
    111f:	40 80 fd f6          	cmp    $0xf6,%bpl
    1123:	4c 0f 42 d8          	cmovb  %rax,%r11
    1127:	4b 8d 04 53          	lea    (%r11,%r10,2),%rax
    112b:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
    1131:	4c 01 c8             	add    %r9,%rax
    1134:	4c 01 c0             	add    %r8,%rax
    1137:	48 01 d0             	add    %rdx,%rax
    113a:	48 01 c8             	add    %rcx,%rax
    113d:	49 01 c6             	add    %rax,%r14
    1140:	4d 85 f6             	test   %r14,%r14
    1143:	0f 88 22 01 00 00    	js     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
    1149:	4c 3b 77 20          	cmp    0x20(%rdi),%r14
    114d:	76 0f                	jbe    115e <stomptalk::parser::finish_value(char const*)+0xa7e>
    114f:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    1156:	00 00 00
    1159:	e9 17 01 00 00       	jmp    1275 <stomptalk::parser::finish_value(char const*)+0xb95>
    115e:	4c 89 b7 88 00 00 00 	mov    %r14,0x88(%rdi)
    1165:	80 4f 78 01          	orb    $0x1,0x78(%rdi)
    1169:	48 8b 47 38          	mov    0x38(%rdi),%rax
    116d:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
    1174:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    1178:	48 89 97 e8 00 00 00 	mov    %rdx,0xe8(%rdi)
    117f:	48 c1 e1 05          	shl    $0x5,%rcx
    1183:	0f 10 87 c0 00 00 00 	movups 0xc0(%rdi),%xmm0
    118a:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    118e:	48 89 5c 08 10       	mov    %rbx,0x10(%rax,%rcx,1)
    1193:	4c 89 7c 08 18       	mov    %r15,0x18(%rax,%rcx,1)
    1198:	48 ff 87 80 00 00 00 	incq   0x80(%rdi)
    119f:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
    11a6:	0f 11 8f c0 00 00 00 	movups %xmm1,0xc0(%rdi)
    11ad:	b0 01                	mov    $0x1,%al
    11af:	e9 e5 00 00 00       	jmp    1299 <stomptalk::parser::finish_value(char const*)+0xbb9>
    11b4:	0f b6 03             	movzbl (%rbx),%eax
    11b7:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    11ba:	80 f9 f6             	cmp    $0xf6,%cl
    11bd:	0f 82 a8 00 00 00    	jb     126b <stomptalk::parser::finish_value(char const*)+0xb8b>
    11c3:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    11ca:	00 00 80
    11cd:	48 ba 00 e4 0b 54 02 	movabs $0x2540be400,%rdx
    11d4:	00 00 00
    11d7:	48 0f af c2          	imul   %rdx,%rax
    11db:	49 be 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r14
    11e2:	ff ff ff
    11e5:	49 01 c6             	add    %rax,%r14
    11e8:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
    11ec:	8d 50 c6             	lea    -0x3a(%rax),%edx
    11ef:	80 fa f6             	cmp    $0xf6,%dl
    11f2:	0f 82 64 fe ff ff    	jb     105c <stomptalk::parser::finish_value(char const*)+0x97c>
    11f8:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    11ff:	49 bc 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%r12
    1206:	ff ff ff
    1209:	49 01 c4             	add    %rax,%r12
    120c:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
    1210:	8d 50 c6             	lea    -0x3a(%rax),%edx
    1213:	80 fa f6             	cmp    $0xf6,%dl
    1216:	0f 82 3d fe ff ff    	jb     1059 <stomptalk::parser::finish_value(char const*)+0x979>
    121c:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
    1223:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1228:	48 8d 43 03          	lea    0x3(%rbx),%rax
    122c:	49 89 fd             	mov    %rdi,%r13
    122f:	48 89 c7             	mov    %rax,%rdi
    1232:	4c 89 f5             	mov    %r14,%rbp
    1235:	49 89 f6             	mov    %rsi,%r14
    1238:	e8 23 0f 00 00       	call   2160 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    123d:	0f 57 c9             	xorps  %xmm1,%xmm1
    1240:	4c 89 f6             	mov    %r14,%rsi
    1243:	49 89 ee             	mov    %rbp,%r14
    1246:	4c 89 ef             	mov    %r13,%rdi
    1249:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
    1250:	ff ff ff
    1253:	48 01 c1             	add    %rax,%rcx
    1256:	48 03 4c 24 08       	add    0x8(%rsp),%rcx
    125b:	e9 f9 fd ff ff       	jmp    1059 <stomptalk::parser::finish_value(char const*)+0x979>
    1260:	0f b6 03             	movzbl (%rbx),%eax
    1263:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    1266:	80 f9 f6             	cmp    $0xf6,%cl
    1269:	73 3d                	jae    12a8 <stomptalk::parser::finish_value(char const*)+0xbc8>
    126b:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
    1272:	00 00 00
    1275:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
    127c:	48 89 f0             	mov    %rsi,%rax
    127f:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
    1286:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
    128d:	48 ff c6             	inc    %rsi
    1290:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
    1297:	31 c0                	xor    %eax,%eax
    1299:	48 83 c4 28          	add    $0x28,%rsp
    129d:	5b                   	pop    %rbx
    129e:	41 5c                	pop    %r12
    12a0:	41 5d                	pop    %r13
    12a2:	41 5e                	pop    %r14
    12a4:	41 5f                	pop    %r15
    12a6:	5d                   	pop    %rbp
    12a7:	c3                   	ret
    12a8:	4c 69 e8 00 e1 f5 05 	imul   $0x5f5e100,%rax,%r13
    12af:	48 8d 43 01          	lea    0x1(%rbx),%rax
    12b3:	49 89 fe             	mov    %rdi,%r14
    12b6:	48 89 c7             	mov    %rax,%rdi
    12b9:	49 89 f4             	mov    %rsi,%r12
    12bc:	e8 9f 0e 00 00       	call   2160 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    12c1:	0f 57 c9             	xorps  %xmm1,%xmm1
    12c4:	4c 89 e6             	mov    %r12,%rsi
    12c7:	4c 89 f7             	mov    %r14,%rdi
    12ca:	49 be 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%r14
    12d1:	ff ff ff
    12d4:	49 01 c6             	add    %rax,%r14
    12d7:	4d 01 ee             	add    %r13,%r14
    12da:	e9 61 fe ff ff       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
    12df:	4c 69 e8 00 e1 f5 05 	imul   $0x5f5e100,%rax,%r13
    12e6:	48 8d 43 02          	lea    0x2(%rbx),%rax
    12ea:	49 89 fc             	mov    %rdi,%r12
    12ed:	48 89 c7             	mov    %rax,%rdi
    12f0:	4c 89 f5             	mov    %r14,%rbp
    12f3:	49 89 f6             	mov    %rsi,%r14
    12f6:	e8 65 0e 00 00       	call   2160 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    12fb:	0f 57 c9             	xorps  %xmm1,%xmm1
    12fe:	4c 89 f6             	mov    %r14,%rsi
    1301:	49 89 ee             	mov    %rbp,%r14
    1304:	4c 89 e7             	mov    %r12,%rdi
    1307:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
    130e:	ff ff ff
    1311:	48 01 c1             	add    %rax,%rcx
    1314:	4c 01 e9             	add    %r13,%rcx
    1317:	49 01 ce             	add    %rcx,%r14
    131a:	e9 21 fe ff ff       	jmp    1140 <stomptalk::parser::finish_value(char const*)+0xa60>
    131f:	90                   	nop

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
  2e:	0f 83 0e 01 00 00    	jae    142 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x142>
  34:	f6 47 78 01          	testb  $0x1,0x78(%rdi)
  38:	0f 85 aa 00 00 00    	jne    e8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe8>
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
  68:	73 62                	jae    cc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xcc>
  6a:	80 38 0a             	cmpb   $0xa,(%rax)
  6d:	0f 85 85 00 00 00    	jne    f8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf8>
  73:	48 83 c6 02          	add    $0x2,%rsi
  77:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e>
			7a: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  7e:	48 89 47 60          	mov    %rax,0x60(%rdi)
  82:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  89:	00
  8a:	48 39 d6             	cmp    %rdx,%rsi
  8d:	0f 83 af 00 00 00    	jae    142 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x142>
  93:	e9 00 00 00 00       	jmp    98 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x98>
			94: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  98:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
  9f:	48 3b 47 18          	cmp    0x18(%rdi),%rax
  a3:	75 28                	jne    cd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xcd>
  a5:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
  ac:	00 00 00
  af:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  b6:	48 89 f0             	mov    %rsi,%rax
  b9:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  c0:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  c7:	48 ff c6             	inc    %rsi
  ca:	eb 4f                	jmp    11b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11b>
  cc:	c3                   	ret
  cd:	48 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%rax
  d4:	48 3b 47 08          	cmp    0x8(%rdi),%rax
  d8:	75 4c                	jne    126 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x126>
  da:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  e1:	00 00 00
  e4:	48 89 f0             	mov    %rsi,%rax
  e7:	c3                   	ret
  e8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # ef <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xef>
			eb: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
  ef:	48 89 47 60          	mov    %rax,0x60(%rdi)
  f3:	e9 00 00 00 00       	jmp    f8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf8>
			f4: R_X86_64_PLT32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
  f8:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
  ff:	00 00 00
 102:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 109:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 110:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 117:	48 83 c6 02          	add    $0x2,%rsi
 11b:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 122:	48 89 f0             	mov    %rsi,%rax
 125:	c3                   	ret
 126:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 12d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12d>
			129: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 12d:	48 89 47 60          	mov    %rax,0x60(%rdi)
 131:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 138:	00
 139:	48 39 d6             	cmp    %rdx,%rsi
 13c:	0f 82 00 00 00 00    	jb     142 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x142>
			13e: R_X86_64_PLT32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 142:	48 89 f0             	mov    %rsi,%rax
 145:	c3                   	ret

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
  12:	0f 83 3e 07 00 00    	jae    756 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x756>
  18:	49 89 d2             	mov    %rdx,%r10
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
  6e:	4c 8b 14 24          	mov    (%rsp),%r10
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
  a9:	4d 39 d7             	cmp    %r10,%r15
  ac:	0f 83 a7 06 00 00    	jae    759 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x759>
  b2:	40 80 fd 01          	cmp    $0x1,%bpl
  b6:	75 68                	jne    120 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x120>
  b8:	0f b6 06             	movzbl (%rsi),%eax
  bb:	04 a4                	add    $0xa4,%al
  bd:	3c 17                	cmp    $0x17,%al
  bf:	0f 83 51 05 00 00    	jae    616 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x616>
  c5:	0f b6 c0             	movzbl %al,%eax
  c8:	b9 81 00 44 00       	mov    $0x440081,%ecx
  cd:	0f a3 c1             	bt     %eax,%ecx
  d0:	0f 83 40 05 00 00    	jae    616 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x616>
  d6:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
  dd:	48 85 c9             	test   %rcx,%rcx
  e0:	0f 84 31 06 00 00    	je     717 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x717>
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
 128:	0f 94 c1             	sete   %cl
 12b:	0f b6 83 0b 01 00 00 	movzbl 0x10b(%rbx),%eax
 132:	4c 89 d2             	mov    %r10,%rdx
 135:	48 29 f2             	sub    %rsi,%rdx
 138:	48 83 fa 10          	cmp    $0x10,%rdx
 13c:	0f 8c be 00 00 00    	jl     200 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x200>
 142:	49 89 f7             	mov    %rsi,%r15
 145:	31 ed                	xor    %ebp,%ebp
 147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 14e:	00 00
 150:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
 155:	66 0f ef c9          	pxor   %xmm1,%xmm1
 159:	66 0f ef d2          	pxor   %xmm2,%xmm2
 15d:	84 c0                	test   %al,%al
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
 198:	74 31                	je     1cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1cb>
 19a:	f6 c1 01             	test   $0x1,%cl
 19d:	74 2c                	je     1cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1cb>
 19f:	f3 44 0f bc cf       	tzcnt  %edi,%r9d
 1a4:	45 85 c0             	test   %r8d,%r8d
 1a7:	74 10                	je     1b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b9>
 1a9:	f3 45 0f bc d0       	tzcnt  %r8d,%r10d
 1ae:	b1 01                	mov    $0x1,%cl
 1b0:	45 39 d1             	cmp    %r10d,%r9d
 1b3:	4c 8b 14 24          	mov    (%rsp),%r10
 1b7:	73 12                	jae    1cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1cb>
 1b9:	44 89 cd             	mov    %r9d,%ebp
 1bc:	4c 01 fd             	add    %r15,%rbp
 1bf:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
 1c3:	41 21 f9             	and    %edi,%r9d
 1c6:	31 c9                	xor    %ecx,%ecx
 1c8:	44 89 cf             	mov    %r9d,%edi
 1cb:	84 c0                	test   %al,%al
 1cd:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 1d3:	41 0f 45 f9          	cmovne %r9d,%edi
 1d7:	44 09 c7             	or     %r8d,%edi
 1da:	0f 85 a4 01 00 00    	jne    384 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x384>
 1e0:	49 83 c7 10          	add    $0x10,%r15
 1e4:	48 83 c2 f0          	add    $0xfffffffffffffff0,%rdx
 1e8:	48 83 fa 0f          	cmp    $0xf,%rdx
 1ec:	0f 8f 5e ff ff ff    	jg     150 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x150>
 1f2:	eb 11                	jmp    205 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x205>
 1f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
 1fb:	00 00 00 00 00
 200:	31 ed                	xor    %ebp,%ebp
 202:	49 89 f7             	mov    %rsi,%r15
 205:	4c 89 d7             	mov    %r10,%rdi
 208:	4c 29 ff             	sub    %r15,%rdi
 20b:	31 d2                	xor    %edx,%edx
 20d:	48 83 ff 08          	cmp    $0x8,%rdi
 211:	0f 8c fc 00 00 00    	jl     313 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x313>
 217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 21e:	00 00
 220:	4d 8b 17             	mov    (%r15),%r10
 223:	4d 89 d1             	mov    %r10,%r9
 226:	4d 21 f1             	and    %r14,%r9
 229:	4f 8d 04 31          	lea    (%r9,%r14,1),%r8
 22d:	4d 09 d0             	or     %r10,%r8
 230:	49 f7 d0             	not    %r8
 233:	4d 89 cb             	mov    %r9,%r11
 236:	49 bd 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r13
 23d:	0a 0a 0a
 240:	4d 31 eb             	xor    %r13,%r11
 243:	4d 01 f3             	add    %r14,%r11
 246:	4d 09 d3             	or     %r10,%r11
 249:	49 f7 d3             	not    %r11
 24c:	4d 09 c3             	or     %r8,%r11
 24f:	4d 89 c8             	mov    %r9,%r8
 252:	49 bd 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r13
 259:	0d 0d 0d
 25c:	4d 31 e8             	xor    %r13,%r8
 25f:	4d 01 f0             	add    %r14,%r8
 262:	4d 09 d0             	or     %r10,%r8
 265:	49 f7 d0             	not    %r8
 268:	4d 09 d8             	or     %r11,%r8
 26b:	4d 21 e0             	and    %r12,%r8
 26e:	84 c0                	test   %al,%al
 270:	75 1f                	jne    291 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x291>
 272:	4d 89 cb             	mov    %r9,%r11
 275:	49 bd 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%r13
 27c:	5c 5c 5c
 27f:	4d 31 eb             	xor    %r13,%r11
 282:	4d 01 f3             	add    %r14,%r11
 285:	4d 09 d3             	or     %r10,%r11
 288:	49 f7 d3             	not    %r11
 28b:	4d 21 e3             	and    %r12,%r11
 28e:	4d 09 d8             	or     %r11,%r8
 291:	49 bb 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%r11
 298:	3a 3a 3a
 29b:	4d 31 d9             	xor    %r11,%r9
 29e:	4d 01 f1             	add    %r14,%r9
 2a1:	4d 09 d1             	or     %r10,%r9
 2a4:	4d 21 e1             	and    %r12,%r9
 2a7:	4d 89 ca             	mov    %r9,%r10
 2aa:	4d 31 e2             	xor    %r12,%r10
 2ad:	4d 39 e1             	cmp    %r12,%r9
 2b0:	74 3a                	je     2ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2ec>
 2b2:	f6 c1 01             	test   $0x1,%cl
 2b5:	74 35                	je     2ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2ec>
 2b7:	f3 4d 0f bc da       	tzcnt  %r10,%r11
 2bc:	4d 85 c0             	test   %r8,%r8
 2bf:	74 16                	je     2d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2d7>
 2c1:	f3 4d 0f bc e0       	tzcnt  %r8,%r12
 2c6:	b1 01                	mov    $0x1,%cl
 2c8:	45 39 e3             	cmp    %r12d,%r11d
 2cb:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
 2d2:	80 80 80
 2d5:	73 15                	jae    2ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2ec>
 2d7:	41 c1 eb 03          	shr    $0x3,%r11d
 2db:	4d 01 fb             	add    %r15,%r11
 2de:	49 f7 d1             	not    %r9
 2e1:	4d 01 e1             	add    %r12,%r9
 2e4:	4d 21 ca             	and    %r9,%r10
 2e7:	31 c9                	xor    %ecx,%ecx
 2e9:	4c 89 da             	mov    %r11,%rdx
 2ec:	84 c0                	test   %al,%al
 2ee:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 2f4:	4d 0f 44 ca          	cmove  %r10,%r9
 2f8:	4d 09 c1             	or     %r8,%r9
 2fb:	0f 85 a0 00 00 00    	jne    3a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a1>
 301:	49 83 c7 08          	add    $0x8,%r15
 305:	48 83 c7 f8          	add    $0xfffffffffffffff8,%rdi
 309:	48 83 ff 07          	cmp    $0x7,%rdi
 30d:	0f 8f 0d ff ff ff    	jg     220 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x220>
 313:	4c 8b 14 24          	mov    (%rsp),%r10
 317:	31 ff                	xor    %edi,%edi
 319:	4d 39 d7             	cmp    %r10,%r15
 31c:	72 36                	jb     354 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x354>
 31e:	e9 9d 00 00 00       	jmp    3c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c0>
 323:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 32a:	84 00 00 00 00 00
 330:	41 83 f8 3a          	cmp    $0x3a,%r8d
 334:	41 0f 95 c1          	setne  %r9b
 338:	41 83 f8 5c          	cmp    $0x5c,%r8d
 33c:	41 0f 95 c0          	setne  %r8b
 340:	45 20 c8             	and    %r9b,%r8b
 343:	41 08 c0             	or     %al,%r8b
 346:	41 80 f8 01          	cmp    $0x1,%r8b
 34a:	75 74                	jne    3c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c0>
 34c:	49 ff c7             	inc    %r15
 34f:	4d 39 d7             	cmp    %r10,%r15
 352:	74 5e                	je     3b2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b2>
 354:	45 0f b6 07          	movzbl (%r15),%r8d
 358:	41 83 f8 3a          	cmp    $0x3a,%r8d
 35c:	75 12                	jne    370 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x370>
 35e:	f6 c1 01             	test   $0x1,%cl
 361:	74 0d                	je     370 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x370>
 363:	31 c9                	xor    %ecx,%ecx
 365:	4c 89 ff             	mov    %r15,%rdi
 368:	eb e2                	jmp    34c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x34c>
 36a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 370:	41 83 f8 0d          	cmp    $0xd,%r8d
 374:	77 ba                	ja     330 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x330>
 376:	41 b9 01 24 00 00    	mov    $0x2401,%r9d
 37c:	45 0f a3 c1          	bt     %r8d,%r9d
 380:	73 ae                	jae    330 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x330>
 382:	eb 3c                	jmp    3c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c0>
 384:	f3 0f bc c7          	tzcnt  %edi,%eax
 388:	49 01 c7             	add    %rax,%r15
 38b:	48 85 ed             	test   %rbp,%rbp
 38e:	75 43                	jne    3d3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3d3>
 390:	48 89 f5             	mov    %rsi,%rbp
 393:	49 39 f7             	cmp    %rsi,%r15
 396:	0f 85 81 01 00 00    	jne    51d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x51d>
 39c:	e9 13 02 00 00       	jmp    5b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5b4>
 3a1:	f3 49 0f bc c1       	tzcnt  %r9,%rax
 3a6:	c1 e8 03             	shr    $0x3,%eax
 3a9:	49 01 c7             	add    %rax,%r15
 3ac:	4c 8b 14 24          	mov    (%rsp),%r10
 3b0:	eb 15                	jmp    3c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c7>
 3b2:	4d 89 d7             	mov    %r10,%r15
 3b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 3bc:	00 00 00 00
 3c0:	48 85 d2             	test   %rdx,%rdx
 3c3:	48 0f 44 d7          	cmove  %rdi,%rdx
 3c7:	48 85 ed             	test   %rbp,%rbp
 3ca:	48 0f 44 ea          	cmove  %rdx,%rbp
 3ce:	48 85 ed             	test   %rbp,%rbp
 3d1:	74 bd                	je     390 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x390>
 3d3:	49 89 ec             	mov    %rbp,%r12
 3d6:	49 29 f4             	sub    %rsi,%r12
 3d9:	74 66                	je     441 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x441>
 3db:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 3e2:	48 89 c8             	mov    %rcx,%rax
 3e5:	4c 29 e0             	sub    %r12,%rax
 3e8:	0f 82 ed 02 00 00    	jb     6db <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6db>
 3ee:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 3f5:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 3fc:	75 4c                	jne    44a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x44a>
 3fe:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 402:	49 89 f5             	mov    %rsi,%r13
 405:	4c 89 e2             	mov    %r12,%rdx
 408:	e8 00 00 00 00       	call   40d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x40d>
			409: R_X86_64_PLT32	memcpy-0x4
 40d:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 415 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x415>
 414:	00
			411: R_X86_64_PC32	.LCPI48_3-0x4
 415:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 41d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x41d>
 41c:	00
			419: R_X86_64_PC32	.LCPI48_2-0x4
 41d:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 425 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x425>
 424:	00
			421: R_X86_64_PC32	.LCPI48_1-0x4
 425:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 42d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x42d>
 42c:	00
			429: R_X86_64_PC32	.LCPI48_0-0x4
 42d:	4c 89 ee             	mov    %r13,%rsi
 430:	4c 8b 14 24          	mov    (%rsp),%r10
 434:	4c 01 63 48          	add    %r12,0x48(%rbx)
 438:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 43f:	eb 21                	jmp    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 441:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 448:	eb 22                	jmp    46c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46c>
 44a:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 451:	48 85 c0             	test   %rax,%rax
 454:	75 0c                	jne    462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 456:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 45d:	48 89 30             	mov    %rsi,(%rax)
 460:	31 c0                	xor    %eax,%eax
 462:	4c 01 e0             	add    %r12,%rax
 465:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 46c:	48 85 c0             	test   %rax,%rax
 46f:	0f 84 f6 02 00 00    	je     76b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x76b>
 475:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
 47c:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 483:	48 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%rdx
 48a:	66 0f ef c0          	pxor   %xmm0,%xmm0
 48e:	f3 0f 7f 02          	movdqu %xmm0,(%rdx)
 492:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
 499:	48 89 83 c8 00 00 00 	mov    %rax,0xc8(%rbx)
 4a0:	31 d2                	xor    %edx,%edx
 4a2:	48 83 f8 0e          	cmp    $0xe,%rax
 4a6:	75 56                	jne    4fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4fe>
 4a8:	8b 43 78             	mov    0x78(%rbx),%eax
 4ab:	83 e0 01             	and    $0x1,%eax
 4ae:	75 4e                	jne    4fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4fe>
 4b0:	49 83 fc 0e          	cmp    $0xe,%r12
 4b4:	75 21                	jne    4d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d7>
 4b6:	48 3b b3 20 01 00 00 	cmp    0x120(%rbx),%rsi
 4bd:	76 18                	jbe    4d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d7>
 4bf:	f3 0f 6f 46 ff       	movdqu -0x1(%rsi),%xmm0
 4c4:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 4cc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4cc>
 4cb:	00
			4c8: R_X86_64_PC32	.LCPI48_4-0x4
 4cc:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 4d0:	35 ff ff 00 00       	xor    $0xffff,%eax
 4d5:	eb 24                	jmp    4fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4fb>
 4d7:	48 8b 01             	mov    (%rcx),%rax
 4da:	48 ba 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rdx
 4e1:	6e 74 2d
 4e4:	48 31 d0             	xor    %rdx,%rax
 4e7:	48 8b 49 06          	mov    0x6(%rcx),%rcx
 4eb:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
 4f2:	67 74 68
 4f5:	48 31 d1             	xor    %rdx,%rcx
 4f8:	48 09 c1             	or     %rax,%rcx
 4fb:	0f 94 c2             	sete   %dl
 4fe:	88 93 0c 01 00 00    	mov    %dl,0x10c(%rbx)
 504:	48 ff c5             	inc    %rbp
 507:	48 89 ee             	mov    %rbp,%rsi
 50a:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
 511:	80 80 80
 514:	49 39 f7             	cmp    %rsi,%r15
 517:	0f 84 97 00 00 00    	je     5b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5b4>
 51d:	4d 89 fc             	mov    %r15,%r12
 520:	49 29 ec             	sub    %rbp,%r12
 523:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 52a:	48 89 c8             	mov    %rcx,%rax
 52d:	4c 29 e0             	sub    %r12,%rax
 530:	0f 82 a5 01 00 00    	jb     6db <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6db>
 536:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 53d:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 544:	75 3f                	jne    585 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x585>
 546:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 54a:	4c 89 e2             	mov    %r12,%rdx
 54d:	4d 89 d5             	mov    %r10,%r13
 550:	e8 00 00 00 00       	call   555 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x555>
			551: R_X86_64_PLT32	memcpy-0x4
 555:	4d 89 ea             	mov    %r13,%r10
 558:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 560 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x560>
 55f:	00
			55c: R_X86_64_PC32	.LCPI48_3-0x4
 560:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 568 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x568>
 567:	00
			564: R_X86_64_PC32	.LCPI48_2-0x4
 568:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 570 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x570>
 56f:	00
			56c: R_X86_64_PC32	.LCPI48_1-0x4
 570:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 578 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x578>
 577:	00
			574: R_X86_64_PC32	.LCPI48_0-0x4
 578:	4c 01 63 48          	add    %r12,0x48(%rbx)
 57c:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 583:	eb 1b                	jmp    5a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a0>
 585:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 58c:	48 85 c0             	test   %rax,%rax
 58f:	75 0f                	jne    5a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a0>
 591:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 598:	48 89 30             	mov    %rsi,(%rax)
 59b:	31 c0                	xor    %eax,%eax
 59d:	0f 1f 00             	nopl   (%rax)
 5a0:	4c 01 e0             	add    %r12,%rax
 5a3:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 5aa:	49 bc 80 80 80 80 80 	movabs $0x8080808080808080,%r12
 5b1:	80 80 80
 5b4:	4d 39 d7             	cmp    %r10,%r15
 5b7:	0f 84 9c 01 00 00    	je     759 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x759>
 5bd:	41 0f b6 07          	movzbl (%r15),%eax
 5c1:	83 f8 5c             	cmp    $0x5c,%eax
 5c4:	75 7a                	jne    640 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x640>
 5c6:	80 bb 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbx)
 5cd:	75 71                	jne    640 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x640>
 5cf:	40 b5 01             	mov    $0x1,%bpl
 5d2:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 5d9:	0f 85 bd fa ff ff    	jne    9c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c>
 5df:	48 89 df             	mov    %rbx,%rdi
 5e2:	e8 00 00 00 00       	call   5e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e7>
			5e3: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
 5e7:	4c 8b 63 48          	mov    0x48(%rbx),%r12
 5eb:	4c 8b ab d8 00 00 00 	mov    0xd8(%rbx),%r13
 5f2:	4d 85 ed             	test   %r13,%r13
 5f5:	0f 84 65 fa ff ff    	je     60 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x60>
 5fb:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
 602:	4c 89 e7             	mov    %r12,%rdi
 605:	4c 89 ea             	mov    %r13,%rdx
 608:	e8 00 00 00 00       	call   60d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x60d>
			609: R_X86_64_PLT32	memcpy-0x4
 60d:	4c 01 6b 48          	add    %r13,0x48(%rbx)
 611:	e9 4a fa ff ff       	jmp    60 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x60>
 616:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 61d:	00 00 00
 620:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 627:	48 89 f0             	mov    %rsi,%rax
 62a:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 631:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 638:	48 ff c6             	inc    %rsi
 63b:	e9 0f 01 00 00       	jmp    74f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74f>
 640:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 647:	00
 648:	74 63                	je     6ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ad>
 64a:	83 f8 0a             	cmp    $0xa,%eax
 64d:	74 05                	je     654 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x654>
 64f:	83 f8 0d             	cmp    $0xd,%eax
 652:	75 59                	jne    6ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ad>
 654:	4d 89 d6             	mov    %r10,%r14
 657:	48 89 df             	mov    %rbx,%rdi
 65a:	4c 89 fe             	mov    %r15,%rsi
 65d:	e8 00 00 00 00       	call   662 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x662>
			65e: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 662:	84 c0                	test   %al,%al
 664:	0f 84 32 01 00 00    	je     79c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x79c>
 66a:	49 8d 77 01          	lea    0x1(%r15),%rsi
 66e:	41 80 3f 0a          	cmpb   $0xa,(%r15)
 672:	0f 85 2d 01 00 00    	jne    7a5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a5>
 678:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 67f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x67f>
			67b: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 67f:	48 89 43 60          	mov    %rax,0x60(%rbx)
 683:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 68a:	00
 68b:	4c 39 f6             	cmp    %r14,%rsi
 68e:	0f 83 c2 00 00 00    	jae    756 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x756>
 694:	4c 89 f2             	mov    %r14,%rdx
 697:	48 89 df             	mov    %rbx,%rdi
 69a:	48 83 c4 08          	add    $0x8,%rsp
 69e:	5b                   	pop    %rbx
 69f:	41 5c                	pop    %r12
 6a1:	41 5d                	pop    %r13
 6a3:	41 5e                	pop    %r14
 6a5:	41 5f                	pop    %r15
 6a7:	5d                   	pop    %rbp
 6a8:	e9 00 00 00 00       	jmp    6ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ad>
			6a9: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 6ad:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 6b4:	00 00 00
 6b7:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 6be:	4c 89 f8             	mov    %r15,%rax
 6c1:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 6c8:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 6cf:	49 ff c7             	inc    %r15
 6d2:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 6d9:	eb 7e                	jmp    759 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x759>
 6db:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 6e2:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
 6e6:	b8 02 00 00 00       	mov    $0x2,%eax
 6eb:	49 39 fc             	cmp    %rdi,%r12
 6ee:	76 59                	jbe    749 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x749>
 6f0:	48 01 ce             	add    %rcx,%rsi
 6f3:	48 8d 04 16          	lea    (%rsi,%rdx,1),%rax
 6f7:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 6fe:	00 00 00
 701:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 708:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 70f:	48 01 d6             	add    %rdx,%rsi
 712:	48 ff c6             	inc    %rsi
 715:	eb 2d                	jmp    744 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x744>
 717:	b8 02 00 00 00       	mov    $0x2,%eax
 71c:	48 83 bb f8 00 00 00 	cmpq   $0x0,0xf8(%rbx)
 723:	00
 724:	75 23                	jne    749 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x749>
 726:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 72d:	00 00 00
 730:	48 89 f0             	mov    %rsi,%rax
 733:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 73a:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 741:	48 ff c6             	inc    %rsi
 744:	b8 03 00 00 00       	mov    $0x3,%eax
 749:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
 74f:	48 89 b3 28 01 00 00 	mov    %rsi,0x128(%rbx)
 756:	49 89 f7             	mov    %rsi,%r15
 759:	4c 89 f8             	mov    %r15,%rax
 75c:	48 83 c4 08          	add    $0x8,%rsp
 760:	5b                   	pop    %rbx
 761:	41 5c                	pop    %r12
 763:	41 5d                	pop    %r13
 765:	41 5e                	pop    %r14
 767:	41 5f                	pop    %r15
 769:	5d                   	pop    %rbp
 76a:	c3                   	ret
 76b:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 772:	00 00 00
 775:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 77c:	48 89 e8             	mov    %rbp,%rax
 77f:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 786:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 78d:	48 ff c5             	inc    %rbp
 790:	48 89 ab 28 01 00 00 	mov    %rbp,0x128(%rbx)
 797:	49 89 ef             	mov    %rbp,%r15
 79a:	eb bd                	jmp    759 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x759>
 79c:	4c 8b bb 28 01 00 00 	mov    0x128(%rbx),%r15
 7a3:	eb b4                	jmp    759 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x759>
 7a5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7ac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7ac>
			7a8: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 7ac:	48 89 43 60          	mov    %rax,0x60(%rbx)
 7b0:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 7b7:	00
 7b8:	4c 39 f6             	cmp    %r14,%rsi
 7bb:	73 99                	jae    756 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x756>
 7bd:	80 3e 0a             	cmpb   $0xa,(%rsi)
 7c0:	75 2e                	jne    7f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7f0>
 7c2:	4c 89 f2             	mov    %r14,%rdx
 7c5:	49 83 c7 02          	add    $0x2,%r15
 7c9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7d0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7d0>
			7cc: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 7d0:	48 89 43 60          	mov    %rax,0x60(%rbx)
 7d4:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 7db:	00
 7dc:	4d 39 f7             	cmp    %r14,%r15
 7df:	0f 83 74 ff ff ff    	jae    759 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x759>
 7e5:	48 89 df             	mov    %rbx,%rdi
 7e8:	4c 89 fe             	mov    %r15,%rsi
 7eb:	e9 aa fe ff ff       	jmp    69a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x69a>
 7f0:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 7f7:	00 00 00
 7fa:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 801:	48 2b b3 20 01 00 00 	sub    0x120(%rbx),%rsi
 808:	48 89 b3 18 01 00 00 	mov    %rsi,0x118(%rbx)
 80f:	49 83 c7 02          	add    $0x2,%r15
 813:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 81a:	e9 3a ff ff ff       	jmp    759 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x759>

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
