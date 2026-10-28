0000000000000200 <stomptalk::parser::reserve(unsigned long, char const*)>:
     200:	f3 0f 1e fa          	endbr64
     204:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
     208:	48 8b 87 00 01 00 00 	mov    0x100(%rdi),%rax
     20f:	49 89 c8             	mov    %rcx,%r8
     212:	49 29 c0             	sub    %rax,%r8
     215:	4c 39 c6             	cmp    %r8,%rsi
     218:	76 34                	jbe    24e <stomptalk::parser::reserve(unsigned long, char const*)+0x4e>
     21a:	4a 8d 04 02          	lea    (%rdx,%r8,1),%rax
     21e:	48 b9 03 00 00 00 0d 	movabs $0xd00000003,%rcx
     225:	00 00 00
     228:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
     22f:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     236:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     23d:	4a 8d 04 02          	lea    (%rdx,%r8,1),%rax
     241:	48 ff c0             	inc    %rax
     244:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
     24b:	31 c0                	xor    %eax,%eax
     24d:	c3                   	ret
     24e:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
     255:	49 01 c0             	add    %rax,%r8
     258:	4c 29 c1             	sub    %r8,%rcx
     25b:	48 39 ce             	cmp    %rcx,%rsi
     25e:	76 14                	jbe    274 <stomptalk::parser::reserve(unsigned long, char const*)+0x74>
     260:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     267:	00 00 00
     26a:	48 89 97 28 01 00 00 	mov    %rdx,0x128(%rdi)
     271:	31 c0                	xor    %eax,%eax
     273:	c3                   	ret
     274:	48 01 f0             	add    %rsi,%rax
     277:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
     27e:	b0 01                	mov    $0x1,%al
     280:	c3                   	ret
     281:	90                   	nop
     282:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     289:	1f 84 00 00 00 00 00

0000000000000310 <stomptalk::parser::own_metadata()>:
     310:	f3 0f 1e fa          	endbr64
     314:	55                   	push   %rbp
     315:	41 57                	push   %r15
     317:	41 56                	push   %r14
     319:	41 55                	push   %r13
     31b:	41 54                	push   %r12
     31d:	53                   	push   %rbx
     31e:	50                   	push   %rax
     31f:	48 89 fb             	mov    %rdi,%rbx
     322:	4c 8b b7 a8 00 00 00 	mov    0xa8(%rdi),%r14
     329:	4d 85 f6             	test   %r14,%r14
     32c:	74 3f                	je     36d <stomptalk::parser::own_metadata()+0x5d>
     32e:	48 8b 43 40          	mov    0x40(%rbx),%rax
     332:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
     339:	48 89 f1             	mov    %rsi,%rcx
     33c:	48 29 c1             	sub    %rax,%rcx
     33f:	48 3b 4b 10          	cmp    0x10(%rbx),%rcx
     343:	72 32                	jb     377 <stomptalk::parser::own_metadata()+0x67>
     345:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     349:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
     34d:	4c 29 f9             	sub    %r15,%rcx
     350:	49 39 ce             	cmp    %rcx,%r14
     353:	77 12                	ja     367 <stomptalk::parser::own_metadata()+0x57>
     355:	4c 89 ff             	mov    %r15,%rdi
     358:	4c 89 f2             	mov    %r14,%rdx
     35b:	e8 00 00 00 00       	call   360 <stomptalk::parser::own_metadata()+0x50>
			35c: R_X86_64_PLT32	memcpy-0x4
     360:	4c 03 73 48          	add    0x48(%rbx),%r14
     364:	4c 89 f0             	mov    %r14,%rax
     367:	48 89 43 48          	mov    %rax,0x48(%rbx)
     36b:	eb 03                	jmp    370 <stomptalk::parser::own_metadata()+0x60>
     36d:	45 31 ff             	xor    %r15d,%r15d
     370:	4c 89 bb a0 00 00 00 	mov    %r15,0xa0(%rbx)
     377:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     37e:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     385:	0f 83 e5 00 00 00    	jae    470 <stomptalk::parser::own_metadata()+0x160>
     38b:	4d 89 e5             	mov    %r12,%r13
     38e:	49 c1 e5 05          	shl    $0x5,%r13
     392:	eb 28                	jmp    3bc <stomptalk::parser::own_metadata()+0xac>
     394:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     39b:	00 00 00 00 00
     3a0:	45 31 ff             	xor    %r15d,%r15d
     3a3:	4e 89 7c 2d 10       	mov    %r15,0x10(%rbp,%r13,1)
     3a8:	49 ff c4             	inc    %r12
     3ab:	49 83 c5 20          	add    $0x20,%r13
     3af:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     3b6:	0f 83 b4 00 00 00    	jae    470 <stomptalk::parser::own_metadata()+0x160>
     3bc:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     3c0:	4e 8b 7c 2d 08       	mov    0x8(%rbp,%r13,1),%r15
     3c5:	4d 85 ff             	test   %r15,%r15
     3c8:	74 46                	je     410 <stomptalk::parser::own_metadata()+0x100>
     3ca:	4a 8b 74 2d 00       	mov    0x0(%rbp,%r13,1),%rsi
     3cf:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
     3d3:	48 89 f0             	mov    %rsi,%rax
     3d6:	48 29 c8             	sub    %rcx,%rax
     3d9:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     3dd:	72 3f                	jb     41e <stomptalk::parser::own_metadata()+0x10e>
     3df:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     3e3:	48 8b 53 50          	mov    0x50(%rbx),%rdx
     3e7:	4c 29 f2             	sub    %r14,%rdx
     3ea:	48 89 e8             	mov    %rbp,%rax
     3ed:	49 39 d7             	cmp    %rdx,%r15
     3f0:	77 16                	ja     408 <stomptalk::parser::own_metadata()+0xf8>
     3f2:	4c 89 f7             	mov    %r14,%rdi
     3f5:	4c 89 fa             	mov    %r15,%rdx
     3f8:	e8 00 00 00 00       	call   3fd <stomptalk::parser::own_metadata()+0xed>
			3f9: R_X86_64_PLT32	memcpy-0x4
     3fd:	4c 03 7b 48          	add    0x48(%rbx),%r15
     401:	48 8b 43 38          	mov    0x38(%rbx),%rax
     405:	4c 89 f9             	mov    %r15,%rcx
     408:	48 89 4b 48          	mov    %rcx,0x48(%rbx)
     40c:	eb 08                	jmp    416 <stomptalk::parser::own_metadata()+0x106>
     40e:	66 90                	xchg   %ax,%ax
     410:	48 89 e8             	mov    %rbp,%rax
     413:	45 31 f6             	xor    %r14d,%r14d
     416:	4e 89 74 2d 00       	mov    %r14,0x0(%rbp,%r13,1)
     41b:	48 89 c5             	mov    %rax,%rbp
     41e:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
     423:	4d 85 f6             	test   %r14,%r14
     426:	0f 84 74 ff ff ff    	je     3a0 <stomptalk::parser::own_metadata()+0x90>
     42c:	4a 8b 74 2d 10       	mov    0x10(%rbp,%r13,1),%rsi
     431:	48 8b 43 40          	mov    0x40(%rbx),%rax
     435:	48 89 f1             	mov    %rsi,%rcx
     438:	48 29 c1             	sub    %rax,%rcx
     43b:	48 3b 4b 10          	cmp    0x10(%rbx),%rcx
     43f:	0f 82 63 ff ff ff    	jb     3a8 <stomptalk::parser::own_metadata()+0x98>
     445:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     449:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
     44d:	4c 29 f9             	sub    %r15,%rcx
     450:	49 39 ce             	cmp    %rcx,%r14
     453:	77 12                	ja     467 <stomptalk::parser::own_metadata()+0x157>
     455:	4c 89 ff             	mov    %r15,%rdi
     458:	4c 89 f2             	mov    %r14,%rdx
     45b:	e8 00 00 00 00       	call   460 <stomptalk::parser::own_metadata()+0x150>
			45c: R_X86_64_PLT32	memcpy-0x4
     460:	4c 03 73 48          	add    0x48(%rbx),%r14
     464:	4c 89 f0             	mov    %r14,%rax
     467:	48 89 43 48          	mov    %rax,0x48(%rbx)
     46b:	e9 33 ff ff ff       	jmp    3a3 <stomptalk::parser::own_metadata()+0x93>
     470:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
     477:	4d 85 f6             	test   %r14,%r14
     47a:	74 3f                	je     4bb <stomptalk::parser::own_metadata()+0x1ab>
     47c:	48 8b 43 40          	mov    0x40(%rbx),%rax
     480:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     487:	48 89 f1             	mov    %rsi,%rcx
     48a:	48 29 c1             	sub    %rax,%rcx
     48d:	48 3b 4b 10          	cmp    0x10(%rbx),%rcx
     491:	72 32                	jb     4c5 <stomptalk::parser::own_metadata()+0x1b5>
     493:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     497:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
     49b:	4c 29 f9             	sub    %r15,%rcx
     49e:	49 39 ce             	cmp    %rcx,%r14
     4a1:	77 12                	ja     4b5 <stomptalk::parser::own_metadata()+0x1a5>
     4a3:	4c 89 ff             	mov    %r15,%rdi
     4a6:	4c 89 f2             	mov    %r14,%rdx
     4a9:	e8 00 00 00 00       	call   4ae <stomptalk::parser::own_metadata()+0x19e>
			4aa: R_X86_64_PLT32	memcpy-0x4
     4ae:	4c 03 73 48          	add    0x48(%rbx),%r14
     4b2:	4c 89 f0             	mov    %r14,%rax
     4b5:	48 89 43 48          	mov    %rax,0x48(%rbx)
     4b9:	eb 03                	jmp    4be <stomptalk::parser::own_metadata()+0x1ae>
     4bb:	45 31 ff             	xor    %r15d,%r15d
     4be:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
     4c5:	48 83 c4 08          	add    $0x8,%rsp
     4c9:	5b                   	pop    %rbx
     4ca:	41 5c                	pop    %r12
     4cc:	41 5d                	pop    %r13
     4ce:	41 5e                	pop    %r14
     4d0:	41 5f                	pop    %r15
     4d2:	5d                   	pop    %rbp
     4d3:	c3                   	ret
     4d4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     4db:	00 00 00 00 00

00000000000004e0 <stomptalk::parser::own_token()>:
     4e0:	f3 0f 1e fa          	endbr64
     4e4:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     4eb:	75 62                	jne    54f <stomptalk::parser::own_token()+0x6f>
     4ed:	41 57                	push   %r15
     4ef:	41 56                	push   %r14
     4f1:	53                   	push   %rbx
     4f2:	48 89 fb             	mov    %rdi,%rbx
     4f5:	e8 00 00 00 00       	call   4fa <stomptalk::parser::own_token()+0x1a>
			4f6: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     4fa:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     4fe:	48 8b 43 50          	mov    0x50(%rbx),%rax
     502:	4c 8b bb d8 00 00 00 	mov    0xd8(%rbx),%r15
     509:	4c 29 f0             	sub    %r14,%rax
     50c:	49 39 c7             	cmp    %rax,%r15
     50f:	76 06                	jbe    517 <stomptalk::parser::own_token()+0x37>
     511:	48 8b 43 40          	mov    0x40(%rbx),%rax
     515:	eb 21                	jmp    538 <stomptalk::parser::own_token()+0x58>
     517:	4c 89 f0             	mov    %r14,%rax
     51a:	4d 85 ff             	test   %r15,%r15
     51d:	74 16                	je     535 <stomptalk::parser::own_token()+0x55>
     51f:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     526:	4c 89 f7             	mov    %r14,%rdi
     529:	4c 89 fa             	mov    %r15,%rdx
     52c:	e8 00 00 00 00       	call   531 <stomptalk::parser::own_token()+0x51>
			52d: R_X86_64_PLT32	memcpy-0x4
     531:	48 8b 43 48          	mov    0x48(%rbx),%rax
     535:	4c 01 f8             	add    %r15,%rax
     538:	48 89 43 48          	mov    %rax,0x48(%rbx)
     53c:	4c 89 b3 d0 00 00 00 	mov    %r14,0xd0(%rbx)
     543:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     54a:	5b                   	pop    %rbx
     54b:	41 5e                	pop    %r14
     54d:	41 5f                	pop    %r15
     54f:	c3                   	ret

0000000000000550 <stomptalk::parser::append(char const*, unsigned long)>:
     550:	f3 0f 1e fa          	endbr64
     554:	b0 01                	mov    $0x1,%al
     556:	48 85 d2             	test   %rdx,%rdx
     559:	0f 84 dc 00 00 00    	je     63b <stomptalk::parser::append(char const*, unsigned long)+0xeb>
     55f:	4c 8b 47 10          	mov    0x10(%rdi),%r8
     563:	48 8b 8f 00 01 00 00 	mov    0x100(%rdi),%rcx
     56a:	4d 89 c1             	mov    %r8,%r9
     56d:	49 29 c9             	sub    %rcx,%r9
     570:	4c 39 ca             	cmp    %r9,%rdx
     573:	76 34                	jbe    5a9 <stomptalk::parser::append(char const*, unsigned long)+0x59>
     575:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
     579:	48 b9 03 00 00 00 0d 	movabs $0xd00000003,%rcx
     580:	00 00 00
     583:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
     58a:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     591:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     598:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
     59c:	48 ff c0             	inc    %rax
     59f:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
     5a6:	31 c0                	xor    %eax,%eax
     5a8:	c3                   	ret
     5a9:	4c 8b 8f f8 00 00 00 	mov    0xf8(%rdi),%r9
     5b0:	49 01 c9             	add    %rcx,%r9
     5b3:	4d 29 c8             	sub    %r9,%r8
     5b6:	4c 39 c2             	cmp    %r8,%rdx
     5b9:	76 14                	jbe    5cf <stomptalk::parser::append(char const*, unsigned long)+0x7f>
     5bb:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     5c2:	00 00 00
     5c5:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     5cc:	31 c0                	xor    %eax,%eax
     5ce:	c3                   	ret
     5cf:	48 01 d1             	add    %rdx,%rcx
     5d2:	48 89 8f 00 01 00 00 	mov    %rcx,0x100(%rdi)
     5d9:	80 bf 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rdi)
     5e0:	75 1a                	jne    5fc <stomptalk::parser::append(char const*, unsigned long)+0xac>
     5e2:	48 8b 4f 48          	mov    0x48(%rdi),%rcx
     5e6:	4c 8b 47 50          	mov    0x50(%rdi),%r8
     5ea:	49 29 c8             	sub    %rcx,%r8
     5ed:	4c 39 c2             	cmp    %r8,%rdx
     5f0:	76 1d                	jbe    60f <stomptalk::parser::append(char const*, unsigned long)+0xbf>
     5f2:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
     5f6:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
     5fa:	eb 38                	jmp    634 <stomptalk::parser::append(char const*, unsigned long)+0xe4>
     5fc:	48 83 bf d8 00 00 00 	cmpq   $0x0,0xd8(%rdi)
     603:	00
     604:	75 2e                	jne    634 <stomptalk::parser::append(char const*, unsigned long)+0xe4>
     606:	48 89 b7 d0 00 00 00 	mov    %rsi,0xd0(%rdi)
     60d:	eb 25                	jmp    634 <stomptalk::parser::append(char const*, unsigned long)+0xe4>
     60f:	41 56                	push   %r14
     611:	53                   	push   %rbx
     612:	50                   	push   %rax
     613:	49 89 fe             	mov    %rdi,%r14
     616:	48 89 cf             	mov    %rcx,%rdi
     619:	48 89 d3             	mov    %rdx,%rbx
     61c:	e8 00 00 00 00       	call   621 <stomptalk::parser::append(char const*, unsigned long)+0xd1>
			61d: R_X86_64_PLT32	memcpy-0x4
     621:	48 89 da             	mov    %rbx,%rdx
     624:	4c 89 f7             	mov    %r14,%rdi
     627:	b0 01                	mov    $0x1,%al
     629:	49 01 5e 48          	add    %rbx,0x48(%r14)
     62d:	48 83 c4 08          	add    $0x8,%rsp
     631:	5b                   	pop    %rbx
     632:	41 5e                	pop    %r14
     634:	48 01 97 d8 00 00 00 	add    %rdx,0xd8(%rdi)
     63b:	c3                   	ret
     63c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000640 <stomptalk::parser::append(char, char const*)>:
     640:	f3 0f 1e fa          	endbr64
     644:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
     648:	48 8b 87 00 01 00 00 	mov    0x100(%rdi),%rax
     64f:	48 39 c1             	cmp    %rax,%rcx
     652:	75 27                	jne    67b <stomptalk::parser::append(char, char const*)+0x3b>
     654:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     65b:	00 00 00
     65e:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     665:	48 89 d0             	mov    %rdx,%rax
     668:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     66f:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     676:	48 ff c2             	inc    %rdx
     679:	eb 19                	jmp    694 <stomptalk::parser::append(char, char const*)+0x54>
     67b:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
     682:	49 01 c0             	add    %rax,%r8
     685:	4c 39 c1             	cmp    %r8,%rcx
     688:	75 14                	jne    69e <stomptalk::parser::append(char, char const*)+0x5e>
     68a:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     691:	00 00 00
     694:	48 89 97 28 01 00 00 	mov    %rdx,0x128(%rdi)
     69b:	31 c0                	xor    %eax,%eax
     69d:	c3                   	ret
     69e:	55                   	push   %rbp
     69f:	41 57                	push   %r15
     6a1:	41 56                	push   %r14
     6a3:	53                   	push   %rbx
     6a4:	50                   	push   %rax
     6a5:	48 ff c0             	inc    %rax
     6a8:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
     6af:	80 bf 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rdi)
     6b6:	75 14                	jne    6cc <stomptalk::parser::append(char, char const*)+0x8c>
     6b8:	48 8b 47 48          	mov    0x48(%rdi),%rax
     6bc:	48 3b 47 50          	cmp    0x50(%rdi),%rax
     6c0:	72 6e                	jb     730 <stomptalk::parser::append(char, char const*)+0xf0>
     6c2:	48 8b 47 40          	mov    0x40(%rdi),%rax
     6c6:	48 89 47 48          	mov    %rax,0x48(%rdi)
     6ca:	eb 6f                	jmp    73b <stomptalk::parser::append(char, char const*)+0xfb>
     6cc:	89 f5                	mov    %esi,%ebp
     6ce:	49 89 ff             	mov    %rdi,%r15
     6d1:	e8 00 00 00 00       	call   6d6 <stomptalk::parser::append(char, char const*)+0x96>
			6d2: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     6d6:	4c 89 ff             	mov    %r15,%rdi
     6d9:	49 8b 5f 48          	mov    0x48(%r15),%rbx
     6dd:	49 8b 47 50          	mov    0x50(%r15),%rax
     6e1:	4d 8b b7 d8 00 00 00 	mov    0xd8(%r15),%r14
     6e8:	48 29 d8             	sub    %rbx,%rax
     6eb:	49 39 c6             	cmp    %rax,%r14
     6ee:	76 06                	jbe    6f6 <stomptalk::parser::append(char, char const*)+0xb6>
     6f0:	48 8b 47 40          	mov    0x40(%rdi),%rax
     6f4:	eb 24                	jmp    71a <stomptalk::parser::append(char, char const*)+0xda>
     6f6:	48 89 d8             	mov    %rbx,%rax
     6f9:	4d 85 f6             	test   %r14,%r14
     6fc:	74 19                	je     717 <stomptalk::parser::append(char, char const*)+0xd7>
     6fe:	48 8b b7 d0 00 00 00 	mov    0xd0(%rdi),%rsi
     705:	48 89 df             	mov    %rbx,%rdi
     708:	4c 89 f2             	mov    %r14,%rdx
     70b:	e8 00 00 00 00       	call   710 <stomptalk::parser::append(char, char const*)+0xd0>
			70c: R_X86_64_PLT32	memcpy-0x4
     710:	4c 89 ff             	mov    %r15,%rdi
     713:	49 8b 47 48          	mov    0x48(%r15),%rax
     717:	4c 01 f0             	add    %r14,%rax
     71a:	48 89 9f d0 00 00 00 	mov    %rbx,0xd0(%rdi)
     721:	c6 87 0d 01 00 00 01 	movb   $0x1,0x10d(%rdi)
     728:	89 ee                	mov    %ebp,%esi
     72a:	48 3b 47 50          	cmp    0x50(%rdi),%rax
     72e:	73 92                	jae    6c2 <stomptalk::parser::append(char, char const*)+0x82>
     730:	48 8d 48 01          	lea    0x1(%rax),%rcx
     734:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
     738:	40 88 30             	mov    %sil,(%rax)
     73b:	48 ff 87 d8 00 00 00 	incq   0xd8(%rdi)
     742:	b0 01                	mov    $0x1,%al
     744:	48 83 c4 08          	add    $0x8,%rsp
     748:	5b                   	pop    %rbx
     749:	41 5e                	pop    %r14
     74b:	41 5f                	pop    %r15
     74d:	5d                   	pop    %rbp
     74e:	c3                   	ret
     74f:	90                   	nop

