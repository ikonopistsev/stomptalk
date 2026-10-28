0000000000000210 <stomptalk::parser::reserve(unsigned long, char const*)>:
     210:	f3 0f 1e fa          	endbr64
     214:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
     218:	48 8b 87 00 01 00 00 	mov    0x100(%rdi),%rax
     21f:	49 89 c8             	mov    %rcx,%r8
     222:	49 29 c0             	sub    %rax,%r8
     225:	4c 39 c6             	cmp    %r8,%rsi
     228:	76 34                	jbe    25e <stomptalk::parser::reserve(unsigned long, char const*)+0x4e>
     22a:	4a 8d 04 02          	lea    (%rdx,%r8,1),%rax
     22e:	48 b9 03 00 00 00 0d 	movabs $0xd00000003,%rcx
     235:	00 00 00
     238:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
     23f:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     246:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     24d:	4a 8d 04 02          	lea    (%rdx,%r8,1),%rax
     251:	48 ff c0             	inc    %rax
     254:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
     25b:	31 c0                	xor    %eax,%eax
     25d:	c3                   	ret
     25e:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
     265:	49 01 c0             	add    %rax,%r8
     268:	4c 29 c1             	sub    %r8,%rcx
     26b:	48 39 ce             	cmp    %rcx,%rsi
     26e:	76 14                	jbe    284 <stomptalk::parser::reserve(unsigned long, char const*)+0x74>
     270:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     277:	00 00 00
     27a:	48 89 97 28 01 00 00 	mov    %rdx,0x128(%rdi)
     281:	31 c0                	xor    %eax,%eax
     283:	c3                   	ret
     284:	48 01 f0             	add    %rsi,%rax
     287:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
     28e:	b0 01                	mov    $0x1,%al
     290:	c3                   	ret
     291:	90                   	nop
     292:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     299:	1f 84 00 00 00 00 00

0000000000000320 <stomptalk::parser::own_metadata()>:
     320:	f3 0f 1e fa          	endbr64
     324:	55                   	push   %rbp
     325:	41 57                	push   %r15
     327:	41 56                	push   %r14
     329:	41 55                	push   %r13
     32b:	41 54                	push   %r12
     32d:	53                   	push   %rbx
     32e:	50                   	push   %rax
     32f:	48 89 fb             	mov    %rdi,%rbx
     332:	4c 8b b7 a8 00 00 00 	mov    0xa8(%rdi),%r14
     339:	4d 85 f6             	test   %r14,%r14
     33c:	74 3f                	je     37d <stomptalk::parser::own_metadata()+0x5d>
     33e:	48 8b 43 40          	mov    0x40(%rbx),%rax
     342:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
     349:	48 89 f1             	mov    %rsi,%rcx
     34c:	48 29 c1             	sub    %rax,%rcx
     34f:	48 3b 4b 10          	cmp    0x10(%rbx),%rcx
     353:	72 32                	jb     387 <stomptalk::parser::own_metadata()+0x67>
     355:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     359:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
     35d:	4c 29 f9             	sub    %r15,%rcx
     360:	49 39 ce             	cmp    %rcx,%r14
     363:	77 12                	ja     377 <stomptalk::parser::own_metadata()+0x57>
     365:	4c 89 ff             	mov    %r15,%rdi
     368:	4c 89 f2             	mov    %r14,%rdx
     36b:	e8 00 00 00 00       	call   370 <stomptalk::parser::own_metadata()+0x50>
			36c: R_X86_64_PLT32	memcpy-0x4
     370:	4c 03 73 48          	add    0x48(%rbx),%r14
     374:	4c 89 f0             	mov    %r14,%rax
     377:	48 89 43 48          	mov    %rax,0x48(%rbx)
     37b:	eb 03                	jmp    380 <stomptalk::parser::own_metadata()+0x60>
     37d:	45 31 ff             	xor    %r15d,%r15d
     380:	4c 89 bb a0 00 00 00 	mov    %r15,0xa0(%rbx)
     387:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     38e:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     395:	0f 83 e5 00 00 00    	jae    480 <stomptalk::parser::own_metadata()+0x160>
     39b:	4d 89 e5             	mov    %r12,%r13
     39e:	49 c1 e5 05          	shl    $0x5,%r13
     3a2:	eb 28                	jmp    3cc <stomptalk::parser::own_metadata()+0xac>
     3a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     3ab:	00 00 00 00 00
     3b0:	45 31 ff             	xor    %r15d,%r15d
     3b3:	4e 89 7c 2d 10       	mov    %r15,0x10(%rbp,%r13,1)
     3b8:	49 ff c4             	inc    %r12
     3bb:	49 83 c5 20          	add    $0x20,%r13
     3bf:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     3c6:	0f 83 b4 00 00 00    	jae    480 <stomptalk::parser::own_metadata()+0x160>
     3cc:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     3d0:	4e 8b 7c 2d 08       	mov    0x8(%rbp,%r13,1),%r15
     3d5:	4d 85 ff             	test   %r15,%r15
     3d8:	74 46                	je     420 <stomptalk::parser::own_metadata()+0x100>
     3da:	4a 8b 74 2d 00       	mov    0x0(%rbp,%r13,1),%rsi
     3df:	48 8b 4b 40          	mov    0x40(%rbx),%rcx
     3e3:	48 89 f0             	mov    %rsi,%rax
     3e6:	48 29 c8             	sub    %rcx,%rax
     3e9:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     3ed:	72 3f                	jb     42e <stomptalk::parser::own_metadata()+0x10e>
     3ef:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     3f3:	48 8b 53 50          	mov    0x50(%rbx),%rdx
     3f7:	4c 29 f2             	sub    %r14,%rdx
     3fa:	48 89 e8             	mov    %rbp,%rax
     3fd:	49 39 d7             	cmp    %rdx,%r15
     400:	77 16                	ja     418 <stomptalk::parser::own_metadata()+0xf8>
     402:	4c 89 f7             	mov    %r14,%rdi
     405:	4c 89 fa             	mov    %r15,%rdx
     408:	e8 00 00 00 00       	call   40d <stomptalk::parser::own_metadata()+0xed>
			409: R_X86_64_PLT32	memcpy-0x4
     40d:	4c 03 7b 48          	add    0x48(%rbx),%r15
     411:	48 8b 43 38          	mov    0x38(%rbx),%rax
     415:	4c 89 f9             	mov    %r15,%rcx
     418:	48 89 4b 48          	mov    %rcx,0x48(%rbx)
     41c:	eb 08                	jmp    426 <stomptalk::parser::own_metadata()+0x106>
     41e:	66 90                	xchg   %ax,%ax
     420:	48 89 e8             	mov    %rbp,%rax
     423:	45 31 f6             	xor    %r14d,%r14d
     426:	4e 89 74 2d 00       	mov    %r14,0x0(%rbp,%r13,1)
     42b:	48 89 c5             	mov    %rax,%rbp
     42e:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
     433:	4d 85 f6             	test   %r14,%r14
     436:	0f 84 74 ff ff ff    	je     3b0 <stomptalk::parser::own_metadata()+0x90>
     43c:	4a 8b 74 2d 10       	mov    0x10(%rbp,%r13,1),%rsi
     441:	48 8b 43 40          	mov    0x40(%rbx),%rax
     445:	48 89 f1             	mov    %rsi,%rcx
     448:	48 29 c1             	sub    %rax,%rcx
     44b:	48 3b 4b 10          	cmp    0x10(%rbx),%rcx
     44f:	0f 82 63 ff ff ff    	jb     3b8 <stomptalk::parser::own_metadata()+0x98>
     455:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     459:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
     45d:	4c 29 f9             	sub    %r15,%rcx
     460:	49 39 ce             	cmp    %rcx,%r14
     463:	77 12                	ja     477 <stomptalk::parser::own_metadata()+0x157>
     465:	4c 89 ff             	mov    %r15,%rdi
     468:	4c 89 f2             	mov    %r14,%rdx
     46b:	e8 00 00 00 00       	call   470 <stomptalk::parser::own_metadata()+0x150>
			46c: R_X86_64_PLT32	memcpy-0x4
     470:	4c 03 73 48          	add    0x48(%rbx),%r14
     474:	4c 89 f0             	mov    %r14,%rax
     477:	48 89 43 48          	mov    %rax,0x48(%rbx)
     47b:	e9 33 ff ff ff       	jmp    3b3 <stomptalk::parser::own_metadata()+0x93>
     480:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
     487:	4d 85 f6             	test   %r14,%r14
     48a:	74 3f                	je     4cb <stomptalk::parser::own_metadata()+0x1ab>
     48c:	48 8b 43 40          	mov    0x40(%rbx),%rax
     490:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     497:	48 89 f1             	mov    %rsi,%rcx
     49a:	48 29 c1             	sub    %rax,%rcx
     49d:	48 3b 4b 10          	cmp    0x10(%rbx),%rcx
     4a1:	72 32                	jb     4d5 <stomptalk::parser::own_metadata()+0x1b5>
     4a3:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     4a7:	48 8b 4b 50          	mov    0x50(%rbx),%rcx
     4ab:	4c 29 f9             	sub    %r15,%rcx
     4ae:	49 39 ce             	cmp    %rcx,%r14
     4b1:	77 12                	ja     4c5 <stomptalk::parser::own_metadata()+0x1a5>
     4b3:	4c 89 ff             	mov    %r15,%rdi
     4b6:	4c 89 f2             	mov    %r14,%rdx
     4b9:	e8 00 00 00 00       	call   4be <stomptalk::parser::own_metadata()+0x19e>
			4ba: R_X86_64_PLT32	memcpy-0x4
     4be:	4c 03 73 48          	add    0x48(%rbx),%r14
     4c2:	4c 89 f0             	mov    %r14,%rax
     4c5:	48 89 43 48          	mov    %rax,0x48(%rbx)
     4c9:	eb 03                	jmp    4ce <stomptalk::parser::own_metadata()+0x1ae>
     4cb:	45 31 ff             	xor    %r15d,%r15d
     4ce:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
     4d5:	48 83 c4 08          	add    $0x8,%rsp
     4d9:	5b                   	pop    %rbx
     4da:	41 5c                	pop    %r12
     4dc:	41 5d                	pop    %r13
     4de:	41 5e                	pop    %r14
     4e0:	41 5f                	pop    %r15
     4e2:	5d                   	pop    %rbp
     4e3:	c3                   	ret
     4e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     4eb:	00 00 00 00 00

00000000000004f0 <stomptalk::parser::own_token()>:
     4f0:	f3 0f 1e fa          	endbr64
     4f4:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     4fb:	75 62                	jne    55f <stomptalk::parser::own_token()+0x6f>
     4fd:	41 57                	push   %r15
     4ff:	41 56                	push   %r14
     501:	53                   	push   %rbx
     502:	48 89 fb             	mov    %rdi,%rbx
     505:	e8 00 00 00 00       	call   50a <stomptalk::parser::own_token()+0x1a>
			506: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     50a:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     50e:	48 8b 43 50          	mov    0x50(%rbx),%rax
     512:	4c 8b bb d8 00 00 00 	mov    0xd8(%rbx),%r15
     519:	4c 29 f0             	sub    %r14,%rax
     51c:	49 39 c7             	cmp    %rax,%r15
     51f:	76 06                	jbe    527 <stomptalk::parser::own_token()+0x37>
     521:	48 8b 43 40          	mov    0x40(%rbx),%rax
     525:	eb 21                	jmp    548 <stomptalk::parser::own_token()+0x58>
     527:	4c 89 f0             	mov    %r14,%rax
     52a:	4d 85 ff             	test   %r15,%r15
     52d:	74 16                	je     545 <stomptalk::parser::own_token()+0x55>
     52f:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     536:	4c 89 f7             	mov    %r14,%rdi
     539:	4c 89 fa             	mov    %r15,%rdx
     53c:	e8 00 00 00 00       	call   541 <stomptalk::parser::own_token()+0x51>
			53d: R_X86_64_PLT32	memcpy-0x4
     541:	48 8b 43 48          	mov    0x48(%rbx),%rax
     545:	4c 01 f8             	add    %r15,%rax
     548:	48 89 43 48          	mov    %rax,0x48(%rbx)
     54c:	4c 89 b3 d0 00 00 00 	mov    %r14,0xd0(%rbx)
     553:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     55a:	5b                   	pop    %rbx
     55b:	41 5e                	pop    %r14
     55d:	41 5f                	pop    %r15
     55f:	c3                   	ret

0000000000000560 <stomptalk::parser::append(char const*, unsigned long)>:
     560:	f3 0f 1e fa          	endbr64
     564:	b0 01                	mov    $0x1,%al
     566:	48 85 d2             	test   %rdx,%rdx
     569:	0f 84 dc 00 00 00    	je     64b <stomptalk::parser::append(char const*, unsigned long)+0xeb>
     56f:	4c 8b 47 10          	mov    0x10(%rdi),%r8
     573:	48 8b 8f 00 01 00 00 	mov    0x100(%rdi),%rcx
     57a:	4d 89 c1             	mov    %r8,%r9
     57d:	49 29 c9             	sub    %rcx,%r9
     580:	4c 39 ca             	cmp    %r9,%rdx
     583:	76 34                	jbe    5b9 <stomptalk::parser::append(char const*, unsigned long)+0x59>
     585:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
     589:	48 b9 03 00 00 00 0d 	movabs $0xd00000003,%rcx
     590:	00 00 00
     593:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
     59a:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     5a1:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     5a8:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
     5ac:	48 ff c0             	inc    %rax
     5af:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
     5b6:	31 c0                	xor    %eax,%eax
     5b8:	c3                   	ret
     5b9:	4c 8b 8f f8 00 00 00 	mov    0xf8(%rdi),%r9
     5c0:	49 01 c9             	add    %rcx,%r9
     5c3:	4d 29 c8             	sub    %r9,%r8
     5c6:	4c 39 c2             	cmp    %r8,%rdx
     5c9:	76 14                	jbe    5df <stomptalk::parser::append(char const*, unsigned long)+0x7f>
     5cb:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     5d2:	00 00 00
     5d5:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     5dc:	31 c0                	xor    %eax,%eax
     5de:	c3                   	ret
     5df:	48 01 d1             	add    %rdx,%rcx
     5e2:	48 89 8f 00 01 00 00 	mov    %rcx,0x100(%rdi)
     5e9:	80 bf 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rdi)
     5f0:	75 1a                	jne    60c <stomptalk::parser::append(char const*, unsigned long)+0xac>
     5f2:	48 8b 4f 48          	mov    0x48(%rdi),%rcx
     5f6:	4c 8b 47 50          	mov    0x50(%rdi),%r8
     5fa:	49 29 c8             	sub    %rcx,%r8
     5fd:	4c 39 c2             	cmp    %r8,%rdx
     600:	76 1d                	jbe    61f <stomptalk::parser::append(char const*, unsigned long)+0xbf>
     602:	48 8b 4f 40          	mov    0x40(%rdi),%rcx
     606:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
     60a:	eb 38                	jmp    644 <stomptalk::parser::append(char const*, unsigned long)+0xe4>
     60c:	48 83 bf d8 00 00 00 	cmpq   $0x0,0xd8(%rdi)
     613:	00
     614:	75 2e                	jne    644 <stomptalk::parser::append(char const*, unsigned long)+0xe4>
     616:	48 89 b7 d0 00 00 00 	mov    %rsi,0xd0(%rdi)
     61d:	eb 25                	jmp    644 <stomptalk::parser::append(char const*, unsigned long)+0xe4>
     61f:	41 56                	push   %r14
     621:	53                   	push   %rbx
     622:	50                   	push   %rax
     623:	49 89 fe             	mov    %rdi,%r14
     626:	48 89 cf             	mov    %rcx,%rdi
     629:	48 89 d3             	mov    %rdx,%rbx
     62c:	e8 00 00 00 00       	call   631 <stomptalk::parser::append(char const*, unsigned long)+0xd1>
			62d: R_X86_64_PLT32	memcpy-0x4
     631:	48 89 da             	mov    %rbx,%rdx
     634:	4c 89 f7             	mov    %r14,%rdi
     637:	b0 01                	mov    $0x1,%al
     639:	49 01 5e 48          	add    %rbx,0x48(%r14)
     63d:	48 83 c4 08          	add    $0x8,%rsp
     641:	5b                   	pop    %rbx
     642:	41 5e                	pop    %r14
     644:	48 01 97 d8 00 00 00 	add    %rdx,0xd8(%rdi)
     64b:	c3                   	ret
     64c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000650 <stomptalk::parser::append(char, char const*)>:
     650:	f3 0f 1e fa          	endbr64
     654:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
     658:	48 8b 87 00 01 00 00 	mov    0x100(%rdi),%rax
     65f:	48 39 c1             	cmp    %rax,%rcx
     662:	75 2f                	jne    693 <stomptalk::parser::append(char, char const*)+0x43>
     664:	48 b8 03 00 00 00 0d 	movabs $0xd00000003,%rax
     66b:	00 00 00
     66e:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     675:	48 89 d0             	mov    %rdx,%rax
     678:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     67f:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     686:	48 ff c2             	inc    %rdx
     689:	48 89 97 28 01 00 00 	mov    %rdx,0x128(%rdi)
     690:	31 c0                	xor    %eax,%eax
     692:	c3                   	ret
     693:	4c 8b 87 f8 00 00 00 	mov    0xf8(%rdi),%r8
     69a:	49 01 c0             	add    %rax,%r8
     69d:	4c 39 c1             	cmp    %r8,%rcx
     6a0:	75 14                	jne    6b6 <stomptalk::parser::append(char, char const*)+0x66>
     6a2:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
     6a9:	00 00 00
     6ac:	48 89 97 28 01 00 00 	mov    %rdx,0x128(%rdi)
     6b3:	31 c0                	xor    %eax,%eax
     6b5:	c3                   	ret
     6b6:	55                   	push   %rbp
     6b7:	41 57                	push   %r15
     6b9:	41 56                	push   %r14
     6bb:	53                   	push   %rbx
     6bc:	50                   	push   %rax
     6bd:	48 ff c0             	inc    %rax
     6c0:	48 89 87 00 01 00 00 	mov    %rax,0x100(%rdi)
     6c7:	80 bf 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rdi)
     6ce:	75 14                	jne    6e4 <stomptalk::parser::append(char, char const*)+0x94>
     6d0:	48 8b 47 48          	mov    0x48(%rdi),%rax
     6d4:	48 3b 47 50          	cmp    0x50(%rdi),%rax
     6d8:	72 6e                	jb     748 <stomptalk::parser::append(char, char const*)+0xf8>
     6da:	48 8b 47 40          	mov    0x40(%rdi),%rax
     6de:	48 89 47 48          	mov    %rax,0x48(%rdi)
     6e2:	eb 6f                	jmp    753 <stomptalk::parser::append(char, char const*)+0x103>
     6e4:	89 f5                	mov    %esi,%ebp
     6e6:	49 89 ff             	mov    %rdi,%r15
     6e9:	e8 00 00 00 00       	call   6ee <stomptalk::parser::append(char, char const*)+0x9e>
			6ea: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
     6ee:	4c 89 ff             	mov    %r15,%rdi
     6f1:	49 8b 5f 48          	mov    0x48(%r15),%rbx
     6f5:	49 8b 47 50          	mov    0x50(%r15),%rax
     6f9:	4d 8b b7 d8 00 00 00 	mov    0xd8(%r15),%r14
     700:	48 29 d8             	sub    %rbx,%rax
     703:	49 39 c6             	cmp    %rax,%r14
     706:	76 06                	jbe    70e <stomptalk::parser::append(char, char const*)+0xbe>
     708:	48 8b 47 40          	mov    0x40(%rdi),%rax
     70c:	eb 24                	jmp    732 <stomptalk::parser::append(char, char const*)+0xe2>
     70e:	48 89 d8             	mov    %rbx,%rax
     711:	4d 85 f6             	test   %r14,%r14
     714:	74 19                	je     72f <stomptalk::parser::append(char, char const*)+0xdf>
     716:	48 8b b7 d0 00 00 00 	mov    0xd0(%rdi),%rsi
     71d:	48 89 df             	mov    %rbx,%rdi
     720:	4c 89 f2             	mov    %r14,%rdx
     723:	e8 00 00 00 00       	call   728 <stomptalk::parser::append(char, char const*)+0xd8>
			724: R_X86_64_PLT32	memcpy-0x4
     728:	4c 89 ff             	mov    %r15,%rdi
     72b:	49 8b 47 48          	mov    0x48(%r15),%rax
     72f:	4c 01 f0             	add    %r14,%rax
     732:	48 89 9f d0 00 00 00 	mov    %rbx,0xd0(%rdi)
     739:	c6 87 0d 01 00 00 01 	movb   $0x1,0x10d(%rdi)
     740:	89 ee                	mov    %ebp,%esi
     742:	48 3b 47 50          	cmp    0x50(%rdi),%rax
     746:	73 92                	jae    6da <stomptalk::parser::append(char, char const*)+0x8a>
     748:	48 8d 48 01          	lea    0x1(%rax),%rcx
     74c:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
     750:	40 88 30             	mov    %sil,(%rax)
     753:	48 ff 87 d8 00 00 00 	incq   0xd8(%rdi)
     75a:	b0 01                	mov    $0x1,%al
     75c:	48 83 c4 08          	add    $0x8,%rsp
     760:	5b                   	pop    %rbx
     761:	41 5e                	pop    %r14
     763:	41 5f                	pop    %r15
     765:	5d                   	pop    %rbp
     766:	c3                   	ret
     767:	90                   	nop
     768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     76f:	00