0000000000000750 <stomptalk::parser::finish_token()>:
     750:	f3 0f 1e fa          	endbr64
     754:	48 8b 97 d8 00 00 00 	mov    0xd8(%rdi),%rdx
     75b:	48 89 d0             	mov    %rdx,%rax
     75e:	48 85 d2             	test   %rdx,%rdx
     761:	74 07                	je     76a <stomptalk::parser::finish_token()+0x1a>
     763:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
     76a:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     771:	0f 57 c0             	xorps  %xmm0,%xmm0
     774:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
     77b:	c3                   	ret
     77c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a60 <stomptalk::parser::finish_value(char const*)>:
     a60:	f3 0f 1e fa          	endbr64
     a64:	55                   	push   %rbp
     a65:	41 57                	push   %r15
     a67:	41 56                	push   %r14
     a69:	41 55                	push   %r13
     a6b:	41 54                	push   %r12
     a6d:	53                   	push   %rbx
     a6e:	48 83 ec 28          	sub    $0x28,%rsp
     a72:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
     a79:	4c 8b b7 d8 00 00 00 	mov    0xd8(%rdi),%r14
     a80:	4d 85 f6             	test   %r14,%r14
     a83:	49 89 c7             	mov    %rax,%r15
     a86:	4d 0f 44 fe          	cmove  %r14,%r15
     a8a:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     a91:	0f 57 c9             	xorps  %xmm1,%xmm1
     a94:	0f 11 8f d0 00 00 00 	movups %xmm1,0xd0(%rdi)
     a9b:	80 bf 0c 01 00 00 01 	cmpb   $0x1,0x10c(%rdi)
     aa2:	0f 85 71 0a 00 00    	jne    1519 <stomptalk::parser::finish_value(char const*)+0xab9>
     aa8:	49 83 fe 15          	cmp    $0x15,%r14
     aac:	72 2e                	jb     adc <stomptalk::parser::finish_value(char const*)+0x7c>
     aae:	4c 01 f0             	add    %r14,%rax
     ab1:	48 83 c0 ec          	add    $0xffffffffffffffec,%rax
     ab5:	4c 89 f9             	mov    %r15,%rcx
     ab8:	4c 89 f2             	mov    %r14,%rdx
     abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     ac0:	80 39 30             	cmpb   $0x30,(%rcx)
     ac3:	0f 85 56 0b 00 00    	jne    161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     ac9:	48 ff c1             	inc    %rcx
     acc:	48 ff ca             	dec    %rdx
     acf:	48 83 fa 14          	cmp    $0x14,%rdx
     ad3:	77 eb                	ja     ac0 <stomptalk::parser::finish_value(char const*)+0x60>
     ad5:	b9 14 00 00 00       	mov    $0x14,%ecx
     ada:	eb 3e                	jmp    b1a <stomptalk::parser::finish_value(char const*)+0xba>
     adc:	4d 85 f6             	test   %r14,%r14
     adf:	0f 84 3a 0b 00 00    	je     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     ae5:	49 83 fe 13          	cmp    $0x13,%r14
     ae9:	73 2c                	jae    b17 <stomptalk::parser::finish_value(char const*)+0xb7>
     aeb:	49 8d 4e ff          	lea    -0x1(%r14),%rcx
     aef:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # af6 <stomptalk::parser::finish_value(char const*)+0x96>
			af2: R_X86_64_PC32	.rodata-0x4
     af6:	48 63 0c 8a          	movslq (%rdx,%rcx,4),%rcx
     afa:	48 01 d1             	add    %rdx,%rcx
     afd:	3e ff e1             	notrack jmp *%rcx
     b00:	0f b6 18             	movzbl (%rax),%ebx
     b03:	8d 43 c6             	lea    -0x3a(%rbx),%eax
     b06:	3c f6                	cmp    $0xf6,%al
     b08:	0f 82 11 0b 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     b0e:	48 83 c3 d0          	add    $0xffffffffffffffd0,%rbx
     b12:	e9 d9 09 00 00       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
     b17:	4c 89 f1             	mov    %r14,%rcx
     b1a:	48 8d 51 ee          	lea    -0x12(%rcx),%rdx
     b1e:	45 31 e4             	xor    %r12d,%r12d
     b21:	45 31 c0             	xor    %r8d,%r8d
     b24:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     b2b:	00 00 00 00 00
     b30:	46 0f b6 0c 00       	movzbl (%rax,%r8,1),%r9d
     b35:	41 83 c1 d0          	add    $0xffffffd0,%r9d
     b39:	41 83 f9 09          	cmp    $0x9,%r9d
     b3d:	0f 87 dc 0a 00 00    	ja     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     b43:	4f 8d 14 a4          	lea    (%r12,%r12,4),%r10
     b47:	45 89 c9             	mov    %r9d,%r9d
     b4a:	4f 8d 24 51          	lea    (%r9,%r10,2),%r12
     b4e:	49 ff c0             	inc    %r8
     b51:	4c 39 c2             	cmp    %r8,%rdx
     b54:	75 da                	jne    b30 <stomptalk::parser::finish_value(char const*)+0xd0>
     b56:	0f b6 54 08 ee       	movzbl -0x12(%rax,%rcx,1),%edx
     b5b:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     b5f:	41 80 f8 f6          	cmp    $0xf6,%r8b
     b63:	0f 82 b6 0a 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     b69:	48 01 c8             	add    %rcx,%rax
     b6c:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     b73:	00 00 80
     b76:	49 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%r8
     b7d:	45 63 01
     b80:	49 0f af d0          	imul   %r8,%rdx
     b84:	48 bb 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rbx
     b8b:	f9 62 bd
     b8e:	48 01 d3             	add    %rdx,%rbx
     b91:	0f b6 50 ef          	movzbl -0x11(%rax),%edx
     b95:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     b99:	41 80 f8 f6          	cmp    $0xf6,%r8b
     b9d:	72 71                	jb     c10 <stomptalk::parser::finish_value(char const*)+0x1b0>
     b9f:	49 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r8
     ba6:	86 23 00
     ba9:	49 0f af d0          	imul   %r8,%rdx
     bad:	49 bd 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r13
     bb4:	b2 56 f9
     bb7:	49 01 d5             	add    %rdx,%r13
     bba:	0f b6 68 f0          	movzbl -0x10(%rax),%ebp
     bbe:	8d 55 c6             	lea    -0x3a(%rbp),%edx
     bc1:	80 fa f6             	cmp    $0xf6,%dl
     bc4:	72 47                	jb     c0d <stomptalk::parser::finish_value(char const*)+0x1ad>
     bc6:	48 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rcx
     bcd:	8d 03 00
     bd0:	48 0f af e9          	imul   %rcx,%rbp
     bd4:	48 83 c0 f1          	add    $0xfffffffffffffff1,%rax
     bd8:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
     bdd:	48 89 c7             	mov    %rax,%rdi
     be0:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
     be5:	48 89 f3             	mov    %rsi,%rbx
     be8:	e8 d3 17 00 00       	call   23c0 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     bed:	0f 57 c9             	xorps  %xmm1,%xmm1
     bf0:	48 89 de             	mov    %rbx,%rsi
     bf3:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
     bf8:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
     bfd:	48 b9 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rcx
     c04:	78 55 ff
     c07:	48 01 c1             	add    %rax,%rcx
     c0a:	48 01 e9             	add    %rbp,%rcx
     c0d:	4c 01 e9             	add    %r13,%rcx
     c10:	48 01 cb             	add    %rcx,%rbx
     c13:	0f 88 06 0a 00 00    	js     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     c19:	49 83 fc 12          	cmp    $0x12,%r12
     c1d:	0f 87 fc 09 00 00    	ja     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     c23:	75 13                	jne    c38 <stomptalk::parser::finish_value(char const*)+0x1d8>
     c25:	48 b8 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rax
     c2c:	27 33 06
     c2f:	48 39 c3             	cmp    %rax,%rbx
     c32:	0f 87 e7 09 00 00    	ja     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     c38:	48 b8 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rax
     c3f:	b6 e0 0d
     c42:	4c 0f af e0          	imul   %rax,%r12
     c46:	4c 01 e3             	add    %r12,%rbx
     c49:	e9 ab 08 00 00       	jmp    14f9 <stomptalk::parser::finish_value(char const*)+0xa99>
     c4e:	0f b6 08             	movzbl (%rax),%ecx
     c51:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     c54:	80 fa f6             	cmp    $0xf6,%dl
     c57:	0f 82 c2 09 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     c5d:	48 ba 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rdx
     c64:	86 23 00
     c67:	48 0f af ca          	imul   %rdx,%rcx
     c6b:	48 bb 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rbx
     c72:	b2 56 f9
     c75:	48 01 cb             	add    %rcx,%rbx
     c78:	44 0f b6 60 01       	movzbl 0x1(%rax),%r12d
     c7d:	41 8d 4c 24 c6       	lea    -0x3a(%r12),%ecx
     c82:	80 f9 f6             	cmp    $0xf6,%cl
     c85:	0f 82 20 03 00 00    	jb     fab <stomptalk::parser::finish_value(char const*)+0x54b>
     c8b:	48 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rcx
     c92:	8d 03 00
     c95:	4c 0f af e1          	imul   %rcx,%r12
     c99:	48 83 c0 02          	add    $0x2,%rax
     c9d:	49 89 fd             	mov    %rdi,%r13
     ca0:	48 89 c7             	mov    %rax,%rdi
     ca3:	48 89 dd             	mov    %rbx,%rbp
     ca6:	48 89 f3             	mov    %rsi,%rbx
     ca9:	e8 12 17 00 00       	call   23c0 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     cae:	0f 57 c9             	xorps  %xmm1,%xmm1
     cb1:	48 89 de             	mov    %rbx,%rsi
     cb4:	48 89 eb             	mov    %rbp,%rbx
     cb7:	4c 89 ef             	mov    %r13,%rdi
     cba:	48 b9 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rcx
     cc1:	78 55 ff
     cc4:	48 01 c1             	add    %rax,%rcx
     cc7:	4c 01 e1             	add    %r12,%rcx
     cca:	48 01 cb             	add    %rcx,%rbx
     ccd:	e9 1e 08 00 00       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
     cd2:	48 89 fb             	mov    %rdi,%rbx
     cd5:	48 89 c7             	mov    %rax,%rdi
     cd8:	49 89 f4             	mov    %rsi,%r12
     cdb:	e8 e0 16 00 00       	call   23c0 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
     ce0:	e9 12 04 00 00       	jmp    10f7 <stomptalk::parser::finish_value(char const*)+0x697>
     ce5:	0f b6 10             	movzbl (%rax),%edx
     ce8:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
     ceb:	80 f9 f6             	cmp    $0xf6,%cl
     cee:	0f 82 2b 09 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     cf4:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     cfb:	00 00 80
     cfe:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
     d05:	00 00 00
     d08:	49 0f af d0          	imul   %r8,%rdx
     d0c:	48 bb 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%rbx
     d13:	fb ff ff
     d16:	48 01 d3             	add    %rdx,%rbx
     d19:	0f b6 50 01          	movzbl 0x1(%rax),%edx
     d1d:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     d21:	41 80 f8 f6          	cmp    $0xf6,%r8b
     d25:	0f 82 c2 07 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
     d2b:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
     d32:	00 00 00
     d35:	49 0f af d0          	imul   %r8,%rdx
     d39:	49 bc 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r12
     d40:	ff ff ff
     d43:	49 01 d4             	add    %rdx,%r12
     d46:	0f b6 50 02          	movzbl 0x2(%rax),%edx
     d4a:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     d4e:	41 80 f8 f6          	cmp    $0xf6,%r8b
     d52:	0f 82 ad 06 00 00    	jb     1405 <stomptalk::parser::finish_value(char const*)+0x9a5>
     d58:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
     d5f:	49 bd 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%r13
     d66:	ff ff ff
     d69:	49 01 d5             	add    %rdx,%r13
     d6c:	0f b6 50 03          	movzbl 0x3(%rax),%edx
     d70:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     d74:	41 80 f8 f6          	cmp    $0xf6,%r8b
     d78:	0f 82 84 06 00 00    	jb     1402 <stomptalk::parser::finish_value(char const*)+0x9a2>
     d7e:	48 69 ca 00 e1 f5 05 	imul   $0x5f5e100,%rdx,%rcx
     d85:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
     d8a:	48 83 c0 04          	add    $0x4,%rax
     d8e:	48 89 fd             	mov    %rdi,%rbp
     d91:	48 89 c7             	mov    %rax,%rdi
     d94:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
     d99:	48 89 f3             	mov    %rsi,%rbx
     d9c:	e8 7f 17 00 00       	call   2520 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
     da1:	0f 57 c9             	xorps  %xmm1,%xmm1
     da4:	48 89 de             	mov    %rbx,%rsi
     da7:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
     dac:	48 89 ef             	mov    %rbp,%rdi
     daf:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
     db6:	ff ff ff
     db9:	48 01 c1             	add    %rax,%rcx
     dbc:	48 03 4c 24 10       	add    0x10(%rsp),%rcx
     dc1:	e9 3c 06 00 00       	jmp    1402 <stomptalk::parser::finish_value(char const*)+0x9a2>
     dc6:	0f b6 10             	movzbl (%rax),%edx
     dc9:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
     dcc:	80 f9 f6             	cmp    $0xf6,%cl
     dcf:	0f 82 4a 08 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     dd5:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     ddc:	00 00 80
     ddf:	48 69 da 10 27 00 00 	imul   $0x2710,%rdx,%rbx
     de6:	48 81 c3 00 ad f8 ff 	add    $0xfffffffffff8ad00,%rbx
     ded:	0f b6 50 01          	movzbl 0x1(%rax),%edx
     df1:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     df5:	41 80 f8 f6          	cmp    $0xf6,%r8b
     df9:	0f 82 ee 06 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
     dff:	48 69 d2 e8 03 00 00 	imul   $0x3e8,%rdx,%rdx
     e06:	48 81 c2 80 44 ff ff 	add    $0xffffffffffff4480,%rdx
     e0d:	44 0f b6 40 02       	movzbl 0x2(%rax),%r8d
     e12:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     e16:	41 80 f9 f6          	cmp    $0xf6,%r9b
     e1a:	0f 82 ca 06 00 00    	jb     14ea <stomptalk::parser::finish_value(char const*)+0xa8a>
     e20:	4d 6b c0 64          	imul   $0x64,%r8,%r8
     e24:	49 81 c0 40 ed ff ff 	add    $0xffffffffffffed40,%r8
     e2b:	44 0f b6 48 03       	movzbl 0x3(%rax),%r9d
     e30:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
     e34:	41 80 fa f6          	cmp    $0xf6,%r10b
     e38:	0f 82 a9 06 00 00    	jb     14e7 <stomptalk::parser::finish_value(char const*)+0xa87>
     e3e:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
     e42:	0f b6 40 04          	movzbl 0x4(%rax),%eax
     e46:	44 8d 50 c6          	lea    -0x3a(%rax),%r10d
     e4a:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
     e4e:	41 80 fa f6          	cmp    $0xf6,%r10b
     e52:	48 0f 42 c1          	cmovb  %rcx,%rax
     e56:	4a 8d 0c 48          	lea    (%rax,%r9,2),%rcx
     e5a:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
     e61:	e9 81 06 00 00       	jmp    14e7 <stomptalk::parser::finish_value(char const*)+0xa87>
     e66:	0f b6 10             	movzbl (%rax),%edx
     e69:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
     e6c:	80 f9 f6             	cmp    $0xf6,%cl
     e6f:	0f 82 aa 07 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     e75:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     e7c:	00 00 80
     e7f:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
     e86:	00 00 00
     e89:	49 0f af d0          	imul   %r8,%rdx
     e8d:	48 bb 00 00 0d 21 58 	movabs $0xffffd458210d0000,%rbx
     e94:	d4 ff ff
     e97:	48 01 d3             	add    %rdx,%rbx
     e9a:	0f b6 50 01          	movzbl 0x1(%rax),%edx
     e9e:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     ea2:	41 80 f8 f6          	cmp    $0xf6,%r8b
     ea6:	0f 82 41 06 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
     eac:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
     eb3:	00 00 00
     eb6:	49 0f af d0          	imul   %r8,%rdx
     eba:	49 bc 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r12
     ec1:	fb ff ff
     ec4:	49 01 d4             	add    %rdx,%r12
     ec7:	0f b6 50 02          	movzbl 0x2(%rax),%edx
     ecb:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     ecf:	41 80 f8 f6          	cmp    $0xf6,%r8b
     ed3:	0f 82 2c 05 00 00    	jb     1405 <stomptalk::parser::finish_value(char const*)+0x9a5>
     ed9:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
     ee0:	00 00 00
     ee3:	49 0f af d0          	imul   %r8,%rdx
     ee7:	49 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r13
     eee:	ff ff ff
     ef1:	49 01 d5             	add    %rdx,%r13
     ef4:	0f b6 50 03          	movzbl 0x3(%rax),%edx
     ef8:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     efc:	41 80 f8 f6          	cmp    $0xf6,%r8b
     f00:	0f 82 fc 04 00 00    	jb     1402 <stomptalk::parser::finish_value(char const*)+0x9a2>
     f06:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
     f0d:	48 bd 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rbp
     f14:	ff ff ff
     f17:	48 01 d5             	add    %rdx,%rbp
     f1a:	0f b6 50 04          	movzbl 0x4(%rax),%edx
     f1e:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     f22:	41 80 f8 f6          	cmp    $0xf6,%r8b
     f26:	0f 82 d3 04 00 00    	jb     13ff <stomptalk::parser::finish_value(char const*)+0x99f>
     f2c:	48 69 ca 00 e1 f5 05 	imul   $0x5f5e100,%rdx,%rcx
     f33:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
     f38:	48 83 c0 05          	add    $0x5,%rax
     f3c:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
     f41:	48 89 c7             	mov    %rax,%rdi
     f44:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
     f49:	48 89 f3             	mov    %rsi,%rbx
     f4c:	e8 cf 15 00 00       	call   2520 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
     f51:	0f 57 c9             	xorps  %xmm1,%xmm1
     f54:	48 89 de             	mov    %rbx,%rsi
     f57:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
     f5c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
     f61:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
     f68:	ff ff ff
     f6b:	48 01 c1             	add    %rax,%rcx
     f6e:	48 03 4c 24 18       	add    0x18(%rsp),%rcx
     f73:	e9 87 04 00 00       	jmp    13ff <stomptalk::parser::finish_value(char const*)+0x99f>
     f78:	0f b6 08             	movzbl (%rax),%ecx
     f7b:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     f7e:	80 fa f6             	cmp    $0xf6,%dl
     f81:	0f 82 98 06 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     f87:	48 69 c9 00 ca 9a 3b 	imul   $0x3b9aca00,%rcx,%rcx
     f8e:	48 bb 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rbx
     f95:	ff ff ff
     f98:	48 01 cb             	add    %rcx,%rbx
     f9b:	0f b6 48 01          	movzbl 0x1(%rax),%ecx
     f9f:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     fa2:	80 fa f6             	cmp    $0xf6,%dl
     fa5:	0f 83 e7 06 00 00    	jae    1692 <stomptalk::parser::finish_value(char const*)+0xc32>
     fab:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     fb2:	00 00 80
     fb5:	48 01 cb             	add    %rcx,%rbx
     fb8:	e9 33 05 00 00       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
     fbd:	0f b6 10             	movzbl (%rax),%edx
     fc0:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
     fc3:	80 f9 f6             	cmp    $0xf6,%cl
     fc6:	0f 82 53 06 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
     fcc:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     fd3:	00 00 80
     fd6:	48 6b da 64          	imul   $0x64,%rdx,%rbx
     fda:	48 81 c3 40 ed ff ff 	add    $0xffffffffffffed40,%rbx
     fe1:	0f b6 50 01          	movzbl 0x1(%rax),%edx
     fe5:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     fe9:	41 80 f8 f6          	cmp    $0xf6,%r8b
     fed:	0f 82 fa 04 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
     ff3:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
     ff7:	0f b6 40 02          	movzbl 0x2(%rax),%eax
     ffb:	44 8d 40 c6          	lea    -0x3a(%rax),%r8d
     fff:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
    1003:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1007:	48 0f 42 c1          	cmovb  %rcx,%rax
    100b:	48 8d 0c 50          	lea    (%rax,%rdx,2),%rcx
    100f:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
    1016:	e9 d2 04 00 00       	jmp    14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    101b:	44 0f b6 20          	movzbl (%rax),%r12d
    101f:	41 8d 4c 24 c6       	lea    -0x3a(%r12),%ecx
    1024:	80 f9 f6             	cmp    $0xf6,%cl
    1027:	0f 82 f2 05 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    102d:	48 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rcx
    1034:	8d 03 00
    1037:	4c 0f af e1          	imul   %rcx,%r12
    103b:	48 ff c0             	inc    %rax
    103e:	48 89 fb             	mov    %rdi,%rbx
    1041:	48 89 c7             	mov    %rax,%rdi
    1044:	49 89 f5             	mov    %rsi,%r13
    1047:	e8 74 13 00 00       	call   23c0 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
    104c:	0f 57 c9             	xorps  %xmm1,%xmm1
    104f:	4c 89 ee             	mov    %r13,%rsi
    1052:	48 89 df             	mov    %rbx,%rdi
    1055:	48 bb 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rbx
    105c:	78 55 ff
    105f:	48 01 c3             	add    %rax,%rbx
    1062:	4c 01 e3             	add    %r12,%rbx
    1065:	e9 86 04 00 00       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
    106a:	0f b6 10             	movzbl (%rax),%edx
    106d:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
    1070:	80 f9 f6             	cmp    $0xf6,%cl
    1073:	0f 82 a6 05 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    1079:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1080:	00 00 80
    1083:	48 69 da e8 03 00 00 	imul   $0x3e8,%rdx,%rbx
    108a:	48 81 c3 80 44 ff ff 	add    $0xffffffffffff4480,%rbx
    1091:	0f b6 50 01          	movzbl 0x1(%rax),%edx
    1095:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    1099:	41 80 f8 f6          	cmp    $0xf6,%r8b
    109d:	0f 82 4a 04 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    10a3:	48 6b d2 64          	imul   $0x64,%rdx,%rdx
    10a7:	48 81 c2 40 ed ff ff 	add    $0xffffffffffffed40,%rdx
    10ae:	44 0f b6 40 02       	movzbl 0x2(%rax),%r8d
    10b3:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    10b7:	41 80 f9 f6          	cmp    $0xf6,%r9b
    10bb:	0f 82 29 04 00 00    	jb     14ea <stomptalk::parser::finish_value(char const*)+0xa8a>
    10c1:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
    10c5:	0f b6 40 03          	movzbl 0x3(%rax),%eax
    10c9:	44 8d 48 c6          	lea    -0x3a(%rax),%r9d
    10cd:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
    10d1:	41 80 f9 f6          	cmp    $0xf6,%r9b
    10d5:	48 0f 42 c1          	cmovb  %rcx,%rax
    10d9:	4a 8d 0c 40          	lea    (%rax,%r8,2),%rcx
    10dd:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
    10e4:	e9 01 04 00 00       	jmp    14ea <stomptalk::parser::finish_value(char const*)+0xa8a>
    10e9:	48 89 fb             	mov    %rdi,%rbx
    10ec:	48 89 c7             	mov    %rax,%rdi
    10ef:	49 89 f4             	mov    %rsi,%r12
    10f2:	e8 29 14 00 00       	call   2520 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    10f7:	0f 57 c9             	xorps  %xmm1,%xmm1
    10fa:	4c 89 e6             	mov    %r12,%rsi
    10fd:	48 89 df             	mov    %rbx,%rdi
    1100:	48 89 c3             	mov    %rax,%rbx
    1103:	e9 e8 03 00 00       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
    1108:	0f b6 08             	movzbl (%rax),%ecx
    110b:	8d 51 c6             	lea    -0x3a(%rcx),%edx
    110e:	80 fa f6             	cmp    $0xf6,%dl
    1111:	0f 82 08 05 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    1117:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    111b:	0f b6 40 01          	movzbl 0x1(%rax),%eax
    111f:	8d 50 c6             	lea    -0x3a(%rax),%edx
    1122:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
    1126:	80 fa f6             	cmp    $0xf6,%dl
    1129:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1130:	00 00 80
    1133:	48 0f 43 d0          	cmovae %rax,%rdx
    1137:	48 8d 1c 4a          	lea    (%rdx,%rcx,2),%rbx
    113b:	48 81 c3 20 fe ff ff 	add    $0xfffffffffffffe20,%rbx
    1142:	e9 a9 03 00 00       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
    1147:	0f b6 10             	movzbl (%rax),%edx
    114a:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
    114d:	80 f9 f6             	cmp    $0xf6,%cl
    1150:	0f 82 c9 04 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    1156:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    115d:	00 00 80
    1160:	49 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%r8
    1167:	45 63 01
    116a:	49 0f af d0          	imul   %r8,%rdx
    116e:	48 bb 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rbx
    1175:	f9 62 bd
    1178:	48 01 d3             	add    %rdx,%rbx
    117b:	0f b6 50 01          	movzbl 0x1(%rax),%edx
    117f:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    1183:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1187:	0f 82 60 03 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    118d:	49 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r8
    1194:	86 23 00
    1197:	49 0f af d0          	imul   %r8,%rdx
    119b:	49 bc 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r12
    11a2:	b2 56 f9
    11a5:	49 01 d4             	add    %rdx,%r12
    11a8:	44 0f b6 68 02       	movzbl 0x2(%rax),%r13d
    11ad:	41 8d 55 c6          	lea    -0x3a(%r13),%edx
    11b1:	80 fa f6             	cmp    $0xf6,%dl
    11b4:	0f 82 4b 02 00 00    	jb     1405 <stomptalk::parser::finish_value(char const*)+0x9a5>
    11ba:	48 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rcx
    11c1:	8d 03 00
    11c4:	4c 0f af e9          	imul   %rcx,%r13
    11c8:	48 83 c0 03          	add    $0x3,%rax
    11cc:	48 89 fd             	mov    %rdi,%rbp
    11cf:	48 89 c7             	mov    %rax,%rdi
    11d2:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    11d7:	48 89 f3             	mov    %rsi,%rbx
    11da:	e8 e1 11 00 00       	call   23c0 <stomptalk::detail::(anonymous namespace)::antout<long, 15ul>::conv(char const*)>
    11df:	0f 57 c9             	xorps  %xmm1,%xmm1
    11e2:	48 89 de             	mov    %rbx,%rsi
    11e5:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    11ea:	48 89 ef             	mov    %rbp,%rdi
    11ed:	48 b9 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rcx
    11f4:	78 55 ff
    11f7:	48 01 c1             	add    %rax,%rcx
    11fa:	e9 03 02 00 00       	jmp    1402 <stomptalk::parser::finish_value(char const*)+0x9a2>
    11ff:	0f b6 10             	movzbl (%rax),%edx
    1202:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
    1205:	80 f9 f6             	cmp    $0xf6,%cl
    1208:	0f 82 11 04 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    120e:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1215:	00 00 80
    1218:	48 69 da a0 86 01 00 	imul   $0x186a0,%rdx,%rbx
    121f:	48 81 c3 00 c2 b6 ff 	add    $0xffffffffffb6c200,%rbx
    1226:	0f b6 50 01          	movzbl 0x1(%rax),%edx
    122a:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    122e:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1232:	0f 82 b5 02 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    1238:	48 69 d2 10 27 00 00 	imul   $0x2710,%rdx,%rdx
    123f:	48 81 c2 00 ad f8 ff 	add    $0xfffffffffff8ad00,%rdx
    1246:	44 0f b6 40 02       	movzbl 0x2(%rax),%r8d
    124b:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    124f:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1253:	0f 82 91 02 00 00    	jb     14ea <stomptalk::parser::finish_value(char const*)+0xa8a>
    1259:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
    1260:	49 81 c0 80 44 ff ff 	add    $0xffffffffffff4480,%r8
    1267:	44 0f b6 48 03       	movzbl 0x3(%rax),%r9d
    126c:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    1270:	41 80 fa f6          	cmp    $0xf6,%r10b
    1274:	0f 82 6d 02 00 00    	jb     14e7 <stomptalk::parser::finish_value(char const*)+0xa87>
    127a:	4d 6b c9 64          	imul   $0x64,%r9,%r9
    127e:	49 81 c1 40 ed ff ff 	add    $0xffffffffffffed40,%r9
    1285:	44 0f b6 50 04       	movzbl 0x4(%rax),%r10d
    128a:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    128e:	41 80 fb f6          	cmp    $0xf6,%r11b
    1292:	0f 82 4c 02 00 00    	jb     14e4 <stomptalk::parser::finish_value(char const*)+0xa84>
    1298:	4f 8d 14 92          	lea    (%r10,%r10,4),%r10
    129c:	0f b6 40 05          	movzbl 0x5(%rax),%eax
    12a0:	44 8d 58 c6          	lea    -0x3a(%rax),%r11d
    12a4:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
    12a8:	41 80 fb f6          	cmp    $0xf6,%r11b
    12ac:	48 0f 42 c1          	cmovb  %rcx,%rax
    12b0:	4a 8d 0c 50          	lea    (%rax,%r10,2),%rcx
    12b4:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
    12bb:	e9 24 02 00 00       	jmp    14e4 <stomptalk::parser::finish_value(char const*)+0xa84>
    12c0:	0f b6 10             	movzbl (%rax),%edx
    12c3:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
    12c6:	80 f9 f6             	cmp    $0xf6,%cl
    12c9:	0f 82 50 03 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    12cf:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    12d6:	00 00 80
    12d9:	49 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%r8
    12e0:	09 00 00
    12e3:	49 0f af d0          	imul   %r8,%rdx
    12e7:	48 bb 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rbx
    12ee:	4b fe ff
    12f1:	48 01 d3             	add    %rdx,%rbx
    12f4:	0f b6 50 01          	movzbl 0x1(%rax),%edx
    12f8:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    12fc:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1300:	0f 82 e7 01 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    1306:	49 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r8
    130d:	00 00 00
    1310:	49 0f af d0          	imul   %r8,%rdx
    1314:	49 bc 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r12
    131b:	d4 ff ff
    131e:	49 01 d4             	add    %rdx,%r12
    1321:	0f b6 50 02          	movzbl 0x2(%rax),%edx
    1325:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    1329:	41 80 f8 f6          	cmp    $0xf6,%r8b
    132d:	0f 82 d2 00 00 00    	jb     1405 <stomptalk::parser::finish_value(char const*)+0x9a5>
    1333:	49 b8 00 e8 76 48 17 	movabs $0x174876e800,%r8
    133a:	00 00 00
    133d:	49 0f af d0          	imul   %r8,%rdx
    1341:	49 bd 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r13
    1348:	fb ff ff
    134b:	49 01 d5             	add    %rdx,%r13
    134e:	0f b6 50 03          	movzbl 0x3(%rax),%edx
    1352:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    1356:	41 80 f8 f6          	cmp    $0xf6,%r8b
    135a:	0f 82 a2 00 00 00    	jb     1402 <stomptalk::parser::finish_value(char const*)+0x9a2>
    1360:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1367:	00 00 00
    136a:	49 0f af d0          	imul   %r8,%rdx
    136e:	48 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rbp
    1375:	ff ff ff
    1378:	48 01 d5             	add    %rdx,%rbp
    137b:	0f b6 50 04          	movzbl 0x4(%rax),%edx
    137f:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    1383:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1387:	72 76                	jb     13ff <stomptalk::parser::finish_value(char const*)+0x99f>
    1389:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    1390:	49 b9 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%r9
    1397:	ff ff ff
    139a:	49 01 d1             	add    %rdx,%r9
    139d:	0f b6 50 05          	movzbl 0x5(%rax),%edx
    13a1:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    13a5:	41 80 f8 f6          	cmp    $0xf6,%r8b
    13a9:	72 51                	jb     13fc <stomptalk::parser::finish_value(char const*)+0x99c>
    13ab:	48 69 ca 00 e1 f5 05 	imul   $0x5f5e100,%rdx,%rcx
    13b2:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
    13b7:	48 83 c0 06          	add    $0x6,%rax
    13bb:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    13c0:	48 89 c7             	mov    %rax,%rdi
    13c3:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    13c8:	48 89 f3             	mov    %rsi,%rbx
    13cb:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    13d0:	e8 4b 11 00 00       	call   2520 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    13d5:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    13da:	0f 57 c9             	xorps  %xmm1,%xmm1
    13dd:	48 89 de             	mov    %rbx,%rsi
    13e0:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    13e5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    13ea:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
    13f1:	ff ff ff
    13f4:	48 01 c1             	add    %rax,%rcx
    13f7:	48 03 4c 24 20       	add    0x20(%rsp),%rcx
    13fc:	4c 01 c9             	add    %r9,%rcx
    13ff:	48 01 e9             	add    %rbp,%rcx
    1402:	4c 01 e9             	add    %r13,%rcx
    1405:	4c 01 e1             	add    %r12,%rcx
    1408:	e9 e0 00 00 00       	jmp    14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    140d:	0f b6 10             	movzbl (%rax),%edx
    1410:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
    1413:	80 f9 f6             	cmp    $0xf6,%cl
    1416:	0f 82 03 02 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    141c:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1423:	00 00 80
    1426:	48 69 da 40 42 0f 00 	imul   $0xf4240,%rdx,%rbx
    142d:	48 81 c3 00 94 23 fd 	add    $0xfffffffffd239400,%rbx
    1434:	0f b6 50 01          	movzbl 0x1(%rax),%edx
    1438:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    143c:	41 80 f8 f6          	cmp    $0xf6,%r8b
    1440:	0f 82 a7 00 00 00    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    1446:	48 69 d2 a0 86 01 00 	imul   $0x186a0,%rdx,%rdx
    144d:	48 81 c2 00 c2 b6 ff 	add    $0xffffffffffb6c200,%rdx
    1454:	44 0f b6 40 02       	movzbl 0x2(%rax),%r8d
    1459:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    145d:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1461:	0f 82 83 00 00 00    	jb     14ea <stomptalk::parser::finish_value(char const*)+0xa8a>
    1467:	4d 69 c0 10 27 00 00 	imul   $0x2710,%r8,%r8
    146e:	49 81 c0 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r8
    1475:	44 0f b6 48 03       	movzbl 0x3(%rax),%r9d
    147a:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    147e:	41 80 fa f6          	cmp    $0xf6,%r10b
    1482:	72 63                	jb     14e7 <stomptalk::parser::finish_value(char const*)+0xa87>
    1484:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    148b:	49 81 c1 80 44 ff ff 	add    $0xffffffffffff4480,%r9
    1492:	44 0f b6 50 04       	movzbl 0x4(%rax),%r10d
    1497:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    149b:	41 80 fb f6          	cmp    $0xf6,%r11b
    149f:	72 43                	jb     14e4 <stomptalk::parser::finish_value(char const*)+0xa84>
    14a1:	49 89 dc             	mov    %rbx,%r12
    14a4:	4d 6b d2 64          	imul   $0x64,%r10,%r10
    14a8:	49 81 c2 40 ed ff ff 	add    $0xffffffffffffed40,%r10
    14af:	44 0f b6 58 05       	movzbl 0x5(%rax),%r11d
    14b4:	41 8d 5b c6          	lea    -0x3a(%r11),%ebx
    14b8:	80 fb f6             	cmp    $0xf6,%bl
    14bb:	72 21                	jb     14de <stomptalk::parser::finish_value(char const*)+0xa7e>
    14bd:	4f 8d 1c 9b          	lea    (%r11,%r11,4),%r11
    14c1:	0f b6 40 06          	movzbl 0x6(%rax),%eax
    14c5:	8d 58 c6             	lea    -0x3a(%rax),%ebx
    14c8:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
    14cc:	80 fb f6             	cmp    $0xf6,%bl
    14cf:	48 0f 42 c1          	cmovb  %rcx,%rax
    14d3:	4a 8d 0c 58          	lea    (%rax,%r11,2),%rcx
    14d7:	48 81 c1 20 fe ff ff 	add    $0xfffffffffffffe20,%rcx
    14de:	4c 01 d1             	add    %r10,%rcx
    14e1:	4c 89 e3             	mov    %r12,%rbx
    14e4:	4c 01 c9             	add    %r9,%rcx
    14e7:	4c 01 c1             	add    %r8,%rcx
    14ea:	48 01 d1             	add    %rdx,%rcx
    14ed:	48 01 cb             	add    %rcx,%rbx
    14f0:	48 85 db             	test   %rbx,%rbx
    14f3:	0f 88 26 01 00 00    	js     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    14f9:	48 3b 5f 20          	cmp    0x20(%rdi),%rbx
    14fd:	76 0f                	jbe    150e <stomptalk::parser::finish_value(char const*)+0xaae>
    14ff:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    1506:	00 00 00
    1509:	e9 1b 01 00 00       	jmp    1629 <stomptalk::parser::finish_value(char const*)+0xbc9>
    150e:	48 89 9f 88 00 00 00 	mov    %rbx,0x88(%rdi)
    1515:	80 4f 78 01          	orb    $0x1,0x78(%rdi)
    1519:	48 8b 47 38          	mov    0x38(%rdi),%rax
    151d:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
    1524:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    1528:	48 89 97 e8 00 00 00 	mov    %rdx,0xe8(%rdi)
    152f:	48 c1 e1 05          	shl    $0x5,%rcx
    1533:	0f 10 87 c0 00 00 00 	movups 0xc0(%rdi),%xmm0
    153a:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    153e:	4c 89 7c 08 10       	mov    %r15,0x10(%rax,%rcx,1)
    1543:	4c 89 74 08 18       	mov    %r14,0x18(%rax,%rcx,1)
    1548:	48 ff 87 80 00 00 00 	incq   0x80(%rdi)
    154f:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
    1556:	0f 11 8f c0 00 00 00 	movups %xmm1,0xc0(%rdi)
    155d:	b0 01                	mov    $0x1,%al
    155f:	e9 e9 00 00 00       	jmp    164d <stomptalk::parser::finish_value(char const*)+0xbed>
    1564:	0f b6 10             	movzbl (%rax),%edx
    1567:	8d 4a c6             	lea    -0x3a(%rdx),%ecx
    156a:	80 f9 f6             	cmp    $0xf6,%cl
    156d:	0f 82 ac 00 00 00    	jb     161f <stomptalk::parser::finish_value(char const*)+0xbbf>
    1573:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    157a:	00 00 80
    157d:	49 b8 00 e4 0b 54 02 	movabs $0x2540be400,%r8
    1584:	00 00 00
    1587:	49 0f af d0          	imul   %r8,%rdx
    158b:	48 bb 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rbx
    1592:	ff ff ff
    1595:	48 01 d3             	add    %rdx,%rbx
    1598:	0f b6 50 01          	movzbl 0x1(%rax),%edx
    159c:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    15a0:	41 80 f8 f6          	cmp    $0xf6,%r8b
    15a4:	0f 82 43 ff ff ff    	jb     14ed <stomptalk::parser::finish_value(char const*)+0xa8d>
    15aa:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
    15b1:	49 bc 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%r12
    15b8:	ff ff ff
    15bb:	49 01 d4             	add    %rdx,%r12
    15be:	0f b6 50 02          	movzbl 0x2(%rax),%edx
    15c2:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    15c6:	41 80 f8 f6          	cmp    $0xf6,%r8b
    15ca:	0f 82 35 fe ff ff    	jb     1405 <stomptalk::parser::finish_value(char const*)+0x9a5>
    15d0:	48 69 ca 00 e1 f5 05 	imul   $0x5f5e100,%rdx,%rcx
    15d7:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    15dc:	48 83 c0 03          	add    $0x3,%rax
    15e0:	49 89 fd             	mov    %rdi,%r13
    15e3:	48 89 c7             	mov    %rax,%rdi
    15e6:	48 89 dd             	mov    %rbx,%rbp
    15e9:	48 89 f3             	mov    %rsi,%rbx
    15ec:	e8 2f 0f 00 00       	call   2520 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    15f1:	0f 57 c9             	xorps  %xmm1,%xmm1
    15f4:	48 89 de             	mov    %rbx,%rsi
    15f7:	48 89 eb             	mov    %rbp,%rbx
    15fa:	4c 89 ef             	mov    %r13,%rdi
    15fd:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
    1604:	ff ff ff
    1607:	48 01 c1             	add    %rax,%rcx
    160a:	48 03 4c 24 08       	add    0x8(%rsp),%rcx
    160f:	e9 f1 fd ff ff       	jmp    1405 <stomptalk::parser::finish_value(char const*)+0x9a5>
    1614:	0f b6 08             	movzbl (%rax),%ecx
    1617:	8d 51 c6             	lea    -0x3a(%rcx),%edx
    161a:	80 fa f6             	cmp    $0xf6,%dl
    161d:	73 3d                	jae    165c <stomptalk::parser::finish_value(char const*)+0xbfc>
    161f:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
    1626:	00 00 00
    1629:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
    1630:	48 89 f0             	mov    %rsi,%rax
    1633:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
    163a:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
    1641:	48 ff c6             	inc    %rsi
    1644:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
    164b:	31 c0                	xor    %eax,%eax
    164d:	48 83 c4 28          	add    $0x28,%rsp
    1651:	5b                   	pop    %rbx
    1652:	41 5c                	pop    %r12
    1654:	41 5d                	pop    %r13
    1656:	41 5e                	pop    %r14
    1658:	41 5f                	pop    %r15
    165a:	5d                   	pop    %rbp
    165b:	c3                   	ret
    165c:	4c 69 e9 00 e1 f5 05 	imul   $0x5f5e100,%rcx,%r13
    1663:	48 ff c0             	inc    %rax
    1666:	48 89 fb             	mov    %rdi,%rbx
    1669:	48 89 c7             	mov    %rax,%rdi
    166c:	49 89 f4             	mov    %rsi,%r12
    166f:	e8 ac 0e 00 00       	call   2520 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    1674:	0f 57 c9             	xorps  %xmm1,%xmm1
    1677:	4c 89 e6             	mov    %r12,%rsi
    167a:	48 89 df             	mov    %rbx,%rdi
    167d:	48 bb 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rbx
    1684:	ff ff ff
    1687:	48 01 c3             	add    %rax,%rbx
    168a:	4c 01 eb             	add    %r13,%rbx
    168d:	e9 5e fe ff ff       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
    1692:	4c 69 e9 00 e1 f5 05 	imul   $0x5f5e100,%rcx,%r13
    1699:	48 83 c0 02          	add    $0x2,%rax
    169d:	49 89 fc             	mov    %rdi,%r12
    16a0:	48 89 c7             	mov    %rax,%rdi
    16a3:	48 89 dd             	mov    %rbx,%rbp
    16a6:	48 89 f3             	mov    %rsi,%rbx
    16a9:	e8 72 0e 00 00       	call   2520 <stomptalk::detail::(anonymous namespace)::antout<long, 8ul>::conv(char const*)>
    16ae:	0f 57 c9             	xorps  %xmm1,%xmm1
    16b1:	48 89 de             	mov    %rbx,%rsi
    16b4:	48 89 eb             	mov    %rbp,%rbx
    16b7:	4c 89 e7             	mov    %r12,%rdi
    16ba:	48 b9 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rcx
    16c1:	ff ff ff
    16c4:	48 01 c1             	add    %rax,%rcx
    16c7:	4c 01 e9             	add    %r13,%rcx
    16ca:	48 01 cb             	add    %rcx,%rbx
    16cd:	e9 1e fe ff ff       	jmp    14f0 <stomptalk::parser::finish_value(char const*)+0xa90>
    16d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    16d9:	1f 84 00 00 00 00 00

0000000000000000 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 89 f0             	mov    %rsi,%rax
   7:	8b 8f 10 01 00 00    	mov    0x110(%rdi),%ecx
   d:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 14 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x14>
			10: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
  14:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 1b <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1b>
			17: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
  1b:	48 89 c6             	mov    %rax,%rsi
  1e:	48 39 d0             	cmp    %rdx,%rax
  21:	0f 83 5f 01 00 00    	jae    186 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x186>
  27:	48 89 d0             	mov    %rdx,%rax
  2a:	48 29 f0             	sub    %rsi,%rax
  2d:	45 31 c0             	xor    %r8d,%r8d
  30:	46 0f b6 1c 06       	movzbl (%rsi,%r8,1),%r11d
  35:	41 83 fb 0a          	cmp    $0xa,%r11d
  39:	75 15                	jne    50 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x50>
  3b:	49 ff c0             	inc    %r8
  3e:	4c 39 c0             	cmp    %r8,%rax
  41:	75 ed                	jne    30 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x30>
  43:	e9 91 00 00 00       	jmp    d9 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd9>
  48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4f:	00
  50:	41 83 fb 0d          	cmp    $0xd,%r11d
  54:	75 47                	jne    9d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x9d>
  56:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
  5a:	48 ff c0             	inc    %rax
  5d:	4c 89 4f 60          	mov    %r9,0x60(%rdi)
  61:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  68:	00
  69:	48 39 d0             	cmp    %rdx,%rax
  6c:	73 6e                	jae    dc <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xdc>
  6e:	85 c9                	test   %ecx,%ecx
  70:	75 6a                	jne    dc <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xdc>
  72:	80 38 0a             	cmpb   $0xa,(%rax)
  75:	0f 85 0f 01 00 00    	jne    18a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x18a>
  7b:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
  7f:	48 83 c0 02          	add    $0x2,%rax
  83:	4c 89 57 60          	mov    %r10,0x60(%rdi)
  87:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  8e:	00
  8f:	48 39 d0             	cmp    %rdx,%rax
  92:	72 87                	jb     1b <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1b>
  94:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
  98:	48 83 c0 02          	add    $0x2,%rax
  9c:	c3                   	ret
  9d:	41 80 c3 a5          	add    $0xa5,%r11b
  a1:	41 80 fb e5          	cmp    $0xe5,%r11b
  a5:	77 36                	ja     dd <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xdd>
  a7:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
  ae:	00 00 00
  b1:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  b8:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
  bc:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  c3:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  ca:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
  ce:	48 ff c0             	inc    %rax
  d1:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
  d8:	c3                   	ret
  d9:	48 89 d0             	mov    %rdx,%rax
  dc:	c3                   	ret
  dd:	4c 01 c6             	add    %r8,%rsi
  e0:	48 8b 87 e0 00 00 00 	mov    0xe0(%rdi),%rax
  e7:	48 3b 07             	cmp    (%rdi),%rax
  ea:	75 0e                	jne    fa <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xfa>
  ec:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  f3:	00 00 00
  f6:	48 89 f0             	mov    %rsi,%rax
  f9:	c3                   	ret
  fa:	48 8b 47 48          	mov    0x48(%rdi),%rax
  fe:	4c 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%r8
 105:	48 2b 47 40          	sub    0x40(%rdi),%rax
 109:	0f 57 c0             	xorps  %xmm0,%xmm0
 10c:	0f 11 87 b0 00 00 00 	movups %xmm0,0xb0(%rdi)
 113:	0f 11 87 a0 00 00 00 	movups %xmm0,0xa0(%rdi)
 11a:	0f 11 87 90 00 00 00 	movups %xmm0,0x90(%rdi)
 121:	0f 11 87 80 00 00 00 	movups %xmm0,0x80(%rdi)
 128:	0f 11 47 70          	movups %xmm0,0x70(%rdi)
 12c:	c7 87 09 01 00 00 00 	movl   $0x0,0x109(%rdi)
 133:	00 00 00
 136:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
 13d:	0f 11 87 c0 00 00 00 	movups %xmm0,0xc0(%rdi)
 144:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
 14b:	c6 87 08 01 00 00 01 	movb   $0x1,0x108(%rdi)
 152:	48 c7 87 00 01 00 00 	movq   $0x0,0x100(%rdi)
 159:	00 00 00 00
 15d:	48 89 87 f8 00 00 00 	mov    %rax,0xf8(%rdi)
 164:	4c 89 87 f0 00 00 00 	mov    %r8,0xf0(%rdi)
 16b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 172 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x172>
			16e: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
 172:	48 89 47 60          	mov    %rax,0x60(%rdi)
 176:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 17d:	00
 17e:	85 c9                	test   %ecx,%ecx
 180:	0f 84 00 00 00 00    	je     186 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x186>
			182: R_X86_64_PLT32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
 186:	48 89 f0             	mov    %rsi,%rax
 189:	c3                   	ret
 18a:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 191:	00 00 00
 194:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 19b:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
 19f:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 1a6:	48 ff c0             	inc    %rax
 1a9:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 1b0:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
 1b4:	48 83 c0 02          	add    $0x2,%rax
 1b8:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 1bf:	c3                   	ret