0000000000000770 <stomptalk::parser::finish_token()>:
     770:	f3 0f 1e fa          	endbr64
     774:	48 8b 97 d8 00 00 00 	mov    0xd8(%rdi),%rdx
     77b:	48 89 d0             	mov    %rdx,%rax
     77e:	48 85 d2             	test   %rdx,%rdx
     781:	74 07                	je     78a <stomptalk::parser::finish_token()+0x1a>
     783:	48 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%rax
     78a:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     791:	0f 57 c0             	xorps  %xmm0,%xmm0
     794:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
     79b:	c3                   	ret
     79c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000a80 <stomptalk::parser::finish_value(char const*)>:
     a80:	f3 0f 1e fa          	endbr64
     a84:	55                   	push   %rbp
     a85:	41 57                	push   %r15
     a87:	41 56                	push   %r14
     a89:	41 55                	push   %r13
     a8b:	41 54                	push   %r12
     a8d:	53                   	push   %rbx
     a8e:	48 83 ec 28          	sub    $0x28,%rsp
     a92:	48 8b 8f d0 00 00 00 	mov    0xd0(%rdi),%rcx
     a99:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
     aa0:	48 85 db             	test   %rbx,%rbx
     aa3:	49 89 ce             	mov    %rcx,%r14
     aa6:	4c 0f 44 f3          	cmove  %rbx,%r14
     aaa:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     ab1:	0f 57 c9             	xorps  %xmm1,%xmm1
     ab4:	0f 11 8f d0 00 00 00 	movups %xmm1,0xd0(%rdi)
     abb:	80 bf 0c 01 00 00 01 	cmpb   $0x1,0x10c(%rdi)
     ac2:	0f 85 b1 0c 00 00    	jne    1779 <stomptalk::parser::finish_value(char const*)+0xcf9>
     ac8:	48 83 fb 15          	cmp    $0x15,%rbx
     acc:	72 2e                	jb     afc <stomptalk::parser::finish_value(char const*)+0x7c>
     ace:	48 01 d9             	add    %rbx,%rcx
     ad1:	48 83 c1 ec          	add    $0xffffffffffffffec,%rcx
     ad5:	4c 89 f0             	mov    %r14,%rax
     ad8:	48 89 da             	mov    %rbx,%rdx
     adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     ae0:	80 38 30             	cmpb   $0x30,(%rax)
     ae3:	0f 85 99 00 00 00    	jne    b82 <stomptalk::parser::finish_value(char const*)+0x102>
     ae9:	48 ff c0             	inc    %rax
     aec:	48 ff ca             	dec    %rdx
     aef:	48 83 fa 14          	cmp    $0x14,%rdx
     af3:	77 eb                	ja     ae0 <stomptalk::parser::finish_value(char const*)+0x60>
     af5:	b8 14 00 00 00       	mov    $0x14,%eax
     afa:	eb 41                	jmp    b3d <stomptalk::parser::finish_value(char const*)+0xbd>
     afc:	48 85 db             	test   %rbx,%rbx
     aff:	0f 84 7d 00 00 00    	je     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     b05:	48 83 fb 13          	cmp    $0x13,%rbx
     b09:	73 2f                	jae    b3a <stomptalk::parser::finish_value(char const*)+0xba>
     b0b:	48 8d 43 ff          	lea    -0x1(%rbx),%rax
     b0f:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # b16 <stomptalk::parser::finish_value(char const*)+0x96>
			b12: R_X86_64_PC32	.rodata-0x4
     b16:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
     b1a:	48 01 d0             	add    %rdx,%rax
     b1d:	3e ff e0             	notrack jmp *%rax
     b20:	0f b6 01             	movzbl (%rcx),%eax
     b23:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     b26:	80 f9 f6             	cmp    $0xf6,%cl
     b29:	72 57                	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     b2b:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
     b2f:	48 85 c0             	test   %rax,%rax
     b32:	0f 89 21 0c 00 00    	jns    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
     b38:	eb 48                	jmp    b82 <stomptalk::parser::finish_value(char const*)+0x102>
     b3a:	48 89 d8             	mov    %rbx,%rax
     b3d:	48 8d 50 ee          	lea    -0x12(%rax),%rdx
     b41:	45 31 ff             	xor    %r15d,%r15d
     b44:	45 31 c0             	xor    %r8d,%r8d
     b47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     b4e:	00 00
     b50:	46 0f b6 0c 01       	movzbl (%rcx,%r8,1),%r9d
     b55:	41 83 c1 d0          	add    $0xffffffd0,%r9d
     b59:	41 83 f9 09          	cmp    $0x9,%r9d
     b5d:	77 23                	ja     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     b5f:	4f 8d 14 bf          	lea    (%r15,%r15,4),%r10
     b63:	45 89 c9             	mov    %r9d,%r9d
     b66:	4f 8d 3c 51          	lea    (%r9,%r10,2),%r15
     b6a:	49 ff c0             	inc    %r8
     b6d:	4c 39 c2             	cmp    %r8,%rdx
     b70:	75 de                	jne    b50 <stomptalk::parser::finish_value(char const*)+0xd0>
     b72:	44 0f b6 64 01 ee    	movzbl -0x12(%rcx,%rax,1),%r12d
     b78:	41 8d 54 24 c6       	lea    -0x3a(%r12),%edx
     b7d:	80 fa f6             	cmp    $0xf6,%dl
     b80:	73 33                	jae    bb5 <stomptalk::parser::finish_value(char const*)+0x135>
     b82:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
     b89:	00 00 00
     b8c:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     b93:	48 89 f0             	mov    %rsi,%rax
     b96:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     b9d:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     ba4:	48 ff c6             	inc    %rsi
     ba7:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     bae:	31 c0                	xor    %eax,%eax
     bb0:	e9 0a 0c 00 00       	jmp    17bf <stomptalk::parser::finish_value(char const*)+0xd3f>
     bb5:	48 01 c1             	add    %rax,%rcx
     bb8:	48 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rax
     bbf:	45 63 01
     bc2:	4c 0f af e0          	imul   %rax,%r12
     bc6:	48 83 c1 ef          	add    $0xffffffffffffffef,%rcx
     bca:	49 89 fd             	mov    %rdi,%r13
     bcd:	48 89 cf             	mov    %rcx,%rdi
     bd0:	48 89 f5             	mov    %rsi,%rbp
     bd3:	e8 a8 19 00 00       	call   2580 <stomptalk::detail::(anonymous namespace)::antout<long, 17ul>::conv(char const*)>
     bd8:	0f 57 c9             	xorps  %xmm1,%xmm1
     bdb:	48 89 ee             	mov    %rbp,%rsi
     bde:	4c 89 ef             	mov    %r13,%rdi
     be1:	48 89 c1             	mov    %rax,%rcx
     be4:	4c 01 e1             	add    %r12,%rcx
     be7:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
     bee:	f9 62 bd
     bf1:	48 01 c8             	add    %rcx,%rax
     bf4:	78 8c                	js     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     bf6:	49 83 ff 12          	cmp    $0x12,%r15
     bfa:	77 86                	ja     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     bfc:	75 13                	jne    c11 <stomptalk::parser::finish_value(char const*)+0x191>
     bfe:	48 b9 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rcx
     c05:	27 33 06
     c08:	48 39 c8             	cmp    %rcx,%rax
     c0b:	0f 87 71 ff ff ff    	ja     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     c11:	48 b9 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rcx
     c18:	b6 e0 0d
     c1b:	4c 0f af f9          	imul   %rcx,%r15
     c1f:	4c 01 f8             	add    %r15,%rax
     c22:	e9 32 0b 00 00       	jmp    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
     c27:	49 89 ff             	mov    %rdi,%r15
     c2a:	48 89 cf             	mov    %rcx,%rdi
     c2d:	49 89 f4             	mov    %rsi,%r12
     c30:	e8 4b 19 00 00       	call   2580 <stomptalk::detail::(anonymous namespace)::antout<long, 17ul>::conv(char const*)>
     c35:	e9 0d 0b 00 00       	jmp    1747 <stomptalk::parser::finish_value(char const*)+0xcc7>
     c3a:	44 0f b6 01          	movzbl (%rcx),%r8d
     c3e:	41 8d 40 c6          	lea    -0x3a(%r8),%eax
     c42:	3c f6                	cmp    $0xf6,%al
     c44:	0f 82 38 ff ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     c4a:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     c51:	00 00 80
     c54:	48 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rax
     c5b:	5a 00 00
     c5e:	4c 0f af c0          	imul   %rax,%r8
     c62:	48 b8 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%rax
     c69:	f2 ee ff
     c6c:	4c 01 c0             	add    %r8,%rax
     c6f:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
     c74:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     c78:	41 80 f9 f6          	cmp    $0xf6,%r9b
     c7c:	0f 82 58 0a 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
     c82:	49 b9 00 a0 72 4e 18 	movabs $0x9184e72a000,%r9
     c89:	09 00 00
     c8c:	4d 0f af c1          	imul   %r9,%r8
     c90:	49 bf 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%r15
     c97:	4b fe ff
     c9a:	4d 01 c7             	add    %r8,%r15
     c9d:	44 0f b6 41 02       	movzbl 0x2(%rcx),%r8d
     ca2:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     ca6:	41 80 f9 f6          	cmp    $0xf6,%r9b
     caa:	0f 82 4a 09 00 00    	jb     15fa <stomptalk::parser::finish_value(char const*)+0xb7a>
     cb0:	49 b9 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r9
     cb7:	00 00 00
     cba:	4d 0f af c1          	imul   %r9,%r8
     cbe:	49 bc 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r12
     cc5:	d4 ff ff
     cc8:	4d 01 c4             	add    %r8,%r12
     ccb:	44 0f b6 41 03       	movzbl 0x3(%rcx),%r8d
     cd0:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     cd4:	41 80 f9 f6          	cmp    $0xf6,%r9b
     cd8:	0f 82 19 09 00 00    	jb     15f7 <stomptalk::parser::finish_value(char const*)+0xb77>
     cde:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
     ce5:	00 00 00
     ce8:	4d 0f af c1          	imul   %r9,%r8
     cec:	49 bd 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r13
     cf3:	fb ff ff
     cf6:	4d 01 c5             	add    %r8,%r13
     cf9:	44 0f b6 41 04       	movzbl 0x4(%rcx),%r8d
     cfe:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     d02:	41 80 f9 f6          	cmp    $0xf6,%r9b
     d06:	0f 82 e8 08 00 00    	jb     15f4 <stomptalk::parser::finish_value(char const*)+0xb74>
     d0c:	49 b9 00 e4 0b 54 02 	movabs $0x2540be400,%r9
     d13:	00 00 00
     d16:	4d 0f af c1          	imul   %r9,%r8
     d1a:	48 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rbp
     d21:	ff ff ff
     d24:	4c 01 c5             	add    %r8,%rbp
     d27:	44 0f b6 41 05       	movzbl 0x5(%rcx),%r8d
     d2c:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     d30:	41 80 f9 f6          	cmp    $0xf6,%r9b
     d34:	0f 82 bf 04 00 00    	jb     11f9 <stomptalk::parser::finish_value(char const*)+0x779>
     d3a:	49 69 d0 00 ca 9a 3b 	imul   $0x3b9aca00,%r8,%rdx
     d41:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
     d46:	48 83 c1 06          	add    $0x6,%rcx
     d4a:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     d4f:	48 89 cf             	mov    %rcx,%rdi
     d52:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
     d57:	48 89 04 24          	mov    %rax,(%rsp)
     d5b:	e8 d0 19 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     d60:	0f 57 c9             	xorps  %xmm1,%xmm1
     d63:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
     d68:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
     d6d:	48 89 c1             	mov    %rax,%rcx
     d70:	48 8b 04 24          	mov    (%rsp),%rax
     d74:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
     d7b:	ff ff ff
     d7e:	48 01 ca             	add    %rcx,%rdx
     d81:	48 03 54 24 18       	add    0x18(%rsp),%rdx
     d86:	e9 6e 04 00 00       	jmp    11f9 <stomptalk::parser::finish_value(char const*)+0x779>
     d8b:	44 0f b6 01          	movzbl (%rcx),%r8d
     d8f:	41 8d 40 c6          	lea    -0x3a(%r8),%eax
     d93:	3c f6                	cmp    $0xf6,%al
     d95:	0f 82 e7 fd ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     d9b:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     da2:	00 00 80
     da5:	48 b8 00 e8 76 48 17 	movabs $0x174876e800,%rax
     dac:	00 00 00
     daf:	4c 0f af c0          	imul   %rax,%r8
     db3:	48 b8 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%rax
     dba:	fb ff ff
     dbd:	4c 01 c0             	add    %r8,%rax
     dc0:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
     dc5:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     dc9:	41 80 f9 f6          	cmp    $0xf6,%r9b
     dcd:	0f 82 07 09 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
     dd3:	49 b9 00 e4 0b 54 02 	movabs $0x2540be400,%r9
     dda:	00 00 00
     ddd:	4d 0f af c1          	imul   %r9,%r8
     de1:	49 bf 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r15
     de8:	ff ff ff
     deb:	4d 01 c7             	add    %r8,%r15
     dee:	44 0f b6 41 02       	movzbl 0x2(%rcx),%r8d
     df3:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     df7:	41 80 f9 f6          	cmp    $0xf6,%r9b
     dfb:	0f 82 f9 07 00 00    	jb     15fa <stomptalk::parser::finish_value(char const*)+0xb7a>
     e01:	49 69 d0 00 ca 9a 3b 	imul   $0x3b9aca00,%r8,%rdx
     e08:	48 89 14 24          	mov    %rdx,(%rsp)
     e0c:	48 83 c1 03          	add    $0x3,%rcx
     e10:	49 89 fd             	mov    %rdi,%r13
     e13:	48 89 cf             	mov    %rcx,%rdi
     e16:	48 89 f5             	mov    %rsi,%rbp
     e19:	49 89 c4             	mov    %rax,%r12
     e1c:	e8 0f 19 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     e21:	0f 57 c9             	xorps  %xmm1,%xmm1
     e24:	48 89 ee             	mov    %rbp,%rsi
     e27:	4c 89 ef             	mov    %r13,%rdi
     e2a:	48 89 c1             	mov    %rax,%rcx
     e2d:	4c 89 e0             	mov    %r12,%rax
     e30:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
     e37:	ff ff ff
     e3a:	48 01 ca             	add    %rcx,%rdx
     e3d:	48 03 14 24          	add    (%rsp),%rdx
     e41:	e9 b4 07 00 00       	jmp    15fa <stomptalk::parser::finish_value(char const*)+0xb7a>
     e46:	0f b6 01             	movzbl (%rcx),%eax
     e49:	8d 50 c6             	lea    -0x3a(%rax),%edx
     e4c:	80 fa f6             	cmp    $0xf6,%dl
     e4f:	0f 82 2d fd ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     e55:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     e5c:	00 00 80
     e5f:	48 69 c0 10 27 00 00 	imul   $0x2710,%rax,%rax
     e66:	48 05 00 ad f8 ff    	add    $0xfffffffffff8ad00,%rax
     e6c:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
     e71:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     e75:	41 80 f9 f6          	cmp    $0xf6,%r9b
     e79:	0f 82 5b 08 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
     e7f:	4d 69 c0 e8 03 00 00 	imul   $0x3e8,%r8,%r8
     e86:	49 81 c0 80 44 ff ff 	add    $0xffffffffffff4480,%r8
     e8d:	44 0f b6 49 02       	movzbl 0x2(%rcx),%r9d
     e92:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
     e96:	41 80 fa f6          	cmp    $0xf6,%r10b
     e9a:	0f 82 37 08 00 00    	jb     16d7 <stomptalk::parser::finish_value(char const*)+0xc57>
     ea0:	4d 6b c9 64          	imul   $0x64,%r9,%r9
     ea4:	49 81 c1 40 ed ff ff 	add    $0xffffffffffffed40,%r9
     eab:	44 0f b6 51 03       	movzbl 0x3(%rcx),%r10d
     eb0:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
     eb4:	41 80 fb f6          	cmp    $0xf6,%r11b
     eb8:	0f 82 16 08 00 00    	jb     16d4 <stomptalk::parser::finish_value(char const*)+0xc54>
     ebe:	4f 8d 14 92          	lea    (%r10,%r10,4),%r10
     ec2:	0f b6 49 04          	movzbl 0x4(%rcx),%ecx
     ec6:	44 8d 59 c6          	lea    -0x3a(%rcx),%r11d
     eca:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
     ece:	41 80 fb f6          	cmp    $0xf6,%r11b
     ed2:	48 0f 42 ca          	cmovb  %rdx,%rcx
     ed6:	4a 8d 14 51          	lea    (%rcx,%r10,2),%rdx
     eda:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
     ee1:	e9 ee 07 00 00       	jmp    16d4 <stomptalk::parser::finish_value(char const*)+0xc54>
     ee6:	44 0f b6 01          	movzbl (%rcx),%r8d
     eea:	41 8d 40 c6          	lea    -0x3a(%r8),%eax
     eee:	3c f6                	cmp    $0xf6,%al
     ef0:	0f 82 8c fc ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     ef6:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     efd:	00 00 80
     f00:	48 b8 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%rax
     f07:	00 00 00
     f0a:	4c 0f af c0          	imul   %rax,%r8
     f0e:	48 b8 00 00 0d 21 58 	movabs $0xffffd458210d0000,%rax
     f15:	d4 ff ff
     f18:	4c 01 c0             	add    %r8,%rax
     f1b:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
     f20:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     f24:	41 80 f9 f6          	cmp    $0xf6,%r9b
     f28:	0f 82 ac 07 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
     f2e:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
     f35:	00 00 00
     f38:	4d 0f af c1          	imul   %r9,%r8
     f3c:	49 bf 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r15
     f43:	fb ff ff
     f46:	4d 01 c7             	add    %r8,%r15
     f49:	44 0f b6 41 02       	movzbl 0x2(%rcx),%r8d
     f4e:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     f52:	41 80 f9 f6          	cmp    $0xf6,%r9b
     f56:	0f 82 9e 06 00 00    	jb     15fa <stomptalk::parser::finish_value(char const*)+0xb7a>
     f5c:	49 b9 00 e4 0b 54 02 	movabs $0x2540be400,%r9
     f63:	00 00 00
     f66:	4d 0f af c1          	imul   %r9,%r8
     f6a:	49 bc 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r12
     f71:	ff ff ff
     f74:	4d 01 c4             	add    %r8,%r12
     f77:	44 0f b6 41 03       	movzbl 0x3(%rcx),%r8d
     f7c:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
     f80:	41 80 f9 f6          	cmp    $0xf6,%r9b
     f84:	0f 82 6d 06 00 00    	jb     15f7 <stomptalk::parser::finish_value(char const*)+0xb77>
     f8a:	49 69 d0 00 ca 9a 3b 	imul   $0x3b9aca00,%r8,%rdx
     f91:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
     f96:	48 83 c1 04          	add    $0x4,%rcx
     f9a:	48 89 fd             	mov    %rdi,%rbp
     f9d:	48 89 cf             	mov    %rcx,%rdi
     fa0:	49 89 f5             	mov    %rsi,%r13
     fa3:	48 89 04 24          	mov    %rax,(%rsp)
     fa7:	e8 84 17 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     fac:	0f 57 c9             	xorps  %xmm1,%xmm1
     faf:	4c 89 ee             	mov    %r13,%rsi
     fb2:	48 89 ef             	mov    %rbp,%rdi
     fb5:	48 89 c1             	mov    %rax,%rcx
     fb8:	48 8b 04 24          	mov    (%rsp),%rax
     fbc:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
     fc3:	ff ff ff
     fc6:	48 01 ca             	add    %rcx,%rdx
     fc9:	48 03 54 24 08       	add    0x8(%rsp),%rdx
     fce:	e9 24 06 00 00       	jmp    15f7 <stomptalk::parser::finish_value(char const*)+0xb77>
     fd3:	0f b6 01             	movzbl (%rcx),%eax
     fd6:	8d 50 c6             	lea    -0x3a(%rax),%edx
     fd9:	80 fa f6             	cmp    $0xf6,%dl
     fdc:	0f 82 a0 fb ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
     fe2:	4c 69 e8 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%r13
     fe9:	48 ff c1             	inc    %rcx
     fec:	49 89 ff             	mov    %rdi,%r15
     fef:	48 89 cf             	mov    %rcx,%rdi
     ff2:	49 89 f4             	mov    %rsi,%r12
     ff5:	e8 36 17 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
     ffa:	0f 57 c9             	xorps  %xmm1,%xmm1
     ffd:	4c 89 e6             	mov    %r12,%rsi
    1000:	4c 89 ff             	mov    %r15,%rdi
    1003:	48 89 c1             	mov    %rax,%rcx
    1006:	48 b8 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rax
    100d:	ff ff ff
    1010:	48 01 c8             	add    %rcx,%rax
    1013:	4c 01 e8             	add    %r13,%rax
    1016:	48 85 c0             	test   %rax,%rax
    1019:	0f 89 3a 07 00 00    	jns    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
    101f:	e9 5e fb ff ff       	jmp    b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1024:	0f b6 01             	movzbl (%rcx),%eax
    1027:	8d 50 c6             	lea    -0x3a(%rax),%edx
    102a:	80 fa f6             	cmp    $0xf6,%dl
    102d:	0f 82 4f fb ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1033:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    103a:	00 00 80
    103d:	48 6b c0 64          	imul   $0x64,%rax,%rax
    1041:	48 05 40 ed ff ff    	add    $0xffffffffffffed40,%rax
    1047:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
    104c:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    1050:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1054:	0f 82 80 06 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    105a:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
    105e:	0f b6 49 02          	movzbl 0x2(%rcx),%ecx
    1062:	44 8d 49 c6          	lea    -0x3a(%rcx),%r9d
    1066:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
    106a:	41 80 f9 f6          	cmp    $0xf6,%r9b
    106e:	48 0f 42 ca          	cmovb  %rdx,%rcx
    1072:	4a 8d 14 41          	lea    (%rcx,%r8,2),%rdx
    1076:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
    107d:	e9 58 06 00 00       	jmp    16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    1082:	44 0f b6 01          	movzbl (%rcx),%r8d
    1086:	41 8d 40 c6          	lea    -0x3a(%r8),%eax
    108a:	3c f6                	cmp    $0xf6,%al
    108c:	0f 82 f0 fa ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1092:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1099:	00 00 80
    109c:	48 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rax
    10a3:	8d 03 00
    10a6:	4c 0f af c0          	imul   %rax,%r8
    10aa:	48 b8 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rax
    10b1:	78 55 ff
    10b4:	4c 01 c0             	add    %r8,%rax
    10b7:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
    10bc:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    10c0:	41 80 f9 f6          	cmp    $0xf6,%r9b
    10c4:	0f 82 10 06 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    10ca:	49 b9 00 40 7a 10 f3 	movabs $0x5af3107a4000,%r9
    10d1:	5a 00 00
    10d4:	4d 0f af c1          	imul   %r9,%r8
    10d8:	49 bf 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%r15
    10df:	f2 ee ff
    10e2:	4d 01 c7             	add    %r8,%r15
    10e5:	44 0f b6 41 02       	movzbl 0x2(%rcx),%r8d
    10ea:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    10ee:	41 80 f9 f6          	cmp    $0xf6,%r9b
    10f2:	0f 82 02 05 00 00    	jb     15fa <stomptalk::parser::finish_value(char const*)+0xb7a>
    10f8:	49 b9 00 a0 72 4e 18 	movabs $0x9184e72a000,%r9
    10ff:	09 00 00
    1102:	4d 0f af c1          	imul   %r9,%r8
    1106:	49 bc 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%r12
    110d:	4b fe ff
    1110:	4d 01 c4             	add    %r8,%r12
    1113:	44 0f b6 41 03       	movzbl 0x3(%rcx),%r8d
    1118:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    111c:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1120:	0f 82 d1 04 00 00    	jb     15f7 <stomptalk::parser::finish_value(char const*)+0xb77>
    1126:	49 b9 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r9
    112d:	00 00 00
    1130:	4d 0f af c1          	imul   %r9,%r8
    1134:	49 bd 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r13
    113b:	d4 ff ff
    113e:	4d 01 c5             	add    %r8,%r13
    1141:	44 0f b6 41 04       	movzbl 0x4(%rcx),%r8d
    1146:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    114a:	41 80 f9 f6          	cmp    $0xf6,%r9b
    114e:	0f 82 a0 04 00 00    	jb     15f4 <stomptalk::parser::finish_value(char const*)+0xb74>
    1154:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
    115b:	00 00 00
    115e:	4d 0f af c1          	imul   %r9,%r8
    1162:	48 bd 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%rbp
    1169:	fb ff ff
    116c:	4c 01 c5             	add    %r8,%rbp
    116f:	44 0f b6 41 05       	movzbl 0x5(%rcx),%r8d
    1174:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    1178:	41 80 f9 f6          	cmp    $0xf6,%r9b
    117c:	72 7b                	jb     11f9 <stomptalk::parser::finish_value(char const*)+0x779>
    117e:	48 89 04 24          	mov    %rax,(%rsp)
    1182:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    1187:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    118c:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
    1193:	00 00 00
    1196:	4c 0f af c0          	imul   %rax,%r8
    119a:	48 b8 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rax
    11a1:	ff ff ff
    11a4:	4c 01 c0             	add    %r8,%rax
    11a7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    11ac:	0f b6 41 06          	movzbl 0x6(%rcx),%eax
    11b0:	8d 70 c6             	lea    -0x3a(%rax),%esi
    11b3:	40 80 fe f6          	cmp    $0xf6,%sil
    11b7:	72 2a                	jb     11e3 <stomptalk::parser::finish_value(char const*)+0x763>
    11b9:	48 69 c0 00 ca 9a 3b 	imul   $0x3b9aca00,%rax,%rax
    11c0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    11c5:	48 83 c1 07          	add    $0x7,%rcx
    11c9:	48 89 cf             	mov    %rcx,%rdi
    11cc:	e8 5f 15 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
    11d1:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
    11d8:	ff ff ff
    11db:	48 01 c2             	add    %rax,%rdx
    11de:	48 03 54 24 20       	add    0x20(%rsp),%rdx
    11e3:	48 03 54 24 18       	add    0x18(%rsp),%rdx
    11e8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    11ed:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    11f2:	48 8b 04 24          	mov    (%rsp),%rax
    11f6:	0f 57 c9             	xorps  %xmm1,%xmm1
    11f9:	48 01 ea             	add    %rbp,%rdx
    11fc:	e9 f3 03 00 00       	jmp    15f4 <stomptalk::parser::finish_value(char const*)+0xb74>
    1201:	0f b6 01             	movzbl (%rcx),%eax
    1204:	8d 50 c6             	lea    -0x3a(%rax),%edx
    1207:	80 fa f6             	cmp    $0xf6,%dl
    120a:	0f 82 72 f9 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1210:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1217:	00 00 80
    121a:	48 69 c0 e8 03 00 00 	imul   $0x3e8,%rax,%rax
    1221:	48 05 80 44 ff ff    	add    $0xffffffffffff4480,%rax
    1227:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
    122c:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    1230:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1234:	0f 82 a0 04 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    123a:	4d 6b c0 64          	imul   $0x64,%r8,%r8
    123e:	49 81 c0 40 ed ff ff 	add    $0xffffffffffffed40,%r8
    1245:	44 0f b6 49 02       	movzbl 0x2(%rcx),%r9d
    124a:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    124e:	41 80 fa f6          	cmp    $0xf6,%r10b
    1252:	0f 82 7f 04 00 00    	jb     16d7 <stomptalk::parser::finish_value(char const*)+0xc57>
    1258:	4f 8d 0c 89          	lea    (%r9,%r9,4),%r9
    125c:	0f b6 49 03          	movzbl 0x3(%rcx),%ecx
    1260:	44 8d 51 c6          	lea    -0x3a(%rcx),%r10d
    1264:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
    1268:	41 80 fa f6          	cmp    $0xf6,%r10b
    126c:	48 0f 42 ca          	cmovb  %rdx,%rcx
    1270:	4a 8d 14 49          	lea    (%rcx,%r9,2),%rdx
    1274:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
    127b:	e9 57 04 00 00       	jmp    16d7 <stomptalk::parser::finish_value(char const*)+0xc57>
    1280:	0f b6 01             	movzbl (%rcx),%eax
    1283:	8d 50 c6             	lea    -0x3a(%rax),%edx
    1286:	80 fa f6             	cmp    $0xf6,%dl
    1289:	0f 82 f3 f8 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    128f:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1296:	00 00 80
    1299:	48 69 c0 80 96 98 00 	imul   $0x989680,%rax,%rax
    12a0:	48 05 00 c8 63 e3    	add    $0xffffffffe363c800,%rax
    12a6:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
    12ab:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    12af:	41 80 f9 f6          	cmp    $0xf6,%r9b
    12b3:	0f 82 21 04 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    12b9:	4d 69 c0 40 42 0f 00 	imul   $0xf4240,%r8,%r8
    12c0:	49 81 c0 00 94 23 fd 	add    $0xfffffffffd239400,%r8
    12c7:	44 0f b6 49 02       	movzbl 0x2(%rcx),%r9d
    12cc:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    12d0:	41 80 fa f6          	cmp    $0xf6,%r10b
    12d4:	0f 82 fd 03 00 00    	jb     16d7 <stomptalk::parser::finish_value(char const*)+0xc57>
    12da:	4d 69 c9 a0 86 01 00 	imul   $0x186a0,%r9,%r9
    12e1:	49 81 c1 00 c2 b6 ff 	add    $0xffffffffffb6c200,%r9
    12e8:	44 0f b6 51 03       	movzbl 0x3(%rcx),%r10d
    12ed:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    12f1:	41 80 fb f6          	cmp    $0xf6,%r11b
    12f5:	0f 82 d9 03 00 00    	jb     16d4 <stomptalk::parser::finish_value(char const*)+0xc54>
    12fb:	4d 69 d2 10 27 00 00 	imul   $0x2710,%r10,%r10
    1302:	49 81 c2 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r10
    1309:	44 0f b6 59 04       	movzbl 0x4(%rcx),%r11d
    130e:	41 8d 6b c6          	lea    -0x3a(%r11),%ebp
    1312:	40 80 fd f6          	cmp    $0xf6,%bpl
    1316:	0f 82 b5 03 00 00    	jb     16d1 <stomptalk::parser::finish_value(char const*)+0xc51>
    131c:	4d 69 db e8 03 00 00 	imul   $0x3e8,%r11,%r11
    1323:	49 81 c3 80 44 ff ff 	add    $0xffffffffffff4480,%r11
    132a:	44 0f b6 79 05       	movzbl 0x5(%rcx),%r15d
    132f:	41 8d 6f c6          	lea    -0x3a(%r15),%ebp
    1333:	40 80 fd f6          	cmp    $0xf6,%bpl
    1337:	0f 82 91 03 00 00    	jb     16ce <stomptalk::parser::finish_value(char const*)+0xc4e>
    133d:	4d 6b ff 64          	imul   $0x64,%r15,%r15
    1341:	49 81 c7 40 ed ff ff 	add    $0xffffffffffffed40,%r15
    1348:	44 0f b6 61 06       	movzbl 0x6(%rcx),%r12d
    134d:	41 8d 6c 24 c6       	lea    -0x3a(%r12),%ebp
    1352:	40 80 fd f6          	cmp    $0xf6,%bpl
    1356:	72 22                	jb     137a <stomptalk::parser::finish_value(char const*)+0x8fa>
    1358:	4f 8d 24 a4          	lea    (%r12,%r12,4),%r12
    135c:	0f b6 49 07          	movzbl 0x7(%rcx),%ecx
    1360:	8d 69 c6             	lea    -0x3a(%rcx),%ebp
    1363:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
    1367:	40 80 fd f6          	cmp    $0xf6,%bpl
    136b:	48 0f 42 ca          	cmovb  %rdx,%rcx
    136f:	4a 8d 14 61          	lea    (%rcx,%r12,2),%rdx
    1373:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
    137a:	4c 01 fa             	add    %r15,%rdx
    137d:	e9 4c 03 00 00       	jmp    16ce <stomptalk::parser::finish_value(char const*)+0xc4e>
    1382:	0f b6 01             	movzbl (%rcx),%eax
    1385:	8d 50 c6             	lea    -0x3a(%rax),%edx
    1388:	80 fa f6             	cmp    $0xf6,%dl
    138b:	0f 82 f1 f7 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1391:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1395:	0f b6 49 01          	movzbl 0x1(%rcx),%ecx
    1399:	8d 51 c6             	lea    -0x3a(%rcx),%edx
    139c:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
    13a0:	80 fa f6             	cmp    $0xf6,%dl
    13a3:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    13aa:	00 00 80
    13ad:	48 0f 43 d1          	cmovae %rcx,%rdx
    13b1:	48 8d 04 42          	lea    (%rdx,%rax,2),%rax
    13b5:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
    13bb:	48 85 c0             	test   %rax,%rax
    13be:	0f 89 95 03 00 00    	jns    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
    13c4:	e9 b9 f7 ff ff       	jmp    b82 <stomptalk::parser::finish_value(char const*)+0x102>
    13c9:	44 0f b6 39          	movzbl (%rcx),%r15d
    13cd:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    13d1:	3c f6                	cmp    $0xf6,%al
    13d3:	0f 82 a9 f7 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    13d9:	48 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rax
    13e0:	45 63 01
    13e3:	4c 0f af f8          	imul   %rax,%r15
    13e7:	48 ff c1             	inc    %rcx
    13ea:	49 89 fc             	mov    %rdi,%r12
    13ed:	48 89 cf             	mov    %rcx,%rdi
    13f0:	49 89 f5             	mov    %rsi,%r13
    13f3:	e8 88 11 00 00       	call   2580 <stomptalk::detail::(anonymous namespace)::antout<long, 17ul>::conv(char const*)>
    13f8:	0f 57 c9             	xorps  %xmm1,%xmm1
    13fb:	4c 89 ee             	mov    %r13,%rsi
    13fe:	4c 89 e7             	mov    %r12,%rdi
    1401:	48 89 c1             	mov    %rax,%rcx
    1404:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
    140b:	f9 62 bd
    140e:	48 01 c8             	add    %rcx,%rax
    1411:	4c 01 f8             	add    %r15,%rax
    1414:	48 85 c0             	test   %rax,%rax
    1417:	0f 89 3c 03 00 00    	jns    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
    141d:	e9 60 f7 ff ff       	jmp    b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1422:	0f b6 01             	movzbl (%rcx),%eax
    1425:	8d 50 c6             	lea    -0x3a(%rax),%edx
    1428:	80 fa f6             	cmp    $0xf6,%dl
    142b:	0f 82 51 f7 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1431:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1438:	00 00 80
    143b:	48 69 c0 a0 86 01 00 	imul   $0x186a0,%rax,%rax
    1442:	48 05 00 c2 b6 ff    	add    $0xffffffffffb6c200,%rax
    1448:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
    144d:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    1451:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1455:	0f 82 7f 02 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    145b:	4d 69 c0 10 27 00 00 	imul   $0x2710,%r8,%r8
    1462:	49 81 c0 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r8
    1469:	44 0f b6 49 02       	movzbl 0x2(%rcx),%r9d
    146e:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    1472:	41 80 fa f6          	cmp    $0xf6,%r10b
    1476:	0f 82 5b 02 00 00    	jb     16d7 <stomptalk::parser::finish_value(char const*)+0xc57>
    147c:	4d 69 c9 e8 03 00 00 	imul   $0x3e8,%r9,%r9
    1483:	49 81 c1 80 44 ff ff 	add    $0xffffffffffff4480,%r9
    148a:	44 0f b6 51 03       	movzbl 0x3(%rcx),%r10d
    148f:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    1493:	41 80 fb f6          	cmp    $0xf6,%r11b
    1497:	0f 82 37 02 00 00    	jb     16d4 <stomptalk::parser::finish_value(char const*)+0xc54>
    149d:	4d 6b d2 64          	imul   $0x64,%r10,%r10
    14a1:	49 81 c2 40 ed ff ff 	add    $0xffffffffffffed40,%r10
    14a8:	44 0f b6 59 04       	movzbl 0x4(%rcx),%r11d
    14ad:	41 8d 6b c6          	lea    -0x3a(%r11),%ebp
    14b1:	40 80 fd f6          	cmp    $0xf6,%bpl
    14b5:	0f 82 16 02 00 00    	jb     16d1 <stomptalk::parser::finish_value(char const*)+0xc51>
    14bb:	4f 8d 1c 9b          	lea    (%r11,%r11,4),%r11
    14bf:	0f b6 49 05          	movzbl 0x5(%rcx),%ecx
    14c3:	8d 69 c6             	lea    -0x3a(%rcx),%ebp
    14c6:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
    14ca:	40 80 fd f6          	cmp    $0xf6,%bpl
    14ce:	48 0f 42 ca          	cmovb  %rdx,%rcx
    14d2:	4a 8d 14 59          	lea    (%rcx,%r11,2),%rdx
    14d6:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
    14dd:	e9 ef 01 00 00       	jmp    16d1 <stomptalk::parser::finish_value(char const*)+0xc51>
    14e2:	44 0f b6 01          	movzbl (%rcx),%r8d
    14e6:	41 8d 40 c6          	lea    -0x3a(%r8),%eax
    14ea:	3c f6                	cmp    $0xf6,%al
    14ec:	0f 82 90 f6 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    14f2:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    14f9:	00 00 80
    14fc:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    1503:	09 00 00
    1506:	4c 0f af c0          	imul   %rax,%r8
    150a:	48 b8 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rax
    1511:	4b fe ff
    1514:	4c 01 c0             	add    %r8,%rax
    1517:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
    151c:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    1520:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1524:	0f 82 b0 01 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    152a:	49 b9 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r9
    1531:	00 00 00
    1534:	4d 0f af c1          	imul   %r9,%r8
    1538:	49 bf 00 00 0d 21 58 	movabs $0xffffd458210d0000,%r15
    153f:	d4 ff ff
    1542:	4d 01 c7             	add    %r8,%r15
    1545:	44 0f b6 41 02       	movzbl 0x2(%rcx),%r8d
    154a:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    154e:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1552:	0f 82 a2 00 00 00    	jb     15fa <stomptalk::parser::finish_value(char const*)+0xb7a>
    1558:	49 b9 00 e8 76 48 17 	movabs $0x174876e800,%r9
    155f:	00 00 00
    1562:	4d 0f af c1          	imul   %r9,%r8
    1566:	49 bc 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r12
    156d:	fb ff ff
    1570:	4d 01 c4             	add    %r8,%r12
    1573:	44 0f b6 41 03       	movzbl 0x3(%rcx),%r8d
    1578:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    157c:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1580:	72 75                	jb     15f7 <stomptalk::parser::finish_value(char const*)+0xb77>
    1582:	49 b9 00 e4 0b 54 02 	movabs $0x2540be400,%r9
    1589:	00 00 00
    158c:	4d 0f af c1          	imul   %r9,%r8
    1590:	49 bd 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r13
    1597:	ff ff ff
    159a:	4d 01 c5             	add    %r8,%r13
    159d:	44 0f b6 41 04       	movzbl 0x4(%rcx),%r8d
    15a2:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    15a6:	41 80 f9 f6          	cmp    $0xf6,%r9b
    15aa:	72 48                	jb     15f4 <stomptalk::parser::finish_value(char const*)+0xb74>
    15ac:	49 69 d0 00 ca 9a 3b 	imul   $0x3b9aca00,%r8,%rdx
    15b3:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    15b8:	48 83 c1 05          	add    $0x5,%rcx
    15bc:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    15c1:	48 89 cf             	mov    %rcx,%rdi
    15c4:	48 89 f5             	mov    %rsi,%rbp
    15c7:	48 89 04 24          	mov    %rax,(%rsp)
    15cb:	e8 60 11 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
    15d0:	0f 57 c9             	xorps  %xmm1,%xmm1
    15d3:	48 89 ee             	mov    %rbp,%rsi
    15d6:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    15db:	48 89 c1             	mov    %rax,%rcx
    15de:	48 8b 04 24          	mov    (%rsp),%rax
    15e2:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
    15e9:	ff ff ff
    15ec:	48 01 ca             	add    %rcx,%rdx
    15ef:	48 03 54 24 10       	add    0x10(%rsp),%rdx
    15f4:	4c 01 ea             	add    %r13,%rdx
    15f7:	4c 01 e2             	add    %r12,%rdx
    15fa:	4c 01 fa             	add    %r15,%rdx
    15fd:	e9 d8 00 00 00       	jmp    16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    1602:	0f b6 01             	movzbl (%rcx),%eax
    1605:	8d 50 c6             	lea    -0x3a(%rax),%edx
    1608:	80 fa f6             	cmp    $0xf6,%dl
    160b:	0f 82 71 f5 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1611:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1618:	00 00 80
    161b:	48 69 c0 40 42 0f 00 	imul   $0xf4240,%rax,%rax
    1622:	48 05 00 94 23 fd    	add    $0xfffffffffd239400,%rax
    1628:	44 0f b6 41 01       	movzbl 0x1(%rcx),%r8d
    162d:	45 8d 48 c6          	lea    -0x3a(%r8),%r9d
    1631:	41 80 f9 f6          	cmp    $0xf6,%r9b
    1635:	0f 82 9f 00 00 00    	jb     16da <stomptalk::parser::finish_value(char const*)+0xc5a>
    163b:	4d 69 c0 a0 86 01 00 	imul   $0x186a0,%r8,%r8
    1642:	49 81 c0 00 c2 b6 ff 	add    $0xffffffffffb6c200,%r8
    1649:	44 0f b6 49 02       	movzbl 0x2(%rcx),%r9d
    164e:	45 8d 51 c6          	lea    -0x3a(%r9),%r10d
    1652:	41 80 fa f6          	cmp    $0xf6,%r10b
    1656:	72 7f                	jb     16d7 <stomptalk::parser::finish_value(char const*)+0xc57>
    1658:	4d 69 c9 10 27 00 00 	imul   $0x2710,%r9,%r9
    165f:	49 81 c1 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r9
    1666:	44 0f b6 51 03       	movzbl 0x3(%rcx),%r10d
    166b:	45 8d 5a c6          	lea    -0x3a(%r10),%r11d
    166f:	41 80 fb f6          	cmp    $0xf6,%r11b
    1673:	72 5f                	jb     16d4 <stomptalk::parser::finish_value(char const*)+0xc54>
    1675:	4d 69 d2 e8 03 00 00 	imul   $0x3e8,%r10,%r10
    167c:	49 81 c2 80 44 ff ff 	add    $0xffffffffffff4480,%r10
    1683:	44 0f b6 59 04       	movzbl 0x4(%rcx),%r11d
    1688:	41 8d 6b c6          	lea    -0x3a(%r11),%ebp
    168c:	40 80 fd f6          	cmp    $0xf6,%bpl
    1690:	72 3f                	jb     16d1 <stomptalk::parser::finish_value(char const*)+0xc51>
    1692:	4d 6b db 64          	imul   $0x64,%r11,%r11
    1696:	49 81 c3 40 ed ff ff 	add    $0xffffffffffffed40,%r11
    169d:	44 0f b6 79 05       	movzbl 0x5(%rcx),%r15d
    16a2:	41 8d 6f c6          	lea    -0x3a(%r15),%ebp
    16a6:	40 80 fd f6          	cmp    $0xf6,%bpl
    16aa:	72 22                	jb     16ce <stomptalk::parser::finish_value(char const*)+0xc4e>
    16ac:	4f 8d 3c bf          	lea    (%r15,%r15,4),%r15
    16b0:	0f b6 49 06          	movzbl 0x6(%rcx),%ecx
    16b4:	8d 69 c6             	lea    -0x3a(%rcx),%ebp
    16b7:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
    16bb:	40 80 fd f6          	cmp    $0xf6,%bpl
    16bf:	48 0f 42 ca          	cmovb  %rdx,%rcx
    16c3:	4a 8d 14 79          	lea    (%rcx,%r15,2),%rdx
    16c7:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
    16ce:	4c 01 da             	add    %r11,%rdx
    16d1:	4c 01 d2             	add    %r10,%rdx
    16d4:	4c 01 ca             	add    %r9,%rdx
    16d7:	4c 01 c2             	add    %r8,%rdx
    16da:	48 01 d0             	add    %rdx,%rax
    16dd:	48 85 c0             	test   %rax,%rax
    16e0:	79 77                	jns    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
    16e2:	e9 9b f4 ff ff       	jmp    b82 <stomptalk::parser::finish_value(char const*)+0x102>
    16e7:	0f b6 11             	movzbl (%rcx),%edx
    16ea:	8d 42 c6             	lea    -0x3a(%rdx),%eax
    16ed:	3c f6                	cmp    $0xf6,%al
    16ef:	0f 82 8d f4 ff ff    	jb     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    16f5:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
    16fc:	00 00 00
    16ff:	48 0f af d0          	imul   %rax,%rdx
    1703:	48 b8 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rax
    170a:	ff ff ff
    170d:	48 01 d0             	add    %rdx,%rax
    1710:	0f b6 51 01          	movzbl 0x1(%rcx),%edx
    1714:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
    1718:	41 80 f8 f6          	cmp    $0xf6,%r8b
    171c:	0f 83 ac 00 00 00    	jae    17ce <stomptalk::parser::finish_value(char const*)+0xd4e>
    1722:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1729:	00 00 80
    172c:	48 01 d0             	add    %rdx,%rax
    172f:	48 85 c0             	test   %rax,%rax
    1732:	79 25                	jns    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
    1734:	e9 49 f4 ff ff       	jmp    b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1739:	49 89 ff             	mov    %rdi,%r15
    173c:	48 89 cf             	mov    %rcx,%rdi
    173f:	49 89 f4             	mov    %rsi,%r12
    1742:	e8 e9 0f 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
    1747:	0f 57 c9             	xorps  %xmm1,%xmm1
    174a:	4c 89 e6             	mov    %r12,%rsi
    174d:	4c 89 ff             	mov    %r15,%rdi
    1750:	48 85 c0             	test   %rax,%rax
    1753:	0f 88 29 f4 ff ff    	js     b82 <stomptalk::parser::finish_value(char const*)+0x102>
    1759:	48 3b 47 20          	cmp    0x20(%rdi),%rax
    175d:	76 0f                	jbe    176e <stomptalk::parser::finish_value(char const*)+0xcee>
    175f:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    1766:	00 00 00
    1769:	e9 1e f4 ff ff       	jmp    b8c <stomptalk::parser::finish_value(char const*)+0x10c>
    176e:	48 89 87 88 00 00 00 	mov    %rax,0x88(%rdi)
    1775:	80 4f 78 01          	orb    $0x1,0x78(%rdi)
    1779:	48 8b 47 38          	mov    0x38(%rdi),%rax
    177d:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
    1784:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    1788:	48 89 97 e8 00 00 00 	mov    %rdx,0xe8(%rdi)
    178f:	48 c1 e1 05          	shl    $0x5,%rcx
    1793:	0f 10 87 c0 00 00 00 	movups 0xc0(%rdi),%xmm0
    179a:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    179e:	4c 89 74 08 10       	mov    %r14,0x10(%rax,%rcx,1)
    17a3:	48 89 5c 08 18       	mov    %rbx,0x18(%rax,%rcx,1)
    17a8:	48 ff 87 80 00 00 00 	incq   0x80(%rdi)
    17af:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
    17b6:	0f 11 8f c0 00 00 00 	movups %xmm1,0xc0(%rdi)
    17bd:	b0 01                	mov    $0x1,%al
    17bf:	48 83 c4 28          	add    $0x28,%rsp
    17c3:	5b                   	pop    %rbx
    17c4:	41 5c                	pop    %r12
    17c6:	41 5d                	pop    %r13
    17c8:	41 5e                	pop    %r14
    17ca:	41 5f                	pop    %r15
    17cc:	5d                   	pop    %rbp
    17cd:	c3                   	ret
    17ce:	48 69 ea 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rbp
    17d5:	48 83 c1 02          	add    $0x2,%rcx
    17d9:	49 89 fc             	mov    %rdi,%r12
    17dc:	48 89 cf             	mov    %rcx,%rdi
    17df:	49 89 f5             	mov    %rsi,%r13
    17e2:	49 89 c7             	mov    %rax,%r15
    17e5:	e8 46 0f 00 00       	call   2730 <stomptalk::detail::(anonymous namespace)::antout<long, 9ul>::conv(char const*)>
    17ea:	0f 57 c9             	xorps  %xmm1,%xmm1
    17ed:	4c 89 ee             	mov    %r13,%rsi
    17f0:	4c 89 e7             	mov    %r12,%rdi
    17f3:	48 89 c1             	mov    %rax,%rcx
    17f6:	4c 89 f8             	mov    %r15,%rax
    17f9:	48 ba 00 20 fa d2 f4 	movabs $0xfffffff4d2fa2000,%rdx
    1800:	ff ff ff
    1803:	48 01 ca             	add    %rcx,%rdx
    1806:	48 01 ea             	add    %rbp,%rdx
    1809:	48 01 d0             	add    %rdx,%rax
    180c:	48 85 c0             	test   %rax,%rax
    180f:	0f 89 44 ff ff ff    	jns    1759 <stomptalk::parser::finish_value(char const*)+0xcd9>
    1815:	e9 68 f3 ff ff       	jmp    b82 <stomptalk::parser::finish_value(char const*)+0x102>
    181a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000000 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	53                   	push   %rbx
   5:	8b 87 10 01 00 00    	mov    0x110(%rdi),%eax
   b:	85 c0                	test   %eax,%eax
   d:	74 2d                	je     3c <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x3c>
   f:	48 39 d6             	cmp    %rdx,%rsi
  12:	73 23                	jae    37 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x37>
  14:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
  1b:	00 00 00 00 00
  20:	0f b6 1e             	movzbl (%rsi),%ebx
  23:	83 fb 0a             	cmp    $0xa,%ebx
  26:	0f 85 a7 00 00 00    	jne    d3 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd3>
  2c:	48 ff c6             	inc    %rsi
  2f:	48 39 d6             	cmp    %rdx,%rsi
  32:	75 ec                	jne    20 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x20>
  34:	48 89 d6             	mov    %rdx,%rsi
  37:	48 89 f0             	mov    %rsi,%rax
  3a:	5b                   	pop    %rbx
  3b:	c3                   	ret
  3c:	49 89 d0             	mov    %rdx,%r8
  3f:	49 f7 d8             	neg    %r8
  42:	4c 8d 0d 00 00 00 00 	lea    0x0(%rip),%r9        # 49 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x49>
			45: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
  49:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 50 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x50>
			4c: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
  50:	48 39 d6             	cmp    %rdx,%rsi
  53:	73 e2                	jae    37 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x37>
  55:	49 89 f3             	mov    %rsi,%r11
  58:	49 f7 db             	neg    %r11
  5b:	48 ff c6             	inc    %rsi
  5e:	48 89 f1             	mov    %rsi,%rcx
  61:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
  68:	0f 1f 84 00 00 00 00
  6f:	00
  70:	0f b6 59 ff          	movzbl -0x1(%rcx),%ebx
  74:	83 fb 0a             	cmp    $0xa,%ebx
  77:	75 17                	jne    90 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x90>
  79:	49 ff cb             	dec    %r11
  7c:	48 ff c1             	inc    %rcx
  7f:	4d 39 d8             	cmp    %r11,%r8
  82:	75 ec                	jne    70 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x70>
  84:	eb ae                	jmp    34 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x34>
  86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  8d:	00 00 00
  90:	83 fb 0d             	cmp    $0xd,%ebx
  93:	75 5e                	jne    f3 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xf3>
  95:	4c 89 4f 60          	mov    %r9,0x60(%rdi)
  99:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  a0:	00
  a1:	48 39 d1             	cmp    %rdx,%rcx
  a4:	0f 83 35 01 00 00    	jae    1df <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1df>
  aa:	80 39 0a             	cmpb   $0xa,(%rcx)
  ad:	0f 85 34 01 00 00    	jne    1e7 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1e7>
  b3:	48 8d 71 01          	lea    0x1(%rcx),%rsi
  b7:	4c 89 57 60          	mov    %r10,0x60(%rdi)
  bb:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  c2:	00
  c3:	48 39 d6             	cmp    %rdx,%rsi
  c6:	72 88                	jb     50 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x50>
  c8:	48 ff c1             	inc    %rcx
  cb:	48 89 ce             	mov    %rcx,%rsi
  ce:	48 89 f0             	mov    %rsi,%rax
  d1:	5b                   	pop    %rbx
  d2:	c3                   	ret
  d3:	83 fb 0d             	cmp    $0xd,%ebx
  d6:	75 21                	jne    f9 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xf9>
  d8:	48 ff c6             	inc    %rsi
  db:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # e2 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xe2>
			de: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
  e2:	48 89 47 60          	mov    %rax,0x60(%rdi)
  e6:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  ed:	00
  ee:	48 89 f0             	mov    %rsi,%rax
  f1:	5b                   	pop    %rbx
  f2:	c3                   	ret
  f3:	48 ff c9             	dec    %rcx
  f6:	48 89 ce             	mov    %rcx,%rsi
  f9:	80 c3 a5             	add    $0xa5,%bl
  fc:	80 fb e5             	cmp    $0xe5,%bl
  ff:	77 31                	ja     132 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x132>
 101:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
 108:	00 00 00
 10b:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 112:	48 89 f0             	mov    %rsi,%rax
 115:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 11c:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 123:	48 ff c6             	inc    %rsi
 126:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 12d:	48 89 f0             	mov    %rsi,%rax
 130:	5b                   	pop    %rbx
 131:	c3                   	ret
 132:	48 8b 8f e0 00 00 00 	mov    0xe0(%rdi),%rcx
 139:	48 3b 0f             	cmp    (%rdi),%rcx
 13c:	75 0f                	jne    14d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x14d>
 13e:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
 145:	00 00 00
 148:	48 89 f0             	mov    %rsi,%rax
 14b:	5b                   	pop    %rbx
 14c:	c3                   	ret
 14d:	0f 57 c0             	xorps  %xmm0,%xmm0
 150:	0f 11 87 b0 00 00 00 	movups %xmm0,0xb0(%rdi)
 157:	0f 11 87 a0 00 00 00 	movups %xmm0,0xa0(%rdi)
 15e:	0f 11 87 90 00 00 00 	movups %xmm0,0x90(%rdi)
 165:	0f 11 87 80 00 00 00 	movups %xmm0,0x80(%rdi)
 16c:	0f 11 47 70          	movups %xmm0,0x70(%rdi)
 170:	c7 87 09 01 00 00 00 	movl   $0x0,0x109(%rdi)
 177:	00 00 00
 17a:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
 181:	0f 11 87 c0 00 00 00 	movups %xmm0,0xc0(%rdi)
 188:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
 18f:	c6 87 08 01 00 00 01 	movb   $0x1,0x108(%rdi)
 196:	48 c7 87 00 01 00 00 	movq   $0x0,0x100(%rdi)
 19d:	00 00 00 00
 1a1:	48 8b 4f 48          	mov    0x48(%rdi),%rcx
 1a5:	4c 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%r8
 1ac:	48 2b 4f 40          	sub    0x40(%rdi),%rcx
 1b0:	48 89 8f f8 00 00 00 	mov    %rcx,0xf8(%rdi)
 1b7:	4c 89 87 f0 00 00 00 	mov    %r8,0xf0(%rdi)
 1be:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1c5 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1c5>
			1c1: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
 1c5:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 1c9:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 1d0:	00
 1d1:	85 c0                	test   %eax,%eax
 1d3:	0f 85 5e fe ff ff    	jne    37 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x37>
 1d9:	5b                   	pop    %rbx
 1da:	e9 00 00 00 00       	jmp    1df <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1df>
			1db: R_X86_64_PLT32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
 1df:	48 89 ce             	mov    %rcx,%rsi
 1e2:	48 89 f0             	mov    %rsi,%rax
 1e5:	5b                   	pop    %rbx
 1e6:	c3                   	ret
 1e7:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 1ee:	00 00 00
 1f1:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 1f8:	4c 03 9f 20 01 00 00 	add    0x120(%rdi),%r11
 1ff:	b8 01 00 00 00       	mov    $0x1,%eax
 204:	4c 29 d8             	sub    %r11,%rax
 207:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 20e:	48 ff c1             	inc    %rcx
 211:	48 89 8f 28 01 00 00 	mov    %rcx,0x128(%rdi)
 218:	48 89 ce             	mov    %rcx,%rsi
 21b:	48 89 f0             	mov    %rsi,%rax
 21e:	5b                   	pop    %rbx
 21f:	c3                   	ret

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
   f:	0f 85 a1 00 00 00    	jne    b6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb6>
  15:	48 ff c6             	inc    %rsi
  18:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f>
			1b: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  1f:	48 89 47 60          	mov    %rax,0x60(%rdi)
  23:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  2a:	00
  2b:	48 39 d6             	cmp    %rdx,%rsi
  2e:	0f 83 3d 01 00 00    	jae    171 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
  34:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
  3b:	0f 85 30 01 00 00    	jne    171 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
  41:	f6 47 78 01          	testb  $0x1,0x78(%rdi)
  45:	0f 85 c3 00 00 00    	jne    10e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10e>
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
  75:	0f 83 92 00 00 00    	jae    10d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10d>
  7b:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
  82:	0f 85 85 00 00 00    	jne    10d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10d>
  88:	80 38 0a             	cmpb   $0xa,(%rax)
  8b:	0f 85 8d 00 00 00    	jne    11e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11e>
  91:	48 83 c6 02          	add    $0x2,%rsi
  95:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 9c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x9c>
			98: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  9c:	48 89 47 60          	mov    %rax,0x60(%rdi)
  a0:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  a7:	00
  a8:	48 39 d6             	cmp    %rdx,%rsi
  ab:	0f 83 c0 00 00 00    	jae    171 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
  b1:	e9 00 00 00 00       	jmp    b6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb6>
			b2: R_X86_64_PLT32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
  b6:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
  bd:	48 3b 47 18          	cmp    0x18(%rdi),%rax
  c1:	75 30                	jne    f3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf3>
  c3:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
  ca:	00 00 00
  cd:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
  d4:	48 89 f0             	mov    %rsi,%rax
  d7:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
  de:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
  e5:	48 ff c6             	inc    %rsi
  e8:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
  ef:	48 89 f0             	mov    %rsi,%rax
  f2:	c3                   	ret
  f3:	48 8b 87 e8 00 00 00 	mov    0xe8(%rdi),%rax
  fa:	48 3b 47 08          	cmp    0x8(%rdi),%rax
  fe:	75 4c                	jne    14c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14c>
 100:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
 107:	00 00 00
 10a:	48 89 f0             	mov    %rsi,%rax
 10d:	c3                   	ret
 10e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 115 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x115>
			111: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
 115:	48 89 47 60          	mov    %rax,0x60(%rdi)
 119:	e9 00 00 00 00       	jmp    11e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11e>
			11a: R_X86_64_PLT32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
 11e:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
 125:	00 00 00
 128:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 12f:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 136:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 13d:	48 83 c6 02          	add    $0x2,%rsi
 141:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 148:	48 89 f0             	mov    %rsi,%rax
 14b:	c3                   	ret
 14c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 153 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x153>
			14f: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 153:	48 89 47 60          	mov    %rax,0x60(%rdi)
 157:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 15e:	00
 15f:	48 39 d6             	cmp    %rdx,%rsi
 162:	73 0d                	jae    171 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
 164:	83 bf 10 01 00 00 00 	cmpl   $0x0,0x110(%rdi)
 16b:	0f 84 00 00 00 00    	je     171 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x171>
			16d: R_X86_64_PLT32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
 171:	48 89 f0             	mov    %rsi,%rax
 174:	c3                   	ret

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
  18:	0f 83 f5 07 00 00    	jae    813 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x813>
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
  b2:	0f 83 5e 07 00 00    	jae    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
  b8:	41 80 fe 01          	cmp    $0x1,%r14b
  bc:	75 52                	jne    110 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
  be:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  c2:	04 a4                	add    $0xa4,%al
  c4:	3c 17                	cmp    $0x17,%al
  c6:	0f 83 2f 06 00 00    	jae    6fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6fb>
  cc:	0f b6 c0             	movzbl %al,%eax
  cf:	b9 81 00 44 00       	mov    $0x440081,%ecx
  d4:	0f a3 c1             	bt     %eax,%ecx
  d7:	0f 83 1e 06 00 00    	jae    6fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6fb>
  dd:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # e4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe4>
			e0: R_X86_64_PC32	.rodata+0x1f4
  e4:	0f be 34 08          	movsbl (%rax,%rcx,1),%esi
  e8:	48 89 df             	mov    %rbx,%rdi
  eb:	48 89 ea             	mov    %rbp,%rdx
  ee:	e8 00 00 00 00       	call   f3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xf3>
			ef: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
  f3:	84 c0                	test   %al,%al
  f5:	0f 84 9d 06 00 00    	je     798 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
  fb:	45 31 f6             	xor    %r14d,%r14d
  fe:	49 89 ef             	mov    %rbp,%r15
 101:	e9 72 ff ff ff       	jmp    78 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78>
 106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 10d:	00 00 00
 110:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 117:	00
 118:	0f 94 c0             	sete   %al
 11b:	0f b6 8b 0b 01 00 00 	movzbl 0x10b(%rbx),%ecx
 122:	4c 89 ea             	mov    %r13,%rdx
 125:	48 29 ea             	sub    %rbp,%rdx
 128:	48 83 fa 10          	cmp    $0x10,%rdx
 12c:	49 be 80 80 80 80 80 	movabs $0x8080808080808080,%r14
 133:	80 80 80
 136:	0f 8c 24 02 00 00    	jl     360 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x360>
 13c:	49 89 ef             	mov    %rbp,%r15
 13f:	45 31 e4             	xor    %r12d,%r12d
 142:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 149:	1f 84 00 00 00 00 00
 150:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
 155:	66 0f ef c9          	pxor   %xmm1,%xmm1
 159:	66 0f ef d2          	pxor   %xmm2,%xmm2
 15d:	84 c9                	test   %cl,%cl
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
 197:	74 2b                	je     1c4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c4>
 199:	a8 01                	test   $0x1,%al
 19b:	74 27                	je     1c4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c4>
 19d:	f3 44 0f bc c6       	tzcnt  %esi,%r8d
 1a2:	85 ff                	test   %edi,%edi
 1a4:	74 0c                	je     1b2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1b2>
 1a6:	f3 44 0f bc cf       	tzcnt  %edi,%r9d
 1ab:	b0 01                	mov    $0x1,%al
 1ad:	45 39 c8             	cmp    %r9d,%r8d
 1b0:	73 12                	jae    1c4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c4>
 1b2:	45 89 c4             	mov    %r8d,%r12d
 1b5:	4d 01 fc             	add    %r15,%r12
 1b8:	44 8d 46 ff          	lea    -0x1(%rsi),%r8d
 1bc:	41 21 f0             	and    %esi,%r8d
 1bf:	31 c0                	xor    %eax,%eax
 1c1:	44 89 c6             	mov    %r8d,%esi
 1c4:	84 c9                	test   %cl,%cl
 1c6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
 1cc:	41 0f 45 f0          	cmovne %r8d,%esi
 1d0:	09 fe                	or     %edi,%esi
 1d2:	0f 85 b8 01 00 00    	jne    390 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x390>
 1d8:	49 83 c7 10          	add    $0x10,%r15
 1dc:	48 83 c2 f0          	add    $0xfffffffffffffff0,%rdx
 1e0:	48 83 fa 0f          	cmp    $0xf,%rdx
 1e4:	0f 8f 66 ff ff ff    	jg     150 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x150>
 1ea:	4c 89 ee             	mov    %r13,%rsi
 1ed:	4c 29 fe             	sub    %r15,%rsi
 1f0:	48 83 fe 08          	cmp    $0x8,%rsi
 1f4:	0f 8c 7c 01 00 00    	jl     376 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x376>
 1fa:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 201:	00 00
 203:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 20a:	84 00 00 00 00 00
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
 25e:	84 c9                	test   %cl,%cl
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
 2a0:	74 3b                	je     2dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2dd>
 2a2:	a8 01                	test   $0x1,%al
 2a4:	74 37                	je     2dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2dd>
 2a6:	f3 4d 0f bc d1       	tzcnt  %r9,%r10
 2ab:	48 85 ff             	test   %rdi,%rdi
 2ae:	74 16                	je     2c6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c6>
 2b0:	f3 4c 0f bc df       	tzcnt  %rdi,%r11
 2b5:	b0 01                	mov    $0x1,%al
 2b7:	45 39 da             	cmp    %r11d,%r10d
 2ba:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
 2c1:	7f 7f 7f
 2c4:	73 17                	jae    2dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2dd>
 2c6:	41 c1 ea 03          	shr    $0x3,%r10d
 2ca:	4d 01 fa             	add    %r15,%r10
 2cd:	49 f7 d0             	not    %r8
 2d0:	4d 01 f0             	add    %r14,%r8
 2d3:	4d 21 c1             	and    %r8,%r9
 2d6:	31 c0                	xor    %eax,%eax
 2d8:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
 2dd:	84 c9                	test   %cl,%cl
 2df:	41 b8 00 00 00 00    	mov    $0x0,%r8d
 2e5:	4d 0f 44 c1          	cmove  %r9,%r8
 2e9:	49 09 f8             	or     %rdi,%r8
 2ec:	0f 85 bf 00 00 00    	jne    3b1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b1>
 2f2:	49 83 c7 08          	add    $0x8,%r15
 2f6:	48 83 c6 f8          	add    $0xfffffffffffffff8,%rsi
 2fa:	48 83 fe 07          	cmp    $0x7,%rsi
 2fe:	0f 8f 0c ff ff ff    	jg     210 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x210>
 304:	4d 39 ef             	cmp    %r13,%r15
 307:	73 7b                	jae    384 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x384>
 309:	84 c9                	test   %cl,%cl
 30b:	0f 84 be 00 00 00    	je     3cf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3cf>
 311:	31 c9                	xor    %ecx,%ecx
 313:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 318:	eb 17                	jmp    331 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x331>
 31a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 320:	31 c0                	xor    %eax,%eax
 322:	4c 89 f9             	mov    %r15,%rcx
 325:	49 ff c7             	inc    %r15
 328:	4d 39 ef             	cmp    %r13,%r15
 32b:	0f 83 f8 00 00 00    	jae    429 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x429>
 331:	41 0f b6 37          	movzbl (%r15),%esi
 335:	83 fe 3a             	cmp    $0x3a,%esi
 338:	75 04                	jne    33e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x33e>
 33a:	a8 01                	test   $0x1,%al
 33c:	75 e2                	jne    320 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x320>
 33e:	83 fe 0d             	cmp    $0xd,%esi
 341:	77 e2                	ja     325 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x325>
 343:	ba 01 24 00 00       	mov    $0x2401,%edx
 348:	0f a3 f2             	bt     %esi,%edx
 34b:	73 d8                	jae    325 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x325>
 34d:	e9 de 00 00 00       	jmp    430 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
 352:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 359:	1f 84 00 00 00 00 00
 360:	45 31 e4             	xor    %r12d,%r12d
 363:	49 89 ef             	mov    %rbp,%r15
 366:	4c 89 ee             	mov    %r13,%rsi
 369:	4c 29 fe             	sub    %r15,%rsi
 36c:	48 83 fe 08          	cmp    $0x8,%rsi
 370:	0f 8d 84 fe ff ff    	jge    1fa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1fa>
 376:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
 37d:	00 00
 37f:	4d 39 ef             	cmp    %r13,%r15
 382:	72 85                	jb     309 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x309>
 384:	31 c9                	xor    %ecx,%ecx
 386:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 38b:	e9 a0 00 00 00       	jmp    430 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
 390:	f3 0f bc c6          	tzcnt  %esi,%eax
 394:	49 01 c7             	add    %rax,%r15
 397:	4d 85 e4             	test   %r12,%r12
 39a:	0f 85 a7 00 00 00    	jne    447 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x447>
 3a0:	49 89 ec             	mov    %rbp,%r12
 3a3:	49 39 ef             	cmp    %rbp,%r15
 3a6:	0f 85 15 02 00 00    	jne    5c1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5c1>
 3ac:	e9 ce 02 00 00       	jmp    67f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x67f>
 3b1:	f3 49 0f bc c0       	tzcnt  %r8,%rax
 3b6:	c1 e8 03             	shr    $0x3,%eax
 3b9:	49 01 c7             	add    %rax,%r15
 3bc:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 3c1:	4d 85 e4             	test   %r12,%r12
 3c4:	4d 0f 44 e0          	cmove  %r8,%r12
 3c8:	4d 85 e4             	test   %r12,%r12
 3cb:	75 7a                	jne    447 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x447>
 3cd:	eb d1                	jmp    3a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a0>
 3cf:	31 c9                	xor    %ecx,%ecx
 3d1:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 3d6:	eb 15                	jmp    3ed <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3ed>
 3d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 3df:	00
 3e0:	83 fe 5c             	cmp    $0x5c,%esi
 3e3:	74 4b                	je     430 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
 3e5:	49 ff c7             	inc    %r15
 3e8:	4d 39 ef             	cmp    %r13,%r15
 3eb:	73 3c                	jae    429 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x429>
 3ed:	41 0f b6 37          	movzbl (%r15),%esi
 3f1:	83 fe 3a             	cmp    $0x3a,%esi
 3f4:	75 1a                	jne    410 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
 3f6:	a8 01                	test   $0x1,%al
 3f8:	74 16                	je     410 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x410>
 3fa:	31 c0                	xor    %eax,%eax
 3fc:	4c 89 f9             	mov    %r15,%rcx
 3ff:	49 ff c7             	inc    %r15
 402:	4d 39 ef             	cmp    %r13,%r15
 405:	72 e6                	jb     3ed <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3ed>
 407:	eb 20                	jmp    429 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x429>
 409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 410:	83 fe 3a             	cmp    $0x3a,%esi
 413:	77 cb                	ja     3e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
 415:	89 f7                	mov    %esi,%edi
 417:	48 ba 01 24 00 00 00 	movabs $0x400000000002401,%rdx
 41e:	00 00 04
 421:	48 0f a3 fa          	bt     %rdi,%rdx
 425:	73 b9                	jae    3e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e0>
 427:	eb 07                	jmp    430 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x430>
 429:	4d 89 ef             	mov    %r13,%r15
 42c:	0f 1f 40 00          	nopl   0x0(%rax)
 430:	4d 85 c0             	test   %r8,%r8
 433:	4c 0f 44 c1          	cmove  %rcx,%r8
 437:	4d 85 e4             	test   %r12,%r12
 43a:	4d 0f 44 e0          	cmove  %r8,%r12
 43e:	4d 85 e4             	test   %r12,%r12
 441:	0f 84 59 ff ff ff    	je     3a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3a0>
 447:	4d 89 e5             	mov    %r12,%r13
 44a:	49 29 ed             	sub    %rbp,%r13
 44d:	74 5d                	je     4ac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4ac>
 44f:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
 453:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
 45a:	48 89 ca             	mov    %rcx,%rdx
 45d:	48 29 c2             	sub    %rax,%rdx
 460:	49 39 d5             	cmp    %rdx,%r13
 463:	0f 87 66 03 00 00    	ja     7cf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7cf>
 469:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 470:	48 01 c2             	add    %rax,%rdx
 473:	48 29 d1             	sub    %rdx,%rcx
 476:	49 39 cd             	cmp    %rcx,%r13
 479:	0f 87 83 03 00 00    	ja     802 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x802>
 47f:	4c 01 e8             	add    %r13,%rax
 482:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 489:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 490:	75 23                	jne    4b5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4b5>
 492:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 496:	48 8b 43 50          	mov    0x50(%rbx),%rax
 49a:	48 29 f8             	sub    %rdi,%rax
 49d:	49 39 c5             	cmp    %rax,%r13
 4a0:	76 29                	jbe    4cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4cb>
 4a2:	48 8b 43 40          	mov    0x40(%rbx),%rax
 4a6:	48 89 43 48          	mov    %rax,0x48(%rbx)
 4aa:	eb 58                	jmp    504 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x504>
 4ac:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 4b3:	eb 60                	jmp    515 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x515>
 4b5:	48 83 bb d8 00 00 00 	cmpq   $0x0,0xd8(%rbx)
 4bc:	00
 4bd:	75 45                	jne    504 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x504>
 4bf:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 4c6:	48 89 28             	mov    %rbp,(%rax)
 4c9:	eb 39                	jmp    504 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x504>
 4cb:	48 89 ee             	mov    %rbp,%rsi
 4ce:	4c 89 ea             	mov    %r13,%rdx
 4d1:	e8 00 00 00 00       	call   4d6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d6>
			4d2: R_X86_64_PLT32	memcpy-0x4
 4d6:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 4de <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4de>
 4dd:	00
			4da: R_X86_64_PC32	.LCPI52_3-0x4
 4de:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 4e6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e6>
 4e5:	00
			4e2: R_X86_64_PC32	.LCPI52_2-0x4
 4e6:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 4ee <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4ee>
 4ed:	00
			4ea: R_X86_64_PC32	.LCPI52_1-0x4
 4ee:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 4f6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f6>
 4f5:	00
			4f2: R_X86_64_PC32	.LCPI52_0-0x4
 4f6:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
 4fd:	7f 7f 7f
 500:	4c 01 6b 48          	add    %r13,0x48(%rbx)
 504:	48 8b 93 d8 00 00 00 	mov    0xd8(%rbx),%rdx
 50b:	4c 01 ea             	add    %r13,%rdx
 50e:	48 89 93 d8 00 00 00 	mov    %rdx,0xd8(%rbx)
 515:	48 85 d2             	test   %rdx,%rdx
 518:	0f 84 0a 03 00 00    	je     828 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x828>
 51e:	48 8b 83 d0 00 00 00 	mov    0xd0(%rbx),%rax
 525:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 52c:	48 8d 8b d0 00 00 00 	lea    0xd0(%rbx),%rcx
 533:	66 0f ef c0          	pxor   %xmm0,%xmm0
 537:	f3 0f 7f 01          	movdqu %xmm0,(%rcx)
 53b:	48 89 83 c0 00 00 00 	mov    %rax,0xc0(%rbx)
 542:	48 89 93 c8 00 00 00 	mov    %rdx,0xc8(%rbx)
 549:	31 c9                	xor    %ecx,%ecx
 54b:	48 83 fa 0e          	cmp    $0xe,%rdx
 54f:	75 56                	jne    5a7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a7>
 551:	8b 53 78             	mov    0x78(%rbx),%edx
 554:	83 e2 01             	and    $0x1,%edx
 557:	75 4e                	jne    5a7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a7>
 559:	49 83 fd 0e          	cmp    $0xe,%r13
 55d:	75 21                	jne    580 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x580>
 55f:	48 3b ab 20 01 00 00 	cmp    0x120(%rbx),%rbp
 566:	76 18                	jbe    580 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x580>
 568:	f3 0f 6f 45 ff       	movdqu -0x1(%rbp),%xmm0
 56d:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 575 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x575>
 574:	00
			571: R_X86_64_PC32	.LCPI52_4-0x4
 575:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 579:	35 ff ff 00 00       	xor    $0xffff,%eax
 57e:	eb 24                	jmp    5a4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5a4>
 580:	48 8b 08             	mov    (%rax),%rcx
 583:	48 ba 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rdx
 58a:	6e 74 2d
 58d:	48 31 d1             	xor    %rdx,%rcx
 590:	48 8b 40 06          	mov    0x6(%rax),%rax
 594:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
 59b:	67 74 68
 59e:	48 31 d0             	xor    %rdx,%rax
 5a1:	48 09 c8             	or     %rcx,%rax
 5a4:	0f 94 c1             	sete   %cl
 5a7:	88 8b 0c 01 00 00    	mov    %cl,0x10c(%rbx)
 5ad:	49 ff c4             	inc    %r12
 5b0:	4c 89 e5             	mov    %r12,%rbp
 5b3:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
 5b8:	49 39 ef             	cmp    %rbp,%r15
 5bb:	0f 84 be 00 00 00    	je     67f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x67f>
 5c1:	4d 89 fd             	mov    %r15,%r13
 5c4:	4d 29 e5             	sub    %r12,%r13
 5c7:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
 5cb:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
 5d2:	48 89 ca             	mov    %rcx,%rdx
 5d5:	48 29 c2             	sub    %rax,%rdx
 5d8:	49 39 d5             	cmp    %rdx,%r13
 5db:	0f 87 ee 01 00 00    	ja     7cf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7cf>
 5e1:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 5e8:	48 01 c2             	add    %rax,%rdx
 5eb:	48 29 d1             	sub    %rdx,%rcx
 5ee:	49 39 cd             	cmp    %rcx,%r13
 5f1:	0f 87 0b 02 00 00    	ja     802 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x802>
 5f7:	4c 01 e8             	add    %r13,%rax
 5fa:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 601:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 608:	75 1a                	jne    624 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x624>
 60a:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 60e:	48 8b 43 50          	mov    0x50(%rbx),%rax
 612:	48 29 f8             	sub    %rdi,%rax
 615:	49 39 c5             	cmp    %rax,%r13
 618:	76 20                	jbe    63a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x63a>
 61a:	48 8b 43 40          	mov    0x40(%rbx),%rax
 61e:	48 89 43 48          	mov    %rax,0x48(%rbx)
 622:	eb 4f                	jmp    673 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x673>
 624:	48 83 bb d8 00 00 00 	cmpq   $0x0,0xd8(%rbx)
 62b:	00
 62c:	75 45                	jne    673 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x673>
 62e:	48 8d 83 d0 00 00 00 	lea    0xd0(%rbx),%rax
 635:	48 89 28             	mov    %rbp,(%rax)
 638:	eb 39                	jmp    673 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x673>
 63a:	48 89 ee             	mov    %rbp,%rsi
 63d:	4c 89 ea             	mov    %r13,%rdx
 640:	e8 00 00 00 00       	call   645 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x645>
			641: R_X86_64_PLT32	memcpy-0x4
 645:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 64d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x64d>
 64c:	00
			649: R_X86_64_PC32	.LCPI52_3-0x4
 64d:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 655 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x655>
 654:	00
			651: R_X86_64_PC32	.LCPI52_2-0x4
 655:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 65d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x65d>
 65c:	00
			659: R_X86_64_PC32	.LCPI52_1-0x4
 65d:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 665 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x665>
 664:	00
			661: R_X86_64_PC32	.LCPI52_0-0x4
 665:	49 bb 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r11
 66c:	7f 7f 7f
 66f:	4c 01 6b 48          	add    %r13,0x48(%rbx)
 673:	4c 01 ab d8 00 00 00 	add    %r13,0xd8(%rbx)
 67a:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
 67f:	4d 39 ef             	cmp    %r13,%r15
 682:	0f 84 8e 01 00 00    	je     816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
 688:	41 0f b6 07          	movzbl (%r15),%eax
 68c:	83 f8 5c             	cmp    $0x5c,%eax
 68f:	0f 85 90 00 00 00    	jne    725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 695:	80 bb 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbx)
 69c:	0f 85 83 00 00 00    	jne    725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 6a2:	41 b6 01             	mov    $0x1,%r14b
 6a5:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
 6ac:	0f 85 f0 f9 ff ff    	jne    a2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa2>
 6b2:	48 89 df             	mov    %rbx,%rdi
 6b5:	e8 00 00 00 00       	call   6ba <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ba>
			6b6: R_X86_64_PLT32	stomptalk::parser::own_metadata()-0x4
 6ba:	4c 8b 63 48          	mov    0x48(%rbx),%r12
 6be:	48 8b 43 50          	mov    0x50(%rbx),%rax
 6c2:	4c 8b ab d8 00 00 00 	mov    0xd8(%rbx),%r13
 6c9:	4c 29 e0             	sub    %r12,%rax
 6cc:	49 39 c5             	cmp    %rax,%r13
 6cf:	0f 87 88 f9 ff ff    	ja     5d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5d>
 6d5:	4c 89 e0             	mov    %r12,%rax
 6d8:	4d 85 ed             	test   %r13,%r13
 6db:	74 16                	je     6f3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f3>
 6dd:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
 6e4:	4c 89 e7             	mov    %r12,%rdi
 6e7:	4c 89 ea             	mov    %r13,%rdx
 6ea:	e8 00 00 00 00       	call   6ef <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ef>
			6eb: R_X86_64_PLT32	memcpy-0x4
 6ef:	48 8b 43 48          	mov    0x48(%rbx),%rax
 6f3:	4c 01 e8             	add    %r13,%rax
 6f6:	e9 66 f9 ff ff       	jmp    61 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x61>
 6fb:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 702:	00 00 00
 705:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 70c:	48 89 e8             	mov    %rbp,%rax
 70f:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 716:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 71d:	48 ff c5             	inc    %rbp
 720:	e9 e7 00 00 00       	jmp    80c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x80c>
 725:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 72c:	00
 72d:	74 72                	je     7a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a1>
 72f:	83 f8 0a             	cmp    $0xa,%eax
 732:	74 05                	je     739 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x739>
 734:	83 f8 0d             	cmp    $0xd,%eax
 737:	75 68                	jne    7a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a1>
 739:	48 89 df             	mov    %rbx,%rdi
 73c:	4c 89 fe             	mov    %r15,%rsi
 73f:	e8 00 00 00 00       	call   744 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x744>
			740: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 744:	84 c0                	test   %al,%al
 746:	74 50                	je     798 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
 748:	49 8d 77 01          	lea    0x1(%r15),%rsi
 74c:	41 80 3f 0a          	cmpb   $0xa,(%r15)
 750:	0f 85 03 01 00 00    	jne    859 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x859>
 756:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 75d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x75d>
			759: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 75d:	48 89 43 60          	mov    %rax,0x60(%rbx)
 761:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 768:	00
 769:	4c 39 ee             	cmp    %r13,%rsi
 76c:	0f 83 38 01 00 00    	jae    8aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
 772:	83 bb 10 01 00 00 00 	cmpl   $0x0,0x110(%rbx)
 779:	0f 85 2b 01 00 00    	jne    8aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
 77f:	48 89 df             	mov    %rbx,%rdi
 782:	4c 89 ea             	mov    %r13,%rdx
 785:	48 83 c4 18          	add    $0x18,%rsp
 789:	5b                   	pop    %rbx
 78a:	41 5c                	pop    %r12
 78c:	41 5d                	pop    %r13
 78e:	41 5e                	pop    %r14
 790:	41 5f                	pop    %r15
 792:	5d                   	pop    %rbp
 793:	e9 00 00 00 00       	jmp    798 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
			794: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 798:	4c 8b bb 28 01 00 00 	mov    0x128(%rbx),%r15
 79f:	eb 75                	jmp    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
 7a1:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 7a8:	00 00 00
 7ab:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 7b2:	4c 89 f8             	mov    %r15,%rax
 7b5:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 7bc:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 7c3:	49 ff c7             	inc    %r15
 7c6:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 7cd:	eb 47                	jmp    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
 7cf:	48 8d 04 2a          	lea    (%rdx,%rbp,1),%rax
 7d3:	48 b9 03 00 00 00 0d 	movabs $0xd00000003,%rcx
 7da:	00 00 00
 7dd:	48 89 8b 10 01 00 00 	mov    %rcx,0x110(%rbx)
 7e4:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 7eb:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 7f2:	4c 8d 3c 2a          	lea    (%rdx,%rbp,1),%r15
 7f6:	49 ff c7             	inc    %r15
 7f9:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 800:	eb 14                	jmp    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
 802:	c7 83 10 01 00 00 02 	movl   $0x2,0x110(%rbx)
 809:	00 00 00
 80c:	48 89 ab 28 01 00 00 	mov    %rbp,0x128(%rbx)
 813:	49 89 ef             	mov    %rbp,%r15
 816:	4c 89 f8             	mov    %r15,%rax
 819:	48 83 c4 18          	add    $0x18,%rsp
 81d:	5b                   	pop    %rbx
 81e:	41 5c                	pop    %r12
 820:	41 5d                	pop    %r13
 822:	41 5e                	pop    %r14
 824:	41 5f                	pop    %r15
 826:	5d                   	pop    %rbp
 827:	c3                   	ret
 828:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 82f:	00 00 00
 832:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 839:	4c 89 e0             	mov    %r12,%rax
 83c:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 843:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 84a:	49 ff c4             	inc    %r12
 84d:	4c 89 a3 28 01 00 00 	mov    %r12,0x128(%rbx)
 854:	4d 89 e7             	mov    %r12,%r15
 857:	eb bd                	jmp    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
 859:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 860 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x860>
			85c: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 860:	48 89 43 60          	mov    %rax,0x60(%rbx)
 864:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 86b:	00
 86c:	4c 39 ee             	cmp    %r13,%rsi
 86f:	73 39                	jae    8aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
 871:	83 bb 10 01 00 00 00 	cmpl   $0x0,0x110(%rbx)
 878:	75 30                	jne    8aa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8aa>
 87a:	80 3e 0a             	cmpb   $0xa,(%rsi)
 87d:	75 33                	jne    8b2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x8b2>
 87f:	49 83 c7 02          	add    $0x2,%r15
 883:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 88a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x88a>
			886: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 88a:	48 89 43 60          	mov    %rax,0x60(%rbx)
 88e:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 895:	00
 896:	4d 39 ef             	cmp    %r13,%r15
 899:	0f 83 77 ff ff ff    	jae    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
 89f:	48 89 df             	mov    %rbx,%rdi
 8a2:	4c 89 fe             	mov    %r15,%rsi
 8a5:	e9 d8 fe ff ff       	jmp    782 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x782>
 8aa:	49 89 f7             	mov    %rsi,%r15
 8ad:	e9 64 ff ff ff       	jmp    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>
 8b2:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 8b9:	00 00 00
 8bc:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 8c3:	48 2b b3 20 01 00 00 	sub    0x120(%rbx),%rsi
 8ca:	48 89 b3 18 01 00 00 	mov    %rsi,0x118(%rbx)
 8d1:	49 83 c7 02          	add    $0x2,%r15
 8d5:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 8dc:	e9 35 ff ff ff       	jmp    816 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x816>

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
 365:	e9 00 00 00 00       	jmp    36a <stomptalk::parser::own_metadata()+0x4a>
			366: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