0000000000000000 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 54                	push   %r12
   a:	53                   	push   %rbx
   b:	50                   	push   %rax
   c:	48 89 f3             	mov    %rsi,%rbx
   f:	48 39 d6             	cmp    %rdx,%rsi
  12:	0f 83 00 01 00 00    	jae    118 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x118>
  18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  1f:	00
  20:	0f b6 03             	movzbl (%rbx),%eax
  23:	04 bf                	add    $0xbf,%al
  25:	3c 19                	cmp    $0x19,%al
  27:	77 0b                	ja     34 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x34>
  29:	48 ff c3             	inc    %rbx
  2c:	48 39 d3             	cmp    %rdx,%rbx
  2f:	75 ef                	jne    20 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20>
  31:	48 89 d3             	mov    %rdx,%rbx
  34:	49 89 de             	mov    %rbx,%r14
  37:	49 29 f6             	sub    %rsi,%r14
  3a:	0f 84 d5 00 00 00    	je     115 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x115>
  40:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
  44:	48 8b 87 00 01 00 00 	mov    0x100(%rdi),%rax
  4b:	49 89 c8             	mov    %rcx,%r8
  4e:	49 29 c0             	sub    %rax,%r8
  51:	4d 39 c6             	cmp    %r8,%r14
  54:	76 35                	jbe    8b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x8b>
  56:	4a 8d 04 06          	lea    (%rsi,%r8,1),%rax
  5a:	48 b9 03 00 00 00 0d 	movabs $0xd00000003,%rcx
  61:	00 00 00
  64:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
  6b:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  72:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  79:	4c 01 c6             	add    %r8,%rsi
  7c:	48 ff c6             	inc    %rsi
  7f:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
  86:	e9 53 04 00 00       	jmp    4de <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4de>
  8b:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
  92:	49 01 c0             	add    %rax,%r8
  95:	4c 29 c1             	sub    %r8,%rcx
  98:	49 39 ce             	cmp    %rcx,%r14
  9b:	76 16                	jbe    b3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xb3>
  9d:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  a4:	00 00 00
  a7:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
  ae:	e9 2b 04 00 00       	jmp    4de <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4de>
  b3:	4c 01 f0             	add    %r14,%rax
  b6:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
  bd:	80 bf 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rdi)
  c4:	75 1a                	jne    e0 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xe0>
  c6:	48 8b 47 48          	mov    0x48(%rdi),%rax
  ca:	48 8b 4f 50          	mov    0x50(%rdi),%rcx
  ce:	48 29 c1             	sub    %rax,%rcx
  d1:	49 39 ce             	cmp    %rcx,%r14
  d4:	76 1d                	jbe    f3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0xf3>
  d6:	48 8b 47 40          	mov    0x40(%rdi),%rax
  da:	48 89 47 48          	mov    %rax,0x48(%rdi)
  de:	eb 2e                	jmp    10e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10e>
  e0:	48 83 bf d8 00 00 00 	cmpq   $0x0,0xd8(%rdi)
  e7:	00
  e8:	75 24                	jne    10e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10e>
  ea:	48 89 b7 d0 00 00 00 	mov    %rsi,0xd0(%rdi)
  f1:	eb 1b                	jmp    10e <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x10e>
  f3:	49 89 ff             	mov    %rdi,%r15
  f6:	48 89 c7             	mov    %rax,%rdi
  f9:	49 89 d4             	mov    %rdx,%r12
  fc:	4c 89 f2             	mov    %r14,%rdx
  ff:	e8 00 00 00 00       	call   104 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x104>
			100: R_X86_64_PLT32	memcpy-0x4
 104:	4c 89 e2             	mov    %r12,%rdx
 107:	4c 89 ff             	mov    %r15,%rdi
 10a:	4d 01 77 48          	add    %r14,0x48(%r15)
 10e:	4c 01 b7 d8 00 00 00 	add    %r14,0xd8(%rdi)
 115:	48 89 de             	mov    %rbx,%rsi
 118:	48 39 d3             	cmp    %rdx,%rbx
 11b:	0f 84 ba 03 00 00    	je     4db <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4db>
 121:	0f b6 03             	movzbl (%rbx),%eax
 124:	83 f8 0a             	cmp    $0xa,%eax
 127:	74 09                	je     132 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x132>
 129:	83 f8 0d             	cmp    $0xd,%eax
 12c:	0f 85 84 00 00 00    	jne    1b6 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1b6>
 132:	48 8b b7 d0 00 00 00 	mov    0xd0(%rdi),%rsi
 139:	4c 8b 87 d8 00 00 00 	mov    0xd8(%rdi),%r8
 140:	4d 85 c0             	test   %r8,%r8
 143:	48 89 f1             	mov    %rsi,%rcx
 146:	49 0f 44 c8          	cmove  %r8,%rcx
 14a:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
 151:	0f 57 c0             	xorps  %xmm0,%xmm0
 154:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
 15b:	48 89 8f a0 00 00 00 	mov    %rcx,0xa0(%rdi)
 162:	4c 89 87 a8 00 00 00 	mov    %r8,0xa8(%rdi)
 169:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
 170:	49 83 c0 fd          	add    $0xfffffffffffffffd,%r8
 174:	49 83 f8 08          	cmp    $0x8,%r8
 178:	0f 87 9a 02 00 00    	ja     418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 17e:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 185 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x185>
			181: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_-0x4
 185:	4f 63 04 81          	movslq (%r9,%r8,4),%r8
 189:	4d 01 c8             	add    %r9,%r8
 18c:	3e 41 ff e0          	notrack jmp *%r8
 190:	0f b7 0e             	movzwl (%rsi),%ecx
 193:	81 f1 41 43 00 00    	xor    $0x4341,%ecx
 199:	0f b6 76 02          	movzbl 0x2(%rsi),%esi
 19d:	83 f6 4b             	xor    $0x4b,%esi
 1a0:	45 31 c0             	xor    %r8d,%r8d
 1a3:	66 09 ce             	or     %cx,%si
 1a6:	41 0f 94 c0          	sete   %r8b
 1aa:	4b 8d 0c 40          	lea    (%r8,%r8,2),%rcx
 1ae:	48 ff c9             	dec    %rcx
 1b1:	e9 62 02 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 1b6:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
 1bd:	00 00 00
 1c0:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 1c7:	48 2b b7 20 01 00 00 	sub    0x120(%rdi),%rsi
 1ce:	48 89 b7 18 01 00 00 	mov    %rsi,0x118(%rdi)
 1d5:	48 ff c3             	inc    %rbx
 1d8:	e9 f7 02 00 00       	jmp    4d4 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4d4>
 1dd:	48 b9 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rcx
 1e4:	43 54 45
 1e7:	48 33 0e             	xor    (%rsi),%rcx
 1ea:	44 0f b6 46 08       	movzbl 0x8(%rsi),%r8d
 1ef:	49 83 f0 44          	xor    $0x44,%r8
 1f3:	49 09 c8             	or     %rcx,%r8
 1f6:	0f 84 5d 01 00 00    	je     359 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x359>
 1fc:	49 b8 53 55 42 53 43 	movabs $0x4249524353425553,%r8
 203:	52 49 42
 206:	4c 33 06             	xor    (%rsi),%r8
 209:	0f b6 76 08          	movzbl 0x8(%rsi),%esi
 20d:	48 83 f6 45          	xor    $0x45,%rsi
 211:	31 c9                	xor    %ecx,%ecx
 213:	4c 09 c6             	or     %r8,%rsi
 216:	0f 95 c1             	setne  %cl
 219:	48 f7 d9             	neg    %rcx
 21c:	48 83 c9 0e          	or     $0xe,%rcx
 220:	e9 f3 01 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 225:	81 3e 4e 41 43 4b    	cmpl   $0x4b43414e,(%rsi)
 22b:	0f 84 32 01 00 00    	je     363 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x363>
 231:	31 c9                	xor    %ecx,%ecx
 233:	81 3e 53 45 4e 44    	cmpl   $0x444e4553,(%rsi)
 239:	0f 95 c1             	setne  %cl
 23c:	48 f7 d9             	neg    %rcx
 23f:	48 83 c9 0c          	or     $0xc,%rcx
 243:	e9 d0 01 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 248:	48 b9 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rcx
 24f:	4e 4e 45
 252:	48 33 0e             	xor    (%rsi),%rcx
 255:	0f b7 76 08          	movzwl 0x8(%rsi),%esi
 259:	48 81 f6 43 54 00 00 	xor    $0x5443,%rsi
 260:	45 31 c0             	xor    %r8d,%r8d
 263:	48 09 ce             	or     %rcx,%rsi
 266:	41 0f 94 c0          	sete   %r8b
 26a:	4a 8d 0c c5 ff ff ff 	lea    -0x1(,%r8,8),%rcx
 271:	ff
 272:	e9 a1 01 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 277:	49 b8 55 4e 53 55 42 	movabs $0x5243534255534e55,%r8
 27e:	53 43 52
 281:	4c 33 06             	xor    (%rsi),%r8
 284:	49 b9 55 42 53 43 52 	movabs $0x4542495243534255,%r9
 28b:	49 42 45
 28e:	4c 33 4e 03          	xor    0x3(%rsi),%r9
 292:	31 c9                	xor    %ecx,%ecx
 294:	4d 09 c1             	or     %r8,%r9
 297:	0f 95 c1             	setne  %cl
 29a:	48 f7 d9             	neg    %rcx
 29d:	48 83 c9 0f          	or     $0xf,%rcx
 2a1:	e9 72 01 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 2a6:	44 0f b6 06          	movzbl (%rsi),%r8d
 2aa:	41 83 c0 bf          	add    $0xffffffbf,%r8d
 2ae:	41 83 f8 12          	cmp    $0x12,%r8d
 2b2:	0f 87 60 01 00 00    	ja     418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 2b8:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 2bf <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2bf>
			2bb: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_+0x20
 2bf:	4f 63 04 81          	movslq (%r9,%r8,4),%r8
 2c3:	4d 01 c8             	add    %r9,%r8
 2c6:	3e 41 ff e0          	notrack jmp *%r8
 2ca:	b9 41 42 4f 52       	mov    $0x524f4241,%ecx
 2cf:	33 0e                	xor    (%rsi),%ecx
 2d1:	0f b6 76 04          	movzbl 0x4(%rsi),%esi
 2d5:	83 f6 54             	xor    $0x54,%esi
 2d8:	45 31 c0             	xor    %r8d,%r8d
 2db:	09 ce                	or     %ecx,%esi
 2dd:	41 0f 94 c0          	sete   %r8b
 2e1:	4a 8d 0c 45 ff ff ff 	lea    -0x1(,%r8,2),%rcx
 2e8:	ff
 2e9:	e9 2a 01 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 2ee:	b9 43 4f 4d 4d       	mov    $0x4d4d4f43,%ecx
 2f3:	33 0e                	xor    (%rsi),%ecx
 2f5:	0f b7 76 04          	movzwl 0x4(%rsi),%esi
 2f9:	81 f6 49 54 00 00    	xor    $0x5449,%esi
 2ff:	45 31 c0             	xor    %r8d,%r8d
 302:	09 ce                	or     %ecx,%esi
 304:	41 0f 94 c0          	sete   %r8b
 308:	4b 8d 0c 80          	lea    (%r8,%r8,4),%rcx
 30c:	48 ff c9             	dec    %rcx
 30f:	e9 04 01 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 314:	44 0f b6 06          	movzbl (%rsi),%r8d
 318:	41 83 f8 52          	cmp    $0x52,%r8d
 31c:	74 76                	je     394 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x394>
 31e:	41 83 f8 4d          	cmp    $0x4d,%r8d
 322:	74 49                	je     36d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x36d>
 324:	41 83 f8 43          	cmp    $0x43,%r8d
 328:	0f 85 ea 00 00 00    	jne    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 32e:	41 b8 43 4f 4e 4e    	mov    $0x4e4e4f43,%r8d
 334:	44 33 06             	xor    (%rsi),%r8d
 337:	41 b9 4e 45 43 54    	mov    $0x5443454e,%r9d
 33d:	44 33 4e 03          	xor    0x3(%rsi),%r9d
 341:	45 09 c1             	or     %r8d,%r9d
 344:	0f 85 ce 00 00 00    	jne    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 34a:	48 c7 47 70 05 00 00 	movq   $0x5,0x70(%rdi)
 351:	00
 352:	b1 01                	mov    $0x1,%cl
 354:	e9 ca 00 00 00       	jmp    423 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x423>
 359:	b9 06 00 00 00       	mov    $0x6,%ecx
 35e:	e9 b5 00 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 363:	b9 0a 00 00 00       	mov    $0xa,%ecx
 368:	e9 ab 00 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 36d:	41 b8 4d 45 53 53    	mov    $0x5353454d,%r8d
 373:	44 33 06             	xor    (%rsi),%r8d
 376:	41 b9 53 41 47 45    	mov    $0x45474153,%r9d
 37c:	44 33 4e 03          	xor    0x3(%rsi),%r9d
 380:	31 c9                	xor    %ecx,%ecx
 382:	45 09 c1             	or     %r8d,%r9d
 385:	0f 95 c1             	setne  %cl
 388:	48 f7 d9             	neg    %rcx
 38b:	48 83 c9 09          	or     $0x9,%rcx
 38f:	e9 84 00 00 00       	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 394:	41 b8 52 45 43 45    	mov    $0x45434552,%r8d
 39a:	44 33 06             	xor    (%rsi),%r8d
 39d:	41 b9 45 49 50 54    	mov    $0x54504945,%r9d
 3a3:	44 33 4e 03          	xor    0x3(%rsi),%r9d
 3a7:	31 c9                	xor    %ecx,%ecx
 3a9:	45 09 c1             	or     %r8d,%r9d
 3ac:	0f 95 c1             	setne  %cl
 3af:	48 f7 d9             	neg    %rcx
 3b2:	48 83 c9 0b          	or     $0xb,%rcx
 3b6:	eb 60                	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 3b8:	b9 45 52 52 4f       	mov    $0x4f525245,%ecx
 3bd:	33 0e                	xor    (%rsi),%ecx
 3bf:	0f b6 76 04          	movzbl 0x4(%rsi),%esi
 3c3:	83 f6 52             	xor    $0x52,%esi
 3c6:	45 31 c0             	xor    %r8d,%r8d
 3c9:	09 ce                	or     %ecx,%esi
 3cb:	41 0f 94 c0          	sete   %r8b
 3cf:	4b 8d 0c c0          	lea    (%r8,%r8,8),%rcx
 3d3:	48 ff c9             	dec    %rcx
 3d6:	eb 40                	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 3d8:	b9 42 45 47 49       	mov    $0x49474542,%ecx
 3dd:	33 0e                	xor    (%rsi),%ecx
 3df:	0f b6 76 04          	movzbl 0x4(%rsi),%esi
 3e3:	83 f6 4e             	xor    $0x4e,%esi
 3e6:	45 31 c0             	xor    %r8d,%r8d
 3e9:	09 ce                	or     %ecx,%esi
 3eb:	41 0f 94 c0          	sete   %r8b
 3ef:	4a 8d 0c 85 ff ff ff 	lea    -0x1(,%r8,4),%rcx
 3f6:	ff
 3f7:	eb 1f                	jmp    418 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x418>
 3f9:	41 b8 53 54 4f 4d    	mov    $0x4d4f5453,%r8d
 3ff:	44 33 06             	xor    (%rsi),%r8d
 402:	0f b6 76 04          	movzbl 0x4(%rsi),%esi
 406:	83 f6 50             	xor    $0x50,%esi
 409:	31 c9                	xor    %ecx,%ecx
 40b:	44 09 c6             	or     %r8d,%esi
 40e:	0f 95 c1             	setne  %cl
 411:	48 f7 d9             	neg    %rcx
 414:	48 83 c9 0d          	or     $0xd,%rcx
 418:	48 89 4f 70          	mov    %rcx,0x70(%rdi)
 41c:	48 83 f9 06          	cmp    $0x6,%rcx
 420:	0f 94 c1             	sete   %cl
 423:	88 8f 0b 01 00 00    	mov    %cl,0x10b(%rdi)
 429:	48 8d 73 01          	lea    0x1(%rbx),%rsi
 42d:	3c 0a                	cmp    $0xa,%al
 42f:	75 39                	jne    46a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x46a>
 431:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 438 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x438>
			434: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 438:	48 89 47 60          	mov    %rax,0x60(%rdi)
 43c:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 443:	00
 444:	48 39 d6             	cmp    %rdx,%rsi
 447:	0f 83 91 00 00 00    	jae    4de <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4de>
 44d:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
 454:	0f 85 84 00 00 00    	jne    4de <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4de>
 45a:	48 83 c4 08          	add    $0x8,%rsp
 45e:	5b                   	pop    %rbx
 45f:	41 5c                	pop    %r12
 461:	41 5e                	pop    %r14
 463:	41 5f                	pop    %r15
 465:	e9 00 00 00 00       	jmp    46a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x46a>
			466: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 46a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 471 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x471>
			46d: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 471:	48 89 47 60          	mov    %rax,0x60(%rdi)
 475:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 47c:	00
 47d:	48 39 d6             	cmp    %rdx,%rsi
 480:	73 5c                	jae    4de <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4de>
 482:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
 489:	75 53                	jne    4de <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4de>
 48b:	80 3e 0a             	cmpb   $0xa,(%rsi)
 48e:	75 21                	jne    4b1 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4b1>
 490:	48 83 c3 02          	add    $0x2,%rbx
 494:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 49b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x49b>
			497: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 49b:	48 89 47 60          	mov    %rax,0x60(%rdi)
 49f:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 4a6:	00
 4a7:	48 89 de             	mov    %rbx,%rsi
 4aa:	48 39 d3             	cmp    %rdx,%rbx
 4ad:	72 ab                	jb     45a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x45a>
 4af:	eb 2d                	jmp    4de <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4de>
 4b1:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 4b8:	00 00 00
 4bb:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 4c2:	48 2b b7 20 01 00 00 	sub    0x120(%rdi),%rsi
 4c9:	48 89 b7 18 01 00 00 	mov    %rsi,0x118(%rdi)
 4d0:	48 83 c3 02          	add    $0x2,%rbx
 4d4:	48 89 9f 28 01 00 00 	mov    %rbx,0x128(%rdi)
 4db:	48 89 de             	mov    %rbx,%rsi
 4de:	48 89 f0             	mov    %rsi,%rax
 4e1:	48 83 c4 08          	add    $0x8,%rsp
 4e5:	5b                   	pop    %rbx
 4e6:	41 5c                	pop    %r12
 4e8:	41 5e                	pop    %r14
 4ea:	41 5f                	pop    %r15
 4ec:	c3                   	ret

0000000000000000 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	0f b6 06             	movzbl (%rsi),%eax
   7:	83 f8 0d             	cmp    $0xd,%eax
   a:	74 4f                	je     5b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5b>
   c:	83 f8 0a             	cmp    $0xa,%eax
   f:	0f 85 9d 00 00 00    	jne    b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb2>
  15:	48 ff c6             	inc    %rsi
  18:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f>
			1b: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  1f:	48 89 47 60          	mov    %rax,0x60(%rdi)
  23:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  2a:	00
  2b:	48 39 d6             	cmp    %rdx,%rsi
  2e:	0f 83 30 01 00 00    	jae    164 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164>
  34:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
  3b:	0f 85 23 01 00 00    	jne    164 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164>
  41:	f6 47 78 01          	testb  $0x1,0x78(%rdi)
  45:	0f 85 b6 00 00 00    	jne    101 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x101>
  4b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 52 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x52>
			4e: R_X86_64_PC32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
  52:	48 89 47 60          	mov    %rax,0x60(%rdi)
  56:	e9 00 00 00 00       	jmp    5b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5b>
			57: R_X86_64_PLT32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
  5b:	48 8d 46 01          	lea    0x1(%rsi),%rax
  5f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 66 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x66>
			62: R_X86_64_PC32	char const* stomptalk::parser::almost_done<3u>(char const*, char const*)-0x4
  66:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
  6a:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  71:	00
  72:	48 39 d0             	cmp    %rdx,%rax
  75:	0f 83 85 00 00 00    	jae    100 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x100>
  7b:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
  82:	75 7c                	jne    100 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x100>
  84:	80 38 0a             	cmpb   $0xa,(%rax)
  87:	0f 85 84 00 00 00    	jne    111 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x111>
  8d:	48 83 c6 02          	add    $0x2,%rsi
  91:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 98 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x98>
			94: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  98:	48 89 47 60          	mov    %rax,0x60(%rdi)
  9c:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  a3:	00
  a4:	48 39 d6             	cmp    %rdx,%rsi
  a7:	0f 83 b7 00 00 00    	jae    164 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164>
  ad:	e9 00 00 00 00       	jmp    b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb2>
			ae: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  b2:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
  b9:	48 3b 47 18          	cmp    0x18(%rdi),%rax
  bd:	75 27                	jne    e6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe6>
  bf:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
  c6:	00 00 00
  c9:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  d0:	48 89 f0             	mov    %rsi,%rax
  d3:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  da:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  e1:	48 ff c6             	inc    %rsi
  e4:	eb 4e                	jmp    134 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x134>
  e6:	48 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%rax
  ed:	48 3b 47 08          	cmp    0x8(%rdi),%rax
  f1:	75 4c                	jne    13f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13f>
  f3:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
  fa:	00 00 00
  fd:	48 89 f0             	mov    %rsi,%rax
 100:	c3                   	ret
 101:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 108 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x108>
			104: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
 108:	48 89 47 60          	mov    %rax,0x60(%rdi)
 10c:	e9 00 00 00 00       	jmp    111 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x111>
			10d: R_X86_64_PLT32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
 111:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
 118:	00 00 00
 11b:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 122:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 129:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 130:	48 83 c6 02          	add    $0x2,%rsi
 134:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 13b:	48 89 f0             	mov    %rsi,%rax
 13e:	c3                   	ret
 13f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 146 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x146>
			142: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 146:	48 89 47 60          	mov    %rax,0x60(%rdi)
 14a:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 151:	00
 152:	48 39 d6             	cmp    %rdx,%rsi
 155:	73 0d                	jae    164 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164>
 157:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
 15e:	0f 84 00 00 00 00    	je     164 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164>
			160: R_X86_64_PLT32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 164:	48 89 f0             	mov    %rsi,%rax
 167:	c3                   	ret

0000000000000000 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	41 57                	push   %r15
   7:	41 56                	push   %r14
   9:	41 55                	push   %r13
   b:	41 54                	push   %r12
   d:	53                   	push   %rbx
   e:	48 83 ec 18          	sub    $0x18,%rsp
  12:	48 89 f5             	mov    %rsi,%rbp
  15:	48 39 d6             	cmp    %rdx,%rsi
  18:	0f 83 71 07 00 00    	jae    78f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78f>
  1e:	49 89 d5             	mov    %rdx,%r13
  21:	48 89 fb             	mov    %rdi,%rbx
  24:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
  2b:	7f 7f 7f
  2e:	44 0f b6 b7 0a 01 00 	movzbl 0x10a(%rdi),%r14d
  35:	00
  36:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 3e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e>
  3d:	00
			3a: R_X86_64_PC32	.LCPI52_0-0x4
  3e:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46>
  45:	00
			42: R_X86_64_PC32	.LCPI52_1-0x4
  46:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 4e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e>
  4d:	00
			4a: R_X86_64_PC32	.LCPI52_2-0x4
  4e:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 56 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x56>
  55:	00
			52: R_X86_64_PC32	.LCPI52_3-0x4
  56:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  5b:	eb 5b                	jmp    b8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb8>
  5d:	48 8b 43 40          	mov    0x40(%rbx),%rax
  61:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
  66:	48 89 43 48          	mov    %rax,0x48(%rbx)
  6a:	4c 89 a3 d0 00 00 00 	mov    %r12,0xd0(%rbx)
  71:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
  78:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
  7f:	7f 7f 7f
  82:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 8a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8a>
  89:	00
			86: R_X86_64_PC32	.LCPI52_0-0x4
  8a:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 92 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x92>
  91:	00
			8e: R_X86_64_PC32	.LCPI52_1-0x4
  92:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 9a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9a>
  99:	00
			96: R_X86_64_PC32	.LCPI52_2-0x4
  9a:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # a2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa2>
  a1:	00
			9e: R_X86_64_PC32	.LCPI52_3-0x4
  a2:	44 88 b3 0a 01 00 00 	mov    %r14b,0x10a(%rbx)
  a9:	49 ff c7             	inc    %r15
  ac:	4c 89 fd             	mov    %r15,%rbp
  af:	4d 39 ef             	cmp    %r13,%r15
  b2:	0f 83 da 06 00 00    	jae    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
  b8:	41 80 fe 01          	cmp    $0x1,%r14b
  bc:	75 52                	jne    110 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
  be:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  c2:	04 a4                	add    $0xa4,%al
  c4:	3c 17                	cmp    $0x17,%al
  c6:	0f 83 ab 05 00 00    	jae    677 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x677>
  cc:	0f b6 c0             	movzbl %al,%eax
  cf:	b9 81 00 44 00       	mov    $0x440081,%ecx
  d4:	0f a3 c1             	bt     %eax,%ecx
  d7:	0f 83 9a 05 00 00    	jae    677 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x677>
  dd:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # e4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe4>
			e0: R_X86_64_PC32	.rodata+0x1f4
  e4:	0f be 34 08          	movsbl (%rax,%rcx,1),%esi
  e8:	48 89 df             	mov    %rbx,%rdi
  eb:	48 89 ea             	mov    %rbp,%rdx
  ee:	e8 00 00 00 00       	call   f3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xf3>
			ef: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
  f3:	84 c0                	test   %al,%al
  f5:	0f 84 19 06 00 00    	je     714 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x714>
  fb:	45 31 f6             	xor    %r14d,%r14d
  fe:	49 89 ef             	mov    %rbp,%r15
 101:	e9 72 ff ff ff       	jmp    78 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78>
 106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 10d:	00 00 00
 110:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 117:	00
 118:	0f 94 c1             	sete   %cl
 11b:	0f b6 83 0b 01 00 00 	movzbl 0x10b(%rbx),%eax
 122:	4c 89 ea             	mov    %r13,%rdx
 125:	48 29 ea             	sub    %rbp,%rdx
 128:	48 83 fa 10          	cmp    $0x10,%rdx
 12c:	49 be 80 80 80 80 80 	movabs $0x8080808080808080,%r14
 133:	80 80 80
 136:	0f 8c b4 00 00 00    	jl     1f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1f0>
 13c:	49 89 ef             	mov    %rbp,%r15
 13f:	45 31 e4             	xor    %r12d,%r12d
 142:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 149:	1f 84 00 00 00 00 00
 150:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
 155:	66 0f ef c9          	pxor   %xmm1,%xmm1
 159:	66 0f ef d2          	pxor   %xmm2,%xmm2
 15d:	84 c0                	test   %al,%al
 15f:	75 08                	jne    169 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x169>
 161:	66 0f 6f d0          	movdqa %xmm0,%xmm2
 165:	66 0f 74 d7          	pcmpeqb %xmm7,%xmm2
 169:	66 0f 6f d8          	movdqa %xmm0,%xmm3
 16d:	66 0f 74 dc          	pcmpeqb %xmm4,%xmm3
 171:	66 0f d7 f3          	pmovmskb %xmm3,%esi
 175:	66 0f 74 c8          	pcmpeqb %xmm0,%xmm1
 179:	66 0f 6f d8          	movdqa %xmm0,%xmm3
 17d:	66 0f 74 dd          	pcmpeqb %xmm5,%xmm3
 181:	66 0f 74 c6          	pcmpeqb %xmm6,%xmm0
 185:	66 0f eb c3          	por    %xmm3,%xmm0
 189:	66 0f eb c1          	por    %xmm1,%xmm0
 18d:	66 0f eb c2          	por    %xmm2,%xmm0
 191:	66 0f d7 f8          	pmovmskb %xmm0,%edi
 195:	85 f6                	test   %esi,%esi
 197:	74 2c                	je     1c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c5>
 199:	f6 c1 01             	test   $0x1,%cl
 19c:	74 27                	je     1c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c5>
 19e:	f3 44 0f bc c6       	tzcnt  %esi,%r8d
 1a3:	85 ff                	test   %edi,%edi
 1a5:	74 0c                	je     1b3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b3>
 1a7:	f3 44 0f bc cf       	tzcnt  %edi,%r9d
 1ac:	b1 01                	mov    $0x1,%cl
 1ae:	45 39 c8             	cmp    %r9d,%r8d
 1b1:	73 12                	jae    1c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c5>
 1b3:	45 89 c4             	mov    %r8d,%r12d
 1b6:	4d 01 fc             	add    %r15,%r12
 1b9:	44 8d 46 ff          	lea    -0x1(%rsi),%r8d
 1bd:	41 21 f0             	and    %esi,%r8d
 1c0:	31 c9                	xor    %ecx,%ecx
 1c2:	44 89 c6             	mov    %r8d,%esi
 1c5:	84 c0                	test   %al,%al
 1c7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
 1cd:	41 0f 45 f0          	cmovne %r8d,%esi
 1d1:	09 fe                	or     %edi,%esi
 1d3:	0f 85 9f 01 00 00    	jne    378 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x378>
 1d9:	49 83 c7 10          	add    $0x10,%r15
 1dd:	48 83 c2 f0          	add    $0xfffffffffffffff0,%rdx
 1e1:	48 83 fa 0f          	cmp    $0xf,%rdx
 1e5:	0f 8f 65 ff ff ff    	jg     150 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x150>
 1eb:	eb 09                	jmp    1f6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1f6>
 1ed:	0f 1f 00             	nopl   (%rax)
 1f0:	45 31 e4             	xor    %r12d,%r12d
 1f3:	49 89 ef             	mov    %rbp,%r15
 1f6:	4c 89 ee             	mov    %r13,%rsi
 1f9:	4c 29 fe             	sub    %r15,%rsi
 1fc:	48 83 fe 08          	cmp    $0x8,%rsi
 200:	0f 8c 01 01 00 00    	jl     307 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x307>
 206:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 20d:	00 00
 20f:	90                   	nop
 210:	4d 8b 0f             	mov    (%r15),%r9
 213:	4d 89 c8             	mov    %r9,%r8
 216:	4d 21 d8             	and    %r11,%r8
 219:	4b 8d 3c 18          	lea    (%r8,%r11,1),%rdi
 21d:	4c 09 cf             	or     %r9,%rdi
 220:	48 f7 d7             	not    %rdi
 223:	4d 89 c2             	mov    %r8,%r10
 226:	48 ba 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%rdx
 22d:	0a 0a 0a
 230:	49 31 d2             	xor    %rdx,%r10
 233:	4d 01 da             	add    %r11,%r10
 236:	4d 09 ca             	or     %r9,%r10
 239:	49 f7 d2             	not    %r10
 23c:	49 09 fa             	or     %rdi,%r10
 23f:	4c 89 c7             	mov    %r8,%rdi
 242:	48 ba 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%rdx
 249:	0d 0d 0d
 24c:	48 31 d7             	xor    %rdx,%rdi
 24f:	4c 01 df             	add    %r11,%rdi
 252:	4c 09 cf             	or     %r9,%rdi
 255:	48 f7 d7             	not    %rdi
 258:	4c 09 d7             	or     %r10,%rdi
 25b:	4c 21 f7             	and    %r14,%rdi
 25e:	84 c0                	test   %al,%al
 260:	75 1f                	jne    281 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x281>
 262:	4d 89 c2             	mov    %r8,%r10
 265:	48 ba 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%rdx
 26c:	5c 5c 5c
 26f:	49 31 d2             	xor    %rdx,%r10
 272:	4d 01 da             	add    %r11,%r10
 275:	4d 09 ca             	or     %r9,%r10
 278:	49 f7 d2             	not    %r10
 27b:	4d 21 f2             	and    %r14,%r10
 27e:	4c 09 d7             	or     %r10,%rdi
 281:	49 ba 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%r10
 288:	3a 3a 3a
 28b:	4d 31 d0             	xor    %r10,%r8
 28e:	4d 01 d8             	add    %r11,%r8
 291:	4d 09 c8             	or     %r9,%r8
 294:	4d 21 f0             	and    %r14,%r8
 297:	4d 89 c1             	mov    %r8,%r9
 29a:	4d 31 f1             	xor    %r14,%r9
 29d:	4d 39 f0             	cmp    %r14,%r8
 2a0:	74 3c                	je     2de <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2de>
 2a2:	f6 c1 01             	test   $0x1,%cl
 2a5:	74 37                	je     2de <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2de>
 2a7:	f3 4d 0f bc d1       	tzcnt  %r9,%r10
 2ac:	48 85 ff             	test   %rdi,%rdi
 2af:	74 16                	je     2c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c7>
 2b1:	f3 4c 0f bc df       	tzcnt  %rdi,%r11
 2b6:	b1 01                	mov    $0x1,%cl
 2b8:	45 39 da             	cmp    %r11d,%r10d
 2bb:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
 2c2:	7f 7f 7f
 2c5:	73 17                	jae    2de <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2de>
 2c7:	41 c1 ea 03          	shr    $0x3,%r10d
 2cb:	4d 01 fa             	add    %r15,%r10
 2ce:	49 f7 d0             	not    %r8
 2d1:	4d 01 f0             	add    %r14,%r8
 2d4:	4d 21 c1             	and    %r8,%r9
 2d7:	31 c9                	xor    %ecx,%ecx
 2d9:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
 2de:	84 c0                	test   %al,%al
 2e0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
 2e6:	4d 0f 44 c1          	cmove  %r9,%r8
 2ea:	49 09 f8             	or     %rdi,%r8
 2ed:	0f 85 a2 00 00 00    	jne    395 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x395>
 2f3:	49 83 c7 08          	add    $0x8,%r15
 2f7:	48 83 c6 f8          	add    $0xfffffffffffffff8,%rsi
 2fb:	48 83 fe 07          	cmp    $0x7,%rsi
 2ff:	0f 8f 0b ff ff ff    	jg     210 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x210>
 305:	eb 09                	jmp    310 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x310>
 307:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 30e:	00 00
 310:	31 f6                	xor    %esi,%esi
 312:	4d 39 ef             	cmp    %r13,%r15
 315:	73 5a                	jae    371 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x371>
 317:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 31c:	eb 24                	jmp    342 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x342>
 31e:	66 90                	xchg   %ax,%ax
 320:	83 ff 3a             	cmp    $0x3a,%edi
 323:	41 0f 95 c0          	setne  %r8b
 327:	83 ff 5c             	cmp    $0x5c,%edi
 32a:	40 0f 95 c7          	setne  %dil
 32e:	44 20 c7             	and    %r8b,%dil
 331:	40 08 c7             	or     %al,%dil
 334:	40 80 ff 01          	cmp    $0x1,%dil
 338:	75 76                	jne    3b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b0>
 33a:	49 ff c7             	inc    %r15
 33d:	4d 39 ef             	cmp    %r13,%r15
 340:	74 65                	je     3a7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a7>
 342:	41 0f b6 3f          	movzbl (%r15),%edi
 346:	83 ff 3a             	cmp    $0x3a,%edi
 349:	75 15                	jne    360 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x360>
 34b:	f6 c1 01             	test   $0x1,%cl
 34e:	74 10                	je     360 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x360>
 350:	31 c9                	xor    %ecx,%ecx
 352:	4c 89 fe             	mov    %r15,%rsi
 355:	eb e3                	jmp    33a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x33a>
 357:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 35e:	00 00
 360:	83 ff 0d             	cmp    $0xd,%edi
 363:	77 bb                	ja     320 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x320>
 365:	ba 01 24 00 00       	mov    $0x2401,%edx
 36a:	0f a3 fa             	bt     %edi,%edx
 36d:	73 b1                	jae    320 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x320>
 36f:	eb 3f                	jmp    3b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b0>
 371:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 376:	eb 38                	jmp    3b0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b0>
 378:	f3 0f bc c6          	tzcnt  %esi,%eax
 37c:	49 01 c7             	add    %rax,%r15
 37f:	4d 85 e4             	test   %r12,%r12
 382:	75 3f                	jne    3c3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c3>
 384:	49 89 ec             	mov    %rbp,%r12
 387:	49 39 ef             	cmp    %rbp,%r15
 38a:	0f 85 ad 01 00 00    	jne    53d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x53d>
 390:	e9 66 02 00 00       	jmp    5fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5fb>
 395:	f3 49 0f bc c0       	tzcnt  %r8,%rax
 39a:	c1 e8 03             	shr    $0x3,%eax
 39d:	49 01 c7             	add    %rax,%r15
 3a0:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 3a5:	eb 10                	jmp    3b7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b7>
 3a7:	4d 89 ef             	mov    %r13,%r15
 3aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 3b0:	4d 85 c9             	test   %r9,%r9
 3b3:	4c 0f 44 ce          	cmove  %rsi,%r9
 3b7:	4d 85 e4             	test   %r12,%r12
 3ba:	4d 0f 44 e1          	cmove  %r9,%r12
 3be:	4d 85 e4             	test   %r12,%r12
 3c1:	74 c1                	je     384 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x384>
 3c3:	4d 89 e5             	mov    %r12,%r13
 3c6:	49 29 ed             	sub    %rbp,%r13
 3c9:	74 5d                	je     428 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x428>
 3cb:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
 3cf:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
 3d6:	48 89 ca             	mov    %rcx,%rdx
 3d9:	48 29 c2             	sub    %rax,%rdx
 3dc:	49 39 d5             	cmp    %rdx,%r13
 3df:	0f 87 66 03 00 00    	ja     74b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74b>
 3e5:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 3ec:	48 01 c2             	add    %rax,%rdx
 3ef:	48 29 d1             	sub    %rdx,%rcx
 3f2:	49 39 cd             	cmp    %rcx,%r13
 3f5:	0f 87 83 03 00 00    	ja     77e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x77e>
 3fb:	4c 01 e8             	add    %r13,%rax
 3fe:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 405:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 40c:	75 23                	jne    431 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x431>
 40e:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 412:	48 8b 43 50          	mov    0x50(%rbx),%rax
 416:	48 29 f8             	sub    %rdi,%rax
 419:	49 39 c5             	cmp    %rax,%r13
 41c:	76 29                	jbe    447 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x447>
 41e:	48 8b 43 40          	mov    0x40(%rbx),%rax
 422:	48 89 43 48          	mov    %rax,0x48(%rbx)
 426:	eb 58                	jmp    480 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x480>
 428:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 42f:	eb 60                	jmp    491 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x491>
 431:	48 83 bb d8 00 00 00 	cmpq   $0x0,0xd8(%rbx)
 438:	00
 439:	75 45                	jne    480 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x480>
 43b:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 442:	48 89 28             	mov    %rbp,(%rax)
 445:	eb 39                	jmp    480 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x480>
 447:	48 89 ee             	mov    %rbp,%rsi
 44a:	4c 89 ea             	mov    %r13,%rdx
 44d:	e8 00 00 00 00       	call   452 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x452>
			44e: R_X86_64_PLT32	memcpy-0x4
 452:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 45a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x45a>
 459:	00
			456: R_X86_64_PC32	.LCPI52_3-0x4
 45a:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 462 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x462>
 461:	00
			45e: R_X86_64_PC32	.LCPI52_2-0x4
 462:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 46a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46a>
 469:	00
			466: R_X86_64_PC32	.LCPI52_1-0x4
 46a:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 472 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x472>
 471:	00
			46e: R_X86_64_PC32	.LCPI52_0-0x4
 472:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
 479:	7f 7f 7f
 47c:	4c 01 6b 48          	add    %r13,0x48(%rbx)
 480:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 487:	4c 01 ea             	add    %r13,%rdx
 48a:	48 89 93 d8 00 00 00 	mov    %rdx,0xd8(%rbx)
 491:	48 85 d2             	test   %rdx,%rdx
 494:	0f 84 0a 03 00 00    	je     7a4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a4>
 49a:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
 4a1:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 4a8:	48 8d 8b d0 00 00 00 	lea    0xd0(%rbx),%rcx
 4af:	66 0f ef c0          	pxor   %xmm0,%xmm0
 4b3:	f3 0f 7f 01          	movdqu %xmm0,(%rcx)
 4b7:	48 89 83 c0 00 00 00 	mov    %rax,0xc0(%rbx)
 4be:	48 89 93 c8 00 00 00 	mov    %rdx,0xc8(%rbx)
 4c5:	31 c9                	xor    %ecx,%ecx
 4c7:	48 83 fa 0e          	cmp    $0xe,%rdx
 4cb:	75 56                	jne    523 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x523>
 4cd:	8b 53 78             	mov    0x78(%rbx),%edx
 4d0:	83 e2 01             	and    $0x1,%edx
 4d3:	75 4e                	jne    523 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x523>
 4d5:	49 83 fd 0e          	cmp    $0xe,%r13
 4d9:	75 21                	jne    4fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4fc>
 4db:	48 3b ab 20 01 00 00 	cmp    0x120(%rbx),%rbp
 4e2:	76 18                	jbe    4fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4fc>
 4e4:	f3 0f 6f 45 ff       	movdqu -0x1(%rbp),%xmm0
 4e9:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 4f1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f1>
 4f0:	00
			4ed: R_X86_64_PC32	.LCPI52_4-0x4
 4f1:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 4f5:	35 ff ff 00 00       	xor    $0xffff,%eax
 4fa:	eb 24                	jmp    520 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x520>
 4fc:	48 8b 08             	mov    (%rax),%rcx
 4ff:	48 ba 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rdx
 506:	6e 74 2d
 509:	48 31 d1             	xor    %rdx,%rcx
 50c:	48 8b 40 06          	mov    0x6(%rax),%rax
 510:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
 517:	67 74 68
 51a:	48 31 d0             	xor    %rdx,%rax
 51d:	48 09 c8             	or     %rcx,%rax
 520:	0f 94 c1             	sete   %cl
 523:	88 8b 0c 01 00 00    	mov    %cl,0x10c(%rbx)
 529:	49 ff c4             	inc    %r12
 52c:	4c 89 e5             	mov    %r12,%rbp
 52f:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
 534:	49 39 ef             	cmp    %rbp,%r15
 537:	0f 84 be 00 00 00    	je     5fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5fb>
 53d:	4d 89 fd             	mov    %r15,%r13
 540:	4d 29 e5             	sub    %r12,%r13
 543:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
 547:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
 54e:	48 89 ca             	mov    %rcx,%rdx
 551:	48 29 c2             	sub    %rax,%rdx
 554:	49 39 d5             	cmp    %rdx,%r13
 557:	0f 87 ee 01 00 00    	ja     74b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74b>
 55d:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 564:	48 01 c2             	add    %rax,%rdx
 567:	48 29 d1             	sub    %rdx,%rcx
 56a:	49 39 cd             	cmp    %rcx,%r13
 56d:	0f 87 0b 02 00 00    	ja     77e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x77e>
 573:	4c 01 e8             	add    %r13,%rax
 576:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 57d:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 584:	75 1a                	jne    5a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a0>
 586:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 58a:	48 8b 43 50          	mov    0x50(%rbx),%rax
 58e:	48 29 f8             	sub    %rdi,%rax
 591:	49 39 c5             	cmp    %rax,%r13
 594:	76 20                	jbe    5b6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5b6>
 596:	48 8b 43 40          	mov    0x40(%rbx),%rax
 59a:	48 89 43 48          	mov    %rax,0x48(%rbx)
 59e:	eb 4f                	jmp    5ef <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ef>
 5a0:	48 83 bb d8 00 00 00 	cmpq   $0x0,0xd8(%rbx)
 5a7:	00
 5a8:	75 45                	jne    5ef <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ef>
 5aa:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 5b1:	48 89 28             	mov    %rbp,(%rax)
 5b4:	eb 39                	jmp    5ef <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5ef>
 5b6:	48 89 ee             	mov    %rbp,%rsi
 5b9:	4c 89 ea             	mov    %r13,%rdx
 5bc:	e8 00 00 00 00       	call   5c1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c1>
			5bd: R_X86_64_PLT32	memcpy-0x4
 5c1:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 5c9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c9>
 5c8:	00
			5c5: R_X86_64_PC32	.LCPI52_3-0x4
 5c9:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 5d1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d1>
 5d0:	00
			5cd: R_X86_64_PC32	.LCPI52_2-0x4
 5d1:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 5d9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d9>
 5d8:	00
			5d5: R_X86_64_PC32	.LCPI52_1-0x4
 5d9:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 5e1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e1>
 5e0:	00
			5dd: R_X86_64_PC32	.LCPI52_0-0x4
 5e1:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
 5e8:	7f 7f 7f
 5eb:	4c 01 6b 48          	add    %r13,0x48(%rbx)
 5ef:	4c 01 ab d8 00 00 00 	add    %r13,0xd8(%rbx)
 5f6:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
 5fb:	4d 39 ef             	cmp    %r13,%r15
 5fe:	0f 84 8e 01 00 00    	je     792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
 604:	41 0f b6 07          	movzbl (%r15),%eax
 608:	83 f8 5c             	cmp    $0x5c,%eax
 60b:	0f 85 90 00 00 00    	jne    6a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a1>
 611:	80 bb 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbx)
 618:	0f 85 83 00 00 00    	jne    6a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a1>
 61e:	41 b6 01             	mov    $0x1,%r14b
 621:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 628:	0f 85 74 fa ff ff    	jne    a2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa2>
 62e:	48 89 df             	mov    %rbx,%rdi
 631:	e8 00 00 00 00       	call   636 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x636>
			632: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
 636:	4c 8b 63 48          	mov    0x48(%rbx),%r12
 63a:	48 8b 43 50          	mov    0x50(%rbx),%rax
 63e:	4c 8b ab d8 00 00 00 	mov    0xd8(%rbx),%r13
 645:	4c 29 e0             	sub    %r12,%rax
 648:	49 39 c5             	cmp    %rax,%r13
 64b:	0f 87 0c fa ff ff    	ja     5d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d>
 651:	4c 89 e0             	mov    %r12,%rax
 654:	4d 85 ed             	test   %r13,%r13
 657:	74 16                	je     66f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x66f>
 659:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
 660:	4c 89 e7             	mov    %r12,%rdi
 663:	4c 89 ea             	mov    %r13,%rdx
 666:	e8 00 00 00 00       	call   66b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x66b>
			667: R_X86_64_PLT32	memcpy-0x4
 66b:	48 8b 43 48          	mov    0x48(%rbx),%rax
 66f:	4c 01 e8             	add    %r13,%rax
 672:	e9 ea f9 ff ff       	jmp    61 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61>
 677:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 67e:	00 00 00
 681:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 688:	48 89 e8             	mov    %rbp,%rax
 68b:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 692:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 699:	48 ff c5             	inc    %rbp
 69c:	e9 e7 00 00 00       	jmp    788 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x788>
 6a1:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 6a8:	00
 6a9:	74 72                	je     71d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71d>
 6ab:	83 f8 0a             	cmp    $0xa,%eax
 6ae:	74 05                	je     6b5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b5>
 6b0:	83 f8 0d             	cmp    $0xd,%eax
 6b3:	75 68                	jne    71d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71d>
 6b5:	48 89 df             	mov    %rbx,%rdi
 6b8:	4c 89 fe             	mov    %r15,%rsi
 6bb:	e8 00 00 00 00       	call   6c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6c0>
			6bc: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 6c0:	84 c0                	test   %al,%al
 6c2:	74 50                	je     714 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x714>
 6c4:	49 8d 77 01          	lea    0x1(%r15),%rsi
 6c8:	41 80 3f 0a          	cmpb   $0xa,(%r15)
 6cc:	0f 85 03 01 00 00    	jne    7d5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7d5>
 6d2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 6d9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6d9>
			6d5: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 6d9:	48 89 43 60          	mov    %rax,0x60(%rbx)
 6dd:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 6e4:	00
 6e5:	4c 39 ee             	cmp    %r13,%rsi
 6e8:	0f 83 38 01 00 00    	jae    826 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x826>
 6ee:	83 bb 10 01 00 00 00 	cmpl   $0x0,0x110(%rbx)
 6f5:	0f 85 2b 01 00 00    	jne    826 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x826>
 6fb:	48 89 df             	mov    %rbx,%rdi
 6fe:	4c 89 ea             	mov    %r13,%rdx
 701:	48 83 c4 18          	add    $0x18,%rsp
 705:	5b                   	pop    %rbx
 706:	41 5c                	pop    %r12
 708:	41 5d                	pop    %r13
 70a:	41 5e                	pop    %r14
 70c:	41 5f                	pop    %r15
 70e:	5d                   	pop    %rbp
 70f:	e9 00 00 00 00       	jmp    714 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x714>
			710: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 714:	4c 8b bb 28 01 00 00 	mov    0x128(%rbx),%r15
 71b:	eb 75                	jmp    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
 71d:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 724:	00 00 00
 727:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 72e:	4c 89 f8             	mov    %r15,%rax
 731:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 738:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 73f:	49 ff c7             	inc    %r15
 742:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 749:	eb 47                	jmp    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
 74b:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
 74f:	48 b9 03 00 00 00 0d 	movabs $0xd00000003,%rcx
 756:	00 00 00
 759:	48 89 8b 10 01 00 00 	mov    %rcx,0x110(%rbx)
 760:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 767:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 76e:	4c 8d 3c 2a          	lea    (%rdx,%rbp,1),%r15
 772:	49 ff c7             	inc    %r15
 775:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 77c:	eb 14                	jmp    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
 77e:	c7 83 10 01 00 00 02 	movl   $0x2,0x110(%rbx)
 785:	00 00 00
 788:	48 89 ab 28 01 00 00 	mov    %rbp,0x128(%rbx)
 78f:	49 89 ef             	mov    %rbp,%r15
 792:	4c 89 f8             	mov    %r15,%rax
 795:	48 83 c4 18          	add    $0x18,%rsp
 799:	5b                   	pop    %rbx
 79a:	41 5c                	pop    %r12
 79c:	41 5d                	pop    %r13
 79e:	41 5e                	pop    %r14
 7a0:	41 5f                	pop    %r15
 7a2:	5d                   	pop    %rbp
 7a3:	c3                   	ret
 7a4:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 7ab:	00 00 00
 7ae:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 7b5:	4c 89 e0             	mov    %r12,%rax
 7b8:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 7bf:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 7c6:	49 ff c4             	inc    %r12
 7c9:	4c 89 a3 28 01 00 00 	mov    %r12,0x128(%rbx)
 7d0:	4d 89 e7             	mov    %r12,%r15
 7d3:	eb bd                	jmp    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
 7d5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7dc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7dc>
			7d8: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 7dc:	48 89 43 60          	mov    %rax,0x60(%rbx)
 7e0:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 7e7:	00
 7e8:	4c 39 ee             	cmp    %r13,%rsi
 7eb:	73 39                	jae    826 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x826>
 7ed:	83 bb 10 01 00 00 00 	cmpl   $0x0,0x110(%rbx)
 7f4:	75 30                	jne    826 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x826>
 7f6:	80 3e 0a             	cmpb   $0xa,(%rsi)
 7f9:	75 33                	jne    82e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x82e>
 7fb:	49 83 c7 02          	add    $0x2,%r15
 7ff:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 806 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x806>
			802: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 806:	48 89 43 60          	mov    %rax,0x60(%rbx)
 80a:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 811:	00
 812:	4d 39 ef             	cmp    %r13,%r15
 815:	0f 83 77 ff ff ff    	jae    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
 81b:	48 89 df             	mov    %rbx,%rdi
 81e:	4c 89 fe             	mov    %r15,%rsi
 821:	e9 d8 fe ff ff       	jmp    6fe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6fe>
 826:	49 89 f7             	mov    %rsi,%r15
 829:	e9 64 ff ff ff       	jmp    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>
 82e:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 835:	00 00 00
 838:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 83f:	48 2b b3 20 01 00 00 	sub    0x120(%rbx),%rsi
 846:	48 89 b3 18 01 00 00 	mov    %rsi,0x118(%rbx)
 84d:	49 83 c7 02          	add    $0x2,%r15
 851:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 858:	e9 35 ff ff ff       	jmp    792 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x792>

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
  42:	0f 86 93 00 00 00    	jbe    db <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xdb>
  48:	49 8d 04 17          	lea    (%r15,%rdx,1),%rax
  4c:	48 b9 03 00 00 00 0e 	movabs $0xe00000003,%rcx
  53:	00 00 00
  56:	49 89 8e 10 01 00 00 	mov    %rcx,0x110(%r14)
  5d:	49 2b 86 20 01 00 00 	sub    0x120(%r14),%rax
  64:	49 89 86 18 01 00 00 	mov    %rax,0x118(%r14)
  6b:	49 8d 1c 17          	lea    (%r15,%rdx,1),%rbx
  6f:	48 ff c3             	inc    %rbx
  72:	49 89 9e 28 01 00 00 	mov    %rbx,0x128(%r14)
  79:	e9 cd 00 00 00       	jmp    14b <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x14b>
  7e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 85 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x85>
			81: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  85:	49 89 46 60          	mov    %rax,0x60(%r14)
  89:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
  90:	00
  91:	49 39 df             	cmp    %rbx,%r15
  94:	73 40                	jae    d6 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xd6>
  96:	41 83 be 10 01 00 00 	cmpl   $0x0,0x110(%r14)
  9d:	00
  9e:	75 36                	jne    d6 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xd6>
  a0:	41 80 3f 00          	cmpb   $0x0,(%r15)
  a4:	0f 84 aa 00 00 00    	je     154 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x154>
  aa:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
  b1:	00 00 00
  b4:	49 89 86 10 01 00 00 	mov    %rax,0x110(%r14)
  bb:	4c 89 f8             	mov    %r15,%rax
  be:	49 2b 86 20 01 00 00 	sub    0x120(%r14),%rax
  c5:	49 89 86 18 01 00 00 	mov    %rax,0x118(%r14)
  cc:	49 ff c7             	inc    %r15
  cf:	4d 89 be 28 01 00 00 	mov    %r15,0x128(%r14)
  d6:	4c 89 fb             	mov    %r15,%rbx
  d9:	eb 70                	jmp    14b <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x14b>
  db:	4d 89 be b8 00 00 00 	mov    %r15,0xb8(%r14)
  e2:	49 89 8e 98 00 00 00 	mov    %rcx,0x98(%r14)
  e9:	48 85 c0             	test   %rax,%rax
  ec:	74 5d                	je     14b <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x14b>
  ee:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # f5 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xf5>
			f1: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  f5:	49 89 4e 60          	mov    %rcx,0x60(%r14)
  f9:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
 100:	00
 101:	48 39 d8             	cmp    %rbx,%rax
 104:	73 42                	jae    148 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x148>
 106:	41 83 be 10 01 00 00 	cmpl   $0x0,0x110(%r14)
 10d:	00
 10e:	75 38                	jne    148 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x148>
 110:	80 38 00             	cmpb   $0x0,(%rax)
 113:	0f 84 42 01 00 00    	je     25b <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x25b>
 119:	48 b9 03 00 00 00 0b 	movabs $0xb00000003,%rcx
 120:	00 00 00
 123:	49 89 8e 10 01 00 00 	mov    %rcx,0x110(%r14)
 12a:	49 8b 8e 20 01 00 00 	mov    0x120(%r14),%rcx
 131:	48 89 c2             	mov    %rax,%rdx
 134:	48 29 ca             	sub    %rcx,%rdx
 137:	49 89 96 18 01 00 00 	mov    %rdx,0x118(%r14)
 13e:	48 ff c0             	inc    %rax
 141:	49 89 86 28 01 00 00 	mov    %rax,0x128(%r14)
 148:	48 89 c3             	mov    %rax,%rbx
 14b:	48 89 d8             	mov    %rbx,%rax
 14e:	5b                   	pop    %rbx
 14f:	41 5e                	pop    %r14
 151:	41 5f                	pop    %r15
 153:	c3                   	ret
 154:	49 8b 86 f0 00 00 00 	mov    0xf0(%r14),%rax
 15b:	48 c1 e0 05          	shl    $0x5,%rax
 15f:	49 03 46 38          	add    0x38(%r14),%rax
 163:	49 8b 8e 80 00 00 00 	mov    0x80(%r14),%rcx
 16a:	48 85 c9             	test   %rcx,%rcx
 16d:	48 0f 44 c1          	cmove  %rcx,%rax
 171:	49 89 86 b0 00 00 00 	mov    %rax,0xb0(%r14)
 178:	41 8b 46 78          	mov    0x78(%r14),%eax
 17c:	83 e0 01             	and    $0x1,%eax
 17f:	41 0f b6 8e 09 01 00 	movzbl 0x109(%r14),%ecx
 186:	00
 187:	83 f1 01             	xor    $0x1,%ecx
 18a:	8d 04 48             	lea    (%rax,%rcx,2),%eax
 18d:	83 c0 04             	add    $0x4,%eax
 190:	41 89 46 78          	mov    %eax,0x78(%r14)
 194:	49 8b 46 30          	mov    0x30(%r14),%rax
 198:	49 8b 8e e0 00 00 00 	mov    0xe0(%r14),%rcx
 19f:	48 8d 51 01          	lea    0x1(%rcx),%rdx
 1a3:	49 89 96 e0 00 00 00 	mov    %rdx,0xe0(%r14)
 1aa:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
 1ae:	48 c1 e1 04          	shl    $0x4,%rcx
 1b2:	41 0f 10 86 a0 00 00 	movups 0xa0(%r14),%xmm0
 1b9:	00
 1ba:	0f 11 44 08 30       	movups %xmm0,0x30(%rax,%rcx,1)
 1bf:	41 0f 10 86 90 00 00 	movups 0x90(%r14),%xmm0
 1c6:	00
 1c7:	0f 11 44 08 20       	movups %xmm0,0x20(%rax,%rcx,1)
 1cc:	41 0f 10 86 80 00 00 	movups 0x80(%r14),%xmm0
 1d3:	00
 1d4:	0f 11 44 08 10       	movups %xmm0,0x10(%rax,%rcx,1)
 1d9:	41 0f 10 46 70       	movups 0x70(%r14),%xmm0
 1de:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
 1e2:	41 0f 10 86 b0 00 00 	movups 0xb0(%r14),%xmm0
 1e9:	00
 1ea:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
 1ef:	49 8b 86 98 00 00 00 	mov    0x98(%r14),%rax
 1f6:	49 01 86 90 00 00 00 	add    %rax,0x90(%r14)
 1fd:	49 c7 86 b8 00 00 00 	movq   $0x0,0xb8(%r14)
 204:	00 00 00 00
 208:	49 c7 86 98 00 00 00 	movq   $0x0,0x98(%r14)
 20f:	00 00 00 00
 213:	41 c6 86 09 01 00 00 	movb   $0x1,0x109(%r14)
 21a:	01
 21b:	41 c6 86 08 01 00 00 	movb   $0x0,0x108(%r14)
 222:	00
 223:	49 ff c7             	inc    %r15
 226:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 22d <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x22d>
			229: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 22d:	49 89 46 60          	mov    %rax,0x60(%r14)
 231:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
 238:	00
 239:	49 39 df             	cmp    %rbx,%r15
 23c:	0f 83 94 fe ff ff    	jae    d6 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xd6>
 242:	41 83 be 10 01 00 00 	cmpl   $0x0,0x110(%r14)
 249:	00
 24a:	0f 85 86 fe ff ff    	jne    d6 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0xd6>
 250:	4c 89 f7             	mov    %r14,%rdi
 253:	4c 89 fe             	mov    %r15,%rsi
 256:	e9 02 01 00 00       	jmp    35d <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x35d>
 25b:	49 8b 8e f0 00 00 00 	mov    0xf0(%r14),%rcx
 262:	48 c1 e1 05          	shl    $0x5,%rcx
 266:	49 03 4e 38          	add    0x38(%r14),%rcx
 26a:	49 8b 96 80 00 00 00 	mov    0x80(%r14),%rdx
 271:	48 85 d2             	test   %rdx,%rdx
 274:	48 0f 44 ca          	cmove  %rdx,%rcx
 278:	49 89 8e b0 00 00 00 	mov    %rcx,0xb0(%r14)
 27f:	41 8b 4e 78          	mov    0x78(%r14),%ecx
 283:	83 e1 01             	and    $0x1,%ecx
 286:	41 0f b6 96 09 01 00 	movzbl 0x109(%r14),%edx
 28d:	00
 28e:	83 f2 01             	xor    $0x1,%edx
 291:	8d 0c 51             	lea    (%rcx,%rdx,2),%ecx
 294:	83 c1 04             	add    $0x4,%ecx
 297:	41 89 4e 78          	mov    %ecx,0x78(%r14)
 29b:	49 8b 4e 30          	mov    0x30(%r14),%rcx
 29f:	49 8b 96 e0 00 00 00 	mov    0xe0(%r14),%rdx
 2a6:	48 8d 72 01          	lea    0x1(%rdx),%rsi
 2aa:	49 89 b6 e0 00 00 00 	mov    %rsi,0xe0(%r14)
 2b1:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
 2b5:	48 c1 e2 04          	shl    $0x4,%rdx
 2b9:	41 0f 10 86 a0 00 00 	movups 0xa0(%r14),%xmm0
 2c0:	00
 2c1:	0f 11 44 11 30       	movups %xmm0,0x30(%rcx,%rdx,1)
 2c6:	41 0f 10 86 90 00 00 	movups 0x90(%r14),%xmm0
 2cd:	00
 2ce:	0f 11 44 11 20       	movups %xmm0,0x20(%rcx,%rdx,1)
 2d3:	41 0f 10 86 80 00 00 	movups 0x80(%r14),%xmm0
 2da:	00
 2db:	0f 11 44 11 10       	movups %xmm0,0x10(%rcx,%rdx,1)
 2e0:	41 0f 10 46 70       	movups 0x70(%r14),%xmm0
 2e5:	0f 11 04 11          	movups %xmm0,(%rcx,%rdx,1)
 2e9:	41 0f 10 86 b0 00 00 	movups 0xb0(%r14),%xmm0
 2f0:	00
 2f1:	0f 11 44 11 40       	movups %xmm0,0x40(%rcx,%rdx,1)
 2f6:	49 8b 8e 98 00 00 00 	mov    0x98(%r14),%rcx
 2fd:	49 01 8e 90 00 00 00 	add    %rcx,0x90(%r14)
 304:	49 c7 86 b8 00 00 00 	movq   $0x0,0xb8(%r14)
 30b:	00 00 00 00
 30f:	49 c7 86 98 00 00 00 	movq   $0x0,0x98(%r14)
 316:	00 00 00 00
 31a:	41 c6 86 09 01 00 00 	movb   $0x1,0x109(%r14)
 321:	01
 322:	41 c6 86 08 01 00 00 	movb   $0x0,0x108(%r14)
 329:	00
 32a:	48 ff c0             	inc    %rax
 32d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 334 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x334>
			330: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 334:	49 89 4e 60          	mov    %rcx,0x60(%r14)
 338:	49 c7 46 68 00 00 00 	movq   $0x0,0x68(%r14)
 33f:	00
 340:	48 39 d8             	cmp    %rbx,%rax
 343:	0f 83 ff fd ff ff    	jae    148 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x148>
 349:	41 83 be 10 01 00 00 	cmpl   $0x0,0x110(%r14)
 350:	00
 351:	0f 85 f1 fd ff ff    	jne    148 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x148>
 357:	4c 89 f7             	mov    %r14,%rdi
 35a:	48 89 c6             	mov    %rax,%rsi
 35d:	48 89 da             	mov    %rbx,%rdx
 360:	5b                   	pop    %rbx
 361:	41 5e                	pop    %r14
 363:	41 5f                	pop    %r15
 365:	e9 00 00 00 00       	jmp    36a <stomptalk::parser::own_metadata()+0x5a>
			366: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
