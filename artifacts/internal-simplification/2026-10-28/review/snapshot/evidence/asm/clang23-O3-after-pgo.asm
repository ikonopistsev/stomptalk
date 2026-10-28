0000000000000040 <stomptalk::parser::own_metadata()>:
      40:	f3 0f 1e fa          	endbr64
      44:	55                   	push   %rbp
      45:	41 57                	push   %r15
      47:	41 56                	push   %r14
      49:	41 55                	push   %r13
      4b:	41 54                	push   %r12
      4d:	53                   	push   %rbx
      4e:	50                   	push   %rax
      4f:	48 89 fb             	mov    %rdi,%rbx
      52:	4c 8b b7 a8 00 00 00 	mov    0xa8(%rdi),%r14
      59:	4d 85 f6             	test   %r14,%r14
      5c:	74 2e                	je     8c <stomptalk::parser::own_metadata()+0x4c>
      5e:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
      65:	48 89 f0             	mov    %rsi,%rax
      68:	48 2b 43 40          	sub    0x40(%rbx),%rax
      6c:	48 3b 43 10          	cmp    0x10(%rbx),%rax
      70:	72 1a                	jb     8c <stomptalk::parser::own_metadata()+0x4c>
      72:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
      76:	4c 89 ff             	mov    %r15,%rdi
      79:	4c 89 f2             	mov    %r14,%rdx
      7c:	e8 00 00 00 00       	call   81 <stomptalk::parser::own_metadata()+0x41>
			7d: R_X86_64_PLT32	memcpy-0x4
      81:	4c 01 73 48          	add    %r14,0x48(%rbx)
      85:	4c 89 bb a0 00 00 00 	mov    %r15,0xa0(%rbx)
      8c:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
      93:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
      9a:	0f 83 25 02 00 00    	jae    2c5 <stomptalk::parser::own_metadata()+0x285>
      a0:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
      a4:	4d 89 e5             	mov    %r12,%r13
      a7:	49 c1 e5 05          	shl    $0x5,%r13
      ab:	4e 8b 74 2d 08       	mov    0x8(%rbp,%r13,1),%r14
      b0:	4d 85 f6             	test   %r14,%r14
      b3:	74 30                	je     e5 <stomptalk::parser::own_metadata()+0xa5>
      b5:	49 89 ef             	mov    %rbp,%r15
      b8:	4d 01 ef             	add    %r13,%r15
      bb:	49 8b 37             	mov    (%r15),%rsi
      be:	48 89 f0             	mov    %rsi,%rax
      c1:	48 2b 43 40          	sub    0x40(%rbx),%rax
      c5:	48 3b 43 10          	cmp    0x10(%rbx),%rax
      c9:	72 1a                	jb     e5 <stomptalk::parser::own_metadata()+0xa5>
      cb:	48 8b 6b 48          	mov    0x48(%rbx),%rbp
      cf:	48 89 ef             	mov    %rbp,%rdi
      d2:	4c 89 f2             	mov    %r14,%rdx
      d5:	e8 00 00 00 00       	call   da <stomptalk::parser::own_metadata()+0x9a>
			d6: R_X86_64_PLT32	memcpy-0x4
      da:	4c 01 73 48          	add    %r14,0x48(%rbx)
      de:	49 89 2f             	mov    %rbp,(%r15)
      e1:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
      e5:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
      ea:	4d 85 f6             	test   %r14,%r14
      ed:	74 2b                	je     11a <stomptalk::parser::own_metadata()+0xda>
      ef:	4c 01 ed             	add    %r13,%rbp
      f2:	48 8b 75 10          	mov    0x10(%rbp),%rsi
      f6:	48 89 f0             	mov    %rsi,%rax
      f9:	48 2b 43 40          	sub    0x40(%rbx),%rax
      fd:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     101:	72 17                	jb     11a <stomptalk::parser::own_metadata()+0xda>
     103:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     107:	4c 89 ff             	mov    %r15,%rdi
     10a:	4c 89 f2             	mov    %r14,%rdx
     10d:	e8 00 00 00 00       	call   112 <stomptalk::parser::own_metadata()+0xd2>
			10e: R_X86_64_PLT32	memcpy-0x4
     112:	4c 01 73 48          	add    %r14,0x48(%rbx)
     116:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
     11a:	4d 8d 7c 24 01       	lea    0x1(%r12),%r15
     11f:	4c 3b bb e8 00 00 00 	cmp    0xe8(%rbx),%r15
     126:	0f 83 99 01 00 00    	jae    2c5 <stomptalk::parser::own_metadata()+0x285>
     12c:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     130:	49 c1 e7 05          	shl    $0x5,%r15
     134:	4e 8b 74 3d 08       	mov    0x8(%rbp,%r15,1),%r14
     139:	4d 85 f6             	test   %r14,%r14
     13c:	74 36                	je     174 <stomptalk::parser::own_metadata()+0x134>
     13e:	49 8d 0c 2f          	lea    (%r15,%rbp,1),%rcx
     142:	48 8b 31             	mov    (%rcx),%rsi
     145:	48 89 f0             	mov    %rsi,%rax
     148:	48 2b 43 40          	sub    0x40(%rbx),%rax
     14c:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     150:	72 22                	jb     174 <stomptalk::parser::own_metadata()+0x134>
     152:	48 8b 6b 48          	mov    0x48(%rbx),%rbp
     156:	48 89 ef             	mov    %rbp,%rdi
     159:	4c 89 f2             	mov    %r14,%rdx
     15c:	48 89 0c 24          	mov    %rcx,(%rsp)
     160:	e8 00 00 00 00       	call   165 <stomptalk::parser::own_metadata()+0x125>
			161: R_X86_64_PLT32	memcpy-0x4
     165:	4c 01 73 48          	add    %r14,0x48(%rbx)
     169:	48 8b 04 24          	mov    (%rsp),%rax
     16d:	48 89 28             	mov    %rbp,(%rax)
     170:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     174:	4e 8b 74 3d 18       	mov    0x18(%rbp,%r15,1),%r14
     179:	4d 85 f6             	test   %r14,%r14
     17c:	74 2b                	je     1a9 <stomptalk::parser::own_metadata()+0x169>
     17e:	4c 01 fd             	add    %r15,%rbp
     181:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     185:	48 89 f0             	mov    %rsi,%rax
     188:	48 2b 43 40          	sub    0x40(%rbx),%rax
     18c:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     190:	72 17                	jb     1a9 <stomptalk::parser::own_metadata()+0x169>
     192:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     196:	4c 89 ff             	mov    %r15,%rdi
     199:	4c 89 f2             	mov    %r14,%rdx
     19c:	e8 00 00 00 00       	call   1a1 <stomptalk::parser::own_metadata()+0x161>
			19d: R_X86_64_PLT32	memcpy-0x4
     1a1:	4c 01 73 48          	add    %r14,0x48(%rbx)
     1a5:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
     1a9:	4d 8d 7c 24 02       	lea    0x2(%r12),%r15
     1ae:	4c 3b bb e8 00 00 00 	cmp    0xe8(%rbx),%r15
     1b5:	0f 83 0a 01 00 00    	jae    2c5 <stomptalk::parser::own_metadata()+0x285>
     1bb:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     1bf:	49 c1 e7 05          	shl    $0x5,%r15
     1c3:	4e 8b 74 3d 08       	mov    0x8(%rbp,%r15,1),%r14
     1c8:	4d 85 f6             	test   %r14,%r14
     1cb:	74 36                	je     203 <stomptalk::parser::own_metadata()+0x1c3>
     1cd:	49 8d 0c 2f          	lea    (%r15,%rbp,1),%rcx
     1d1:	48 8b 31             	mov    (%rcx),%rsi
     1d4:	48 89 f0             	mov    %rsi,%rax
     1d7:	48 2b 43 40          	sub    0x40(%rbx),%rax
     1db:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     1df:	72 22                	jb     203 <stomptalk::parser::own_metadata()+0x1c3>
     1e1:	48 8b 6b 48          	mov    0x48(%rbx),%rbp
     1e5:	48 89 ef             	mov    %rbp,%rdi
     1e8:	4c 89 f2             	mov    %r14,%rdx
     1eb:	48 89 0c 24          	mov    %rcx,(%rsp)
     1ef:	e8 00 00 00 00       	call   1f4 <stomptalk::parser::own_metadata()+0x1b4>
			1f0: R_X86_64_PLT32	memcpy-0x4
     1f4:	4c 01 73 48          	add    %r14,0x48(%rbx)
     1f8:	48 8b 04 24          	mov    (%rsp),%rax
     1fc:	48 89 28             	mov    %rbp,(%rax)
     1ff:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     203:	4e 8b 74 3d 18       	mov    0x18(%rbp,%r15,1),%r14
     208:	4d 85 f6             	test   %r14,%r14
     20b:	74 2b                	je     238 <stomptalk::parser::own_metadata()+0x1f8>
     20d:	4c 01 fd             	add    %r15,%rbp
     210:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     214:	48 89 f0             	mov    %rsi,%rax
     217:	48 2b 43 40          	sub    0x40(%rbx),%rax
     21b:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     21f:	72 17                	jb     238 <stomptalk::parser::own_metadata()+0x1f8>
     221:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     225:	4c 89 ff             	mov    %r15,%rdi
     228:	4c 89 f2             	mov    %r14,%rdx
     22b:	e8 00 00 00 00       	call   230 <stomptalk::parser::own_metadata()+0x1f0>
			22c: R_X86_64_PLT32	memcpy-0x4
     230:	4c 01 73 48          	add    %r14,0x48(%rbx)
     234:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
     238:	49 83 c4 03          	add    $0x3,%r12
     23c:	eb 09                	jmp    247 <stomptalk::parser::own_metadata()+0x207>
     23e:	66 90                	xchg   %ax,%ax
     240:	49 ff c4             	inc    %r12
     243:	49 83 c5 20          	add    $0x20,%r13
     247:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     24e:	73 75                	jae    2c5 <stomptalk::parser::own_metadata()+0x285>
     250:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     254:	4e 8b 74 2d 68       	mov    0x68(%rbp,%r13,1),%r14
     259:	4d 85 f6             	test   %r14,%r14
     25c:	74 2e                	je     28c <stomptalk::parser::own_metadata()+0x24c>
     25e:	4a 8b 74 2d 60       	mov    0x60(%rbp,%r13,1),%rsi
     263:	48 89 f0             	mov    %rsi,%rax
     266:	48 2b 43 40          	sub    0x40(%rbx),%rax
     26a:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     26e:	72 1c                	jb     28c <stomptalk::parser::own_metadata()+0x24c>
     270:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     274:	4c 89 ff             	mov    %r15,%rdi
     277:	4c 89 f2             	mov    %r14,%rdx
     27a:	e8 00 00 00 00       	call   27f <stomptalk::parser::own_metadata()+0x23f>
			27b: R_X86_64_PLT32	memcpy-0x4
     27f:	4c 01 73 48          	add    %r14,0x48(%rbx)
     283:	4e 89 7c 2d 60       	mov    %r15,0x60(%rbp,%r13,1)
     288:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     28c:	4e 8b 74 2d 78       	mov    0x78(%rbp,%r13,1),%r14
     291:	4d 85 f6             	test   %r14,%r14
     294:	74 aa                	je     240 <stomptalk::parser::own_metadata()+0x200>
     296:	4a 8b 74 2d 70       	mov    0x70(%rbp,%r13,1),%rsi
     29b:	48 89 f0             	mov    %rsi,%rax
     29e:	48 2b 43 40          	sub    0x40(%rbx),%rax
     2a2:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     2a6:	72 98                	jb     240 <stomptalk::parser::own_metadata()+0x200>
     2a8:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     2ac:	4c 89 ff             	mov    %r15,%rdi
     2af:	4c 89 f2             	mov    %r14,%rdx
     2b2:	e8 00 00 00 00       	call   2b7 <stomptalk::parser::own_metadata()+0x277>
			2b3: R_X86_64_PLT32	memcpy-0x4
     2b7:	4c 01 73 48          	add    %r14,0x48(%rbx)
     2bb:	4e 89 7c 2d 70       	mov    %r15,0x70(%rbp,%r13,1)
     2c0:	e9 7b ff ff ff       	jmp    240 <stomptalk::parser::own_metadata()+0x200>
     2c5:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
     2cc:	4d 85 f6             	test   %r14,%r14
     2cf:	74 2e                	je     2ff <stomptalk::parser::own_metadata()+0x2bf>
     2d1:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     2d8:	48 89 f0             	mov    %rsi,%rax
     2db:	48 2b 43 40          	sub    0x40(%rbx),%rax
     2df:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     2e3:	72 1a                	jb     2ff <stomptalk::parser::own_metadata()+0x2bf>
     2e5:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     2e9:	4c 89 ff             	mov    %r15,%rdi
     2ec:	4c 89 f2             	mov    %r14,%rdx
     2ef:	e8 00 00 00 00       	call   2f4 <stomptalk::parser::own_metadata()+0x2b4>
			2f0: R_X86_64_PLT32	memcpy-0x4
     2f4:	4c 01 73 48          	add    %r14,0x48(%rbx)
     2f8:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
     2ff:	48 83 c4 08          	add    $0x8,%rsp
     303:	5b                   	pop    %rbx
     304:	41 5c                	pop    %r12
     306:	41 5d                	pop    %r13
     308:	41 5e                	pop    %r14
     30a:	41 5f                	pop    %r15
     30c:	5d                   	pop    %rbp
     30d:	c3                   	ret
     30e:	66 90                	xchg   %ax,%ax

0000000000000310 <stomptalk::parser::own_token()>:
     310:	f3 0f 1e fa          	endbr64
     314:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
     31b:	0f 85 00 03 00 00    	jne    621 <stomptalk::parser::own_token()+0x311>
     321:	55                   	push   %rbp
     322:	41 57                	push   %r15
     324:	41 56                	push   %r14
     326:	41 55                	push   %r13
     328:	41 54                	push   %r12
     32a:	53                   	push   %rbx
     32b:	50                   	push   %rax
     32c:	48 89 fb             	mov    %rdi,%rbx
     32f:	4c 8b b7 a8 00 00 00 	mov    0xa8(%rdi),%r14
     336:	4d 85 f6             	test   %r14,%r14
     339:	74 2e                	je     369 <stomptalk::parser::own_token()+0x59>
     33b:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
     342:	48 89 f0             	mov    %rsi,%rax
     345:	48 2b 43 40          	sub    0x40(%rbx),%rax
     349:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     34d:	72 1a                	jb     369 <stomptalk::parser::own_token()+0x59>
     34f:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     353:	4c 89 ff             	mov    %r15,%rdi
     356:	4c 89 f2             	mov    %r14,%rdx
     359:	e8 00 00 00 00       	call   35e <stomptalk::parser::own_token()+0x4e>
			35a: R_X86_64_PLT32	memcpy-0x4
     35e:	4c 01 73 48          	add    %r14,0x48(%rbx)
     362:	4c 89 bb a0 00 00 00 	mov    %r15,0xa0(%rbx)
     369:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
     370:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     377:	0f 83 28 02 00 00    	jae    5a5 <stomptalk::parser::own_token()+0x295>
     37d:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     381:	4d 89 e5             	mov    %r12,%r13
     384:	49 c1 e5 05          	shl    $0x5,%r13
     388:	4e 8b 74 2d 08       	mov    0x8(%rbp,%r13,1),%r14
     38d:	4d 85 f6             	test   %r14,%r14
     390:	74 30                	je     3c2 <stomptalk::parser::own_token()+0xb2>
     392:	49 89 ef             	mov    %rbp,%r15
     395:	4d 01 ef             	add    %r13,%r15
     398:	49 8b 37             	mov    (%r15),%rsi
     39b:	48 89 f0             	mov    %rsi,%rax
     39e:	48 2b 43 40          	sub    0x40(%rbx),%rax
     3a2:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     3a6:	72 1a                	jb     3c2 <stomptalk::parser::own_token()+0xb2>
     3a8:	48 8b 6b 48          	mov    0x48(%rbx),%rbp
     3ac:	48 89 ef             	mov    %rbp,%rdi
     3af:	4c 89 f2             	mov    %r14,%rdx
     3b2:	e8 00 00 00 00       	call   3b7 <stomptalk::parser::own_token()+0xa7>
			3b3: R_X86_64_PLT32	memcpy-0x4
     3b7:	4c 01 73 48          	add    %r14,0x48(%rbx)
     3bb:	49 89 2f             	mov    %rbp,(%r15)
     3be:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     3c2:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
     3c7:	4d 85 f6             	test   %r14,%r14
     3ca:	74 2b                	je     3f7 <stomptalk::parser::own_token()+0xe7>
     3cc:	4c 01 ed             	add    %r13,%rbp
     3cf:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     3d3:	48 89 f0             	mov    %rsi,%rax
     3d6:	48 2b 43 40          	sub    0x40(%rbx),%rax
     3da:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     3de:	72 17                	jb     3f7 <stomptalk::parser::own_token()+0xe7>
     3e0:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     3e4:	4c 89 ff             	mov    %r15,%rdi
     3e7:	4c 89 f2             	mov    %r14,%rdx
     3ea:	e8 00 00 00 00       	call   3ef <stomptalk::parser::own_token()+0xdf>
			3eb: R_X86_64_PLT32	memcpy-0x4
     3ef:	4c 01 73 48          	add    %r14,0x48(%rbx)
     3f3:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
     3f7:	4d 8d 7c 24 01       	lea    0x1(%r12),%r15
     3fc:	4c 3b bb e8 00 00 00 	cmp    0xe8(%rbx),%r15
     403:	0f 83 9c 01 00 00    	jae    5a5 <stomptalk::parser::own_token()+0x295>
     409:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     40d:	49 c1 e7 05          	shl    $0x5,%r15
     411:	4e 8b 74 3d 08       	mov    0x8(%rbp,%r15,1),%r14
     416:	4d 85 f6             	test   %r14,%r14
     419:	74 36                	je     451 <stomptalk::parser::own_token()+0x141>
     41b:	49 8d 0c 2f          	lea    (%r15,%rbp,1),%rcx
     41f:	48 8b 31             	mov    (%rcx),%rsi
     422:	48 89 f0             	mov    %rsi,%rax
     425:	48 2b 43 40          	sub    0x40(%rbx),%rax
     429:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     42d:	72 22                	jb     451 <stomptalk::parser::own_token()+0x141>
     42f:	48 8b 6b 48          	mov    0x48(%rbx),%rbp
     433:	48 89 ef             	mov    %rbp,%rdi
     436:	4c 89 f2             	mov    %r14,%rdx
     439:	48 89 0c 24          	mov    %rcx,(%rsp)
     43d:	e8 00 00 00 00       	call   442 <stomptalk::parser::own_token()+0x132>
			43e: R_X86_64_PLT32	memcpy-0x4
     442:	4c 01 73 48          	add    %r14,0x48(%rbx)
     446:	48 8b 04 24          	mov    (%rsp),%rax
     44a:	48 89 28             	mov    %rbp,(%rax)
     44d:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     451:	4e 8b 74 3d 18       	mov    0x18(%rbp,%r15,1),%r14
     456:	4d 85 f6             	test   %r14,%r14
     459:	74 2b                	je     486 <stomptalk::parser::own_token()+0x176>
     45b:	4c 01 fd             	add    %r15,%rbp
     45e:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     462:	48 89 f0             	mov    %rsi,%rax
     465:	48 2b 43 40          	sub    0x40(%rbx),%rax
     469:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     46d:	72 17                	jb     486 <stomptalk::parser::own_token()+0x176>
     46f:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     473:	4c 89 ff             	mov    %r15,%rdi
     476:	4c 89 f2             	mov    %r14,%rdx
     479:	e8 00 00 00 00       	call   47e <stomptalk::parser::own_token()+0x16e>
			47a: R_X86_64_PLT32	memcpy-0x4
     47e:	4c 01 73 48          	add    %r14,0x48(%rbx)
     482:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
     486:	4d 8d 7c 24 02       	lea    0x2(%r12),%r15
     48b:	4c 3b bb e8 00 00 00 	cmp    0xe8(%rbx),%r15
     492:	0f 83 0d 01 00 00    	jae    5a5 <stomptalk::parser::own_token()+0x295>
     498:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     49c:	49 c1 e7 05          	shl    $0x5,%r15
     4a0:	4e 8b 74 3d 08       	mov    0x8(%rbp,%r15,1),%r14
     4a5:	4d 85 f6             	test   %r14,%r14
     4a8:	74 36                	je     4e0 <stomptalk::parser::own_token()+0x1d0>
     4aa:	49 8d 0c 2f          	lea    (%r15,%rbp,1),%rcx
     4ae:	48 8b 31             	mov    (%rcx),%rsi
     4b1:	48 89 f0             	mov    %rsi,%rax
     4b4:	48 2b 43 40          	sub    0x40(%rbx),%rax
     4b8:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     4bc:	72 22                	jb     4e0 <stomptalk::parser::own_token()+0x1d0>
     4be:	48 8b 6b 48          	mov    0x48(%rbx),%rbp
     4c2:	48 89 ef             	mov    %rbp,%rdi
     4c5:	4c 89 f2             	mov    %r14,%rdx
     4c8:	48 89 0c 24          	mov    %rcx,(%rsp)
     4cc:	e8 00 00 00 00       	call   4d1 <stomptalk::parser::own_token()+0x1c1>
			4cd: R_X86_64_PLT32	memcpy-0x4
     4d1:	4c 01 73 48          	add    %r14,0x48(%rbx)
     4d5:	48 8b 04 24          	mov    (%rsp),%rax
     4d9:	48 89 28             	mov    %rbp,(%rax)
     4dc:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     4e0:	4e 8b 74 3d 18       	mov    0x18(%rbp,%r15,1),%r14
     4e5:	4d 85 f6             	test   %r14,%r14
     4e8:	74 2b                	je     515 <stomptalk::parser::own_token()+0x205>
     4ea:	4c 01 fd             	add    %r15,%rbp
     4ed:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     4f1:	48 89 f0             	mov    %rsi,%rax
     4f4:	48 2b 43 40          	sub    0x40(%rbx),%rax
     4f8:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     4fc:	72 17                	jb     515 <stomptalk::parser::own_token()+0x205>
     4fe:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     502:	4c 89 ff             	mov    %r15,%rdi
     505:	4c 89 f2             	mov    %r14,%rdx
     508:	e8 00 00 00 00       	call   50d <stomptalk::parser::own_token()+0x1fd>
			509: R_X86_64_PLT32	memcpy-0x4
     50d:	4c 01 73 48          	add    %r14,0x48(%rbx)
     511:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
     515:	49 83 c4 03          	add    $0x3,%r12
     519:	eb 0c                	jmp    527 <stomptalk::parser::own_token()+0x217>
     51b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     520:	49 ff c4             	inc    %r12
     523:	49 83 c5 20          	add    $0x20,%r13
     527:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
     52e:	73 75                	jae    5a5 <stomptalk::parser::own_token()+0x295>
     530:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     534:	4e 8b 74 2d 68       	mov    0x68(%rbp,%r13,1),%r14
     539:	4d 85 f6             	test   %r14,%r14
     53c:	74 2e                	je     56c <stomptalk::parser::own_token()+0x25c>
     53e:	4a 8b 74 2d 60       	mov    0x60(%rbp,%r13,1),%rsi
     543:	48 89 f0             	mov    %rsi,%rax
     546:	48 2b 43 40          	sub    0x40(%rbx),%rax
     54a:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     54e:	72 1c                	jb     56c <stomptalk::parser::own_token()+0x25c>
     550:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     554:	4c 89 ff             	mov    %r15,%rdi
     557:	4c 89 f2             	mov    %r14,%rdx
     55a:	e8 00 00 00 00       	call   55f <stomptalk::parser::own_token()+0x24f>
			55b: R_X86_64_PLT32	memcpy-0x4
     55f:	4c 01 73 48          	add    %r14,0x48(%rbx)
     563:	4e 89 7c 2d 60       	mov    %r15,0x60(%rbp,%r13,1)
     568:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     56c:	4e 8b 74 2d 78       	mov    0x78(%rbp,%r13,1),%r14
     571:	4d 85 f6             	test   %r14,%r14
     574:	74 aa                	je     520 <stomptalk::parser::own_token()+0x210>
     576:	4a 8b 74 2d 70       	mov    0x70(%rbp,%r13,1),%rsi
     57b:	48 89 f0             	mov    %rsi,%rax
     57e:	48 2b 43 40          	sub    0x40(%rbx),%rax
     582:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     586:	72 98                	jb     520 <stomptalk::parser::own_token()+0x210>
     588:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     58c:	4c 89 ff             	mov    %r15,%rdi
     58f:	4c 89 f2             	mov    %r14,%rdx
     592:	e8 00 00 00 00       	call   597 <stomptalk::parser::own_token()+0x287>
			593: R_X86_64_PLT32	memcpy-0x4
     597:	4c 01 73 48          	add    %r14,0x48(%rbx)
     59b:	4e 89 7c 2d 70       	mov    %r15,0x70(%rbp,%r13,1)
     5a0:	e9 7b ff ff ff       	jmp    520 <stomptalk::parser::own_token()+0x210>
     5a5:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
     5ac:	4d 85 f6             	test   %r14,%r14
     5af:	74 2e                	je     5df <stomptalk::parser::own_token()+0x2cf>
     5b1:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     5b8:	48 89 f0             	mov    %rsi,%rax
     5bb:	48 2b 43 40          	sub    0x40(%rbx),%rax
     5bf:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     5c3:	72 1a                	jb     5df <stomptalk::parser::own_token()+0x2cf>
     5c5:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     5c9:	4c 89 ff             	mov    %r15,%rdi
     5cc:	4c 89 f2             	mov    %r14,%rdx
     5cf:	e8 00 00 00 00       	call   5d4 <stomptalk::parser::own_token()+0x2c4>
			5d0: R_X86_64_PLT32	memcpy-0x4
     5d4:	4c 01 73 48          	add    %r14,0x48(%rbx)
     5d8:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
     5df:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     5e3:	4c 8b bb d8 00 00 00 	mov    0xd8(%rbx),%r15
     5ea:	4d 85 ff             	test   %r15,%r15
     5ed:	74 16                	je     605 <stomptalk::parser::own_token()+0x2f5>
     5ef:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     5f6:	4c 89 f7             	mov    %r14,%rdi
     5f9:	4c 89 fa             	mov    %r15,%rdx
     5fc:	e8 00 00 00 00       	call   601 <stomptalk::parser::own_token()+0x2f1>
			5fd: R_X86_64_PLT32	memcpy-0x4
     601:	4c 01 7b 48          	add    %r15,0x48(%rbx)
     605:	4c 89 b3 d0 00 00 00 	mov    %r14,0xd0(%rbx)
     60c:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     613:	48 83 c4 08          	add    $0x8,%rsp
     617:	5b                   	pop    %rbx
     618:	41 5c                	pop    %r12
     61a:	41 5d                	pop    %r13
     61c:	41 5e                	pop    %r14
     61e:	41 5f                	pop    %r15
     620:	5d                   	pop    %rbp
     621:	c3                   	ret
     622:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     629:	1f 84 00 00 00 00 00

0000000000000000 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	53                   	push   %rbx
   6:	49 89 f0             	mov    %rsi,%r8
   9:	48 39 d6             	cmp    %rdx,%rsi
   c:	0f 83 ad 04 00 00    	jae    4bf <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x4bf>
  12:	49 89 d1             	mov    %rdx,%r9
  15:	4d 29 c1             	sub    %r8,%r9
  18:	31 c9                	xor    %ecx,%ecx
  1a:	41 0f b6 04 08       	movzbl (%r8,%rcx,1),%eax
  1f:	83 f8 0d             	cmp    $0xd,%eax
  22:	0f 84 38 03 00 00    	je     360 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x360>
  28:	83 f8 0a             	cmp    $0xa,%eax
  2b:	0f 84 96 04 00 00    	je     4c7 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x4c7>
  31:	04 a5                	add    $0xa5,%al
  33:	3c e5                	cmp    $0xe5,%al
  35:	0f 86 22 04 00 00    	jbe    45d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x45d>
  3b:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
  3f:	48 8b b7 e0 00 00 00 	mov    0xe0(%rdi),%rsi
  46:	48 3b 37             	cmp    (%rdi),%rsi
  49:	0f 84 6e 03 00 00    	je     3bd <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x3bd>
  4f:	0f 57 c0             	xorps  %xmm0,%xmm0
  52:	0f 11 87 b0 00 00 00 	movups %xmm0,0xb0(%rdi)
  59:	0f 11 87 a0 00 00 00 	movups %xmm0,0xa0(%rdi)
  60:	0f 11 87 90 00 00 00 	movups %xmm0,0x90(%rdi)
  67:	0f 11 87 80 00 00 00 	movups %xmm0,0x80(%rdi)
  6e:	0f 11 47 70          	movups %xmm0,0x70(%rdi)
  72:	c7 87 09 01 00 00 00 	movl   $0x0,0x109(%rdi)
  79:	00 00 00
  7c:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
  83:	0f 11 87 c0 00 00 00 	movups %xmm0,0xc0(%rdi)
  8a:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
  91:	c6 87 08 01 00 00 01 	movb   $0x1,0x108(%rdi)
  98:	4c 8b 5f 40          	mov    0x40(%rdi),%r11
  9c:	48 8b 77 48          	mov    0x48(%rdi),%rsi
  a0:	49 89 f2             	mov    %rsi,%r10
  a3:	4d 29 da             	sub    %r11,%r10
  a6:	4c 89 97 f8 00 00 00 	mov    %r10,0xf8(%rdi)
  ad:	4c 8b 57 50          	mov    0x50(%rdi),%r10
  b1:	4c 89 d3             	mov    %r10,%rbx
  b4:	48 29 f3             	sub    %rsi,%rbx
  b7:	48 89 9f 00 01 00 00 	mov    %rbx,0x100(%rdi)
  be:	48 8b b7 e8 00 00 00 	mov    0xe8(%rdi),%rsi
  c5:	48 89 b7 f0 00 00 00 	mov    %rsi,0xf0(%rdi)
  cc:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # d3 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xd3>
			cf: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
  d3:	48 89 77 60          	mov    %rsi,0x60(%rdi)
  d7:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  de:	00
  df:	48 39 d0             	cmp    %rdx,%rax
  e2:	0f 83 21 02 00 00    	jae    309 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x309>
  e8:	49 29 c9             	sub    %rcx,%r9
  eb:	48 89 c6             	mov    %rax,%rsi
  ee:	66 90                	xchg   %ax,%ax
  f0:	0f b6 2e             	movzbl (%rsi),%ebp
  f3:	40 80 c5 bf          	add    $0xbf,%bpl
  f7:	40 80 fd 19          	cmp    $0x19,%bpl
  fb:	77 0b                	ja     108 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x108>
  fd:	48 ff c6             	inc    %rsi
 100:	49 ff c9             	dec    %r9
 103:	75 eb                	jne    f0 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0xf0>
 105:	48 89 d6             	mov    %rdx,%rsi
 108:	48 39 f0             	cmp    %rsi,%rax
 10b:	0f 84 ca 03 00 00    	je     4db <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x4db>
 111:	49 89 f1             	mov    %rsi,%r9
 114:	4d 29 c1             	sub    %r8,%r9
 117:	49 29 c9             	sub    %rcx,%r9
 11a:	49 39 d9             	cmp    %rbx,%r9
 11d:	0f 87 1e 02 00 00    	ja     341 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x341>
 123:	48 29 f3             	sub    %rsi,%rbx
 126:	48 01 c3             	add    %rax,%rbx
 129:	48 89 9f 00 01 00 00 	mov    %rbx,0x100(%rdi)
 130:	48 89 87 d0 00 00 00 	mov    %rax,0xd0(%rdi)
 137:	4c 89 8f d8 00 00 00 	mov    %r9,0xd8(%rdi)
 13e:	49 89 f0             	mov    %rsi,%r8
 141:	48 39 d6             	cmp    %rdx,%rsi
 144:	0f 84 02 01 00 00    	je     24c <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24c>
 14a:	0f b6 0e             	movzbl (%rsi),%ecx
 14d:	83 f9 0d             	cmp    $0xd,%ecx
 150:	0f 85 c4 00 00 00    	jne    21a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x21a>
 156:	4c 8d 87 d0 00 00 00 	lea    0xd0(%rdi),%r8
 15d:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
 164:	0f 57 c0             	xorps  %xmm0,%xmm0
 167:	41 0f 11 00          	movups %xmm0,(%r8)
 16b:	48 89 87 a0 00 00 00 	mov    %rax,0xa0(%rdi)
 172:	4c 89 8f a8 00 00 00 	mov    %r9,0xa8(%rdi)
 179:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
 180:	49 83 f9 07          	cmp    $0x7,%r9
 184:	0f 85 e5 00 00 00    	jne    26f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x26f>
 18a:	44 0f b6 08          	movzbl (%rax),%r9d
 18e:	41 83 f9 4d          	cmp    $0x4d,%r9d
 192:	0f 85 81 01 00 00    	jne    319 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x319>
 198:	41 b9 4d 45 53 53    	mov    $0x5353454d,%r9d
 19e:	44 33 08             	xor    (%rax),%r9d
 1a1:	41 ba 53 41 47 45    	mov    $0x45474153,%r10d
 1a7:	44 33 50 03          	xor    0x3(%rax),%r10d
 1ab:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 1b1:	45 09 ca             	or     %r9d,%r10d
 1b4:	0f 85 43 01 00 00    	jne    2fd <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x2fd>
 1ba:	4c 89 47 70          	mov    %r8,0x70(%rdi)
 1be:	41 83 c0 fb          	add    $0xfffffffb,%r8d
 1c2:	41 83 f8 02          	cmp    $0x2,%r8d
 1c6:	0f 92 87 0b 01 00 00 	setb   0x10b(%rdi)
 1cd:	48 8d 46 01          	lea    0x1(%rsi),%rax
 1d1:	80 f9 0a             	cmp    $0xa,%cl
 1d4:	74 7c                	je     252 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x252>
 1d6:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1dd <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1dd>
			1d9: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 1dd:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 1e1:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 1e8:	00
 1e9:	48 39 d0             	cmp    %rdx,%rax
 1ec:	73 61                	jae    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 1ee:	80 38 0a             	cmpb   $0xa,(%rax)
 1f1:	0f 85 3e 02 00 00    	jne    435 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x435>
 1f7:	48 83 c6 02          	add    $0x2,%rsi
 1fb:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 202 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x202>
			1fe: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 202:	48 89 47 60          	mov    %rax,0x60(%rdi)
 206:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 20d:	00
 20e:	48 39 d6             	cmp    %rdx,%rsi
 211:	73 39                	jae    24c <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24c>
 213:	5b                   	pop    %rbx
 214:	5d                   	pop    %rbp
 215:	e9 00 00 00 00       	jmp    21a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x21a>
			216: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 21a:	83 f9 0a             	cmp    $0xa,%ecx
 21d:	0f 84 33 ff ff ff    	je     156 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x156>
 223:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
 22a:	00 00 00
 22d:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 234:	4c 2b 87 20 01 00 00 	sub    0x120(%rdi),%r8
 23b:	4c 89 87 18 01 00 00 	mov    %r8,0x118(%rdi)
 242:	48 ff c6             	inc    %rsi
 245:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 24c:	48 89 f0             	mov    %rsi,%rax
 24f:	5b                   	pop    %rbx
 250:	5d                   	pop    %rbp
 251:	c3                   	ret
 252:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 259 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x259>
			255: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 259:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 25d:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 264:	00
 265:	48 39 d0             	cmp    %rdx,%rax
 268:	73 e5                	jae    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 26a:	48 89 c6             	mov    %rax,%rsi
 26d:	eb a4                	jmp    213 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x213>
 26f:	49 83 c1 fd          	add    $0xfffffffffffffffd,%r9
 273:	49 83 f9 08          	cmp    $0x8,%r9
 277:	0f 87 3d ff ff ff    	ja     1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 27d:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 284 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x284>
			280: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser11start_stateILj3EEEPKcS3_S3_-0x4
 284:	4f 63 0c 8a          	movslq (%r10,%r9,4),%r9
 288:	4d 01 d1             	add    %r10,%r9
 28b:	3e 41 ff e1          	notrack jmp *%r9
 28f:	49 b9 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%r9
 296:	43 54 45
 299:	4c 33 08             	xor    (%rax),%r9
 29c:	44 0f b6 50 08       	movzbl 0x8(%rax),%r10d
 2a1:	49 83 f2 44          	xor    $0x44,%r10
 2a5:	41 b8 06 00 00 00    	mov    $0x6,%r8d
 2ab:	4d 09 ca             	or     %r9,%r10
 2ae:	0f 84 06 ff ff ff    	je     1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 2b4:	49 b9 53 55 42 53 43 	movabs $0x4249524353425553,%r9
 2bb:	52 49 42
 2be:	4c 33 08             	xor    (%rax),%r9
 2c1:	0f b6 40 08          	movzbl 0x8(%rax),%eax
 2c5:	48 83 f0 45          	xor    $0x45,%rax
 2c9:	45 31 c0             	xor    %r8d,%r8d
 2cc:	4c 09 c8             	or     %r9,%rax
 2cf:	41 0f 95 c0          	setne  %r8b
 2d3:	49 f7 d8             	neg    %r8
 2d6:	49 83 c8 0e          	or     $0xe,%r8
 2da:	e9 db fe ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 2df:	81 38 4e 41 43 4b    	cmpl   $0x4b43414e,(%rax)
 2e5:	0f 84 ab 02 00 00    	je     596 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x596>
 2eb:	41 b8 0c 00 00 00    	mov    $0xc,%r8d
 2f1:	81 38 53 45 4e 44    	cmpl   $0x444e4553,(%rax)
 2f7:	0f 84 bd fe ff ff    	je     1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 2fd:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
 304:	e9 b1 fe ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 309:	49 01 c8             	add    %rcx,%r8
 30c:	45 31 c9             	xor    %r9d,%r9d
 30f:	48 89 c6             	mov    %rax,%rsi
 312:	31 c0                	xor    %eax,%eax
 314:	e9 28 fe ff ff       	jmp    141 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x141>
 319:	41 83 f9 43          	cmp    $0x43,%r9d
 31d:	0f 85 7e 02 00 00    	jne    5a1 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x5a1>
 323:	41 b9 43 4f 4e 4e    	mov    $0x4e4e4f43,%r9d
 329:	44 33 08             	xor    (%rax),%r9d
 32c:	41 ba 4e 45 43 54    	mov    $0x5443454e,%r10d
 332:	44 33 50 03          	xor    0x3(%rax),%r10d
 336:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 33c:	e9 70 fe ff ff       	jmp    1b1 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1b1>
 341:	4d 29 da             	sub    %r11,%r10
 344:	ba 02 00 00 00       	mov    $0x2,%edx
 349:	4d 39 d1             	cmp    %r10,%r9
 34c:	77 7e                	ja     3cc <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x3cc>
 34e:	89 97 10 01 00 00    	mov    %edx,0x110(%rdi)
 354:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 35b:	e9 ef fe ff ff       	jmp    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 360:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
 364:	48 ff c0             	inc    %rax
 367:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 36e <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x36e>
			36a: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
 36e:	48 89 77 60          	mov    %rsi,0x60(%rdi)
 372:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 379:	00
 37a:	48 39 d0             	cmp    %rdx,%rax
 37d:	0f 83 cc fe ff ff    	jae    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 383:	80 38 0a             	cmpb   $0xa,(%rax)
 386:	0f 85 00 01 00 00    	jne    48c <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x48c>
 38c:	49 8d 34 08          	lea    (%r8,%rcx,1),%rsi
 390:	48 83 c6 02          	add    $0x2,%rsi
 394:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 39b <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x39b>
			397: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 39b:	48 89 47 60          	mov    %rax,0x60(%rdi)
 39f:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 3a6:	00
 3a7:	48 39 d6             	cmp    %rdx,%rsi
 3aa:	0f 82 56 fc ff ff    	jb     6 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x6>
 3b0:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
 3b4:	48 83 c0 02          	add    $0x2,%rax
 3b8:	e9 92 fe ff ff       	jmp    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 3bd:	c7 87 10 01 00 00 02 	movl   $0x2,0x110(%rdi)
 3c4:	00 00 00
 3c7:	e9 83 fe ff ff       	jmp    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 3cc:	c7 87 14 01 00 00 0d 	movl   $0xd,0x114(%rdi)
 3d3:	00 00 00
 3d6:	4c 89 d0             	mov    %r10,%rax
 3d9:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 3e0:	4c 01 c0             	add    %r8,%rax
 3e3:	48 01 c8             	add    %rcx,%rax
 3e6:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 3ed:	4d 01 d0             	add    %r10,%r8
 3f0:	4a 8d 04 01          	lea    (%rcx,%r8,1),%rax
 3f4:	48 ff c0             	inc    %rax
 3f7:	ba 03 00 00 00       	mov    $0x3,%edx
 3fc:	e9 4d ff ff ff       	jmp    34e <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x34e>
 401:	44 0f b6 08          	movzbl (%rax),%r9d
 405:	41 83 f9 53          	cmp    $0x53,%r9d
 409:	0f 85 c5 01 00 00    	jne    5d4 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x5d4>
 40f:	41 b9 53 54 4f 4d    	mov    $0x4d4f5453,%r9d
 415:	44 33 08             	xor    (%rax),%r9d
 418:	0f b6 40 04          	movzbl 0x4(%rax),%eax
 41c:	83 f0 50             	xor    $0x50,%eax
 41f:	45 31 c0             	xor    %r8d,%r8d
 422:	44 09 c8             	or     %r9d,%eax
 425:	41 0f 95 c0          	setne  %r8b
 429:	49 f7 d8             	neg    %r8
 42c:	49 83 c8 0d          	or     $0xd,%r8
 430:	e9 85 fd ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 435:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
 43c:	00 00 00
 43f:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 446:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 44d:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 454:	48 83 c6 02          	add    $0x2,%rsi
 458:	e9 e8 fd ff ff       	jmp    245 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x245>
 45d:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
 464:	00 00 00
 467:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 46e:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
 472:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 479:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 480:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
 484:	48 ff c0             	inc    %rax
 487:	e9 c8 fe ff ff       	jmp    354 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x354>
 48c:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 493:	00 00 00
 496:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 49d:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
 4a1:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 4a8:	48 ff c0             	inc    %rax
 4ab:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 4b2:	49 8d 04 08          	lea    (%r8,%rcx,1),%rax
 4b6:	48 83 c0 02          	add    $0x2,%rax
 4ba:	e9 95 fe ff ff       	jmp    354 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x354>
 4bf:	4c 89 c0             	mov    %r8,%rax
 4c2:	e9 88 fd ff ff       	jmp    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 4c7:	48 ff c1             	inc    %rcx
 4ca:	49 39 c9             	cmp    %rcx,%r9
 4cd:	0f 85 47 fb ff ff    	jne    1a <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1a>
 4d3:	48 89 d0             	mov    %rdx,%rax
 4d6:	e9 74 fd ff ff       	jmp    24f <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x24f>
 4db:	45 31 c9             	xor    %r9d,%r9d
 4de:	49 89 f0             	mov    %rsi,%r8
 4e1:	e9 2c fe ff ff       	jmp    312 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x312>
 4e6:	41 b8 43 4f 4d 4d    	mov    $0x4d4d4f43,%r8d
 4ec:	44 33 00             	xor    (%rax),%r8d
 4ef:	0f b7 40 04          	movzwl 0x4(%rax),%eax
 4f3:	35 49 54 00 00       	xor    $0x5449,%eax
 4f8:	45 31 c9             	xor    %r9d,%r9d
 4fb:	44 09 c0             	or     %r8d,%eax
 4fe:	41 0f 94 c1          	sete   %r9b
 502:	4f 8d 04 89          	lea    (%r9,%r9,4),%r8
 506:	49 ff c8             	dec    %r8
 509:	e9 ac fc ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 50e:	49 b8 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%r8
 515:	4e 4e 45
 518:	4c 33 00             	xor    (%rax),%r8
 51b:	0f b7 40 08          	movzwl 0x8(%rax),%eax
 51f:	48 35 43 54 00 00    	xor    $0x5443,%rax
 525:	45 31 c9             	xor    %r9d,%r9d
 528:	4c 09 c0             	or     %r8,%rax
 52b:	41 0f 94 c1          	sete   %r9b
 52f:	4e 8d 04 cd ff ff ff 	lea    -0x1(,%r9,8),%r8
 536:	ff
 537:	e9 7e fc ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 53c:	49 b9 55 4e 53 55 42 	movabs $0x5243534255534e55,%r9
 543:	53 43 52
 546:	4c 33 08             	xor    (%rax),%r9
 549:	49 ba 55 42 53 43 52 	movabs $0x4542495243534255,%r10
 550:	49 42 45
 553:	4c 33 50 03          	xor    0x3(%rax),%r10
 557:	45 31 c0             	xor    %r8d,%r8d
 55a:	4d 09 ca             	or     %r9,%r10
 55d:	41 0f 95 c0          	setne  %r8b
 561:	49 f7 d8             	neg    %r8
 564:	49 83 c8 0f          	or     $0xf,%r8
 568:	e9 4d fc ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 56d:	44 0f b7 00          	movzwl (%rax),%r8d
 571:	41 81 f0 41 43 00 00 	xor    $0x4341,%r8d
 578:	0f b6 40 02          	movzbl 0x2(%rax),%eax
 57c:	83 f0 4b             	xor    $0x4b,%eax
 57f:	45 31 c9             	xor    %r9d,%r9d
 582:	66 44 09 c0          	or     %r8w,%ax
 586:	41 0f 94 c1          	sete   %r9b
 58a:	4f 8d 04 49          	lea    (%r9,%r9,2),%r8
 58e:	49 ff c8             	dec    %r8
 591:	e9 24 fc ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 596:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
 59c:	e9 19 fc ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 5a1:	41 83 f9 52          	cmp    $0x52,%r9d
 5a5:	0f 85 0f fc ff ff    	jne    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 5ab:	41 b9 52 45 43 45    	mov    $0x45434552,%r9d
 5b1:	44 33 08             	xor    (%rax),%r9d
 5b4:	41 ba 45 49 50 54    	mov    $0x54504945,%r10d
 5ba:	44 33 50 03          	xor    0x3(%rax),%r10d
 5be:	45 31 c0             	xor    %r8d,%r8d
 5c1:	45 09 ca             	or     %r9d,%r10d
 5c4:	41 0f 95 c0          	setne  %r8b
 5c8:	49 f7 d8             	neg    %r8
 5cb:	49 83 c8 0b          	or     $0xb,%r8
 5cf:	e9 e6 fb ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 5d4:	41 83 f9 45          	cmp    $0x45,%r9d
 5d8:	75 26                	jne    600 <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x600>
 5da:	41 b8 45 52 52 4f    	mov    $0x4f525245,%r8d
 5e0:	44 33 00             	xor    (%rax),%r8d
 5e3:	0f b6 40 04          	movzbl 0x4(%rax),%eax
 5e7:	83 f0 52             	xor    $0x52,%eax
 5ea:	45 31 c9             	xor    %r9d,%r9d
 5ed:	44 09 c0             	or     %r8d,%eax
 5f0:	41 0f 94 c1          	sete   %r9b
 5f4:	4f 8d 04 c9          	lea    (%r9,%r9,8),%r8
 5f8:	49 ff c8             	dec    %r8
 5fb:	e9 ba fb ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 600:	41 83 f9 42          	cmp    $0x42,%r9d
 604:	75 27                	jne    62d <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x62d>
 606:	41 b8 42 45 47 49    	mov    $0x49474542,%r8d
 60c:	44 33 00             	xor    (%rax),%r8d
 60f:	0f b6 40 04          	movzbl 0x4(%rax),%eax
 613:	83 f0 4e             	xor    $0x4e,%eax
 616:	45 31 c9             	xor    %r9d,%r9d
 619:	44 09 c0             	or     %r8d,%eax
 61c:	41 0f 94 c1          	sete   %r9b
 620:	4e 8d 04 8d ff ff ff 	lea    -0x1(,%r9,4),%r8
 627:	ff
 628:	e9 8d fb ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 62d:	41 83 f9 41          	cmp    $0x41,%r9d
 631:	0f 85 83 fb ff ff    	jne    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>
 637:	41 b8 41 42 4f 52    	mov    $0x524f4241,%r8d
 63d:	44 33 00             	xor    (%rax),%r8d
 640:	0f b6 40 04          	movzbl 0x4(%rax),%eax
 644:	83 f0 54             	xor    $0x54,%eax
 647:	45 31 c9             	xor    %r9d,%r9d
 64a:	44 09 c0             	or     %r8d,%eax
 64d:	41 0f 94 c1          	sete   %r9b
 651:	4e 8d 04 4d ff ff ff 	lea    -0x1(,%r9,2),%r8
 658:	ff
 659:	e9 5c fb ff ff       	jmp    1ba <char const* stomptalk::parser::start_state<3u>(char const*, char const*)+0x1ba>

0000000000000160 <stomptalk::parser::finish_value(char const*)>:
     160:	f3 0f 1e fa          	endbr64
     164:	55                   	push   %rbp
     165:	41 57                	push   %r15
     167:	41 56                	push   %r14
     169:	41 55                	push   %r13
     16b:	41 54                	push   %r12
     16d:	53                   	push   %rbx
     16e:	48 83 ec 28          	sub    $0x28,%rsp
     172:	48 8b 9f d0 00 00 00 	mov    0xd0(%rdi),%rbx
     179:	4c 8b bf d8 00 00 00 	mov    0xd8(%rdi),%r15
     180:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     187:	0f 57 c9             	xorps  %xmm1,%xmm1
     18a:	0f 11 8f d0 00 00 00 	movups %xmm1,0xd0(%rdi)
     191:	80 bf 0c 01 00 00 01 	cmpb   $0x1,0x10c(%rdi)
     198:	74 55                	je     1ef <stomptalk::parser::finish_value(char const*)+0x8f>
     19a:	48 8b 47 38          	mov    0x38(%rdi),%rax
     19e:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
     1a5:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     1a9:	48 89 97 e8 00 00 00 	mov    %rdx,0xe8(%rdi)
     1b0:	48 c1 e1 05          	shl    $0x5,%rcx
     1b4:	0f 10 87 c0 00 00 00 	movups 0xc0(%rdi),%xmm0
     1bb:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
     1bf:	48 89 5c 08 10       	mov    %rbx,0x10(%rax,%rcx,1)
     1c4:	4c 89 7c 08 18       	mov    %r15,0x18(%rax,%rcx,1)
     1c9:	48 ff 87 80 00 00 00 	incq   0x80(%rdi)
     1d0:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
     1d7:	0f 11 8f c0 00 00 00 	movups %xmm1,0xc0(%rdi)
     1de:	b0 01                	mov    $0x1,%al
     1e0:	48 83 c4 28          	add    $0x28,%rsp
     1e4:	5b                   	pop    %rbx
     1e5:	41 5c                	pop    %r12
     1e7:	41 5d                	pop    %r13
     1e9:	41 5e                	pop    %r14
     1eb:	41 5f                	pop    %r15
     1ed:	5d                   	pop    %rbp
     1ee:	c3                   	ret
     1ef:	49 83 ff 15          	cmp    $0x15,%r15
     1f3:	73 79                	jae    26e <stomptalk::parser::finish_value(char const*)+0x10e>
     1f5:	4d 85 ff             	test   %r15,%r15
     1f8:	0f 84 20 06 00 00    	je     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     1fe:	4c 89 f9             	mov    %r15,%rcx
     201:	48 89 d8             	mov    %rbx,%rax
     204:	49 83 ff 13          	cmp    $0x13,%r15
     208:	0f 83 88 00 00 00    	jae    296 <stomptalk::parser::finish_value(char const*)+0x136>
     20e:	49 83 ff 02          	cmp    $0x2,%r15
     212:	0f 85 1d 02 00 00    	jne    435 <stomptalk::parser::finish_value(char const*)+0x2d5>
     218:	0f b6 03             	movzbl (%rbx),%eax
     21b:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     21e:	80 f9 f6             	cmp    $0xf6,%cl
     221:	0f 82 f7 05 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     227:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     22b:	4c 8d 34 45 20 fe ff 	lea    -0x1e0(,%rax,2),%r14
     232:	ff
     233:	48 0f be 43 01       	movsbq 0x1(%rbx),%rax
     238:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     23b:	80 f9 f6             	cmp    $0xf6,%cl
     23e:	0f 82 2e 02 00 00    	jb     472 <stomptalk::parser::finish_value(char const*)+0x312>
     244:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
     248:	49 01 c6             	add    %rax,%r14
     24b:	4d 85 f6             	test   %r14,%r14
     24e:	0f 88 ca 05 00 00    	js     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     254:	4c 3b 77 20          	cmp    0x20(%rdi),%r14
     258:	0f 87 05 02 00 00    	ja     463 <stomptalk::parser::finish_value(char const*)+0x303>
     25e:	4c 89 b7 88 00 00 00 	mov    %r14,0x88(%rdi)
     265:	80 4f 78 01          	orb    $0x1,0x78(%rdi)
     269:	e9 2c ff ff ff       	jmp    19a <stomptalk::parser::finish_value(char const*)+0x3a>
     26e:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
     272:	48 83 c0 ec          	add    $0xffffffffffffffec,%rax
     276:	48 89 da             	mov    %rbx,%rdx
     279:	4d 89 f8             	mov    %r15,%r8
     27c:	b9 14 00 00 00       	mov    $0x14,%ecx
     281:	80 3a 30             	cmpb   $0x30,(%rdx)
     284:	0f 85 94 05 00 00    	jne    81e <stomptalk::parser::finish_value(char const*)+0x6be>
     28a:	48 ff c2             	inc    %rdx
     28d:	49 ff c8             	dec    %r8
     290:	49 83 f8 14          	cmp    $0x14,%r8
     294:	77 eb                	ja     281 <stomptalk::parser::finish_value(char const*)+0x121>
     296:	48 8d 51 ee          	lea    -0x12(%rcx),%rdx
     29a:	45 31 e4             	xor    %r12d,%r12d
     29d:	45 31 c0             	xor    %r8d,%r8d
     2a0:	46 0f b6 0c 00       	movzbl (%rax,%r8,1),%r9d
     2a5:	41 83 c1 d0          	add    $0xffffffd0,%r9d
     2a9:	41 83 f9 09          	cmp    $0x9,%r9d
     2ad:	0f 87 6b 05 00 00    	ja     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     2b3:	4f 8d 14 a4          	lea    (%r12,%r12,4),%r10
     2b7:	45 89 c9             	mov    %r9d,%r9d
     2ba:	4f 8d 24 51          	lea    (%r9,%r10,2),%r12
     2be:	49 ff c0             	inc    %r8
     2c1:	4c 39 c2             	cmp    %r8,%rdx
     2c4:	75 da                	jne    2a0 <stomptalk::parser::finish_value(char const*)+0x140>
     2c6:	0f b6 54 08 ee       	movzbl -0x12(%rax,%rcx,1),%edx
     2cb:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     2cf:	41 80 f8 f6          	cmp    $0xf6,%r8b
     2d3:	0f 82 45 05 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     2d9:	48 01 c8             	add    %rcx,%rax
     2dc:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     2e3:	00 00 80
     2e6:	49 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%r8
     2ed:	45 63 01
     2f0:	49 0f af d0          	imul   %r8,%rdx
     2f4:	49 be 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%r14
     2fb:	f9 62 bd
     2fe:	49 01 d6             	add    %rdx,%r14
     301:	0f b6 50 ef          	movzbl -0x11(%rax),%edx
     305:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     309:	41 80 f8 f6          	cmp    $0xf6,%r8b
     30d:	0f 82 db 00 00 00    	jb     3ee <stomptalk::parser::finish_value(char const*)+0x28e>
     313:	49 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r8
     31a:	86 23 00
     31d:	49 0f af d0          	imul   %r8,%rdx
     321:	49 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r9
     328:	b2 56 f9
     32b:	49 01 d1             	add    %rdx,%r9
     32e:	0f b6 50 f0          	movzbl -0x10(%rax),%edx
     332:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     336:	41 80 f8 f6          	cmp    $0xf6,%r8b
     33a:	0f 82 ab 00 00 00    	jb     3eb <stomptalk::parser::finish_value(char const*)+0x28b>
     340:	49 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r8
     347:	8d 03 00
     34a:	49 0f af d0          	imul   %r8,%rdx
     34e:	49 ba 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%r10
     355:	78 55 ff
     358:	49 01 d2             	add    %rdx,%r10
     35b:	0f b6 50 f1          	movzbl -0xf(%rax),%edx
     35f:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     363:	41 80 f8 f6          	cmp    $0xf6,%r8b
     367:	72 7f                	jb     3e8 <stomptalk::parser::finish_value(char const*)+0x288>
     369:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
     36e:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
     373:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
     378:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
     37d:	48 be 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rsi
     384:	5a 00 00
     387:	48 0f af d6          	imul   %rsi,%rdx
     38b:	49 bd 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%r13
     392:	f2 ee ff
     395:	49 01 d5             	add    %rdx,%r13
     398:	0f b6 68 f2          	movzbl -0xe(%rax),%ebp
     39c:	8d 55 c6             	lea    -0x3a(%rbp),%edx
     39f:	80 fa f6             	cmp    $0xf6,%dl
     3a2:	72 2a                	jb     3ce <stomptalk::parser::finish_value(char const*)+0x26e>
     3a4:	48 b9 00 a0 72 4e 18 	movabs $0x9184e72a000,%rcx
     3ab:	09 00 00
     3ae:	48 0f af e9          	imul   %rcx,%rbp
     3b2:	48 83 c0 f3          	add    $0xfffffffffffffff3,%rax
     3b6:	48 89 c7             	mov    %rax,%rdi
     3b9:	e8 00 00 00 00       	call   3be <stomptalk::parser::finish_value(char const*)+0x25e>
			3ba: R_X86_64_PLT32	.text+0xeec
     3be:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
     3c5:	4b fe ff
     3c8:	48 01 c1             	add    %rax,%rcx
     3cb:	48 01 e9             	add    %rbp,%rcx
     3ce:	4c 01 e9             	add    %r13,%rcx
     3d1:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
     3d6:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
     3db:	0f 57 c9             	xorps  %xmm1,%xmm1
     3de:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
     3e3:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
     3e8:	4c 01 d1             	add    %r10,%rcx
     3eb:	4c 01 c9             	add    %r9,%rcx
     3ee:	49 83 fc 13          	cmp    $0x13,%r12
     3f2:	0f 93 c0             	setae  %al
     3f5:	49 01 ce             	add    %rcx,%r14
     3f8:	0f 88 83 00 00 00    	js     481 <stomptalk::parser::finish_value(char const*)+0x321>
     3fe:	84 c0                	test   %al,%al
     400:	0f 85 18 04 00 00    	jne    81e <stomptalk::parser::finish_value(char const*)+0x6be>
     406:	49 83 fc 12          	cmp    $0x12,%r12
     40a:	75 13                	jne    41f <stomptalk::parser::finish_value(char const*)+0x2bf>
     40c:	48 b8 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rax
     413:	27 33 06
     416:	49 39 c6             	cmp    %rax,%r14
     419:	0f 87 ff 03 00 00    	ja     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     41f:	48 b8 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rax
     426:	b6 e0 0d
     429:	4c 0f af e0          	imul   %rax,%r12
     42d:	4d 01 e6             	add    %r12,%r14
     430:	e9 1f fe ff ff       	jmp    254 <stomptalk::parser::finish_value(char const*)+0xf4>
     435:	49 8d 47 ff          	lea    -0x1(%r15),%rax
     439:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 440 <stomptalk::parser::finish_value(char const*)+0x2e0>
			43c: R_X86_64_PC32	.rodata-0x4
     440:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
     444:	48 01 c8             	add    %rcx,%rax
     447:	3e ff e0             	notrack jmp *%rax
     44a:	44 0f b6 33          	movzbl (%rbx),%r14d
     44e:	41 8d 46 c6          	lea    -0x3a(%r14),%eax
     452:	3c f6                	cmp    $0xf6,%al
     454:	0f 82 c4 03 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     45a:	49 83 c6 d0          	add    $0xffffffffffffffd0,%r14
     45e:	e9 e8 fd ff ff       	jmp    24b <stomptalk::parser::finish_value(char const*)+0xeb>
     463:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
     46a:	00 00 00
     46d:	e9 b6 03 00 00       	jmp    828 <stomptalk::parser::finish_value(char const*)+0x6c8>
     472:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     479:	00 00 80
     47c:	e9 c7 fd ff ff       	jmp    248 <stomptalk::parser::finish_value(char const*)+0xe8>
     481:	b0 01                	mov    $0x1,%al
     483:	e9 76 ff ff ff       	jmp    3fe <stomptalk::parser::finish_value(char const*)+0x29e>
     488:	0f b6 0b             	movzbl (%rbx),%ecx
     48b:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     48e:	3c f6                	cmp    $0xf6,%al
     490:	0f 82 88 03 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     496:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     49d:	00 00 80
     4a0:	4c 6b f1 64          	imul   $0x64,%rcx,%r14
     4a4:	49 81 c6 40 ed ff ff 	add    $0xffffffffffffed40,%r14
     4ab:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     4af:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     4b2:	80 fa f6             	cmp    $0xf6,%dl
     4b5:	0f 82 8d fd ff ff    	jb     248 <stomptalk::parser::finish_value(char const*)+0xe8>
     4bb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     4bf:	48 0f be 53 02       	movsbq 0x2(%rbx),%rdx
     4c4:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     4c8:	48 83 c2 d0          	add    $0xffffffffffffffd0,%rdx
     4cc:	41 80 f8 f6          	cmp    $0xf6,%r8b
     4d0:	48 0f 42 d0          	cmovb  %rax,%rdx
     4d4:	48 8d 04 4a          	lea    (%rdx,%rcx,2),%rax
     4d8:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
     4de:	e9 65 fd ff ff       	jmp    248 <stomptalk::parser::finish_value(char const*)+0xe8>
     4e3:	49 89 fe             	mov    %rdi,%r14
     4e6:	48 89 df             	mov    %rbx,%rdi
     4e9:	49 89 f4             	mov    %rsi,%r12
     4ec:	e8 00 00 00 00       	call   4f1 <stomptalk::parser::finish_value(char const*)+0x391>
			4ed: R_X86_64_PLT32	.text.unlikely.+0x125c
     4f1:	e9 c1 02 00 00       	jmp    7b7 <stomptalk::parser::finish_value(char const*)+0x657>
     4f6:	0f b6 03             	movzbl (%rbx),%eax
     4f9:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     4fc:	80 f9 f6             	cmp    $0xf6,%cl
     4ff:	0f 82 19 03 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     505:	4c 69 e8 10 27 00 00 	imul   $0x2710,%rax,%r13
     50c:	48 8d 43 01          	lea    0x1(%rbx),%rax
     510:	49 89 fe             	mov    %rdi,%r14
     513:	48 89 c7             	mov    %rax,%rdi
     516:	49 89 f4             	mov    %rsi,%r12
     519:	e8 00 00 00 00       	call   51e <stomptalk::parser::finish_value(char const*)+0x3be>
			51a: R_X86_64_PLT32	.text.unlikely.+0x125c
     51e:	0f 57 c9             	xorps  %xmm1,%xmm1
     521:	4c 89 e6             	mov    %r12,%rsi
     524:	4c 89 f7             	mov    %r14,%rdi
     527:	4e 8d 34 28          	lea    (%rax,%r13,1),%r14
     52b:	49 81 c6 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r14
     532:	e9 14 fd ff ff       	jmp    24b <stomptalk::parser::finish_value(char const*)+0xeb>
     537:	0f b6 03             	movzbl (%rbx),%eax
     53a:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     53d:	80 f9 f6             	cmp    $0xf6,%cl
     540:	0f 82 d8 02 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     546:	49 89 f4             	mov    %rsi,%r12
     549:	49 89 fd             	mov    %rdi,%r13
     54c:	4c 69 f0 a0 86 01 00 	imul   $0x186a0,%rax,%r14
     553:	49 81 c6 00 c2 b6 ff 	add    $0xffffffffffb6c200,%r14
     55a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     55e:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     561:	80 f9 f6             	cmp    $0xf6,%cl
     564:	0f 82 ab 00 00 00    	jb     615 <stomptalk::parser::finish_value(char const*)+0x4b5>
     56a:	48 69 e8 10 27 00 00 	imul   $0x2710,%rax,%rbp
     571:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     575:	e8 00 00 00 00       	call   57a <stomptalk::parser::finish_value(char const*)+0x41a>
			576: R_X86_64_PLT32	.text.unlikely.+0x125c
     57a:	48 01 e8             	add    %rbp,%rax
     57d:	48 05 00 ad f8 ff    	add    $0xfffffffffff8ad00,%rax
     583:	e9 97 00 00 00       	jmp    61f <stomptalk::parser::finish_value(char const*)+0x4bf>
     588:	49 89 fe             	mov    %rdi,%r14
     58b:	48 89 df             	mov    %rbx,%rdi
     58e:	49 89 f4             	mov    %rsi,%r12
     591:	e8 00 00 00 00       	call   596 <stomptalk::parser::finish_value(char const*)+0x436>
			592: R_X86_64_PLT32	.text.unlikely.+0x117c
     596:	e9 1c 02 00 00       	jmp    7b7 <stomptalk::parser::finish_value(char const*)+0x657>
     59b:	0f b6 03             	movzbl (%rbx),%eax
     59e:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     5a1:	80 f9 f6             	cmp    $0xf6,%cl
     5a4:	0f 82 74 02 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     5aa:	4c 69 e8 80 96 98 00 	imul   $0x989680,%rax,%r13
     5b1:	48 8d 43 01          	lea    0x1(%rbx),%rax
     5b5:	49 89 fe             	mov    %rdi,%r14
     5b8:	48 89 c7             	mov    %rax,%rdi
     5bb:	49 89 f4             	mov    %rsi,%r12
     5be:	e8 00 00 00 00       	call   5c3 <stomptalk::parser::finish_value(char const*)+0x463>
			5bf: R_X86_64_PLT32	.text.unlikely.+0x117c
     5c3:	0f 57 c9             	xorps  %xmm1,%xmm1
     5c6:	4c 89 e6             	mov    %r12,%rsi
     5c9:	4c 89 f7             	mov    %r14,%rdi
     5cc:	4e 8d 34 28          	lea    (%rax,%r13,1),%r14
     5d0:	49 81 c6 00 c8 63 e3 	add    $0xffffffffe363c800,%r14
     5d7:	e9 6f fc ff ff       	jmp    24b <stomptalk::parser::finish_value(char const*)+0xeb>
     5dc:	0f b6 03             	movzbl (%rbx),%eax
     5df:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     5e2:	80 f9 f6             	cmp    $0xf6,%cl
     5e5:	0f 82 33 02 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     5eb:	49 89 f4             	mov    %rsi,%r12
     5ee:	49 89 fd             	mov    %rdi,%r13
     5f1:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
     5f8:	49 be 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%r14
     5ff:	ff ff ff
     602:	49 01 c6             	add    %rax,%r14
     605:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     609:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     60c:	80 f9 f6             	cmp    $0xf6,%cl
     60f:	0f 83 74 02 00 00    	jae    889 <stomptalk::parser::finish_value(char const*)+0x729>
     615:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     61c:	00 00 80
     61f:	49 01 c6             	add    %rax,%r14
     622:	e9 aa 02 00 00       	jmp    8d1 <stomptalk::parser::finish_value(char const*)+0x771>
     627:	49 89 fe             	mov    %rdi,%r14
     62a:	48 89 df             	mov    %rbx,%rdi
     62d:	49 89 f4             	mov    %rsi,%r12
     630:	e8 00 00 00 00       	call   635 <stomptalk::parser::finish_value(char const*)+0x4d5>
			631: R_X86_64_PLT32	.text.unlikely.+0x10fc
     635:	e9 7d 01 00 00       	jmp    7b7 <stomptalk::parser::finish_value(char const*)+0x657>
     63a:	44 0f b6 23          	movzbl (%rbx),%r12d
     63e:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     643:	3c f6                	cmp    $0xf6,%al
     645:	0f 82 d3 01 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     64b:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
     652:	00 00 00
     655:	4c 0f af e0          	imul   %rax,%r12
     659:	48 8d 43 01          	lea    0x1(%rbx),%rax
     65d:	49 89 fe             	mov    %rdi,%r14
     660:	48 89 c7             	mov    %rax,%rdi
     663:	49 89 f5             	mov    %rsi,%r13
     666:	e8 00 00 00 00       	call   66b <stomptalk::parser::finish_value(char const*)+0x50b>
			667: R_X86_64_PLT32	.text.unlikely.+0x10fc
     66b:	0f 57 c9             	xorps  %xmm1,%xmm1
     66e:	4c 89 ee             	mov    %r13,%rsi
     671:	4c 89 f7             	mov    %r14,%rdi
     674:	49 be 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r14
     67b:	ff ff ff
     67e:	e9 85 01 00 00       	jmp    808 <stomptalk::parser::finish_value(char const*)+0x6a8>
     683:	0f b6 03             	movzbl (%rbx),%eax
     686:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     689:	80 f9 f6             	cmp    $0xf6,%cl
     68c:	0f 82 8c 01 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     692:	49 89 f4             	mov    %rsi,%r12
     695:	49 89 fd             	mov    %rdi,%r13
     698:	48 b9 00 e8 76 48 17 	movabs $0x174876e800,%rcx
     69f:	00 00 00
     6a2:	48 0f af c1          	imul   %rcx,%rax
     6a6:	49 be 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r14
     6ad:	fb ff ff
     6b0:	49 01 c6             	add    %rax,%r14
     6b3:	0f b6 6b 01          	movzbl 0x1(%rbx),%ebp
     6b7:	8d 45 c6             	lea    -0x3a(%rbp),%eax
     6ba:	3c f6                	cmp    $0xf6,%al
     6bc:	0f 82 bb 01 00 00    	jb     87d <stomptalk::parser::finish_value(char const*)+0x71d>
     6c2:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
     6c9:	00 00 00
     6cc:	48 0f af e8          	imul   %rax,%rbp
     6d0:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     6d4:	e8 00 00 00 00       	call   6d9 <stomptalk::parser::finish_value(char const*)+0x579>
			6d5: R_X86_64_PLT32	.text.unlikely.+0x10fc
     6d9:	48 b9 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rcx
     6e0:	ff ff ff
     6e3:	e9 e0 01 00 00       	jmp    8c8 <stomptalk::parser::finish_value(char const*)+0x768>
     6e8:	49 89 fe             	mov    %rdi,%r14
     6eb:	48 89 df             	mov    %rbx,%rdi
     6ee:	49 89 f4             	mov    %rsi,%r12
     6f1:	e8 00 00 00 00       	call   6f6 <stomptalk::parser::finish_value(char const*)+0x596>
			6f2: R_X86_64_PLT32	.text+0xeec
     6f6:	e9 bc 00 00 00       	jmp    7b7 <stomptalk::parser::finish_value(char const*)+0x657>
     6fb:	44 0f b6 23          	movzbl (%rbx),%r12d
     6ff:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     704:	3c f6                	cmp    $0xf6,%al
     706:	0f 82 12 01 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     70c:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
     713:	09 00 00
     716:	4c 0f af e0          	imul   %rax,%r12
     71a:	48 8d 43 01          	lea    0x1(%rbx),%rax
     71e:	49 89 fe             	mov    %rdi,%r14
     721:	48 89 c7             	mov    %rax,%rdi
     724:	49 89 f5             	mov    %rsi,%r13
     727:	e8 00 00 00 00       	call   72c <stomptalk::parser::finish_value(char const*)+0x5cc>
			728: R_X86_64_PLT32	.text+0xeec
     72c:	0f 57 c9             	xorps  %xmm1,%xmm1
     72f:	4c 89 ee             	mov    %r13,%rsi
     732:	4c 89 f7             	mov    %r14,%rdi
     735:	49 be 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%r14
     73c:	4b fe ff
     73f:	e9 c4 00 00 00       	jmp    808 <stomptalk::parser::finish_value(char const*)+0x6a8>
     744:	0f b6 03             	movzbl (%rbx),%eax
     747:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     74a:	80 f9 f6             	cmp    $0xf6,%cl
     74d:	0f 82 cb 00 00 00    	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     753:	49 89 f4             	mov    %rsi,%r12
     756:	49 89 fd             	mov    %rdi,%r13
     759:	48 b9 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rcx
     760:	5a 00 00
     763:	48 0f af c1          	imul   %rcx,%rax
     767:	49 be 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%r14
     76e:	f2 ee ff
     771:	49 01 c6             	add    %rax,%r14
     774:	0f b6 6b 01          	movzbl 0x1(%rbx),%ebp
     778:	8d 45 c6             	lea    -0x3a(%rbp),%eax
     77b:	3c f6                	cmp    $0xf6,%al
     77d:	0f 82 fa 00 00 00    	jb     87d <stomptalk::parser::finish_value(char const*)+0x71d>
     783:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
     78a:	09 00 00
     78d:	48 0f af e8          	imul   %rax,%rbp
     791:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     795:	e8 00 00 00 00       	call   79a <stomptalk::parser::finish_value(char const*)+0x63a>
			796: R_X86_64_PLT32	.text+0xeec
     79a:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
     7a1:	4b fe ff
     7a4:	e9 1f 01 00 00       	jmp    8c8 <stomptalk::parser::finish_value(char const*)+0x768>
     7a9:	49 89 fe             	mov    %rdi,%r14
     7ac:	48 89 df             	mov    %rbx,%rdi
     7af:	49 89 f4             	mov    %rsi,%r12
     7b2:	e8 00 00 00 00       	call   7b7 <stomptalk::parser::finish_value(char const*)+0x657>
			7b3: R_X86_64_PLT32	.text.unlikely.+0x104c
     7b7:	0f 57 c9             	xorps  %xmm1,%xmm1
     7ba:	4c 89 e6             	mov    %r12,%rsi
     7bd:	4c 89 f7             	mov    %r14,%rdi
     7c0:	49 89 c6             	mov    %rax,%r14
     7c3:	e9 83 fa ff ff       	jmp    24b <stomptalk::parser::finish_value(char const*)+0xeb>
     7c8:	44 0f b6 23          	movzbl (%rbx),%r12d
     7cc:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     7d1:	3c f6                	cmp    $0xf6,%al
     7d3:	72 49                	jb     81e <stomptalk::parser::finish_value(char const*)+0x6be>
     7d5:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
     7dc:	86 23 00
     7df:	4c 0f af e0          	imul   %rax,%r12
     7e3:	48 8d 43 01          	lea    0x1(%rbx),%rax
     7e7:	49 89 fe             	mov    %rdi,%r14
     7ea:	48 89 c7             	mov    %rax,%rdi
     7ed:	49 89 f5             	mov    %rsi,%r13
     7f0:	e8 00 00 00 00       	call   7f5 <stomptalk::parser::finish_value(char const*)+0x695>
			7f1: R_X86_64_PLT32	.text.unlikely.+0x104c
     7f5:	0f 57 c9             	xorps  %xmm1,%xmm1
     7f8:	4c 89 ee             	mov    %r13,%rsi
     7fb:	4c 89 f7             	mov    %r14,%rdi
     7fe:	49 be 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r14
     805:	b2 56 f9
     808:	49 01 c6             	add    %rax,%r14
     80b:	4d 01 e6             	add    %r12,%r14
     80e:	e9 38 fa ff ff       	jmp    24b <stomptalk::parser::finish_value(char const*)+0xeb>
     813:	0f b6 03             	movzbl (%rbx),%eax
     816:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     819:	80 f9 f6             	cmp    $0xf6,%cl
     81c:	73 33                	jae    851 <stomptalk::parser::finish_value(char const*)+0x6f1>
     81e:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
     825:	00 00 00
     828:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     82f:	48 89 f0             	mov    %rsi,%rax
     832:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     839:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     840:	48 ff c6             	inc    %rsi
     843:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     84a:	31 c0                	xor    %eax,%eax
     84c:	e9 8f f9 ff ff       	jmp    1e0 <stomptalk::parser::finish_value(char const*)+0x80>
     851:	49 89 f4             	mov    %rsi,%r12
     854:	49 89 fd             	mov    %rdi,%r13
     857:	48 b9 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rcx
     85e:	45 63 01
     861:	48 0f af c1          	imul   %rcx,%rax
     865:	49 be 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%r14
     86c:	f9 62 bd
     86f:	49 01 c6             	add    %rax,%r14
     872:	0f b6 6b 01          	movzbl 0x1(%rbx),%ebp
     876:	8d 45 c6             	lea    -0x3a(%rbp),%eax
     879:	3c f6                	cmp    $0xf6,%al
     87b:	73 2a                	jae    8a7 <stomptalk::parser::finish_value(char const*)+0x747>
     87d:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     884:	00 00 80
     887:	eb 45                	jmp    8ce <stomptalk::parser::finish_value(char const*)+0x76e>
     889:	48 69 e8 80 96 98 00 	imul   $0x989680,%rax,%rbp
     890:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     894:	e8 00 00 00 00       	call   899 <stomptalk::parser::finish_value(char const*)+0x739>
			895: R_X86_64_PLT32	.text.unlikely.+0x117c
     899:	48 01 e8             	add    %rbp,%rax
     89c:	48 05 00 c8 63 e3    	add    $0xffffffffe363c800,%rax
     8a2:	e9 78 fd ff ff       	jmp    61f <stomptalk::parser::finish_value(char const*)+0x4bf>
     8a7:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
     8ae:	86 23 00
     8b1:	48 0f af e8          	imul   %rax,%rbp
     8b5:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     8b9:	e8 00 00 00 00       	call   8be <stomptalk::parser::finish_value(char const*)+0x75e>
			8ba: R_X86_64_PLT32	.text.unlikely.+0x104c
     8be:	48 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rcx
     8c5:	b2 56 f9
     8c8:	48 01 c1             	add    %rax,%rcx
     8cb:	48 01 e9             	add    %rbp,%rcx
     8ce:	49 01 ce             	add    %rcx,%r14
     8d1:	4c 89 ef             	mov    %r13,%rdi
     8d4:	4c 89 e6             	mov    %r12,%rsi
     8d7:	0f 57 c9             	xorps  %xmm1,%xmm1
     8da:	e9 6c f9 ff ff       	jmp    24b <stomptalk::parser::finish_value(char const*)+0xeb>
     8df:	90                   	nop

0000000000000000 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 54                	push   %r12
   a:	53                   	push   %rbx
   b:	50                   	push   %rax
   c:	48 89 f0             	mov    %rsi,%rax
   f:	48 39 d6             	cmp    %rdx,%rsi
  12:	0f 83 89 02 00 00    	jae    2a1 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2a1>
  18:	48 89 c6             	mov    %rax,%rsi
  1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  20:	0f b6 0e             	movzbl (%rsi),%ecx
  23:	80 c1 bf             	add    $0xbf,%cl
  26:	80 f9 19             	cmp    $0x19,%cl
  29:	77 0b                	ja     36 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x36>
  2b:	48 ff c6             	inc    %rsi
  2e:	48 39 d6             	cmp    %rdx,%rsi
  31:	75 ed                	jne    20 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x20>
  33:	48 89 d6             	mov    %rdx,%rsi
  36:	48 89 f3             	mov    %rsi,%rbx
  39:	48 29 c3             	sub    %rax,%rbx
  3c:	74 46                	je     84 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x84>
  3e:	4c 8b 87 00 01 00 00 	mov    0x100(%rdi),%r8
  45:	4c 89 c1             	mov    %r8,%rcx
  48:	48 29 d9             	sub    %rbx,%rcx
  4b:	0f 82 89 02 00 00    	jb     2da <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2da>
  51:	48 89 8f 00 01 00 00 	mov    %rcx,0x100(%rdi)
  58:	80 bf 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rdi)
  5f:	0f 84 dd 01 00 00    	je     242 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x242>
  65:	48 8b 8f d8 00 00 00 	mov    0xd8(%rdi),%rcx
  6c:	48 85 c9             	test   %rcx,%rcx
  6f:	75 09                	jne    7a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x7a>
  71:	48 89 87 d0 00 00 00 	mov    %rax,0xd0(%rdi)
  78:	31 c9                	xor    %ecx,%ecx
  7a:	48 01 d9             	add    %rbx,%rcx
  7d:	48 89 8f d8 00 00 00 	mov    %rcx,0xd8(%rdi)
  84:	48 39 d6             	cmp    %rdx,%rsi
  87:	0f 84 75 02 00 00    	je     302 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x302>
  8d:	0f b6 0e             	movzbl (%rsi),%ecx
  90:	83 f9 0d             	cmp    $0xd,%ecx
  93:	0f 85 e0 00 00 00    	jne    179 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x179>
  99:	4c 8b 87 d0 00 00 00 	mov    0xd0(%rdi),%r8
  a0:	4c 8b 8f d8 00 00 00 	mov    0xd8(%rdi),%r9
  a7:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
  ae:	0f 57 c0             	xorps  %xmm0,%xmm0
  b1:	0f 11 87 d0 00 00 00 	movups %xmm0,0xd0(%rdi)
  b8:	4c 89 87 a0 00 00 00 	mov    %r8,0xa0(%rdi)
  bf:	4c 89 8f a8 00 00 00 	mov    %r9,0xa8(%rdi)
  c6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  cd:	49 83 f9 07          	cmp    $0x7,%r9
  d1:	0f 85 fd 00 00 00    	jne    1d4 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1d4>
  d7:	45 0f b6 08          	movzbl (%r8),%r9d
  db:	41 83 f9 4d          	cmp    $0x4d,%r9d
  df:	0f 85 c4 01 00 00    	jne    2a9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2a9>
  e5:	41 b9 4d 45 53 53    	mov    $0x5353454d,%r9d
  eb:	45 33 08             	xor    (%r8),%r9d
  ee:	41 ba 53 41 47 45    	mov    $0x45474153,%r10d
  f4:	45 33 50 03          	xor    0x3(%r8),%r10d
  f8:	b8 09 00 00 00       	mov    $0x9,%eax
  fd:	45 09 ca             	or     %r9d,%r10d
 100:	0f 85 8f 01 00 00    	jne    295 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x295>
 106:	48 89 47 70          	mov    %rax,0x70(%rdi)
 10a:	83 c0 fb             	add    $0xfffffffb,%eax
 10d:	83 f8 02             	cmp    $0x2,%eax
 110:	0f 92 87 0b 01 00 00 	setb   0x10b(%rdi)
 117:	48 8d 46 01          	lea    0x1(%rsi),%rax
 11b:	80 f9 0a             	cmp    $0xa,%cl
 11e:	0f 84 8f 00 00 00    	je     1b3 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1b3>
 124:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 12b <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x12b>
			127: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 12b:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 12f:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 136:	00
 137:	48 39 d0             	cmp    %rdx,%rax
 13a:	0f 83 bf 01 00 00    	jae    2ff <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2ff>
 140:	80 38 0a             	cmpb   $0xa,(%rax)
 143:	0f 85 28 02 00 00    	jne    371 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x371>
 149:	48 83 c6 02          	add    $0x2,%rsi
 14d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 154 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x154>
			150: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 154:	48 89 47 60          	mov    %rax,0x60(%rdi)
 158:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 15f:	00
 160:	48 39 d6             	cmp    %rdx,%rsi
 163:	0f 83 99 01 00 00    	jae    302 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x302>
 169:	48 83 c4 08          	add    $0x8,%rsp
 16d:	5b                   	pop    %rbx
 16e:	41 5c                	pop    %r12
 170:	41 5e                	pop    %r14
 172:	41 5f                	pop    %r15
 174:	e9 00 00 00 00       	jmp    179 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x179>
			175: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 179:	83 f9 0a             	cmp    $0xa,%ecx
 17c:	0f 84 17 ff ff ff    	je     99 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x99>
 182:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
 189:	00 00 00
 18c:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 193:	48 89 f0             	mov    %rsi,%rax
 196:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 19d:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 1a4:	48 ff c6             	inc    %rsi
 1a7:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 1ae:	e9 4f 01 00 00       	jmp    302 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x302>
 1b3:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1ba <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1ba>
			1b6: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 1ba:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 1be:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 1c5:	00
 1c6:	48 39 d0             	cmp    %rdx,%rax
 1c9:	0f 83 30 01 00 00    	jae    2ff <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2ff>
 1cf:	48 89 c6             	mov    %rax,%rsi
 1d2:	eb 95                	jmp    169 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x169>
 1d4:	49 83 c1 fd          	add    $0xfffffffffffffffd,%r9
 1d8:	49 83 f9 08          	cmp    $0x8,%r9
 1dc:	0f 87 24 ff ff ff    	ja     106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 1e2:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 1e9 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x1e9>
			1e5: R_X86_64_PC32	.rodata._ZN9stomptalk6parser12method_stateILj3EEEPKcS3_S3_-0x4
 1e9:	4f 63 0c 8a          	movslq (%r10,%r9,4),%r9
 1ed:	4d 01 d1             	add    %r10,%r9
 1f0:	3e 41 ff e1          	notrack jmp *%r9
 1f4:	49 b9 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%r9
 1fb:	43 54 45
 1fe:	4d 33 08             	xor    (%r8),%r9
 201:	45 0f b6 50 08       	movzbl 0x8(%r8),%r10d
 206:	49 83 f2 44          	xor    $0x44,%r10
 20a:	b8 06 00 00 00       	mov    $0x6,%eax
 20f:	4d 09 ca             	or     %r9,%r10
 212:	0f 84 ee fe ff ff    	je     106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 218:	49 b9 53 55 42 53 43 	movabs $0x4249524353425553,%r9
 21f:	52 49 42
 222:	4d 33 08             	xor    (%r8),%r9
 225:	45 0f b6 40 08       	movzbl 0x8(%r8),%r8d
 22a:	49 83 f0 45          	xor    $0x45,%r8
 22e:	31 c0                	xor    %eax,%eax
 230:	4d 09 c8             	or     %r9,%r8
 233:	0f 95 c0             	setne  %al
 236:	48 f7 d8             	neg    %rax
 239:	48 83 c8 0e          	or     $0xe,%rax
 23d:	e9 c4 fe ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 242:	48 8b 4f 48          	mov    0x48(%rdi),%rcx
 246:	49 89 fe             	mov    %rdi,%r14
 249:	48 89 cf             	mov    %rcx,%rdi
 24c:	49 89 f7             	mov    %rsi,%r15
 24f:	48 89 c6             	mov    %rax,%rsi
 252:	49 89 d4             	mov    %rdx,%r12
 255:	48 89 da             	mov    %rbx,%rdx
 258:	e8 00 00 00 00       	call   25d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x25d>
			259: R_X86_64_PLT32	memcpy-0x4
 25d:	4c 89 e2             	mov    %r12,%rdx
 260:	4c 89 fe             	mov    %r15,%rsi
 263:	4c 89 f7             	mov    %r14,%rdi
 266:	49 01 5e 48          	add    %rbx,0x48(%r14)
 26a:	49 8b 8e d8 00 00 00 	mov    0xd8(%r14),%rcx
 271:	e9 04 fe ff ff       	jmp    7a <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x7a>
 276:	41 81 38 4e 41 43 4b 	cmpl   $0x4b43414e,(%r8)
 27d:	0f 84 cf 01 00 00    	je     452 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x452>
 283:	b8 0c 00 00 00       	mov    $0xc,%eax
 288:	41 81 38 53 45 4e 44 	cmpl   $0x444e4553,(%r8)
 28f:	0f 84 71 fe ff ff    	je     106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 295:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
 29c:	e9 65 fe ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 2a1:	48 89 c6             	mov    %rax,%rsi
 2a4:	e9 db fd ff ff       	jmp    84 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x84>
 2a9:	41 83 f9 43          	cmp    $0x43,%r9d
 2ad:	0f 85 a9 01 00 00    	jne    45c <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x45c>
 2b3:	41 b9 43 4f 4e 4e    	mov    $0x4e4e4f43,%r9d
 2b9:	45 33 08             	xor    (%r8),%r9d
 2bc:	41 ba 4e 45 43 54    	mov    $0x5443454e,%r10d
 2c2:	45 33 50 03          	xor    0x3(%r8),%r10d
 2c6:	31 c0                	xor    %eax,%eax
 2c8:	45 09 ca             	or     %r9d,%r10d
 2cb:	0f 95 c0             	setne  %al
 2ce:	48 f7 d8             	neg    %rax
 2d1:	48 83 c8 05          	or     $0x5,%rax
 2d5:	e9 2c fe ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 2da:	48 89 f9             	mov    %rdi,%rcx
 2dd:	48 8b b7 f8 00 00 00 	mov    0xf8(%rdi),%rsi
 2e4:	4a 8d 3c 06          	lea    (%rsi,%r8,1),%rdi
 2e8:	ba 02 00 00 00       	mov    $0x2,%edx
 2ed:	48 39 fb             	cmp    %rdi,%rbx
 2f0:	77 1f                	ja     311 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x311>
 2f2:	89 91 10 01 00 00    	mov    %edx,0x110(%rcx)
 2f8:	48 89 81 28 01 00 00 	mov    %rax,0x128(%rcx)
 2ff:	48 89 c6             	mov    %rax,%rsi
 302:	48 89 f0             	mov    %rsi,%rax
 305:	48 83 c4 08          	add    $0x8,%rsp
 309:	5b                   	pop    %rbx
 30a:	41 5c                	pop    %r12
 30c:	41 5e                	pop    %r14
 30e:	41 5f                	pop    %r15
 310:	c3                   	ret
 311:	4c 01 c0             	add    %r8,%rax
 314:	48 8d 14 30          	lea    (%rax,%rsi,1),%rdx
 318:	c7 81 14 01 00 00 0d 	movl   $0xd,0x114(%rcx)
 31f:	00 00 00
 322:	48 2b 91 20 01 00 00 	sub    0x120(%rcx),%rdx
 329:	48 89 91 18 01 00 00 	mov    %rdx,0x118(%rcx)
 330:	48 01 f0             	add    %rsi,%rax
 333:	48 ff c0             	inc    %rax
 336:	ba 03 00 00 00       	mov    $0x3,%edx
 33b:	eb b5                	jmp    2f2 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x2f2>
 33d:	45 0f b6 08          	movzbl (%r8),%r9d
 341:	41 83 f9 53          	cmp    $0x53,%r9d
 345:	0f 85 42 01 00 00    	jne    48d <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x48d>
 34b:	41 b9 53 54 4f 4d    	mov    $0x4d4f5453,%r9d
 351:	45 33 08             	xor    (%r8),%r9d
 354:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 359:	41 83 f0 50          	xor    $0x50,%r8d
 35d:	31 c0                	xor    %eax,%eax
 35f:	45 09 c8             	or     %r9d,%r8d
 362:	0f 95 c0             	setne  %al
 365:	48 f7 d8             	neg    %rax
 368:	48 83 c8 0d          	or     $0xd,%rax
 36c:	e9 95 fd ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 371:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
 378:	00 00 00
 37b:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 382:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 389:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 390:	48 83 c6 02          	add    $0x2,%rsi
 394:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 39b:	e9 62 ff ff ff       	jmp    302 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x302>
 3a0:	b8 43 4f 4d 4d       	mov    $0x4d4d4f43,%eax
 3a5:	41 33 00             	xor    (%r8),%eax
 3a8:	45 0f b7 40 04       	movzwl 0x4(%r8),%r8d
 3ad:	41 81 f0 49 54 00 00 	xor    $0x5449,%r8d
 3b4:	45 31 c9             	xor    %r9d,%r9d
 3b7:	41 09 c0             	or     %eax,%r8d
 3ba:	41 0f 94 c1          	sete   %r9b
 3be:	4b 8d 04 89          	lea    (%r9,%r9,4),%rax
 3c2:	48 ff c8             	dec    %rax
 3c5:	e9 3c fd ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 3ca:	48 b8 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rax
 3d1:	4e 4e 45
 3d4:	49 33 00             	xor    (%r8),%rax
 3d7:	45 0f b7 40 08       	movzwl 0x8(%r8),%r8d
 3dc:	49 81 f0 43 54 00 00 	xor    $0x5443,%r8
 3e3:	45 31 c9             	xor    %r9d,%r9d
 3e6:	49 09 c0             	or     %rax,%r8
 3e9:	41 0f 94 c1          	sete   %r9b
 3ed:	4a 8d 04 cd ff ff ff 	lea    -0x1(,%r9,8),%rax
 3f4:	ff
 3f5:	e9 0c fd ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 3fa:	49 b9 55 4e 53 55 42 	movabs $0x5243534255534e55,%r9
 401:	53 43 52
 404:	4d 33 08             	xor    (%r8),%r9
 407:	49 ba 55 42 53 43 52 	movabs $0x4542495243534255,%r10
 40e:	49 42 45
 411:	4d 33 50 03          	xor    0x3(%r8),%r10
 415:	31 c0                	xor    %eax,%eax
 417:	4d 09 ca             	or     %r9,%r10
 41a:	0f 95 c0             	setne  %al
 41d:	48 f7 d8             	neg    %rax
 420:	48 83 c8 0f          	or     $0xf,%rax
 424:	e9 dd fc ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 429:	41 0f b7 00          	movzwl (%r8),%eax
 42d:	35 41 43 00 00       	xor    $0x4341,%eax
 432:	45 0f b6 40 02       	movzbl 0x2(%r8),%r8d
 437:	41 83 f0 4b          	xor    $0x4b,%r8d
 43b:	45 31 c9             	xor    %r9d,%r9d
 43e:	66 41 09 c0          	or     %ax,%r8w
 442:	41 0f 94 c1          	sete   %r9b
 446:	4b 8d 04 49          	lea    (%r9,%r9,2),%rax
 44a:	48 ff c8             	dec    %rax
 44d:	e9 b4 fc ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 452:	b8 0a 00 00 00       	mov    $0xa,%eax
 457:	e9 aa fc ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 45c:	41 83 f9 52          	cmp    $0x52,%r9d
 460:	0f 85 a0 fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 466:	41 b9 52 45 43 45    	mov    $0x45434552,%r9d
 46c:	45 33 08             	xor    (%r8),%r9d
 46f:	41 ba 45 49 50 54    	mov    $0x54504945,%r10d
 475:	45 33 50 03          	xor    0x3(%r8),%r10d
 479:	31 c0                	xor    %eax,%eax
 47b:	45 09 ca             	or     %r9d,%r10d
 47e:	0f 95 c0             	setne  %al
 481:	48 f7 d8             	neg    %rax
 484:	48 83 c8 0b          	or     $0xb,%rax
 488:	e9 79 fc ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 48d:	41 83 f9 45          	cmp    $0x45,%r9d
 491:	75 27                	jne    4ba <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4ba>
 493:	b8 45 52 52 4f       	mov    $0x4f525245,%eax
 498:	41 33 00             	xor    (%r8),%eax
 49b:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 4a0:	41 83 f0 52          	xor    $0x52,%r8d
 4a4:	45 31 c9             	xor    %r9d,%r9d
 4a7:	41 09 c0             	or     %eax,%r8d
 4aa:	41 0f 94 c1          	sete   %r9b
 4ae:	4b 8d 04 c9          	lea    (%r9,%r9,8),%rax
 4b2:	48 ff c8             	dec    %rax
 4b5:	e9 4c fc ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 4ba:	41 83 f9 42          	cmp    $0x42,%r9d
 4be:	75 28                	jne    4e8 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x4e8>
 4c0:	b8 42 45 47 49       	mov    $0x49474542,%eax
 4c5:	41 33 00             	xor    (%r8),%eax
 4c8:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 4cd:	41 83 f0 4e          	xor    $0x4e,%r8d
 4d1:	45 31 c9             	xor    %r9d,%r9d
 4d4:	41 09 c0             	or     %eax,%r8d
 4d7:	41 0f 94 c1          	sete   %r9b
 4db:	4a 8d 04 8d ff ff ff 	lea    -0x1(,%r9,4),%rax
 4e2:	ff
 4e3:	e9 1e fc ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 4e8:	41 83 f9 41          	cmp    $0x41,%r9d
 4ec:	0f 85 14 fc ff ff    	jne    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>
 4f2:	b8 41 42 4f 52       	mov    $0x524f4241,%eax
 4f7:	41 33 00             	xor    (%r8),%eax
 4fa:	45 0f b6 40 04       	movzbl 0x4(%r8),%r8d
 4ff:	41 83 f0 54          	xor    $0x54,%r8d
 503:	45 31 c9             	xor    %r9d,%r9d
 506:	41 09 c0             	or     %eax,%r8d
 509:	41 0f 94 c1          	sete   %r9b
 50d:	4a 8d 04 4d ff ff ff 	lea    -0x1(,%r9,2),%rax
 514:	ff
 515:	e9 ec fb ff ff       	jmp    106 <char const* stomptalk::parser::method_state<3u>(char const*, char const*)+0x106>

0000000000000000 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
       0:	f3 0f 1e fa          	endbr64
       4:	55                   	push   %rbp
       5:	41 57                	push   %r15
       7:	41 56                	push   %r14
       9:	41 55                	push   %r13
       b:	41 54                	push   %r12
       d:	53                   	push   %rbx
       e:	48 83 ec 28          	sub    $0x28,%rsp
      12:	49 89 d3             	mov    %rdx,%r11
      15:	49 89 f6             	mov    %rsi,%r14
      18:	48 89 fb             	mov    %rdi,%rbx
      1b:	4c 8d 8f c0 00 00 00 	lea    0xc0(%rdi),%r9
      22:	4c 8d 97 d0 00 00 00 	lea    0xd0(%rdi),%r10
      29:	0f 57 e4             	xorps  %xmm4,%xmm4
      2c:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 34 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x34>
      33:	00
			30: R_X86_64_PC32	.LCPI47_0-0x4
      34:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 3c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3c>
      3b:	00
			38: R_X86_64_PC32	.LCPI47_1-0x4
      3c:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 44 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x44>
      43:	00
			40: R_X86_64_PC32	.LCPI47_2-0x4
      44:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 4d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4d>
      4b:	00 00
			49: R_X86_64_PC32	.LCPI47_3-0x4
      4d:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
      54:	7f 7f 7f
      57:	48 89 14 24          	mov    %rdx,(%rsp)
      5b:	eb 2c                	jmp    89 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x89>
      5d:	0f 1f 00             	nopl   (%rax)
      60:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 67 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x67>
			63: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
      67:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
      6b:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
      72:	00
      73:	49 89 c6             	mov    %rax,%r14
      76:	4c 39 d8             	cmp    %r11,%rax
      79:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
      80:	7f 7f 7f
      83:	0f 83 6d 1a 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
      89:	41 0f b6 06          	movzbl (%r14),%eax
      8d:	83 f8 0d             	cmp    $0xd,%eax
      90:	0f 84 28 03 00 00    	je     3be <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3be>
      96:	83 f8 0a             	cmp    $0xa,%eax
      99:	0f 84 a0 09 00 00    	je     a3f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa3f>
      9f:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
      a6:	48 3b 43 18          	cmp    0x18(%rbx),%rax
      aa:	0f 84 a8 1d 00 00    	je     1e58 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e58>
      b0:	48 8b 83 e8 00 00 00 	mov    0xe8(%rbx),%rax
      b7:	48 3b 43 08          	cmp    0x8(%rbx),%rax
      bb:	0f 84 a6 1f 00 00    	je     2067 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2067>
      c1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc8>
			c4: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
      c8:	48 89 43 60          	mov    %rax,0x60(%rbx)
      cc:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
      d3:	00
      d4:	4d 39 de             	cmp    %r11,%r14
      d7:	0f 83 19 1a 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
      dd:	44 0f b6 bb 0a 01 00 	movzbl 0x10a(%rbx),%r15d
      e4:	00
      e5:	4d 89 f4             	mov    %r14,%r12
      e8:	41 80 ff 01          	cmp    $0x1,%r15b
      ec:	0f 84 27 0c 00 00    	je     d19 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd19>
      f2:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
      f9:	00
      fa:	0f 94 c0             	sete   %al
      fd:	0f b6 93 0b 01 00 00 	movzbl 0x10b(%rbx),%edx
     104:	4c 89 d9             	mov    %r11,%rcx
     107:	4c 29 e1             	sub    %r12,%rcx
     10a:	48 83 f9 10          	cmp    $0x10,%rcx
     10e:	0f 8c 71 1e 00 00    	jl     1f85 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f85>
     114:	4d 89 e6             	mov    %r12,%r14
     117:	45 31 ed             	xor    %r13d,%r13d
     11a:	f3 41 0f 6f 06       	movdqu (%r14),%xmm0
     11f:	66 0f ef c9          	pxor   %xmm1,%xmm1
     123:	66 0f ef d2          	pxor   %xmm2,%xmm2
     127:	84 d2                	test   %dl,%dl
     129:	75 09                	jne    134 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x134>
     12b:	66 0f 6f d0          	movdqa %xmm0,%xmm2
     12f:	66 41 0f 74 d0       	pcmpeqb %xmm8,%xmm2
     134:	66 0f 6f d8          	movdqa %xmm0,%xmm3
     138:	66 0f 74 dd          	pcmpeqb %xmm5,%xmm3
     13c:	66 0f d7 f3          	pmovmskb %xmm3,%esi
     140:	66 0f 74 c8          	pcmpeqb %xmm0,%xmm1
     144:	66 0f 6f d8          	movdqa %xmm0,%xmm3
     148:	66 0f 74 de          	pcmpeqb %xmm6,%xmm3
     14c:	66 0f 74 c7          	pcmpeqb %xmm7,%xmm0
     150:	66 0f eb c3          	por    %xmm3,%xmm0
     154:	66 0f eb c1          	por    %xmm1,%xmm0
     158:	66 0f eb c2          	por    %xmm2,%xmm0
     15c:	66 0f d7 f8          	pmovmskb %xmm0,%edi
     160:	85 f6                	test   %esi,%esi
     162:	74 2c                	je     190 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x190>
     164:	a8 01                	test   $0x1,%al
     166:	74 28                	je     190 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x190>
     168:	f3 0f bc c6          	tzcnt  %esi,%eax
     16c:	85 ff                	test   %edi,%edi
     16e:	74 0e                	je     17e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17e>
     170:	f3 44 0f bc c7       	tzcnt  %edi,%r8d
     175:	44 39 c0             	cmp    %r8d,%eax
     178:	0f 83 eb 12 00 00    	jae    1469 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1469>
     17e:	41 89 c5             	mov    %eax,%r13d
     181:	4d 01 f5             	add    %r14,%r13
     184:	44 8d 46 ff          	lea    -0x1(%rsi),%r8d
     188:	41 21 f0             	and    %esi,%r8d
     18b:	31 c0                	xor    %eax,%eax
     18d:	44 89 c6             	mov    %r8d,%esi
     190:	84 d2                	test   %dl,%dl
     192:	41 b8 00 00 00 00    	mov    $0x0,%r8d
     198:	41 0f 45 f0          	cmovne %r8d,%esi
     19c:	09 fe                	or     %edi,%esi
     19e:	75 20                	jne    1c0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c0>
     1a0:	49 83 c6 10          	add    $0x10,%r14
     1a4:	48 83 c1 f0          	add    $0xfffffffffffffff0,%rcx
     1a8:	48 83 f9 0f          	cmp    $0xf,%rcx
     1ac:	0f 8f 68 ff ff ff    	jg     11a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11a>
     1b2:	e9 fa 14 00 00       	jmp    16b1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16b1>
     1b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     1be:	00 00
     1c0:	f3 0f bc c6          	tzcnt  %esi,%eax
     1c4:	49 01 c6             	add    %rax,%r14
     1c7:	4d 85 ed             	test   %r13,%r13
     1ca:	0f 84 41 0b 00 00    	je     d11 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd11>
     1d0:	4c 89 ed             	mov    %r13,%rbp
     1d3:	4c 29 e5             	sub    %r12,%rbp
     1d6:	0f 84 2c 19 00 00    	je     1b08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b08>
     1dc:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
     1e3:	48 89 c8             	mov    %rcx,%rax
     1e6:	48 29 e8             	sub    %rbp,%rax
     1e9:	0f 82 d5 1b 00 00    	jb     1dc4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1dc4>
     1ef:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
     1f6:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
     1fd:	0f 84 54 13 00 00    	je     1557 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1557>
     203:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
     20a:	48 85 c0             	test   %rax,%rax
     20d:	75 05                	jne    214 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x214>
     20f:	4d 89 22             	mov    %r12,(%r10)
     212:	31 c0                	xor    %eax,%eax
     214:	48 01 e8             	add    %rbp,%rax
     217:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
     21e:	48 85 c0             	test   %rax,%rax
     221:	0f 84 1c 1f 00 00    	je     2143 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2143>
     227:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
     22e:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
     235:	41 0f 11 22          	movups %xmm4,(%r10)
     239:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
     240:	48 89 83 c8 00 00 00 	mov    %rax,0xc8(%rbx)
     247:	31 d2                	xor    %edx,%edx
     249:	48 83 f8 0e          	cmp    $0xe,%rax
     24d:	75 0c                	jne    25b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25b>
     24f:	8b 43 78             	mov    0x78(%rbx),%eax
     252:	83 e0 01             	and    $0x1,%eax
     255:	0f 84 e5 04 00 00    	je     740 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x740>
     25b:	88 93 0c 01 00 00    	mov    %dl,0x10c(%rbx)
     261:	49 ff c5             	inc    %r13
     264:	4d 89 ec             	mov    %r13,%r12
     267:	4d 39 e6             	cmp    %r12,%r14
     26a:	74 48                	je     2b4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b4>
     26c:	4c 89 f5             	mov    %r14,%rbp
     26f:	4c 29 ed             	sub    %r13,%rbp
     272:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
     279:	48 89 c8             	mov    %rcx,%rax
     27c:	48 29 e8             	sub    %rbp,%rax
     27f:	0f 82 3f 1b 00 00    	jb     1dc4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1dc4>
     285:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
     28c:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
     293:	0f 84 69 12 00 00    	je     1502 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1502>
     299:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
     2a0:	48 85 c0             	test   %rax,%rax
     2a3:	75 05                	jne    2aa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2aa>
     2a5:	4d 89 22             	mov    %r12,(%r10)
     2a8:	31 c0                	xor    %eax,%eax
     2aa:	48 01 e8             	add    %rbp,%rax
     2ad:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
     2b4:	4d 39 de             	cmp    %r11,%r14
     2b7:	0f 84 39 18 00 00    	je     1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     2bd:	41 0f b6 06          	movzbl (%r14),%eax
     2c1:	83 f8 5c             	cmp    $0x5c,%eax
     2c4:	0f 84 b4 0a 00 00    	je     d7e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd7e>
     2ca:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
     2d1:	00
     2d2:	0f 84 dd 1a 00 00    	je     1db5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1db5>
     2d8:	83 f8 0d             	cmp    $0xd,%eax
     2db:	0f 85 cf 00 00 00    	jne    3b0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3b0>
     2e1:	4c 8b ab d0 00 00 00 	mov    0xd0(%rbx),%r13
     2e8:	48 8b ab d8 00 00 00 	mov    0xd8(%rbx),%rbp
     2ef:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
     2f6:	41 0f 11 22          	movups %xmm4,(%r10)
     2fa:	80 bb 0c 01 00 00 01 	cmpb   $0x1,0x10c(%rbx)
     301:	0f 84 70 04 00 00    	je     777 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x777>
     307:	48 8b 43 38          	mov    0x38(%rbx),%rax
     30b:	48 8b 8b e8 00 00 00 	mov    0xe8(%rbx),%rcx
     312:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     316:	48 89 93 e8 00 00 00 	mov    %rdx,0xe8(%rbx)
     31d:	48 c1 e1 05          	shl    $0x5,%rcx
     321:	f3 41 0f 6f 01       	movdqu (%r9),%xmm0
     326:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     32b:	4c 89 6c 08 10       	mov    %r13,0x10(%rax,%rcx,1)
     330:	48 89 6c 08 18       	mov    %rbp,0x18(%rax,%rcx,1)
     335:	48 ff 83 80 00 00 00 	incq   0x80(%rbx)
     33c:	c6 83 0c 01 00 00 00 	movb   $0x0,0x10c(%rbx)
     343:	41 0f 11 21          	movups %xmm4,(%r9)
     347:	49 8d 46 01          	lea    0x1(%r14),%rax
     34b:	41 80 3e 0a          	cmpb   $0xa,(%r14)
     34f:	0f 84 0b fd ff ff    	je     60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x60>
     355:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 35c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x35c>
			358: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
     35c:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
     360:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     367:	00
     368:	4c 39 d8             	cmp    %r11,%rax
     36b:	0f 83 fc 19 00 00    	jae    1d6d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d6d>
     371:	80 38 0a             	cmpb   $0xa,(%rax)
     374:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
     37b:	7f 7f 7f
     37e:	0f 85 21 20 00 00    	jne    23a5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23a5>
     384:	49 83 c6 02          	add    $0x2,%r14
     388:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 38f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x38f>
			38b: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
     38f:	48 89 43 60          	mov    %rax,0x60(%rbx)
     393:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     39a:	00
     39b:	4d 39 de             	cmp    %r11,%r14
     39e:	0f 82 e5 fc ff ff    	jb     89 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x89>
     3a4:	e9 4d 17 00 00       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     3a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     3b0:	83 f8 0a             	cmp    $0xa,%eax
     3b3:	0f 84 28 ff ff ff    	je     2e1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e1>
     3b9:	e9 f7 19 00 00       	jmp    1db5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1db5>
     3be:	49 8d 46 01          	lea    0x1(%r14),%rax
     3c2:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 3c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3c9>
			3c5: R_X86_64_PC32	char const* stomptalk::parser::almost_done<3u>(char const*, char const*)-0x4
     3c9:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
     3cd:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     3d4:	00
     3d5:	4c 39 d8             	cmp    %r11,%rax
     3d8:	0f 83 8f 19 00 00    	jae    1d6d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d6d>
     3de:	80 38 0a             	cmpb   $0xa,(%rax)
     3e1:	0f 85 be 1f 00 00    	jne    23a5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23a5>
     3e7:	4d 8d 6e 02          	lea    0x2(%r14),%r13
     3eb:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3f2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3f2>
			3ee: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
     3f2:	48 89 43 60          	mov    %rax,0x60(%rbx)
     3f6:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     3fd:	00
     3fe:	4d 39 dd             	cmp    %r11,%r13
     401:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
     405:	0f 83 5c 1a 00 00    	jae    1e67 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e67>
     40b:	f6 43 78 01          	testb  $0x1,0x78(%rbx)
     40f:	0f 85 f1 03 00 00    	jne    806 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x806>
     415:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 41c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x41c>
			418: R_X86_64_PC32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
     41c:	48 89 43 60          	mov    %rax,0x60(%rbx)
     420:	41 80 7d 00 00       	cmpb   $0x0,0x0(%r13)
     425:	0f 85 30 0d 00 00    	jne    115b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x115b>
     42b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 432 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x432>
			42e: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
     432:	48 89 43 60          	mov    %rax,0x60(%rbx)
     436:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     43d:	00
     43e:	41 80 7d 00 00       	cmpb   $0x0,0x0(%r13)
     443:	0f 85 47 1b 00 00    	jne    1f90 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f90>
     449:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
     450:	48 c1 e0 05          	shl    $0x5,%rax
     454:	48 03 43 38          	add    0x38(%rbx),%rax
     458:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
     45f:	48 85 c9             	test   %rcx,%rcx
     462:	48 0f 44 c1          	cmove  %rcx,%rax
     466:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
     46d:	80 bb 09 01 00 00 00 	cmpb   $0x0,0x109(%rbx)
     474:	0f 85 74 1a 00 00    	jne    1eee <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1eee>
     47a:	b8 06 00 00 00       	mov    $0x6,%eax
     47f:	89 43 78             	mov    %eax,0x78(%rbx)
     482:	48 8b 43 30          	mov    0x30(%rbx),%rax
     486:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
     48d:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     491:	48 89 93 e0 00 00 00 	mov    %rdx,0xe0(%rbx)
     498:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     49c:	48 c1 e1 04          	shl    $0x4,%rcx
     4a0:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
     4a5:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
     4aa:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
     4af:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
     4b5:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
     4bb:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
     4c1:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
     4c7:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
     4cd:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
     4d3:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     4d8:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
     4df:	48 01 83 90 00 00 00 	add    %rax,0x90(%rbx)
     4e6:	48 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%rbx)
     4ed:	00 00 00 00
     4f1:	48 c7 83 98 00 00 00 	movq   $0x0,0x98(%rbx)
     4f8:	00 00 00 00
     4fc:	66 c7 83 08 01 00 00 	movw   $0x100,0x108(%rbx)
     503:	00 01
     505:	49 83 c6 03          	add    $0x3,%r14
     509:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 510 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x510>
			50c: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
     510:	48 89 43 60          	mov    %rax,0x60(%rbx)
     514:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     51b:	00
     51c:	4d 39 de             	cmp    %r11,%r14
     51f:	0f 83 d1 15 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     525:	4c 89 f6             	mov    %r14,%rsi
     528:	4d 39 de             	cmp    %r11,%r14
     52b:	0f 83 98 1e 00 00    	jae    23c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23c9>
     531:	4c 89 d8             	mov    %r11,%rax
     534:	48 29 f0             	sub    %rsi,%rax
     537:	48 89 c7             	mov    %rax,%rdi
     53a:	31 c9                	xor    %ecx,%ecx
     53c:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
     540:	83 fa 0d             	cmp    $0xd,%edx
     543:	0f 84 6f 1a 00 00    	je     1fb8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fb8>
     549:	83 fa 0a             	cmp    $0xa,%edx
     54c:	0f 84 7f 1e 00 00    	je     23d1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23d1>
     552:	80 c2 a5             	add    $0xa5,%dl
     555:	80 fa e5             	cmp    $0xe5,%dl
     558:	0f 86 af 1d 00 00    	jbe    230d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x230d>
     55e:	48 8b 83 e0 00 00 00 	mov    0xe0(%rbx),%rax
     565:	48 3b 03             	cmp    (%rbx),%rax
     568:	0f 84 da 1a 00 00    	je     2048 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2048>
     56e:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
     572:	48 8d 83 09 01 00 00 	lea    0x109(%rbx),%rax
     579:	c6 40 04 00          	movb   $0x0,0x4(%rax)
     57d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     583:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
     588:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
     58d:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
     592:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
     597:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
     59c:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
     5a1:	41 0f 11 27          	movups %xmm4,(%r15)
     5a5:	c6 83 08 01 00 00 01 	movb   $0x1,0x108(%rbx)
     5ac:	4c 8b 43 40          	mov    0x40(%rbx),%r8
     5b0:	48 8b 43 48          	mov    0x48(%rbx),%rax
     5b4:	49 89 c1             	mov    %rax,%r9
     5b7:	4d 29 c1             	sub    %r8,%r9
     5ba:	4c 89 8b f8 00 00 00 	mov    %r9,0xf8(%rbx)
     5c1:	4c 8b 4b 50          	mov    0x50(%rbx),%r9
     5c5:	4d 89 ca             	mov    %r9,%r10
     5c8:	49 29 c2             	sub    %rax,%r10
     5cb:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
     5d2:	48 8b 83 e8 00 00 00 	mov    0xe8(%rbx),%rax
     5d9:	48 89 83 f0 00 00 00 	mov    %rax,0xf0(%rbx)
     5e0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 5e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5e7>
			5e3: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
     5e7:	48 89 43 60          	mov    %rax,0x60(%rbx)
     5eb:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     5f2:	00
     5f3:	48 89 d0             	mov    %rdx,%rax
     5f6:	4c 39 da             	cmp    %r11,%rdx
     5f9:	0f 83 5f 17 00 00    	jae    1d5e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d5e>
     5ff:	90                   	nop
     600:	44 0f b6 18          	movzbl (%rax),%r11d
     604:	41 80 c3 bf          	add    $0xbf,%r11b
     608:	41 80 fb 19          	cmp    $0x19,%r11b
     60c:	77 0d                	ja     61b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x61b>
     60e:	48 ff c0             	inc    %rax
     611:	48 ff cf             	dec    %rdi
     614:	75 ea                	jne    600 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x600>
     616:	e9 e4 17 00 00       	jmp    1dff <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1dff>
     61b:	48 39 c2             	cmp    %rax,%rdx
     61e:	0f 84 c1 1d 00 00    	je     23e5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23e5>
     624:	49 89 c3             	mov    %rax,%r11
     627:	49 29 f3             	sub    %rsi,%r11
     62a:	4c 89 df             	mov    %r11,%rdi
     62d:	48 29 cf             	sub    %rcx,%rdi
     630:	4c 39 d7             	cmp    %r10,%rdi
     633:	0f 87 10 19 00 00    	ja     1f49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f49>
     639:	49 29 c2             	sub    %rax,%r10
     63c:	49 01 d2             	add    %rdx,%r10
     63f:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
     646:	48 89 93 d0 00 00 00 	mov    %rdx,0xd0(%rbx)
     64d:	48 89 bb d8 00 00 00 	mov    %rdi,0xd8(%rbx)
     654:	48 89 c6             	mov    %rax,%rsi
     657:	4c 8b 1c 24          	mov    (%rsp),%r11
     65b:	4c 39 d8             	cmp    %r11,%rax
     65e:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
     665:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
     66c:	0f 84 fb 16 00 00    	je     1d6d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d6d>
     672:	0f b6 08             	movzbl (%rax),%ecx
     675:	83 f9 0d             	cmp    $0xd,%ecx
     678:	0f 85 2e 0f 00 00    	jne    15ac <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x15ac>
     67e:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
     685:	41 0f 11 22          	movups %xmm4,(%r10)
     689:	48 89 93 a0 00 00 00 	mov    %rdx,0xa0(%rbx)
     690:	48 89 bb a8 00 00 00 	mov    %rdi,0xa8(%rbx)
     697:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
     69e:	48 83 ff 07          	cmp    $0x7,%rdi
     6a2:	0f 85 be 0f 00 00    	jne    1666 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1666>
     6a8:	0f b6 3a             	movzbl (%rdx),%edi
     6ab:	83 ff 4d             	cmp    $0x4d,%edi
     6ae:	0f 85 54 17 00 00    	jne    1e08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e08>
     6b4:	8b 3a                	mov    (%rdx),%edi
     6b6:	be 4d 45 53 53       	mov    $0x5353454d,%esi
     6bb:	31 f7                	xor    %esi,%edi
     6bd:	8b 52 03             	mov    0x3(%rdx),%edx
     6c0:	be 53 41 47 45       	mov    $0x45474153,%esi
     6c5:	31 f2                	xor    %esi,%edx
     6c7:	be 09 00 00 00       	mov    $0x9,%esi
     6cc:	09 fa                	or     %edi,%edx
     6ce:	0f 85 31 13 00 00    	jne    1a05 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a05>
     6d4:	48 89 73 70          	mov    %rsi,0x70(%rbx)
     6d8:	83 c6 fb             	add    $0xfffffffb,%esi
     6db:	83 fe 02             	cmp    $0x2,%esi
     6de:	0f 92 83 0b 01 00 00 	setb   0x10b(%rbx)
     6e5:	4c 8d 70 01          	lea    0x1(%rax),%r14
     6e9:	80 f9 0a             	cmp    $0xa,%cl
     6ec:	0f 84 96 fc ff ff    	je     388 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x388>
     6f2:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 6f9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6f9>
			6f5: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
     6f9:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
     6fd:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     704:	00
     705:	4d 39 de             	cmp    %r11,%r14
     708:	0f 83 e8 13 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     70e:	41 80 3e 0a          	cmpb   $0xa,(%r14)
     712:	0f 85 9e 1b 00 00    	jne    22b6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22b6>
     718:	48 83 c0 02          	add    $0x2,%rax
     71c:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 723 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x723>
			71f: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
     723:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
     727:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     72e:	00
     72f:	49 89 c6             	mov    %rax,%r14
     732:	4c 39 d8             	cmp    %r11,%rax
     735:	0f 82 4e f9 ff ff    	jb     89 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x89>
     73b:	e9 b6 13 00 00       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     740:	48 83 fd 0e          	cmp    $0xe,%rbp
     744:	0f 85 eb 16 00 00    	jne    1e35 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e35>
     74a:	4c 3b a3 20 01 00 00 	cmp    0x120(%rbx),%r12
     751:	0f 86 de 16 00 00    	jbe    1e35 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e35>
     757:	f3 41 0f 6f 44 24 ff 	movdqu -0x1(%r12),%xmm0
     75e:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 766 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x766>
     765:	00
			762: R_X86_64_PC32	.LCPI47_4-0x4
     766:	66 0f d7 c0          	pmovmskb %xmm0,%eax
     76a:	35 ff ff 00 00       	xor    $0xffff,%eax
     76f:	0f 94 c2             	sete   %dl
     772:	e9 e4 fa ff ff       	jmp    25b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25b>
     777:	48 83 fd 15          	cmp    $0x15,%rbp
     77b:	0f 83 93 13 00 00    	jae    1b14 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b14>
     781:	48 85 ed             	test   %rbp,%rbp
     784:	0f 84 9d 24 00 00    	je     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
     78a:	48 89 e8             	mov    %rbp,%rax
     78d:	4c 89 ef             	mov    %r13,%rdi
     790:	48 83 fd 13          	cmp    $0x13,%rbp
     794:	0f 83 a5 13 00 00    	jae    1b3f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b3f>
     79a:	48 83 fd 02          	cmp    $0x2,%rbp
     79e:	0f 85 8b 15 00 00    	jne    1d2f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d2f>
     7a4:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
     7a9:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     7ac:	80 f9 f6             	cmp    $0xf6,%cl
     7af:	0f 82 72 24 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
     7b5:	49 0f be 4d 01       	movsbq 0x1(%r13),%rcx
     7ba:	8d 71 c6             	lea    -0x3a(%rcx),%esi
     7bd:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     7c4:	00 00 80
     7c7:	40 80 fe f6          	cmp    $0xf6,%sil
     7cb:	72 07                	jb     7d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7d4>
     7cd:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
     7d1:	48 89 ca             	mov    %rcx,%rdx
     7d4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     7d8:	48 8d 04 45 20 fe ff 	lea    -0x1e0(,%rax,2),%rax
     7df:	ff
     7e0:	48 01 d0             	add    %rdx,%rax
     7e3:	48 85 c0             	test   %rax,%rax
     7e6:	0f 88 3b 24 00 00    	js     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
     7ec:	48 3b 43 20          	cmp    0x20(%rbx),%rax
     7f0:	0f 87 31 17 00 00    	ja     1f27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f27>
     7f6:	48 89 83 88 00 00 00 	mov    %rax,0x88(%rbx)
     7fd:	80 4b 78 01          	orb    $0x1,0x78(%rbx)
     801:	e9 01 fb ff ff       	jmp    307 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x307>
     806:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 80d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x80d>
			809: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
     80d:	48 89 43 60          	mov    %rax,0x60(%rbx)
     811:	48 8b 83 88 00 00 00 	mov    0x88(%rbx),%rax
     818:	48 2b 83 90 00 00 00 	sub    0x90(%rbx),%rax
     81f:	4c 89 d9             	mov    %r11,%rcx
     822:	4c 29 e9             	sub    %r13,%rcx
     825:	48 39 c1             	cmp    %rax,%rcx
     828:	49 89 c6             	mov    %rax,%r14
     82b:	4c 0f 42 f1          	cmovb  %rcx,%r14
     82f:	4c 89 ab b8 00 00 00 	mov    %r13,0xb8(%rbx)
     836:	4c 89 b3 98 00 00 00 	mov    %r14,0x98(%rbx)
     83d:	4d 01 ee             	add    %r13,%r14
     840:	48 39 c8             	cmp    %rcx,%rax
     843:	0f 87 ad 12 00 00    	ja     1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     849:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 850 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x850>
			84c: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
     850:	48 89 43 60          	mov    %rax,0x60(%rbx)
     854:	4d 39 de             	cmp    %r11,%r14
     857:	0f 83 99 12 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     85d:	41 80 3e 00          	cmpb   $0x0,(%r14)
     861:	0f 85 a8 1c 00 00    	jne    250f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x250f>
     867:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
     86e:	48 c1 e0 05          	shl    $0x5,%rax
     872:	48 03 43 38          	add    0x38(%rbx),%rax
     876:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
     87d:	48 85 c9             	test   %rcx,%rcx
     880:	48 0f 44 c1          	cmove  %rcx,%rax
     884:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
     88b:	80 bb 09 01 00 00 00 	cmpb   $0x0,0x109(%rbx)
     892:	0f 85 a7 16 00 00    	jne    1f3f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f3f>
     898:	b8 07 00 00 00       	mov    $0x7,%eax
     89d:	89 43 78             	mov    %eax,0x78(%rbx)
     8a0:	48 8b 43 30          	mov    0x30(%rbx),%rax
     8a4:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
     8ab:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     8af:	48 89 93 e0 00 00 00 	mov    %rdx,0xe0(%rbx)
     8b6:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     8ba:	48 c1 e1 04          	shl    $0x4,%rcx
     8be:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
     8c3:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
     8c8:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
     8cd:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
     8d3:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
     8d9:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
     8df:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
     8e5:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
     8eb:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
     8f1:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     8f6:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
     8fd:	48 01 83 90 00 00 00 	add    %rax,0x90(%rbx)
     904:	48 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%rbx)
     90b:	00 00 00 00
     90f:	48 c7 83 98 00 00 00 	movq   $0x0,0x98(%rbx)
     916:	00 00 00 00
     91a:	66 c7 83 08 01 00 00 	movw   $0x100,0x108(%rbx)
     921:	00 01
     923:	49 ff c6             	inc    %r14
     926:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 92d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x92d>
			929: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
     92d:	48 89 43 60          	mov    %rax,0x60(%rbx)
     931:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     938:	00
     939:	4d 39 de             	cmp    %r11,%r14
     93c:	0f 83 b4 11 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     942:	4c 89 f6             	mov    %r14,%rsi
     945:	4d 39 de             	cmp    %r11,%r14
     948:	0f 83 7b 1a 00 00    	jae    23c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23c9>
     94e:	4c 89 d8             	mov    %r11,%rax
     951:	48 29 f0             	sub    %rsi,%rax
     954:	48 89 c7             	mov    %rax,%rdi
     957:	31 c9                	xor    %ecx,%ecx
     959:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
     95d:	83 fa 0d             	cmp    $0xd,%edx
     960:	0f 84 4b 17 00 00    	je     20b1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20b1>
     966:	83 fa 0a             	cmp    $0xa,%edx
     969:	0f 84 82 1a 00 00    	je     23f1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23f1>
     96f:	80 c2 a5             	add    $0xa5,%dl
     972:	80 fa e5             	cmp    $0xe5,%dl
     975:	0f 86 92 19 00 00    	jbe    230d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x230d>
     97b:	48 8b 83 e0 00 00 00 	mov    0xe0(%rbx),%rax
     982:	48 3b 03             	cmp    (%rbx),%rax
     985:	0f 84 bd 16 00 00    	je     2048 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2048>
     98b:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
     98f:	48 8d 83 09 01 00 00 	lea    0x109(%rbx),%rax
     996:	c6 40 04 00          	movb   $0x0,0x4(%rax)
     99a:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     9a0:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
     9a5:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
     9aa:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
     9af:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
     9b4:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
     9b9:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
     9be:	41 0f 11 27          	movups %xmm4,(%r15)
     9c2:	c6 83 08 01 00 00 01 	movb   $0x1,0x108(%rbx)
     9c9:	4c 8b 43 40          	mov    0x40(%rbx),%r8
     9cd:	48 8b 43 48          	mov    0x48(%rbx),%rax
     9d1:	49 89 c1             	mov    %rax,%r9
     9d4:	4d 29 c1             	sub    %r8,%r9
     9d7:	4c 89 8b f8 00 00 00 	mov    %r9,0xf8(%rbx)
     9de:	4c 8b 4b 50          	mov    0x50(%rbx),%r9
     9e2:	4d 89 ca             	mov    %r9,%r10
     9e5:	49 29 c2             	sub    %rax,%r10
     9e8:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
     9ef:	48 8b 83 e8 00 00 00 	mov    0xe8(%rbx),%rax
     9f6:	48 89 83 f0 00 00 00 	mov    %rax,0xf0(%rbx)
     9fd:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a04 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa04>
			a00: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
     a04:	48 89 43 60          	mov    %rax,0x60(%rbx)
     a08:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     a0f:	00
     a10:	48 89 d0             	mov    %rdx,%rax
     a13:	4c 39 da             	cmp    %r11,%rdx
     a16:	0f 83 59 13 00 00    	jae    1d75 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d75>
     a1c:	0f 1f 40 00          	nopl   0x0(%rax)
     a20:	44 0f b6 18          	movzbl (%rax),%r11d
     a24:	41 80 c3 bf          	add    $0xbf,%r11b
     a28:	41 80 fb 19          	cmp    $0x19,%r11b
     a2c:	0f 87 4d 02 00 00    	ja     c7f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc7f>
     a32:	48 ff c0             	inc    %rax
     a35:	48 ff cf             	dec    %rdi
     a38:	75 e6                	jne    a20 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa20>
     a3a:	e9 30 14 00 00       	jmp    1e6f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e6f>
     a3f:	4d 8d 6e 01          	lea    0x1(%r14),%r13
     a43:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a4a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa4a>
			a46: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
     a4a:	48 89 43 60          	mov    %rax,0x60(%rbx)
     a4e:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     a55:	00
     a56:	4d 39 dd             	cmp    %r11,%r13
     a59:	0f 83 08 14 00 00    	jae    1e67 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e67>
     a5f:	f6 43 78 01          	testb  $0x1,0x78(%rbx)
     a63:	0f 85 88 0c 00 00    	jne    16f1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16f1>
     a69:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a70 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa70>
			a6c: R_X86_64_PC32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
     a70:	48 89 43 60          	mov    %rax,0x60(%rbx)
     a74:	41 80 7d 00 00       	cmpb   $0x0,0x0(%r13)
     a79:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
     a7d:	0f 85 c0 0d 00 00    	jne    1843 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1843>
     a83:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a8a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa8a>
			a86: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
     a8a:	48 89 43 60          	mov    %rax,0x60(%rbx)
     a8e:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     a95:	00
     a96:	41 80 7d 00 00       	cmpb   $0x0,0x0(%r13)
     a9b:	0f 85 65 17 00 00    	jne    2206 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2206>
     aa1:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
     aa8:	48 c1 e0 05          	shl    $0x5,%rax
     aac:	48 03 43 38          	add    0x38(%rbx),%rax
     ab0:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
     ab7:	48 85 c9             	test   %rcx,%rcx
     aba:	48 0f 44 c1          	cmove  %rcx,%rax
     abe:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
     ac5:	80 bb 09 01 00 00 00 	cmpb   $0x0,0x109(%rbx)
     acc:	0f 85 a9 14 00 00    	jne    1f7b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f7b>
     ad2:	b8 06 00 00 00       	mov    $0x6,%eax
     ad7:	89 43 78             	mov    %eax,0x78(%rbx)
     ada:	48 8b 43 30          	mov    0x30(%rbx),%rax
     ade:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
     ae5:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     ae9:	48 89 93 e0 00 00 00 	mov    %rdx,0xe0(%rbx)
     af0:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     af4:	48 c1 e1 04          	shl    $0x4,%rcx
     af8:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
     afd:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
     b02:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
     b07:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
     b0d:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
     b13:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
     b19:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
     b1f:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
     b25:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
     b2b:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     b30:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
     b37:	48 01 83 90 00 00 00 	add    %rax,0x90(%rbx)
     b3e:	48 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%rbx)
     b45:	00 00 00 00
     b49:	48 c7 83 98 00 00 00 	movq   $0x0,0x98(%rbx)
     b50:	00 00 00 00
     b54:	66 c7 83 08 01 00 00 	movw   $0x100,0x108(%rbx)
     b5b:	00 01
     b5d:	49 83 c6 02          	add    $0x2,%r14
     b61:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b68 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb68>
			b64: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
     b68:	48 89 43 60          	mov    %rax,0x60(%rbx)
     b6c:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     b73:	00
     b74:	4d 39 de             	cmp    %r11,%r14
     b77:	0f 83 79 0f 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
     b7d:	4c 89 f6             	mov    %r14,%rsi
     b80:	4d 39 de             	cmp    %r11,%r14
     b83:	0f 83 40 18 00 00    	jae    23c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23c9>
     b89:	4c 89 d8             	mov    %r11,%rax
     b8c:	48 29 f0             	sub    %rsi,%rax
     b8f:	48 89 c7             	mov    %rax,%rdi
     b92:	31 c9                	xor    %ecx,%ecx
     b94:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
     b98:	83 fa 0d             	cmp    $0xd,%edx
     b9b:	0f 84 8d 16 00 00    	je     222e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x222e>
     ba1:	83 fa 0a             	cmp    $0xa,%edx
     ba4:	0f 84 99 19 00 00    	je     2543 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2543>
     baa:	80 c2 a5             	add    $0xa5,%dl
     bad:	80 fa e5             	cmp    $0xe5,%dl
     bb0:	0f 86 57 17 00 00    	jbe    230d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x230d>
     bb6:	48 8b 83 e0 00 00 00 	mov    0xe0(%rbx),%rax
     bbd:	48 3b 03             	cmp    (%rbx),%rax
     bc0:	0f 84 82 14 00 00    	je     2048 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2048>
     bc6:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
     bca:	48 8d 83 09 01 00 00 	lea    0x109(%rbx),%rax
     bd1:	c6 40 04 00          	movb   $0x0,0x4(%rax)
     bd5:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     bdb:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
     be0:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
     be5:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
     bea:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
     bef:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
     bf4:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
     bf9:	41 0f 11 27          	movups %xmm4,(%r15)
     bfd:	c6 83 08 01 00 00 01 	movb   $0x1,0x108(%rbx)
     c04:	4c 8b 43 40          	mov    0x40(%rbx),%r8
     c08:	48 8b 43 48          	mov    0x48(%rbx),%rax
     c0c:	49 89 c1             	mov    %rax,%r9
     c0f:	4d 29 c1             	sub    %r8,%r9
     c12:	4c 89 8b f8 00 00 00 	mov    %r9,0xf8(%rbx)
     c19:	4c 8b 4b 50          	mov    0x50(%rbx),%r9
     c1d:	4d 89 ca             	mov    %r9,%r10
     c20:	49 29 c2             	sub    %rax,%r10
     c23:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
     c2a:	48 8b 83 e8 00 00 00 	mov    0xe8(%rbx),%rax
     c31:	48 89 83 f0 00 00 00 	mov    %rax,0xf0(%rbx)
     c38:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c3f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc3f>
			c3b: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
     c3f:	48 89 43 60          	mov    %rax,0x60(%rbx)
     c43:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
     c4a:	00
     c4b:	48 89 d0             	mov    %rdx,%rax
     c4e:	4c 39 da             	cmp    %r11,%rdx
     c51:	0f 83 99 11 00 00    	jae    1df0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1df0>
     c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     c5e:	00 00
     c60:	44 0f b6 18          	movzbl (%rax),%r11d
     c64:	41 80 c3 bf          	add    $0xbf,%r11b
     c68:	41 80 fb 19          	cmp    $0x19,%r11b
     c6c:	0f 87 fe 07 00 00    	ja     1470 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1470>
     c72:	48 ff c0             	inc    %rax
     c75:	48 ff cf             	dec    %rdi
     c78:	75 e6                	jne    c60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc60>
     c7a:	e9 b7 12 00 00       	jmp    1f36 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f36>
     c7f:	48 39 c2             	cmp    %rax,%rdx
     c82:	0f 84 7d 17 00 00    	je     2405 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2405>
     c88:	49 89 c3             	mov    %rax,%r11
     c8b:	49 29 f3             	sub    %rsi,%r11
     c8e:	4c 89 df             	mov    %r11,%rdi
     c91:	48 29 cf             	sub    %rcx,%rdi
     c94:	4c 39 d7             	cmp    %r10,%rdi
     c97:	0f 87 ac 12 00 00    	ja     1f49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f49>
     c9d:	49 29 c2             	sub    %rax,%r10
     ca0:	49 01 d2             	add    %rdx,%r10
     ca3:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
     caa:	48 89 93 d0 00 00 00 	mov    %rdx,0xd0(%rbx)
     cb1:	48 89 bb d8 00 00 00 	mov    %rdi,0xd8(%rbx)
     cb8:	48 89 c6             	mov    %rax,%rsi
     cbb:	4c 8b 1c 24          	mov    (%rsp),%r11
     cbf:	4c 39 d8             	cmp    %r11,%rax
     cc2:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
     cc9:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
     cd0:	0f 84 97 10 00 00    	je     1d6d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d6d>
     cd6:	0f b6 08             	movzbl (%rax),%ecx
     cd9:	83 f9 0d             	cmp    $0xd,%ecx
     cdc:	0f 85 76 09 00 00    	jne    1658 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1658>
     ce2:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
     ce9:	41 0f 11 22          	movups %xmm4,(%r10)
     ced:	48 89 93 a0 00 00 00 	mov    %rdx,0xa0(%rbx)
     cf4:	48 89 bb a8 00 00 00 	mov    %rdi,0xa8(%rbx)
     cfb:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
     d02:	48 83 ff 07          	cmp    $0x7,%rdi
     d06:	0f 84 9c f9 ff ff    	je     6a8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6a8>
     d0c:	e9 b8 0c 00 00       	jmp    19c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19c9>
     d11:	4d 89 e5             	mov    %r12,%r13
     d14:	e9 4e f5 ff ff       	jmp    267 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x267>
     d19:	41 0f b6 04 24       	movzbl (%r12),%eax
     d1e:	04 a4                	add    $0xa4,%al
     d20:	3c 17                	cmp    $0x17,%al
     d22:	0f 83 9f 0d 00 00    	jae    1ac7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ac7>
     d28:	0f b6 c0             	movzbl %al,%eax
     d2b:	b9 81 00 44 00       	mov    $0x440081,%ecx
     d30:	0f a3 c1             	bt     %eax,%ecx
     d33:	0f 83 8e 0d 00 00    	jae    1ac7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ac7>
     d39:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
     d40:	48 85 c9             	test   %rcx,%rcx
     d43:	0f 84 26 16 00 00    	je     236f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x236f>
     d49:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # d50 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd50>
			d4c: R_X86_64_PC32	.rodata+0x23c
     d50:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
     d54:	48 ff c9             	dec    %rcx
     d57:	48 89 8b 00 01 00 00 	mov    %rcx,0x100(%rbx)
     d5e:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
     d62:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     d66:	48 89 53 48          	mov    %rdx,0x48(%rbx)
     d6a:	88 01                	mov    %al,(%rcx)
     d6c:	48 ff 83 d8 00 00 00 	incq   0xd8(%rbx)
     d73:	45 31 ff             	xor    %r15d,%r15d
     d76:	4d 89 e6             	mov    %r12,%r14
     d79:	e9 c2 03 00 00       	jmp    1140 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1140>
     d7e:	80 bb 0b 01 00 00 00 	cmpb   $0x0,0x10b(%rbx)
     d85:	0f 85 3f f5 ff ff    	jne    2ca <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca>
     d8b:	41 b7 01             	mov    $0x1,%r15b
     d8e:	80 bb 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rbx)
     d95:	0f 85 9b 03 00 00    	jne    1136 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1136>
     d9b:	4c 8b ab a8 00 00 00 	mov    0xa8(%rbx),%r13
     da2:	4d 85 ed             	test   %r13,%r13
     da5:	74 2e                	je     dd5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdd5>
     da7:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
     dae:	48 89 f0             	mov    %rsi,%rax
     db1:	48 2b 43 40          	sub    0x40(%rbx),%rax
     db5:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     db9:	72 1a                	jb     dd5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdd5>
     dbb:	48 8b 6b 48          	mov    0x48(%rbx),%rbp
     dbf:	48 89 ef             	mov    %rbp,%rdi
     dc2:	4c 89 ea             	mov    %r13,%rdx
     dc5:	e8 00 00 00 00       	call   dca <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdca>
			dc6: R_X86_64_PLT32	memcpy-0x4
     dca:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     dce:	48 89 ab a0 00 00 00 	mov    %rbp,0xa0(%rbx)
     dd5:	48 8b 8b f0 00 00 00 	mov    0xf0(%rbx),%rcx
     ddc:	48 3b 8b e8 00 00 00 	cmp    0xe8(%rbx),%rcx
     de3:	0f 83 a2 02 00 00    	jae    108b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x108b>
     de9:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     ded:	49 89 cc             	mov    %rcx,%r12
     df0:	49 c1 e4 05          	shl    $0x5,%r12
     df4:	4e 8b 6c 25 08       	mov    0x8(%rbp,%r12,1),%r13
     df9:	4d 85 ed             	test   %r13,%r13
     dfc:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
     e01:	74 3e                	je     e41 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe41>
     e03:	49 8d 14 2c          	lea    (%r12,%rbp,1),%rdx
     e07:	48 8b 32             	mov    (%rdx),%rsi
     e0a:	48 89 f0             	mov    %rsi,%rax
     e0d:	48 2b 43 40          	sub    0x40(%rbx),%rax
     e11:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     e15:	72 2a                	jb     e41 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe41>
     e17:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     e1b:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     e20:	48 89 d5             	mov    %rdx,%rbp
     e23:	4c 89 ea             	mov    %r13,%rdx
     e26:	e8 00 00 00 00       	call   e2b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe2b>
			e27: R_X86_64_PLT32	memcpy-0x4
     e2b:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     e30:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     e34:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     e39:	48 89 45 00          	mov    %rax,0x0(%rbp)
     e3d:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     e41:	4e 8b 6c 25 18       	mov    0x18(%rbp,%r12,1),%r13
     e46:	4d 85 ed             	test   %r13,%r13
     e49:	74 37                	je     e82 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe82>
     e4b:	4c 01 e5             	add    %r12,%rbp
     e4e:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     e52:	48 89 f0             	mov    %rsi,%rax
     e55:	48 2b 43 40          	sub    0x40(%rbx),%rax
     e59:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     e5d:	72 23                	jb     e82 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe82>
     e5f:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     e63:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     e68:	4c 89 ea             	mov    %r13,%rdx
     e6b:	e8 00 00 00 00       	call   e70 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe70>
			e6c: R_X86_64_PLT32	memcpy-0x4
     e70:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     e75:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     e79:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     e7e:	48 89 45 10          	mov    %rax,0x10(%rbp)
     e82:	4c 8d 69 01          	lea    0x1(%rcx),%r13
     e86:	4c 3b ab e8 00 00 00 	cmp    0xe8(%rbx),%r13
     e8d:	0f 83 f8 01 00 00    	jae    108b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x108b>
     e93:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     e97:	49 c1 e5 05          	shl    $0x5,%r13
     e9b:	4a 8b 54 2d 08       	mov    0x8(%rbp,%r13,1),%rdx
     ea0:	48 85 d2             	test   %rdx,%rdx
     ea3:	74 46                	je     eeb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xeeb>
     ea5:	49 89 e8             	mov    %rbp,%r8
     ea8:	4d 01 e8             	add    %r13,%r8
     eab:	49 8b 30             	mov    (%r8),%rsi
     eae:	48 89 f0             	mov    %rsi,%rax
     eb1:	48 2b 43 40          	sub    0x40(%rbx),%rax
     eb5:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     eb9:	72 30                	jb     eeb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xeeb>
     ebb:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     ebf:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
     ec4:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
     ec9:	48 89 d5             	mov    %rdx,%rbp
     ecc:	e8 00 00 00 00       	call   ed1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xed1>
			ecd: R_X86_64_PLT32	memcpy-0x4
     ed1:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     ed6:	48 01 6b 48          	add    %rbp,0x48(%rbx)
     eda:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     edf:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
     ee4:	48 89 10             	mov    %rdx,(%rax)
     ee7:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     eeb:	4a 8b 54 2d 18       	mov    0x18(%rbp,%r13,1),%rdx
     ef0:	48 85 d2             	test   %rdx,%rdx
     ef3:	74 37                	je     f2c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf2c>
     ef5:	4c 01 ed             	add    %r13,%rbp
     ef8:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     efc:	48 89 f0             	mov    %rsi,%rax
     eff:	48 2b 43 40          	sub    0x40(%rbx),%rax
     f03:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     f07:	72 23                	jb     f2c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf2c>
     f09:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     f0d:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     f12:	49 89 d5             	mov    %rdx,%r13
     f15:	e8 00 00 00 00       	call   f1a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf1a>
			f16: R_X86_64_PLT32	memcpy-0x4
     f1a:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     f1f:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     f23:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     f28:	48 89 45 10          	mov    %rax,0x10(%rbp)
     f2c:	4c 8d 69 02          	lea    0x2(%rcx),%r13
     f30:	4c 3b ab e8 00 00 00 	cmp    0xe8(%rbx),%r13
     f37:	0f 83 4e 01 00 00    	jae    108b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x108b>
     f3d:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     f41:	49 c1 e5 05          	shl    $0x5,%r13
     f45:	4a 8b 54 2d 08       	mov    0x8(%rbp,%r13,1),%rdx
     f4a:	48 85 d2             	test   %rdx,%rdx
     f4d:	74 46                	je     f95 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf95>
     f4f:	49 89 e8             	mov    %rbp,%r8
     f52:	4d 01 e8             	add    %r13,%r8
     f55:	49 8b 30             	mov    (%r8),%rsi
     f58:	48 89 f0             	mov    %rsi,%rax
     f5b:	48 2b 43 40          	sub    0x40(%rbx),%rax
     f5f:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     f63:	72 30                	jb     f95 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf95>
     f65:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     f69:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
     f6e:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
     f73:	48 89 d5             	mov    %rdx,%rbp
     f76:	e8 00 00 00 00       	call   f7b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf7b>
			f77: R_X86_64_PLT32	memcpy-0x4
     f7b:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     f80:	48 01 6b 48          	add    %rbp,0x48(%rbx)
     f84:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     f89:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
     f8e:	48 89 10             	mov    %rdx,(%rax)
     f91:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     f95:	4a 8b 54 2d 18       	mov    0x18(%rbp,%r13,1),%rdx
     f9a:	48 85 d2             	test   %rdx,%rdx
     f9d:	74 37                	je     fd6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfd6>
     f9f:	4c 01 ed             	add    %r13,%rbp
     fa2:	48 8b 75 10          	mov    0x10(%rbp),%rsi
     fa6:	48 89 f0             	mov    %rsi,%rax
     fa9:	48 2b 43 40          	sub    0x40(%rbx),%rax
     fad:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     fb1:	72 23                	jb     fd6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfd6>
     fb3:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
     fb7:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
     fbc:	49 89 d5             	mov    %rdx,%r13
     fbf:	e8 00 00 00 00       	call   fc4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfc4>
			fc0: R_X86_64_PLT32	memcpy-0x4
     fc4:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
     fc9:	4c 01 6b 48          	add    %r13,0x48(%rbx)
     fcd:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     fd2:	48 89 45 10          	mov    %rax,0x10(%rbp)
     fd6:	48 83 c1 03          	add    $0x3,%rcx
     fda:	eb 0b                	jmp    fe7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfe7>
     fdc:	0f 1f 40 00          	nopl   0x0(%rax)
     fe0:	48 ff c1             	inc    %rcx
     fe3:	49 83 c4 20          	add    $0x20,%r12
     fe7:	48 3b 8b e8 00 00 00 	cmp    0xe8(%rbx),%rcx
     fee:	0f 83 97 00 00 00    	jae    108b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x108b>
     ff4:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
     ff8:	4e 8b 6c 25 68       	mov    0x68(%rbp,%r12,1),%r13
     ffd:	4d 85 ed             	test   %r13,%r13
    1000:	74 3f                	je     1041 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1041>
    1002:	4a 8b 74 25 60       	mov    0x60(%rbp,%r12,1),%rsi
    1007:	48 89 f0             	mov    %rsi,%rax
    100a:	48 2b 43 40          	sub    0x40(%rbx),%rax
    100e:	48 3b 43 10          	cmp    0x10(%rbx),%rax
    1012:	72 2d                	jb     1041 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1041>
    1014:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
    1018:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    101d:	4c 89 ea             	mov    %r13,%rdx
    1020:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1025:	e8 00 00 00 00       	call   102a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x102a>
			1026: R_X86_64_PLT32	memcpy-0x4
    102a:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    102f:	4c 01 6b 48          	add    %r13,0x48(%rbx)
    1033:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1038:	4a 89 44 25 60       	mov    %rax,0x60(%rbp,%r12,1)
    103d:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
    1041:	4e 8b 6c 25 78       	mov    0x78(%rbp,%r12,1),%r13
    1046:	4d 85 ed             	test   %r13,%r13
    1049:	74 95                	je     fe0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfe0>
    104b:	4a 8b 74 25 70       	mov    0x70(%rbp,%r12,1),%rsi
    1050:	48 89 f0             	mov    %rsi,%rax
    1053:	48 2b 43 40          	sub    0x40(%rbx),%rax
    1057:	48 3b 43 10          	cmp    0x10(%rbx),%rax
    105b:	72 83                	jb     fe0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfe0>
    105d:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
    1061:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    1066:	4c 89 ea             	mov    %r13,%rdx
    1069:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    106e:	e8 00 00 00 00       	call   1073 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1073>
			106f: R_X86_64_PLT32	memcpy-0x4
    1073:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    1078:	4c 01 6b 48          	add    %r13,0x48(%rbx)
    107c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1081:	4a 89 44 25 70       	mov    %rax,0x70(%rbp,%r12,1)
    1086:	e9 55 ff ff ff       	jmp    fe0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfe0>
    108b:	48 8b ab c8 00 00 00 	mov    0xc8(%rbx),%rbp
    1092:	48 85 ed             	test   %rbp,%rbp
    1095:	0f 84 23 0a 00 00    	je     1abe <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1abe>
    109b:	4c 8b 6b 48          	mov    0x48(%rbx),%r13
    109f:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
    10a6:	48 89 f0             	mov    %rsi,%rax
    10a9:	48 2b 43 40          	sub    0x40(%rbx),%rax
    10ad:	48 3b 43 10          	cmp    0x10(%rbx),%rax
    10b1:	72 1d                	jb     10d0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10d0>
    10b3:	4c 89 ef             	mov    %r13,%rdi
    10b6:	48 89 ea             	mov    %rbp,%rdx
    10b9:	e8 00 00 00 00       	call   10be <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10be>
			10ba: R_X86_64_PLT32	memcpy-0x4
    10be:	48 03 6b 48          	add    0x48(%rbx),%rbp
    10c2:	48 89 6b 48          	mov    %rbp,0x48(%rbx)
    10c6:	4c 89 ab c0 00 00 00 	mov    %r13,0xc0(%rbx)
    10cd:	49 89 ed             	mov    %rbp,%r13
    10d0:	48 8b ab d8 00 00 00 	mov    0xd8(%rbx),%rbp
    10d7:	48 85 ed             	test   %rbp,%rbp
    10da:	74 16                	je     10f2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10f2>
    10dc:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
    10e3:	4c 89 ef             	mov    %r13,%rdi
    10e6:	48 89 ea             	mov    %rbp,%rdx
    10e9:	e8 00 00 00 00       	call   10ee <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10ee>
			10ea: R_X86_64_PLT32	memcpy-0x4
    10ee:	48 01 6b 48          	add    %rbp,0x48(%rbx)
    10f2:	4c 89 ab d0 00 00 00 	mov    %r13,0xd0(%rbx)
    10f9:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
    1100:	4c 8b 1c 24          	mov    (%rsp),%r11
    1104:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    110b:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    1112:	0f 57 e4             	xorps  %xmm4,%xmm4
    1115:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 111d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x111d>
    111c:	00
			1119: R_X86_64_PC32	.LCPI47_0-0x4
    111d:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1125 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1125>
    1124:	00
			1121: R_X86_64_PC32	.LCPI47_1-0x4
    1125:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 112d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x112d>
    112c:	00
			1129: R_X86_64_PC32	.LCPI47_2-0x4
    112d:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1136 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1136>
    1134:	00 00
			1132: R_X86_64_PC32	.LCPI47_3-0x4
    1136:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    113d:	7f 7f 7f
    1140:	44 88 bb 0a 01 00 00 	mov    %r15b,0x10a(%rbx)
    1147:	49 ff c6             	inc    %r14
    114a:	4d 89 f4             	mov    %r14,%r12
    114d:	4d 39 de             	cmp    %r11,%r14
    1150:	0f 82 92 ef ff ff    	jb     e8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe8>
    1156:	e9 9b 09 00 00       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    115b:	4d 29 eb             	sub    %r13,%r11
    115e:	4c 89 ef             	mov    %r13,%rdi
    1161:	31 f6                	xor    %esi,%esi
    1163:	4c 89 da             	mov    %r11,%rdx
    1166:	e8 00 00 00 00       	call   116b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x116b>
			1167: R_X86_64_PLT32	memchr-0x4
    116b:	4c 8b 1c 24          	mov    (%rsp),%r11
    116f:	49 89 c6             	mov    %rax,%r14
    1172:	4c 89 d8             	mov    %r11,%rax
    1175:	4d 85 f6             	test   %r14,%r14
    1178:	74 03                	je     117d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x117d>
    117a:	4c 89 f0             	mov    %r14,%rax
    117d:	4c 29 e8             	sub    %r13,%rax
    1180:	48 8b 4b 20          	mov    0x20(%rbx),%rcx
    1184:	48 2b 8b 90 00 00 00 	sub    0x90(%rbx),%rcx
    118b:	48 39 c8             	cmp    %rcx,%rax
    118e:	0f 87 f6 14 00 00    	ja     268a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x268a>
    1194:	4c 89 ab b8 00 00 00 	mov    %r13,0xb8(%rbx)
    119b:	48 89 83 98 00 00 00 	mov    %rax,0x98(%rbx)
    11a2:	4d 85 f6             	test   %r14,%r14
    11a5:	0f 57 e4             	xorps  %xmm4,%xmm4
    11a8:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 11b0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11b0>
    11af:	00
			11ac: R_X86_64_PC32	.LCPI47_0-0x4
    11b0:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 11b8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11b8>
    11b7:	00
			11b4: R_X86_64_PC32	.LCPI47_1-0x4
    11b8:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 11c0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11c0>
    11bf:	00
			11bc: R_X86_64_PC32	.LCPI47_2-0x4
    11c0:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 11c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11c9>
    11c7:	00 00
			11c5: R_X86_64_PC32	.LCPI47_3-0x4
    11c9:	0f 84 83 13 00 00    	je     2552 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2552>
    11cf:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11d6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11d6>
			11d2: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    11d6:	48 89 43 60          	mov    %rax,0x60(%rbx)
    11da:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
    11e1:	00
    11e2:	4d 39 de             	cmp    %r11,%r14
    11e5:	0f 83 0b 09 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    11eb:	41 80 3e 00          	cmpb   $0x0,(%r14)
    11ef:	0f 85 6b 14 00 00    	jne    2660 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2660>
    11f5:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
    11fc:	48 c1 e0 05          	shl    $0x5,%rax
    1200:	48 03 43 38          	add    0x38(%rbx),%rax
    1204:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
    120b:	48 85 c9             	test   %rcx,%rcx
    120e:	48 0f 44 c1          	cmove  %rcx,%rax
    1212:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
    1219:	80 bb 09 01 00 00 00 	cmpb   $0x0,0x109(%rbx)
    1220:	0f 85 4b 0d 00 00    	jne    1f71 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f71>
    1226:	b8 06 00 00 00       	mov    $0x6,%eax
    122b:	89 43 78             	mov    %eax,0x78(%rbx)
    122e:	48 8b 43 30          	mov    0x30(%rbx),%rax
    1232:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
    1239:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    123d:	48 89 93 e0 00 00 00 	mov    %rdx,0xe0(%rbx)
    1244:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    1248:	48 c1 e1 04          	shl    $0x4,%rcx
    124c:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
    1251:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
    1256:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
    125b:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
    1261:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
    1267:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
    126d:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
    1273:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
    1279:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
    127f:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
    1284:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
    128b:	48 01 83 90 00 00 00 	add    %rax,0x90(%rbx)
    1292:	48 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%rbx)
    1299:	00 00 00 00
    129d:	48 c7 83 98 00 00 00 	movq   $0x0,0x98(%rbx)
    12a4:	00 00 00 00
    12a8:	66 c7 83 08 01 00 00 	movw   $0x100,0x108(%rbx)
    12af:	00 01
    12b1:	49 ff c6             	inc    %r14
    12b4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 12bb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12bb>
			12b7: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    12bb:	48 89 43 60          	mov    %rax,0x60(%rbx)
    12bf:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
    12c6:	00
    12c7:	4d 39 de             	cmp    %r11,%r14
    12ca:	0f 83 26 08 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    12d0:	4c 89 f6             	mov    %r14,%rsi
    12d3:	4d 39 de             	cmp    %r11,%r14
    12d6:	0f 83 ed 10 00 00    	jae    23c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23c9>
    12dc:	4c 89 d8             	mov    %r11,%rax
    12df:	48 29 f0             	sub    %rsi,%rax
    12e2:	48 89 c7             	mov    %rax,%rdi
    12e5:	31 c9                	xor    %ecx,%ecx
    12e7:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
    12eb:	83 fa 0d             	cmp    $0xd,%edx
    12ee:	0f 84 8a 0e 00 00    	je     217e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x217e>
    12f4:	83 fa 0a             	cmp    $0xa,%edx
    12f7:	0f 84 14 11 00 00    	je     2411 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2411>
    12fd:	80 c2 a5             	add    $0xa5,%dl
    1300:	80 fa e5             	cmp    $0xe5,%dl
    1303:	0f 86 04 10 00 00    	jbe    230d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x230d>
    1309:	48 8b 83 e0 00 00 00 	mov    0xe0(%rbx),%rax
    1310:	48 3b 03             	cmp    (%rbx),%rax
    1313:	0f 84 2f 0d 00 00    	je     2048 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2048>
    1319:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
    131d:	48 8d 83 09 01 00 00 	lea    0x109(%rbx),%rax
    1324:	c6 40 04 00          	movb   $0x0,0x4(%rax)
    1328:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    132e:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
    1333:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
    1338:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
    133d:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
    1342:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
    1347:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
    134c:	41 0f 11 27          	movups %xmm4,(%r15)
    1350:	c6 83 08 01 00 00 01 	movb   $0x1,0x108(%rbx)
    1357:	4c 8b 43 40          	mov    0x40(%rbx),%r8
    135b:	48 8b 43 48          	mov    0x48(%rbx),%rax
    135f:	49 89 c1             	mov    %rax,%r9
    1362:	4d 29 c1             	sub    %r8,%r9
    1365:	4c 89 8b f8 00 00 00 	mov    %r9,0xf8(%rbx)
    136c:	4c 8b 4b 50          	mov    0x50(%rbx),%r9
    1370:	4d 89 ca             	mov    %r9,%r10
    1373:	49 29 c2             	sub    %rax,%r10
    1376:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
    137d:	48 8b 83 e8 00 00 00 	mov    0xe8(%rbx),%rax
    1384:	48 89 83 f0 00 00 00 	mov    %rax,0xf0(%rbx)
    138b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1392 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1392>
			138e: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
    1392:	48 89 43 60          	mov    %rax,0x60(%rbx)
    1396:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
    139d:	00
    139e:	48 89 d0             	mov    %rdx,%rax
    13a1:	4c 39 da             	cmp    %r11,%rdx
    13a4:	0f 83 fc 09 00 00    	jae    1da6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1da6>
    13aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13b0:	44 0f b6 18          	movzbl (%rax),%r11d
    13b4:	41 80 c3 bf          	add    $0xbf,%r11b
    13b8:	41 80 fb 19          	cmp    $0x19,%r11b
    13bc:	77 0d                	ja     13cb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13cb>
    13be:	48 ff c0             	inc    %rax
    13c1:	48 ff cf             	dec    %rdi
    13c4:	75 ea                	jne    13b0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13b0>
    13c6:	e9 1a 0b 00 00       	jmp    1ee5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ee5>
    13cb:	48 39 c2             	cmp    %rax,%rdx
    13ce:	0f 84 51 10 00 00    	je     2425 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2425>
    13d4:	49 89 c3             	mov    %rax,%r11
    13d7:	49 29 f3             	sub    %rsi,%r11
    13da:	4c 89 df             	mov    %r11,%rdi
    13dd:	48 29 cf             	sub    %rcx,%rdi
    13e0:	4c 39 d7             	cmp    %r10,%rdi
    13e3:	0f 87 60 0b 00 00    	ja     1f49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f49>
    13e9:	49 29 c2             	sub    %rax,%r10
    13ec:	49 01 d2             	add    %rdx,%r10
    13ef:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
    13f6:	48 89 93 d0 00 00 00 	mov    %rdx,0xd0(%rbx)
    13fd:	48 89 bb d8 00 00 00 	mov    %rdi,0xd8(%rbx)
    1404:	48 89 c6             	mov    %rax,%rsi
    1407:	4c 8b 1c 24          	mov    (%rsp),%r11
    140b:	4c 39 d8             	cmp    %r11,%rax
    140e:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    1415:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    141c:	0f 84 4b 09 00 00    	je     1d6d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d6d>
    1422:	0f b6 08             	movzbl (%rax),%ecx
    1425:	83 f9 0d             	cmp    $0xd,%ecx
    1428:	0f 85 61 05 00 00    	jne    198f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x198f>
    142e:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
    1435:	41 0f 11 22          	movups %xmm4,(%r10)
    1439:	48 89 93 a0 00 00 00 	mov    %rdx,0xa0(%rbx)
    1440:	48 89 bb a8 00 00 00 	mov    %rdi,0xa8(%rbx)
    1447:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    144e:	48 83 ff 07          	cmp    $0x7,%rdi
    1452:	0f 85 d5 05 00 00    	jne    1a2d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a2d>
    1458:	0f b6 3a             	movzbl (%rdx),%edi
    145b:	83 ff 4d             	cmp    $0x4d,%edi
    145e:	0f 84 50 f2 ff ff    	je     6b4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6b4>
    1464:	e9 0f 0a 00 00       	jmp    1e78 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e78>
    1469:	b0 01                	mov    $0x1,%al
    146b:	e9 20 ed ff ff       	jmp    190 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x190>
    1470:	48 39 c2             	cmp    %rax,%rdx
    1473:	0f 84 e1 10 00 00    	je     255a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x255a>
    1479:	49 89 c3             	mov    %rax,%r11
    147c:	49 29 f3             	sub    %rsi,%r11
    147f:	4c 89 df             	mov    %r11,%rdi
    1482:	48 29 cf             	sub    %rcx,%rdi
    1485:	4c 39 d7             	cmp    %r10,%rdi
    1488:	0f 87 bb 0a 00 00    	ja     1f49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f49>
    148e:	49 29 c2             	sub    %rax,%r10
    1491:	49 01 d2             	add    %rdx,%r10
    1494:	4c 89 93 00 01 00 00 	mov    %r10,0x100(%rbx)
    149b:	48 89 93 d0 00 00 00 	mov    %rdx,0xd0(%rbx)
    14a2:	48 89 bb d8 00 00 00 	mov    %rdi,0xd8(%rbx)
    14a9:	48 89 c6             	mov    %rax,%rsi
    14ac:	4c 8b 1c 24          	mov    (%rsp),%r11
    14b0:	4c 39 d8             	cmp    %r11,%rax
    14b3:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    14ba:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    14c1:	0f 84 a6 08 00 00    	je     1d6d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d6d>
    14c7:	0f b6 08             	movzbl (%rax),%ecx
    14ca:	83 f9 0d             	cmp    $0xd,%ecx
    14cd:	0f 85 3e 05 00 00    	jne    1a11 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a11>
    14d3:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
    14da:	41 0f 11 22          	movups %xmm4,(%r10)
    14de:	48 89 93 a0 00 00 00 	mov    %rdx,0xa0(%rbx)
    14e5:	48 89 bb a8 00 00 00 	mov    %rdi,0xa8(%rbx)
    14ec:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    14f3:	48 83 ff 07          	cmp    $0x7,%rdi
    14f7:	0f 84 5b ff ff ff    	je     1458 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1458>
    14fd:	e9 78 05 00 00       	jmp    1a7a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a7a>
    1502:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
    1506:	4c 89 e6             	mov    %r12,%rsi
    1509:	48 89 ea             	mov    %rbp,%rdx
    150c:	e8 00 00 00 00       	call   1511 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1511>
			150d: R_X86_64_PLT32	memcpy-0x4
    1511:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 151a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x151a>
    1518:	00 00
			1516: R_X86_64_PC32	.LCPI47_3-0x4
    151a:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1522 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1522>
    1521:	00
			151e: R_X86_64_PC32	.LCPI47_2-0x4
    1522:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 152a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x152a>
    1529:	00
			1526: R_X86_64_PC32	.LCPI47_1-0x4
    152a:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1532 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1532>
    1531:	00
			152e: R_X86_64_PC32	.LCPI47_0-0x4
    1532:	0f 57 e4             	xorps  %xmm4,%xmm4
    1535:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    153c:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    1543:	4c 8b 1c 24          	mov    (%rsp),%r11
    1547:	48 01 6b 48          	add    %rbp,0x48(%rbx)
    154b:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
    1552:	e9 53 ed ff ff       	jmp    2aa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2aa>
    1557:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
    155b:	4c 89 e6             	mov    %r12,%rsi
    155e:	48 89 ea             	mov    %rbp,%rdx
    1561:	e8 00 00 00 00       	call   1566 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1566>
			1562: R_X86_64_PLT32	memcpy-0x4
    1566:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 156f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x156f>
    156d:	00 00
			156b: R_X86_64_PC32	.LCPI47_3-0x4
    156f:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1577 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1577>
    1576:	00
			1573: R_X86_64_PC32	.LCPI47_2-0x4
    1577:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 157f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x157f>
    157e:	00
			157b: R_X86_64_PC32	.LCPI47_1-0x4
    157f:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1587 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1587>
    1586:	00
			1583: R_X86_64_PC32	.LCPI47_0-0x4
    1587:	0f 57 e4             	xorps  %xmm4,%xmm4
    158a:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    1591:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    1598:	4c 8b 1c 24          	mov    (%rsp),%r11
    159c:	48 01 6b 48          	add    %rbp,0x48(%rbx)
    15a0:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
    15a7:	e9 68 ec ff ff       	jmp    214 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x214>
    15ac:	83 f9 0a             	cmp    $0xa,%ecx
    15af:	0f 84 c9 f0 ff ff    	je     67e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x67e>
    15b5:	e9 de 03 00 00       	jmp    1998 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1998>
    15ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    15c0:	41 0f b6 36          	movzbl (%r14),%esi
    15c4:	83 fe 3a             	cmp    $0x3a,%esi
    15c7:	0f 84 b7 07 00 00    	je     1d84 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d84>
    15cd:	31 ff                	xor    %edi,%edi
    15cf:	40 f6 c7 01          	test   $0x1,%dil
    15d3:	0f 85 b9 07 00 00    	jne    1d92 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d92>
    15d9:	83 fe 0d             	cmp    $0xd,%esi
    15dc:	0f 84 f7 00 00 00    	je     16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    15e2:	83 fe 0a             	cmp    $0xa,%esi
    15e5:	0f 84 ee 00 00 00    	je     16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    15eb:	85 f6                	test   %esi,%esi
    15ed:	0f 84 e6 00 00 00    	je     16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    15f3:	49 ff c6             	inc    %r14
    15f6:	4d 39 de             	cmp    %r11,%r14
    15f9:	72 c5                	jb     15c0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x15c0>
    15fb:	e9 27 07 00 00       	jmp    1d27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d27>
    1600:	41 0f b6 36          	movzbl (%r14),%esi
    1604:	83 fe 3a             	cmp    $0x3a,%esi
    1607:	0f 84 7e 07 00 00    	je     1d8b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d8b>
    160d:	31 ff                	xor    %edi,%edi
    160f:	40 f6 c7 01          	test   $0x1,%dil
    1613:	0f 85 83 07 00 00    	jne    1d9c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d9c>
    1619:	83 fe 0c             	cmp    $0xc,%esi
    161c:	7e 1c                	jle    163a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x163a>
    161e:	83 fe 0d             	cmp    $0xd,%esi
    1621:	0f 84 b2 00 00 00    	je     16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    1627:	83 fe 3a             	cmp    $0x3a,%esi
    162a:	0f 84 a9 00 00 00    	je     16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    1630:	83 fe 5c             	cmp    $0x5c,%esi
    1633:	75 16                	jne    164b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164b>
    1635:	e9 9f 00 00 00       	jmp    16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    163a:	83 fe 0a             	cmp    $0xa,%esi
    163d:	0f 84 96 00 00 00    	je     16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    1643:	85 f6                	test   %esi,%esi
    1645:	0f 84 8e 00 00 00    	je     16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    164b:	49 ff c6             	inc    %r14
    164e:	4d 39 de             	cmp    %r11,%r14
    1651:	72 ad                	jb     1600 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1600>
    1653:	e9 cf 06 00 00       	jmp    1d27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d27>
    1658:	83 f9 0a             	cmp    $0xa,%ecx
    165b:	0f 84 81 f6 ff ff    	je     ce2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xce2>
    1661:	e9 32 03 00 00       	jmp    1998 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1998>
    1666:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    166a:	48 83 ff 08          	cmp    $0x8,%rdi
    166e:	0f 87 60 f0 ff ff    	ja     6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1674:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 167b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x167b>
			1677: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x44
    167b:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    167f:	4c 01 c7             	add    %r8,%rdi
    1682:	3e ff e7             	notrack jmp *%rdi
    1685:	48 8b 3a             	mov    (%rdx),%rdi
    1688:	48 be 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rsi
    168f:	43 54 45
    1692:	48 31 f7             	xor    %rsi,%rdi
    1695:	44 0f b6 42 08       	movzbl 0x8(%rdx),%r8d
    169a:	49 83 f0 44          	xor    $0x44,%r8
    169e:	be 06 00 00 00       	mov    $0x6,%esi
    16a3:	49 09 f8             	or     %rdi,%r8
    16a6:	0f 84 28 f0 ff ff    	je     6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    16ac:	e9 08 10 00 00       	jmp    26b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x26b9>
    16b1:	4c 89 de             	mov    %r11,%rsi
    16b4:	4c 29 f6             	sub    %r14,%rsi
    16b7:	31 c9                	xor    %ecx,%ecx
    16b9:	48 83 fe 08          	cmp    $0x8,%rsi
    16bd:	0f 8d df 16 00 00    	jge    2da2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2da2>
    16c3:	4d 39 de             	cmp    %r11,%r14
    16c6:	0f 83 ab 0a 00 00    	jae    2177 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2177>
    16cc:	84 d2                	test   %dl,%dl
    16ce:	0f 84 52 03 00 00    	je     1a26 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a26>
    16d4:	e9 46 03 00 00       	jmp    1a1f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a1f>
    16d9:	48 85 c9             	test   %rcx,%rcx
    16dc:	48 0f 44 ca          	cmove  %rdx,%rcx
    16e0:	4d 85 ed             	test   %r13,%r13
    16e3:	0f 85 ff 06 00 00    	jne    1de8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1de8>
    16e9:	49 89 cd             	mov    %rcx,%r13
    16ec:	e9 d6 ea ff ff       	jmp    1c7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c7>
    16f1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16f8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16f8>
			16f4: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
    16f8:	48 89 43 60          	mov    %rax,0x60(%rbx)
    16fc:	48 8b 83 88 00 00 00 	mov    0x88(%rbx),%rax
    1703:	48 2b 83 90 00 00 00 	sub    0x90(%rbx),%rax
    170a:	4c 89 d9             	mov    %r11,%rcx
    170d:	4c 29 e9             	sub    %r13,%rcx
    1710:	48 39 c1             	cmp    %rax,%rcx
    1713:	49 89 c6             	mov    %rax,%r14
    1716:	4c 0f 42 f1          	cmovb  %rcx,%r14
    171a:	4c 89 ab b8 00 00 00 	mov    %r13,0xb8(%rbx)
    1721:	4c 89 b3 98 00 00 00 	mov    %r14,0x98(%rbx)
    1728:	4d 01 ee             	add    %r13,%r14
    172b:	48 39 c8             	cmp    %rcx,%rax
    172e:	0f 96 c0             	setbe  %al
    1731:	48 8d 73 70          	lea    0x70(%rbx),%rsi
    1735:	0f 87 f9 0c 00 00    	ja     2434 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2434>
    173b:	4d 39 de             	cmp    %r11,%r14
    173e:	0f 83 f0 0c 00 00    	jae    2434 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2434>
    1744:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 174b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x174b>
			1747: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    174b:	48 89 43 60          	mov    %rax,0x60(%rbx)
    174f:	41 80 3e 00          	cmpb   $0x0,(%r14)
    1753:	0f 85 b6 0d 00 00    	jne    250f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x250f>
    1759:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
    1760:	48 c1 e0 05          	shl    $0x5,%rax
    1764:	48 03 43 38          	add    0x38(%rbx),%rax
    1768:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
    176f:	48 85 c9             	test   %rcx,%rcx
    1772:	48 0f 44 c1          	cmove  %rcx,%rax
    1776:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
    177d:	80 bb 09 01 00 00 00 	cmpb   $0x0,0x109(%rbx)
    1784:	0f 85 d3 08 00 00    	jne    205d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x205d>
    178a:	b8 07 00 00 00       	mov    $0x7,%eax
    178f:	89 43 78             	mov    %eax,0x78(%rbx)
    1792:	48 8b 43 30          	mov    0x30(%rbx),%rax
    1796:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
    179d:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    17a1:	48 89 93 e0 00 00 00 	mov    %rdx,0xe0(%rbx)
    17a8:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    17ac:	48 c1 e1 04          	shl    $0x4,%rcx
    17b0:	0f 10 46 40          	movups 0x40(%rsi),%xmm0
    17b4:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
    17b9:	0f 10 06             	movups (%rsi),%xmm0
    17bc:	0f 10 4e 10          	movups 0x10(%rsi),%xmm1
    17c0:	0f 10 56 20          	movups 0x20(%rsi),%xmm2
    17c4:	0f 10 5e 30          	movups 0x30(%rsi),%xmm3
    17c8:	0f 11 5c 08 30       	movups %xmm3,0x30(%rax,%rcx,1)
    17cd:	0f 11 54 08 20       	movups %xmm2,0x20(%rax,%rcx,1)
    17d2:	0f 11 4c 08 10       	movups %xmm1,0x10(%rax,%rcx,1)
    17d7:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    17db:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
    17e2:	48 01 83 90 00 00 00 	add    %rax,0x90(%rbx)
    17e9:	48 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%rbx)
    17f0:	00 00 00 00
    17f4:	48 c7 83 98 00 00 00 	movq   $0x0,0x98(%rbx)
    17fb:	00 00 00 00
    17ff:	66 c7 83 08 01 00 00 	movw   $0x100,0x108(%rbx)
    1806:	00 01
    1808:	49 ff c6             	inc    %r14
    180b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1812 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1812>
			180e: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    1812:	48 89 43 60          	mov    %rax,0x60(%rbx)
    1816:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
    181d:	00
    181e:	4d 39 de             	cmp    %r11,%r14
    1821:	0f 83 cf 02 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    1827:	48 89 df             	mov    %rbx,%rdi
    182a:	4c 89 f6             	mov    %r14,%rsi
    182d:	4c 89 da             	mov    %r11,%rdx
    1830:	48 83 c4 28          	add    $0x28,%rsp
    1834:	5b                   	pop    %rbx
    1835:	41 5c                	pop    %r12
    1837:	41 5d                	pop    %r13
    1839:	41 5e                	pop    %r14
    183b:	41 5f                	pop    %r15
    183d:	5d                   	pop    %rbp
    183e:	e9 00 00 00 00       	jmp    1843 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1843>
			183f: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    1843:	4d 29 eb             	sub    %r13,%r11
    1846:	4c 89 ef             	mov    %r13,%rdi
    1849:	31 f6                	xor    %esi,%esi
    184b:	4c 89 da             	mov    %r11,%rdx
    184e:	e8 00 00 00 00       	call   1853 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1853>
			184f: R_X86_64_PLT32	memchr-0x4
    1853:	48 8b 14 24          	mov    (%rsp),%rdx
    1857:	49 89 c6             	mov    %rax,%r14
    185a:	48 85 c0             	test   %rax,%rax
    185d:	0f 84 61 0d 00 00    	je     25c4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25c4>
    1863:	49 39 d6             	cmp    %rdx,%r14
    1866:	0f 83 58 0d 00 00    	jae    25c4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25c4>
    186c:	4c 89 f1             	mov    %r14,%rcx
    186f:	4c 29 e9             	sub    %r13,%rcx
    1872:	48 8b 43 20          	mov    0x20(%rbx),%rax
    1876:	48 2b 83 90 00 00 00 	sub    0x90(%rbx),%rax
    187d:	48 39 c1             	cmp    %rax,%rcx
    1880:	0f 87 58 0a 00 00    	ja     22de <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22de>
    1886:	4c 89 ab b8 00 00 00 	mov    %r13,0xb8(%rbx)
    188d:	48 89 8b 98 00 00 00 	mov    %rcx,0x98(%rbx)
    1894:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 189b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x189b>
			1897: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    189b:	48 89 43 60          	mov    %rax,0x60(%rbx)
    189f:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
    18a6:	00
    18a7:	41 80 3e 00          	cmpb   $0x0,(%r14)
    18ab:	0f 85 af 0d 00 00    	jne    2660 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2660>
    18b1:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
    18b8:	48 c1 e0 05          	shl    $0x5,%rax
    18bc:	48 03 43 38          	add    0x38(%rbx),%rax
    18c0:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
    18c7:	48 85 c9             	test   %rcx,%rcx
    18ca:	48 0f 44 c1          	cmove  %rcx,%rax
    18ce:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
    18d5:	80 bb 09 01 00 00 00 	cmpb   $0x0,0x109(%rbx)
    18dc:	0f 85 57 08 00 00    	jne    2139 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2139>
    18e2:	b8 06 00 00 00       	mov    $0x6,%eax
    18e7:	89 43 78             	mov    %eax,0x78(%rbx)
    18ea:	48 8b 43 30          	mov    0x30(%rbx),%rax
    18ee:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
    18f5:	48 8d 71 01          	lea    0x1(%rcx),%rsi
    18f9:	48 89 b3 e0 00 00 00 	mov    %rsi,0xe0(%rbx)
    1900:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    1904:	48 c1 e1 04          	shl    $0x4,%rcx
    1908:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
    190d:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
    1912:	41 0f 10 07          	movups (%r15),%xmm0
    1916:	41 0f 10 4f 10       	movups 0x10(%r15),%xmm1
    191b:	41 0f 10 57 20       	movups 0x20(%r15),%xmm2
    1920:	41 0f 10 5f 30       	movups 0x30(%r15),%xmm3
    1925:	0f 11 5c 08 30       	movups %xmm3,0x30(%rax,%rcx,1)
    192a:	0f 11 54 08 20       	movups %xmm2,0x20(%rax,%rcx,1)
    192f:	0f 11 4c 08 10       	movups %xmm1,0x10(%rax,%rcx,1)
    1934:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    1938:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
    193f:	48 01 83 90 00 00 00 	add    %rax,0x90(%rbx)
    1946:	48 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%rbx)
    194d:	00 00 00 00
    1951:	48 c7 83 98 00 00 00 	movq   $0x0,0x98(%rbx)
    1958:	00 00 00 00
    195c:	66 c7 83 08 01 00 00 	movw   $0x100,0x108(%rbx)
    1963:	00 01
    1965:	49 ff c6             	inc    %r14
    1968:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 196f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x196f>
			196b: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    196f:	48 89 43 60          	mov    %rax,0x60(%rbx)
    1973:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
    197a:	00
    197b:	49 39 d6             	cmp    %rdx,%r14
    197e:	0f 83 72 01 00 00    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    1984:	48 89 df             	mov    %rbx,%rdi
    1987:	4c 89 f6             	mov    %r14,%rsi
    198a:	e9 a1 fe ff ff       	jmp    1830 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1830>
    198f:	83 f9 0a             	cmp    $0xa,%ecx
    1992:	0f 84 96 fa ff ff    	je     142e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x142e>
    1998:	48 b9 03 00 00 00 06 	movabs $0x600000003,%rcx
    199f:	00 00 00
    19a2:	48 89 8b 10 01 00 00 	mov    %rcx,0x110(%rbx)
    19a9:	48 2b b3 20 01 00 00 	sub    0x120(%rbx),%rsi
    19b0:	48 89 b3 18 01 00 00 	mov    %rsi,0x118(%rbx)
    19b7:	48 ff c0             	inc    %rax
    19ba:	48 89 83 28 01 00 00 	mov    %rax,0x128(%rbx)
    19c1:	49 89 c6             	mov    %rax,%r14
    19c4:	e9 2d 01 00 00       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    19c9:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    19cd:	48 83 ff 08          	cmp    $0x8,%rdi
    19d1:	0f 87 fd ec ff ff    	ja     6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    19d7:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 19de <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19de>
			19da: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_-0x4
    19de:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    19e2:	4c 01 c7             	add    %r8,%rdi
    19e5:	3e ff e7             	notrack jmp *%rdi
    19e8:	81 3a 4e 41 43 4b    	cmpl   $0x4b43414e,(%rdx)
    19ee:	0f 84 ef 0c 00 00    	je     26e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x26e3>
    19f4:	be 0c 00 00 00       	mov    $0xc,%esi
    19f9:	81 3a 53 45 4e 44    	cmpl   $0x444e4553,(%rdx)
    19ff:	0f 84 cf ec ff ff    	je     6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1a05:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    1a0c:	e9 c3 ec ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1a11:	83 f9 0a             	cmp    $0xa,%ecx
    1a14:	0f 84 b9 fa ff ff    	je     14d3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14d3>
    1a1a:	e9 79 ff ff ff       	jmp    1998 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1998>
    1a1f:	31 d2                	xor    %edx,%edx
    1a21:	e9 9a fb ff ff       	jmp    15c0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x15c0>
    1a26:	31 d2                	xor    %edx,%edx
    1a28:	e9 d3 fb ff ff       	jmp    1600 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1600>
    1a2d:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    1a31:	48 83 ff 08          	cmp    $0x8,%rdi
    1a35:	0f 87 99 ec ff ff    	ja     6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1a3b:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 1a42 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a42>
			1a3e: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x20
    1a42:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    1a46:	4c 01 c7             	add    %r8,%rdi
    1a49:	3e ff e7             	notrack jmp *%rdi
    1a4c:	0f b6 3a             	movzbl (%rdx),%edi
    1a4f:	83 ff 53             	cmp    $0x53,%edi
    1a52:	0f 85 8f 12 00 00    	jne    2ce7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ce7>
    1a58:	bf 53 54 4f 4d       	mov    $0x4d4f5453,%edi
    1a5d:	33 3a                	xor    (%rdx),%edi
    1a5f:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    1a63:	83 f2 50             	xor    $0x50,%edx
    1a66:	31 f6                	xor    %esi,%esi
    1a68:	09 fa                	or     %edi,%edx
    1a6a:	40 0f 95 c6          	setne  %sil
    1a6e:	48 f7 de             	neg    %rsi
    1a71:	48 83 ce 0d          	or     $0xd,%rsi
    1a75:	e9 26 04 00 00       	jmp    1ea0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ea0>
    1a7a:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    1a7e:	48 83 ff 08          	cmp    $0x8,%rdi
    1a82:	0f 87 4c ec ff ff    	ja     6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1a88:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 1a8f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a8f>
			1a8b: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x68
    1a8f:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    1a93:	4c 01 c7             	add    %r8,%rdi
    1a96:	3e ff e7             	notrack jmp *%rdi
    1a99:	0f b7 32             	movzwl (%rdx),%esi
    1a9c:	81 f6 41 43 00 00    	xor    $0x4341,%esi
    1aa2:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
    1aa6:	83 f2 4b             	xor    $0x4b,%edx
    1aa9:	31 ff                	xor    %edi,%edi
    1aab:	66 09 f2             	or     %si,%dx
    1aae:	40 0f 94 c7          	sete   %dil
    1ab2:	48 8d 34 7f          	lea    (%rdi,%rdi,2),%rsi
    1ab6:	48 ff ce             	dec    %rsi
    1ab9:	e9 16 ec ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1abe:	4c 8b 6b 48          	mov    0x48(%rbx),%r13
    1ac2:	e9 09 f6 ff ff       	jmp    10d0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x10d0>
    1ac7:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
    1ace:	00 00 00
    1ad1:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    1ad8:	4c 89 e0             	mov    %r12,%rax
    1adb:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    1ae2:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    1ae9:	49 ff c4             	inc    %r12
    1aec:	4c 89 a3 28 01 00 00 	mov    %r12,0x128(%rbx)
    1af3:	4d 89 e6             	mov    %r12,%r14
    1af6:	4c 89 f0             	mov    %r14,%rax
    1af9:	48 83 c4 28          	add    $0x28,%rsp
    1afd:	5b                   	pop    %rbx
    1afe:	41 5c                	pop    %r12
    1b00:	41 5d                	pop    %r13
    1b02:	41 5e                	pop    %r14
    1b04:	41 5f                	pop    %r15
    1b06:	5d                   	pop    %rbp
    1b07:	c3                   	ret
    1b08:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
    1b0f:	e9 0a e7 ff ff       	jmp    21e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21e>
    1b14:	48 8d 3c 2d ec ff ff 	lea    -0x14(,%rbp,1),%rdi
    1b1b:	ff
    1b1c:	4c 01 ef             	add    %r13,%rdi
    1b1f:	4c 89 e9             	mov    %r13,%rcx
    1b22:	48 89 ea             	mov    %rbp,%rdx
    1b25:	80 39 30             	cmpb   $0x30,(%rcx)
    1b28:	0f 85 f9 10 00 00    	jne    2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    1b2e:	48 ff c1             	inc    %rcx
    1b31:	48 ff ca             	dec    %rdx
    1b34:	b8 14 00 00 00       	mov    $0x14,%eax
    1b39:	48 83 fa 14          	cmp    $0x14,%rdx
    1b3d:	77 e6                	ja     1b25 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b25>
    1b3f:	48 8d 48 ee          	lea    -0x12(%rax),%rcx
    1b43:	45 31 c0             	xor    %r8d,%r8d
    1b46:	31 d2                	xor    %edx,%edx
    1b48:	0f b6 34 17          	movzbl (%rdi,%rdx,1),%esi
    1b4c:	83 c6 d0             	add    $0xffffffd0,%esi
    1b4f:	83 fe 09             	cmp    $0x9,%esi
    1b52:	0f 87 cf 10 00 00    	ja     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    1b58:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
    1b5c:	89 f6                	mov    %esi,%esi
    1b5e:	4e 8d 04 46          	lea    (%rsi,%r8,2),%r8
    1b62:	48 ff c2             	inc    %rdx
    1b65:	48 39 d1             	cmp    %rdx,%rcx
    1b68:	75 de                	jne    1b48 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b48>
    1b6a:	0f b6 74 07 ee       	movzbl -0x12(%rdi,%rax,1),%esi
    1b6f:	8d 4e c6             	lea    -0x3a(%rsi),%ecx
    1b72:	80 f9 f6             	cmp    $0xf6,%cl
    1b75:	0f 82 ac 10 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    1b7b:	48 01 c7             	add    %rax,%rdi
    1b7e:	44 0f b6 7f ef       	movzbl -0x11(%rdi),%r15d
    1b83:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    1b87:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1b8e:	00 00 80
    1b91:	3c f6                	cmp    $0xf6,%al
    1b93:	0f 82 2c 01 00 00    	jb     1cc5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cc5>
    1b99:	0f b6 47 f0          	movzbl -0x10(%rdi),%eax
    1b9d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    1ba2:	83 c0 c6             	add    $0xffffffc6,%eax
    1ba5:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    1bac:	00 00 80
    1baf:	3c f6                	cmp    $0xf6,%al
    1bb1:	0f 82 f0 00 00 00    	jb     1ca7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ca7>
    1bb7:	4c 89 7c 24 18       	mov    %r15,0x18(%rsp)
    1bbc:	44 0f b6 67 f1       	movzbl -0xf(%rdi),%r12d
    1bc1:	41 8d 4c 24 c6       	lea    -0x3a(%r12),%ecx
    1bc6:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1bcd:	00 00 80
    1bd0:	80 f9 f6             	cmp    $0xf6,%cl
    1bd3:	0f 82 a6 00 00 00    	jb     1c7f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c7f>
    1bd9:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
    1bde:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    1be3:	44 0f b6 7f f2       	movzbl -0xe(%rdi),%r15d
    1be8:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    1bec:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1bf3:	00 00 80
    1bf6:	3c f6                	cmp    $0xf6,%al
    1bf8:	72 27                	jb     1c21 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c21>
    1bfa:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    1c01:	09 00 00
    1c04:	4c 0f af f8          	imul   %rax,%r15
    1c08:	48 83 c7 f3          	add    $0xfffffffffffffff3,%rdi
    1c0c:	e8 00 00 00 00       	call   1c11 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c11>
			1c0d: R_X86_64_PLT32	.text+0xeec
    1c11:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
    1c18:	4b fe ff
    1c1b:	48 01 c1             	add    %rax,%rcx
    1c1e:	4c 01 f9             	add    %r15,%rcx
    1c21:	48 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rax
    1c28:	5a 00 00
    1c2b:	4c 0f af e0          	imul   %rax,%r12
    1c2f:	48 b8 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%rax
    1c36:	f2 ee ff
    1c39:	4c 01 e0             	add    %r12,%rax
    1c3c:	48 01 c8             	add    %rcx,%rax
    1c3f:	4c 8b 1c 24          	mov    (%rsp),%r11
    1c43:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    1c4a:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    1c51:	0f 57 e4             	xorps  %xmm4,%xmm4
    1c54:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1c5c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c5c>
    1c5b:	00
			1c58: R_X86_64_PC32	.LCPI47_0-0x4
    1c5c:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1c64 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c64>
    1c63:	00
			1c60: R_X86_64_PC32	.LCPI47_1-0x4
    1c64:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1c6c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c6c>
    1c6b:	00
			1c68: R_X86_64_PC32	.LCPI47_2-0x4
    1c6c:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1c75 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c75>
    1c73:	00 00
			1c71: R_X86_64_PC32	.LCPI47_3-0x4
    1c75:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    1c7a:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1c7f:	48 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rcx
    1c86:	8d 03 00
    1c89:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    1c8e:	48 0f af f9          	imul   %rcx,%rdi
    1c92:	48 ba 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rdx
    1c99:	78 55 ff
    1c9c:	48 01 fa             	add    %rdi,%rdx
    1c9f:	48 01 c2             	add    %rax,%rdx
    1ca2:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
    1ca7:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
    1cae:	86 23 00
    1cb1:	4c 0f af f8          	imul   %rax,%r15
    1cb5:	48 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rcx
    1cbc:	b2 56 f9
    1cbf:	4c 01 f9             	add    %r15,%rcx
    1cc2:	48 01 d1             	add    %rdx,%rcx
    1cc5:	48 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rax
    1ccc:	45 63 01
    1ccf:	48 0f af f0          	imul   %rax,%rsi
    1cd3:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
    1cda:	f9 62 bd
    1cdd:	48 01 f0             	add    %rsi,%rax
    1ce0:	49 83 f8 13          	cmp    $0x13,%r8
    1ce4:	0f 93 c2             	setae  %dl
    1ce7:	48 01 c8             	add    %rcx,%rax
    1cea:	0f 88 fd 09 00 00    	js     26ed <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x26ed>
    1cf0:	84 d2                	test   %dl,%dl
    1cf2:	0f 85 2f 0f 00 00    	jne    2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    1cf8:	49 83 f8 12          	cmp    $0x12,%r8
    1cfc:	75 13                	jne    1d11 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d11>
    1cfe:	48 b9 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rcx
    1d05:	27 33 06
    1d08:	48 39 c8             	cmp    %rcx,%rax
    1d0b:	0f 87 16 0f 00 00    	ja     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    1d11:	48 b9 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rcx
    1d18:	b6 e0 0d
    1d1b:	4c 0f af c1          	imul   %rcx,%r8
    1d1f:	4c 01 c0             	add    %r8,%rax
    1d22:	e9 c5 ea ff ff       	jmp    7ec <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7ec>
    1d27:	4d 89 de             	mov    %r11,%r14
    1d2a:	e9 aa f9 ff ff       	jmp    16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    1d2f:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
    1d33:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1d3a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d3a>
			1d36: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x8c
    1d3a:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    1d3e:	48 01 c8             	add    %rcx,%rax
    1d41:	3e ff e0             	notrack jmp *%rax
    1d44:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    1d49:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    1d4c:	80 f9 f6             	cmp    $0xf6,%cl
    1d4f:	0f 82 d2 0e 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    1d55:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
    1d59:	e9 85 ea ff ff       	jmp    7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e3>
    1d5e:	48 01 ce             	add    %rcx,%rsi
    1d61:	31 ff                	xor    %edi,%edi
    1d63:	48 89 d0             	mov    %rdx,%rax
    1d66:	31 d2                	xor    %edx,%edx
    1d68:	e9 ea e8 ff ff       	jmp    657 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x657>
    1d6d:	49 89 c6             	mov    %rax,%r14
    1d70:	e9 81 fd ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    1d75:	48 01 ce             	add    %rcx,%rsi
    1d78:	31 ff                	xor    %edi,%edi
    1d7a:	48 89 d0             	mov    %rdx,%rax
    1d7d:	31 d2                	xor    %edx,%edx
    1d7f:	e9 37 ef ff ff       	jmp    cbb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xcbb>
    1d84:	89 c7                	mov    %eax,%edi
    1d86:	e9 44 f8 ff ff       	jmp    15cf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x15cf>
    1d8b:	89 c7                	mov    %eax,%edi
    1d8d:	e9 7d f8 ff ff       	jmp    160f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x160f>
    1d92:	31 c0                	xor    %eax,%eax
    1d94:	4c 89 f2             	mov    %r14,%rdx
    1d97:	e9 57 f8 ff ff       	jmp    15f3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x15f3>
    1d9c:	31 c0                	xor    %eax,%eax
    1d9e:	4c 89 f2             	mov    %r14,%rdx
    1da1:	e9 a5 f8 ff ff       	jmp    164b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164b>
    1da6:	48 01 ce             	add    %rcx,%rsi
    1da9:	31 ff                	xor    %edi,%edi
    1dab:	48 89 d0             	mov    %rdx,%rax
    1dae:	31 d2                	xor    %edx,%edx
    1db0:	e9 52 f6 ff ff       	jmp    1407 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1407>
    1db5:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
    1dbc:	00 00 00
    1dbf:	e9 6d 0e 00 00       	jmp    2c31 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c31>
    1dc4:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
    1dcb:	48 8d 34 0a          	lea    (%rdx,%rcx,1),%rsi
    1dcf:	b8 02 00 00 00       	mov    $0x2,%eax
    1dd4:	48 39 f5             	cmp    %rsi,%rbp
    1dd7:	0f 87 1b 01 00 00    	ja     1ef8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ef8>
    1ddd:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
    1de3:	e9 04 fd ff ff       	jmp    1aec <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1aec>
    1de8:	4c 89 e9             	mov    %r13,%rcx
    1deb:	e9 f9 f8 ff ff       	jmp    16e9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16e9>
    1df0:	48 01 ce             	add    %rcx,%rsi
    1df3:	31 ff                	xor    %edi,%edi
    1df5:	48 89 d0             	mov    %rdx,%rax
    1df8:	31 d2                	xor    %edx,%edx
    1dfa:	e9 ad f6 ff ff       	jmp    14ac <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14ac>
    1dff:	48 8b 04 24          	mov    (%rsp),%rax
    1e03:	e9 13 e8 ff ff       	jmp    61b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x61b>
    1e08:	83 ff 43             	cmp    $0x43,%edi
    1e0b:	0f 85 47 0e 00 00    	jne    2c58 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c58>
    1e11:	bf 43 4f 4e 4e       	mov    $0x4e4e4f43,%edi
    1e16:	33 3a                	xor    (%rdx),%edi
    1e18:	41 b8 4e 45 43 54    	mov    $0x5443454e,%r8d
    1e1e:	44 33 42 03          	xor    0x3(%rdx),%r8d
    1e22:	be 05 00 00 00       	mov    $0x5,%esi
    1e27:	41 09 f8             	or     %edi,%r8d
    1e2a:	0f 84 a4 e8 ff ff    	je     6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1e30:	e9 d0 fb ff ff       	jmp    1a05 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a05>
    1e35:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
    1e3c:	6e 74 2d
    1e3f:	48 33 01             	xor    (%rcx),%rax
    1e42:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
    1e49:	67 74 68
    1e4c:	48 33 51 06          	xor    0x6(%rcx),%rdx
    1e50:	48 09 c2             	or     %rax,%rdx
    1e53:	e9 17 e9 ff ff       	jmp    76f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x76f>
    1e58:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
    1e5f:	00 00 00
    1e62:	e9 ca 0d 00 00       	jmp    2c31 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c31>
    1e67:	4d 89 ee             	mov    %r13,%r14
    1e6a:	e9 87 fc ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    1e6f:	48 8b 04 24          	mov    (%rsp),%rax
    1e73:	e9 07 ee ff ff       	jmp    c7f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc7f>
    1e78:	83 ff 43             	cmp    $0x43,%edi
    1e7b:	0f 85 06 0e 00 00    	jne    2c87 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c87>
    1e81:	bf 43 4f 4e 4e       	mov    $0x4e4e4f43,%edi
    1e86:	33 3a                	xor    (%rdx),%edi
    1e88:	41 b8 4e 45 43 54    	mov    $0x5443454e,%r8d
    1e8e:	44 33 42 03          	xor    0x3(%rdx),%r8d
    1e92:	be 05 00 00 00       	mov    $0x5,%esi
    1e97:	41 09 f8             	or     %edi,%r8d
    1e9a:	0f 85 32 0e 00 00    	jne    2cd2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cd2>
    1ea0:	4c 8b 1c 24          	mov    (%rsp),%r11
    1ea4:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    1eab:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    1eb2:	0f 57 e4             	xorps  %xmm4,%xmm4
    1eb5:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1ebd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ebd>
    1ebc:	00
			1eb9: R_X86_64_PC32	.LCPI47_0-0x4
    1ebd:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1ec5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ec5>
    1ec4:	00
			1ec1: R_X86_64_PC32	.LCPI47_1-0x4
    1ec5:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1ecd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ecd>
    1ecc:	00
			1ec9: R_X86_64_PC32	.LCPI47_2-0x4
    1ecd:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1ed6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ed6>
    1ed4:	00 00
			1ed2: R_X86_64_PC32	.LCPI47_3-0x4
    1ed6:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    1edd:	7f 7f 7f
    1ee0:	e9 ef e7 ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    1ee5:	48 8b 04 24          	mov    (%rsp),%rax
    1ee9:	e9 dd f4 ff ff       	jmp    13cb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13cb>
    1eee:	b8 04 00 00 00       	mov    $0x4,%eax
    1ef3:	e9 87 e5 ff ff       	jmp    47f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x47f>
    1ef8:	49 01 cc             	add    %rcx,%r12
    1efb:	49 8d 04 14          	lea    (%r12,%rdx,1),%rax
    1eff:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
    1f06:	00 00 00
    1f09:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    1f10:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    1f17:	49 01 d4             	add    %rdx,%r12
    1f1a:	49 ff c4             	inc    %r12
    1f1d:	b8 03 00 00 00       	mov    $0x3,%eax
    1f22:	e9 b6 fe ff ff       	jmp    1ddd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ddd>
    1f27:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    1f2e:	00 00 00
    1f31:	e9 fb 0c 00 00       	jmp    2c31 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c31>
    1f36:	48 8b 04 24          	mov    (%rsp),%rax
    1f3a:	e9 31 f5 ff ff       	jmp    1470 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1470>
    1f3f:	b8 05 00 00 00       	mov    $0x5,%eax
    1f44:	e9 54 e9 ff ff       	jmp    89d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x89d>
    1f49:	4c 89 c8             	mov    %r9,%rax
    1f4c:	4c 29 c0             	sub    %r8,%rax
    1f4f:	49 29 cb             	sub    %rcx,%r11
    1f52:	49 39 c3             	cmp    %rax,%r11
    1f55:	0f 87 1b 01 00 00    	ja     2076 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2076>
    1f5b:	48 01 ce             	add    %rcx,%rsi
    1f5e:	b8 02 00 00 00       	mov    $0x2,%eax
    1f63:	49 89 f6             	mov    %rsi,%r14
    1f66:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
    1f6c:	e9 db 0c 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    1f71:	b8 04 00 00 00       	mov    $0x4,%eax
    1f76:	e9 b0 f2 ff ff       	jmp    122b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x122b>
    1f7b:	b8 04 00 00 00       	mov    $0x4,%eax
    1f80:	e9 52 eb ff ff       	jmp    ad7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xad7>
    1f85:	45 31 ed             	xor    %r13d,%r13d
    1f88:	4d 89 e6             	mov    %r12,%r14
    1f8b:	e9 21 f7 ff ff       	jmp    16b1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16b1>
    1f90:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    1f97:	00 00 00
    1f9a:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    1fa1:	4c 2b ab 20 01 00 00 	sub    0x120(%rbx),%r13
    1fa8:	4c 89 ab 18 01 00 00 	mov    %r13,0x118(%rbx)
    1faf:	49 83 c6 03          	add    $0x3,%r14
    1fb3:	e9 94 0c 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    1fb8:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1fbc:	49 ff c6             	inc    %r14
    1fbf:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1fc6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fc6>
			1fc2: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    1fc6:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1fcb:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    1fd0:	4d 39 de             	cmp    %r11,%r14
    1fd3:	0f 83 1d fb ff ff    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    1fd9:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    1fdd:	0f 85 59 03 00 00    	jne    233c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x233c>
    1fe3:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1fe7:	49 83 c6 02          	add    $0x2,%r14
    1feb:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1ff2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ff2>
			1fee: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    1ff2:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1ff7:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    1ffc:	4c 8b 1c 24          	mov    (%rsp),%r11
    2000:	4d 39 de             	cmp    %r11,%r14
    2003:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
    2007:	0f 57 e4             	xorps  %xmm4,%xmm4
    200a:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2012 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2012>
    2011:	00
			200e: R_X86_64_PC32	.LCPI47_0-0x4
    2012:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 201a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x201a>
    2019:	00
			2016: R_X86_64_PC32	.LCPI47_1-0x4
    201a:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2022 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2022>
    2021:	00
			201e: R_X86_64_PC32	.LCPI47_2-0x4
    2022:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 202b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x202b>
    2029:	00 00
			2027: R_X86_64_PC32	.LCPI47_3-0x4
    202b:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    2032:	7f 7f 7f
    2035:	0f 82 ea e4 ff ff    	jb     525 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x525>
    203b:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    203f:	49 83 c6 02          	add    $0x2,%r14
    2043:	e9 ae fa ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2048:	c7 83 10 01 00 00 02 	movl   $0x2,0x110(%rbx)
    204f:	00 00 00
    2052:	48 01 ce             	add    %rcx,%rsi
    2055:	49 89 f6             	mov    %rsi,%r14
    2058:	e9 99 fa ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    205d:	b8 05 00 00 00       	mov    $0x5,%eax
    2062:	e9 28 f7 ff ff       	jmp    178f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x178f>
    2067:	c7 83 10 01 00 00 02 	movl   $0x2,0x110(%rbx)
    206e:	00 00 00
    2071:	e9 80 fa ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2076:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
    207d:	00 00 00
    2080:	4c 2b 8b 20 01 00 00 	sub    0x120(%rbx),%r9
    2087:	4d 29 c1             	sub    %r8,%r9
    208a:	49 01 f1             	add    %rsi,%r9
    208d:	49 01 c9             	add    %rcx,%r9
    2090:	4c 89 8b 18 01 00 00 	mov    %r9,0x118(%rbx)
    2097:	48 01 f0             	add    %rsi,%rax
    209a:	4c 8d 34 01          	lea    (%rcx,%rax,1),%r14
    209e:	49 ff c6             	inc    %r14
    20a1:	b8 03 00 00 00       	mov    $0x3,%eax
    20a6:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
    20ac:	e9 9b 0b 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    20b1:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    20b5:	49 ff c6             	inc    %r14
    20b8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 20bf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20bf>
			20bb: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    20bf:	66 48 0f 6e c0       	movq   %rax,%xmm0
    20c4:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    20c9:	4d 39 de             	cmp    %r11,%r14
    20cc:	0f 83 24 fa ff ff    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    20d2:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    20d6:	0f 85 60 02 00 00    	jne    233c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x233c>
    20dc:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    20e0:	49 83 c6 02          	add    $0x2,%r14
    20e4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 20eb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20eb>
			20e7: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    20eb:	66 48 0f 6e c0       	movq   %rax,%xmm0
    20f0:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    20f5:	4c 8b 1c 24          	mov    (%rsp),%r11
    20f9:	4d 39 de             	cmp    %r11,%r14
    20fc:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
    2100:	0f 57 e4             	xorps  %xmm4,%xmm4
    2103:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 210b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x210b>
    210a:	00
			2107: R_X86_64_PC32	.LCPI47_0-0x4
    210b:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2113 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2113>
    2112:	00
			210f: R_X86_64_PC32	.LCPI47_1-0x4
    2113:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 211b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x211b>
    211a:	00
			2117: R_X86_64_PC32	.LCPI47_2-0x4
    211b:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2124 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2124>
    2122:	00 00
			2120: R_X86_64_PC32	.LCPI47_3-0x4
    2124:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    212b:	7f 7f 7f
    212e:	0f 83 07 ff ff ff    	jae    203b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x203b>
    2134:	e9 09 e8 ff ff       	jmp    942 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x942>
    2139:	b8 04 00 00 00       	mov    $0x4,%eax
    213e:	e9 a4 f7 ff ff       	jmp    18e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18e7>
    2143:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
    214a:	00 00 00
    214d:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    2154:	4c 89 e8             	mov    %r13,%rax
    2157:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    215e:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    2165:	49 ff c5             	inc    %r13
    2168:	4c 89 ab 28 01 00 00 	mov    %r13,0x128(%rbx)
    216f:	4d 89 ee             	mov    %r13,%r14
    2172:	e9 7f f9 ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2177:	31 d2                	xor    %edx,%edx
    2179:	e9 5b f5 ff ff       	jmp    16d9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16d9>
    217e:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    2182:	49 ff c6             	inc    %r14
    2185:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 218c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x218c>
			2188: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    218c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2191:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    2196:	4d 39 de             	cmp    %r11,%r14
    2199:	0f 83 57 f9 ff ff    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    219f:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    21a3:	0f 85 93 01 00 00    	jne    233c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x233c>
    21a9:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    21ad:	49 83 c6 02          	add    $0x2,%r14
    21b1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 21b8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21b8>
			21b4: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    21b8:	66 48 0f 6e c0       	movq   %rax,%xmm0
    21bd:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    21c2:	4c 8b 1c 24          	mov    (%rsp),%r11
    21c6:	4d 39 de             	cmp    %r11,%r14
    21c9:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
    21cd:	0f 57 e4             	xorps  %xmm4,%xmm4
    21d0:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 21d8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21d8>
    21d7:	00
			21d4: R_X86_64_PC32	.LCPI47_0-0x4
    21d8:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 21e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21e0>
    21df:	00
			21dc: R_X86_64_PC32	.LCPI47_1-0x4
    21e0:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 21e8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21e8>
    21e7:	00
			21e4: R_X86_64_PC32	.LCPI47_2-0x4
    21e8:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 21f1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21f1>
    21ef:	00 00
			21ed: R_X86_64_PC32	.LCPI47_3-0x4
    21f1:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    21f8:	7f 7f 7f
    21fb:	0f 83 3a fe ff ff    	jae    203b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x203b>
    2201:	e9 ca f0 ff ff       	jmp    12d0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12d0>
    2206:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    220d:	00 00 00
    2210:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    2217:	4c 2b ab 20 01 00 00 	sub    0x120(%rbx),%r13
    221e:	4c 89 ab 18 01 00 00 	mov    %r13,0x118(%rbx)
    2225:	49 83 c6 02          	add    $0x2,%r14
    2229:	e9 1e 0a 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    222e:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    2232:	49 ff c6             	inc    %r14
    2235:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 223c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x223c>
			2238: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    223c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2241:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    2246:	4d 39 de             	cmp    %r11,%r14
    2249:	0f 83 a7 f8 ff ff    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    224f:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    2253:	0f 85 e3 00 00 00    	jne    233c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x233c>
    2259:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    225d:	49 83 c6 02          	add    $0x2,%r14
    2261:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2268 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2268>
			2264: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    2268:	66 48 0f 6e c0       	movq   %rax,%xmm0
    226d:	f3 0f 7f 43 60       	movdqu %xmm0,0x60(%rbx)
    2272:	4c 8b 1c 24          	mov    (%rsp),%r11
    2276:	4d 39 de             	cmp    %r11,%r14
    2279:	4c 8d 7b 70          	lea    0x70(%rbx),%r15
    227d:	0f 57 e4             	xorps  %xmm4,%xmm4
    2280:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2288 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2288>
    2287:	00
			2284: R_X86_64_PC32	.LCPI47_0-0x4
    2288:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2290 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2290>
    228f:	00
			228c: R_X86_64_PC32	.LCPI47_1-0x4
    2290:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2298 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2298>
    2297:	00
			2294: R_X86_64_PC32	.LCPI47_2-0x4
    2298:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 22a1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22a1>
    229f:	00 00
			229d: R_X86_64_PC32	.LCPI47_3-0x4
    22a1:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    22a8:	7f 7f 7f
    22ab:	0f 82 cc e8 ff ff    	jb     b7d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb7d>
    22b1:	e9 85 fd ff ff       	jmp    203b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x203b>
    22b6:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
    22bd:	00 00 00
    22c0:	48 89 8b 10 01 00 00 	mov    %rcx,0x110(%rbx)
    22c7:	4c 2b b3 20 01 00 00 	sub    0x120(%rbx),%r14
    22ce:	4c 89 b3 18 01 00 00 	mov    %r14,0x118(%rbx)
    22d5:	48 83 c0 02          	add    $0x2,%rax
    22d9:	e9 dc f6 ff ff       	jmp    19ba <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x19ba>
    22de:	4a 8d 0c 28          	lea    (%rax,%r13,1),%rcx
    22e2:	48 ba 03 00 00 00 0e 	movabs $0xe00000003,%rdx
    22e9:	00 00 00
    22ec:	48 89 93 10 01 00 00 	mov    %rdx,0x110(%rbx)
    22f3:	48 2b 8b 20 01 00 00 	sub    0x120(%rbx),%rcx
    22fa:	48 89 8b 18 01 00 00 	mov    %rcx,0x118(%rbx)
    2301:	4e 8d 34 28          	lea    (%rax,%r13,1),%r14
    2305:	49 ff c6             	inc    %r14
    2308:	e9 3f 09 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    230d:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
    2314:	00 00 00
    2317:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    231e:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
    2322:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    2329:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    2330:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    2334:	49 ff c6             	inc    %r14
    2337:	e9 10 09 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    233c:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
    2343:	00 00 00
    2346:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    234d:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
    2351:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    2358:	48 ff c0             	inc    %rax
    235b:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    2362:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    2366:	49 83 c6 02          	add    $0x2,%r14
    236a:	e9 dd 08 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    236f:	b8 02 00 00 00       	mov    $0x2,%eax
    2374:	48 83 bb f8 00 00 00 	cmpq   $0x0,0xf8(%rbx)
    237b:	00
    237c:	0f 85 5b fa ff ff    	jne    1ddd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ddd>
    2382:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
    2389:	00 00 00
    238c:	4c 89 e0             	mov    %r12,%rax
    238f:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    2396:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    239d:	49 ff c4             	inc    %r12
    23a0:	e9 78 fb ff ff       	jmp    1f1d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f1d>
    23a5:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
    23ac:	00 00 00
    23af:	48 89 8b 10 01 00 00 	mov    %rcx,0x110(%rbx)
    23b6:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    23bd:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    23c4:	e9 5c fe ff ff       	jmp    2225 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2225>
    23c9:	49 89 f6             	mov    %rsi,%r14
    23cc:	e9 25 f7 ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    23d1:	48 ff c1             	inc    %rcx
    23d4:	48 ff cf             	dec    %rdi
    23d7:	48 39 c8             	cmp    %rcx,%rax
    23da:	0f 84 72 01 00 00    	je     2552 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2552>
    23e0:	e9 57 e1 ff ff       	jmp    53c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x53c>
    23e5:	48 89 c6             	mov    %rax,%rsi
    23e8:	31 ff                	xor    %edi,%edi
    23ea:	31 d2                	xor    %edx,%edx
    23ec:	e9 66 e2 ff ff       	jmp    657 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x657>
    23f1:	48 ff c1             	inc    %rcx
    23f4:	48 ff cf             	dec    %rdi
    23f7:	48 39 c8             	cmp    %rcx,%rax
    23fa:	0f 85 59 e5 ff ff    	jne    959 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x959>
    2400:	e9 4d 01 00 00       	jmp    2552 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2552>
    2405:	48 89 c6             	mov    %rax,%rsi
    2408:	31 ff                	xor    %edi,%edi
    240a:	31 d2                	xor    %edx,%edx
    240c:	e9 aa e8 ff ff       	jmp    cbb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xcbb>
    2411:	48 ff c1             	inc    %rcx
    2414:	48 ff cf             	dec    %rdi
    2417:	48 39 c8             	cmp    %rcx,%rax
    241a:	0f 84 32 01 00 00    	je     2552 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2552>
    2420:	e9 c2 ee ff ff       	jmp    12e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12e7>
    2425:	48 89 c6             	mov    %rax,%rsi
    2428:	48 89 d0             	mov    %rdx,%rax
    242b:	31 ff                	xor    %edi,%edi
    242d:	31 d2                	xor    %edx,%edx
    242f:	e9 d3 ef ff ff       	jmp    1407 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1407>
    2434:	84 c0                	test   %al,%al
    2436:	0f 84 ba f6 ff ff    	je     1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    243c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2443 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2443>
			243f: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    2443:	48 89 43 60          	mov    %rax,0x60(%rbx)
    2447:	4c 3b 34 24          	cmp    (%rsp),%r14
    244b:	0f 83 a5 f6 ff ff    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2451:	41 80 3e 00          	cmpb   $0x0,(%r14)
    2455:	0f 85 b4 00 00 00    	jne    250f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x250f>
    245b:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
    2462:	48 c1 e0 05          	shl    $0x5,%rax
    2466:	48 03 43 38          	add    0x38(%rbx),%rax
    246a:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
    2471:	48 85 c9             	test   %rcx,%rcx
    2474:	48 0f 44 c1          	cmove  %rcx,%rax
    2478:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
    247f:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
    2486:	0f b6 83 09 01 00 00 	movzbl 0x109(%rbx),%eax
    248d:	83 f0 01             	xor    $0x1,%eax
    2490:	8d 04 45 05 00 00 00 	lea    0x5(,%rax,2),%eax
    2497:	89 43 78             	mov    %eax,0x78(%rbx)
    249a:	48 8d 41 01          	lea    0x1(%rcx),%rax
    249e:	48 89 83 e0 00 00 00 	mov    %rax,0xe0(%rbx)
    24a5:	48 8d 3c 89          	lea    (%rcx,%rcx,4),%rdi
    24a9:	48 c1 e7 04          	shl    $0x4,%rdi
    24ad:	48 03 7b 30          	add    0x30(%rbx),%rdi
    24b1:	b9 0a 00 00 00       	mov    $0xa,%ecx
    24b6:	48 8d 73 70          	lea    0x70(%rbx),%rsi
    24ba:	f3 48 a5             	rep movsq (%rsi),(%rdi)
    24bd:	48 8b 83 98 00 00 00 	mov    0x98(%rbx),%rax
    24c4:	48 01 83 90 00 00 00 	add    %rax,0x90(%rbx)
    24cb:	31 c0                	xor    %eax,%eax
    24cd:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
    24d4:	48 89 83 98 00 00 00 	mov    %rax,0x98(%rbx)
    24db:	66 c7 83 08 01 00 00 	movw   $0x100,0x108(%rbx)
    24e2:	00 01
    24e4:	49 ff c6             	inc    %r14
    24e7:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 24ee <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x24ee>
			24ea: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    24ee:	48 89 4b 60          	mov    %rcx,0x60(%rbx)
    24f2:	48 89 43 68          	mov    %rax,0x68(%rbx)
    24f6:	4c 3b 34 24          	cmp    (%rsp),%r14
    24fa:	0f 83 f6 f5 ff ff    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2500:	48 89 df             	mov    %rbx,%rdi
    2503:	4c 89 f6             	mov    %r14,%rsi
    2506:	48 8b 14 24          	mov    (%rsp),%rdx
    250a:	e9 21 f3 ff ff       	jmp    1830 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1830>
    250f:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    2516:	00 00 00
    2519:	e9 13 07 00 00       	jmp    2c31 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c31>
    251e:	be 43 4f 4d 4d       	mov    $0x4d4d4f43,%esi
    2523:	33 32                	xor    (%rdx),%esi
    2525:	0f b7 52 04          	movzwl 0x4(%rdx),%edx
    2529:	81 f2 49 54 00 00    	xor    $0x5449,%edx
    252f:	31 ff                	xor    %edi,%edi
    2531:	09 f2                	or     %esi,%edx
    2533:	40 0f 94 c7          	sete   %dil
    2537:	48 8d 34 bf          	lea    (%rdi,%rdi,4),%rsi
    253b:	48 ff ce             	dec    %rsi
    253e:	e9 91 e1 ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    2543:	48 ff c1             	inc    %rcx
    2546:	48 ff cf             	dec    %rdi
    2549:	48 39 c8             	cmp    %rcx,%rax
    254c:	0f 85 42 e6 ff ff    	jne    b94 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb94>
    2552:	4d 89 de             	mov    %r11,%r14
    2555:	e9 9c f5 ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    255a:	48 89 c6             	mov    %rax,%rsi
    255d:	31 ff                	xor    %edi,%edi
    255f:	31 d2                	xor    %edx,%edx
    2561:	e9 46 ef ff ff       	jmp    14ac <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14ac>
    2566:	48 be 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rsi
    256d:	4e 4e 45
    2570:	48 33 32             	xor    (%rdx),%rsi
    2573:	0f b7 52 08          	movzwl 0x8(%rdx),%edx
    2577:	48 81 f2 43 54 00 00 	xor    $0x5443,%rdx
    257e:	31 ff                	xor    %edi,%edi
    2580:	48 09 f2             	or     %rsi,%rdx
    2583:	40 0f 94 c7          	sete   %dil
    2587:	48 8d 34 fd ff ff ff 	lea    -0x1(,%rdi,8),%rsi
    258e:	ff
    258f:	e9 40 e1 ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    2594:	48 bf 55 4e 53 55 42 	movabs $0x5243534255534e55,%rdi
    259b:	53 43 52
    259e:	48 33 3a             	xor    (%rdx),%rdi
    25a1:	49 b8 55 42 53 43 52 	movabs $0x4542495243534255,%r8
    25a8:	49 42 45
    25ab:	4c 33 42 03          	xor    0x3(%rdx),%r8
    25af:	31 f6                	xor    %esi,%esi
    25b1:	49 09 f8             	or     %rdi,%r8
    25b4:	40 0f 95 c6          	setne  %sil
    25b8:	48 f7 de             	neg    %rsi
    25bb:	48 83 ce 0f          	or     $0xf,%rsi
    25bf:	e9 10 e1 ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    25c4:	4d 85 f6             	test   %r14,%r14
    25c7:	48 89 d0             	mov    %rdx,%rax
    25ca:	49 0f 45 c6          	cmovne %r14,%rax
    25ce:	4c 29 e8             	sub    %r13,%rax
    25d1:	48 8b 4b 20          	mov    0x20(%rbx),%rcx
    25d5:	48 2b 8b 90 00 00 00 	sub    0x90(%rbx),%rcx
    25dc:	48 39 c8             	cmp    %rcx,%rax
    25df:	0f 87 a5 00 00 00    	ja     268a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x268a>
    25e5:	4c 89 ab b8 00 00 00 	mov    %r13,0xb8(%rbx)
    25ec:	48 89 83 98 00 00 00 	mov    %rax,0x98(%rbx)
    25f3:	4d 85 f6             	test   %r14,%r14
    25f6:	0f 84 e2 06 00 00    	je     2cde <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cde>
    25fc:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2603 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2603>
			25ff: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    2603:	48 89 43 60          	mov    %rax,0x60(%rbx)
    2607:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
    260e:	00
    260f:	4c 3b 34 24          	cmp    (%rsp),%r14
    2613:	0f 83 dd f4 ff ff    	jae    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2619:	41 80 3e 00          	cmpb   $0x0,(%r14)
    261d:	75 41                	jne    2660 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2660>
    261f:	48 8b 83 f0 00 00 00 	mov    0xf0(%rbx),%rax
    2626:	48 c1 e0 05          	shl    $0x5,%rax
    262a:	48 03 43 38          	add    0x38(%rbx),%rax
    262e:	48 8b 8b 80 00 00 00 	mov    0x80(%rbx),%rcx
    2635:	48 85 c9             	test   %rcx,%rcx
    2638:	48 0f 44 c1          	cmove  %rcx,%rax
    263c:	48 8b 8b e0 00 00 00 	mov    0xe0(%rbx),%rcx
    2643:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
    264a:	0f b6 83 09 01 00 00 	movzbl 0x109(%rbx),%eax
    2651:	83 f0 01             	xor    $0x1,%eax
    2654:	8d 04 45 04 00 00 00 	lea    0x4(,%rax,2),%eax
    265b:	e9 37 fe ff ff       	jmp    2497 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2497>
    2660:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    2667:	00 00 00
    266a:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    2671:	48 8b 83 20 01 00 00 	mov    0x120(%rbx),%rax
    2678:	4c 89 f1             	mov    %r14,%rcx
    267b:	48 29 c1             	sub    %rax,%rcx
    267e:	48 89 8b 18 01 00 00 	mov    %rcx,0x118(%rbx)
    2685:	e9 bf 05 00 00       	jmp    2c49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c49>
    268a:	4a 8d 04 29          	lea    (%rcx,%r13,1),%rax
    268e:	48 ba 03 00 00 00 0e 	movabs $0xe00000003,%rdx
    2695:	00 00 00
    2698:	48 89 93 10 01 00 00 	mov    %rdx,0x110(%rbx)
    269f:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    26a6:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    26ad:	4e 8d 34 29          	lea    (%rcx,%r13,1),%r14
    26b1:	49 ff c6             	inc    %r14
    26b4:	e9 93 05 00 00       	jmp    2c4c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c4c>
    26b9:	48 bf 53 55 42 53 43 	movabs $0x4249524353425553,%rdi
    26c0:	52 49 42
    26c3:	48 33 3a             	xor    (%rdx),%rdi
    26c6:	0f b6 52 08          	movzbl 0x8(%rdx),%edx
    26ca:	48 83 f2 45          	xor    $0x45,%rdx
    26ce:	31 f6                	xor    %esi,%esi
    26d0:	48 09 fa             	or     %rdi,%rdx
    26d3:	40 0f 95 c6          	setne  %sil
    26d7:	48 f7 de             	neg    %rsi
    26da:	48 83 ce 0e          	or     $0xe,%rsi
    26de:	e9 f1 df ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    26e3:	be 0a 00 00 00       	mov    $0xa,%esi
    26e8:	e9 e7 df ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    26ed:	b2 01                	mov    $0x1,%dl
    26ef:	e9 fc f5 ff ff       	jmp    1cf0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cf0>
    26f4:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    26f9:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    26fc:	80 f9 f6             	cmp    $0xf6,%cl
    26ff:	0f 82 22 05 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    2705:	41 0f b6 4d 01       	movzbl 0x1(%r13),%ecx
    270a:	8d 71 c6             	lea    -0x3a(%rcx),%esi
    270d:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    2714:	00 00 80
    2717:	40 80 fe f6          	cmp    $0xf6,%sil
    271b:	72 2d                	jb     274a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x274a>
    271d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    2721:	49 0f be 55 02       	movsbq 0x2(%r13),%rdx
    2726:	8d 72 c6             	lea    -0x3a(%rdx),%esi
    2729:	48 83 c2 d0          	add    $0xffffffffffffffd0,%rdx
    272d:	40 80 fe f6          	cmp    $0xf6,%sil
    2731:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    2738:	00 00 80
    273b:	48 0f 42 d6          	cmovb  %rsi,%rdx
    273f:	48 8d 14 4a          	lea    (%rdx,%rcx,2),%rdx
    2743:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
    274a:	48 6b c0 64          	imul   $0x64,%rax,%rax
    274e:	48 05 40 ed ff ff    	add    $0xffffffffffffed40,%rax
    2754:	48 01 d0             	add    %rdx,%rax
    2757:	e9 90 04 00 00       	jmp    2bec <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2bec>
    275c:	4c 89 ef             	mov    %r13,%rdi
    275f:	e8 00 00 00 00       	call   2764 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2764>
			2760: R_X86_64_PLT32	.text.unlikely.+0x125c
    2764:	e9 64 03 00 00       	jmp    2acd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2acd>
    2769:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    276e:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    2771:	80 f9 f6             	cmp    $0xf6,%cl
    2774:	0f 82 ad 04 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    277a:	4c 69 f8 10 27 00 00 	imul   $0x2710,%rax,%r15
    2781:	49 8d 7d 01          	lea    0x1(%r13),%rdi
    2785:	e8 00 00 00 00       	call   278a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x278a>
			2786: R_X86_64_PLT32	.text.unlikely.+0x125c
    278a:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2793 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2793>
    2791:	00 00
			278f: R_X86_64_PC32	.LCPI47_3-0x4
    2793:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 279b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x279b>
    279a:	00
			2797: R_X86_64_PC32	.LCPI47_2-0x4
    279b:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 27a3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27a3>
    27a2:	00
			279f: R_X86_64_PC32	.LCPI47_1-0x4
    27a3:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 27ab <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27ab>
    27aa:	00
			27a7: R_X86_64_PC32	.LCPI47_0-0x4
    27ab:	0f 57 e4             	xorps  %xmm4,%xmm4
    27ae:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    27b5:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    27bc:	4c 8b 1c 24          	mov    (%rsp),%r11
    27c0:	4c 01 f8             	add    %r15,%rax
    27c3:	48 05 00 ad f8 ff    	add    $0xfffffffffff8ad00,%rax
    27c9:	e9 15 e0 ff ff       	jmp    7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e3>
    27ce:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    27d3:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    27d7:	3c f6                	cmp    $0xf6,%al
    27d9:	0f 82 48 04 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    27df:	41 0f b6 45 01       	movzbl 0x1(%r13),%eax
    27e4:	8d 50 c6             	lea    -0x3a(%rax),%edx
    27e7:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    27ee:	00 00 80
    27f1:	80 fa f6             	cmp    $0xf6,%dl
    27f4:	72 1b                	jb     2811 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2811>
    27f6:	4c 69 e0 10 27 00 00 	imul   $0x2710,%rax,%r12
    27fd:	49 8d 7d 02          	lea    0x2(%r13),%rdi
    2801:	e8 00 00 00 00       	call   2806 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2806>
			2802: R_X86_64_PLT32	.text.unlikely.+0x125c
    2806:	49 8d 0c 04          	lea    (%r12,%rax,1),%rcx
    280a:	48 81 c1 00 ad f8 ff 	add    $0xfffffffffff8ad00,%rcx
    2811:	49 69 c7 a0 86 01 00 	imul   $0x186a0,%r15,%rax
    2818:	48 05 00 c2 b6 ff    	add    $0xffffffffffb6c200,%rax
    281e:	e9 c6 03 00 00       	jmp    2be9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2be9>
    2823:	4c 89 ef             	mov    %r13,%rdi
    2826:	e8 00 00 00 00       	call   282b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x282b>
			2827: R_X86_64_PLT32	.text.unlikely.+0x117c
    282b:	e9 9d 02 00 00       	jmp    2acd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2acd>
    2830:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    2835:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    2838:	80 f9 f6             	cmp    $0xf6,%cl
    283b:	0f 82 e6 03 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    2841:	4c 69 f8 80 96 98 00 	imul   $0x989680,%rax,%r15
    2848:	49 8d 7d 01          	lea    0x1(%r13),%rdi
    284c:	e8 00 00 00 00       	call   2851 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2851>
			284d: R_X86_64_PLT32	.text.unlikely.+0x117c
    2851:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 285a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x285a>
    2858:	00 00
			2856: R_X86_64_PC32	.LCPI47_3-0x4
    285a:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2862 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2862>
    2861:	00
			285e: R_X86_64_PC32	.LCPI47_2-0x4
    2862:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 286a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x286a>
    2869:	00
			2866: R_X86_64_PC32	.LCPI47_1-0x4
    286a:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2872 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2872>
    2871:	00
			286e: R_X86_64_PC32	.LCPI47_0-0x4
    2872:	0f 57 e4             	xorps  %xmm4,%xmm4
    2875:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    287c:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2883:	4c 8b 1c 24          	mov    (%rsp),%r11
    2887:	4c 01 f8             	add    %r15,%rax
    288a:	48 05 00 c8 63 e3    	add    $0xffffffffe363c800,%rax
    2890:	e9 4e df ff ff       	jmp    7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e3>
    2895:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    289a:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    289e:	3c f6                	cmp    $0xf6,%al
    28a0:	0f 82 81 03 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    28a6:	41 0f b6 45 01       	movzbl 0x1(%r13),%eax
    28ab:	8d 50 c6             	lea    -0x3a(%rax),%edx
    28ae:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    28b5:	00 00 80
    28b8:	80 fa f6             	cmp    $0xf6,%dl
    28bb:	72 1b                	jb     28d8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28d8>
    28bd:	4c 69 e0 80 96 98 00 	imul   $0x989680,%rax,%r12
    28c4:	49 8d 7d 02          	lea    0x2(%r13),%rdi
    28c8:	e8 00 00 00 00       	call   28cd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28cd>
			28c9: R_X86_64_PLT32	.text.unlikely.+0x117c
    28cd:	49 8d 0c 04          	lea    (%r12,%rax,1),%rcx
    28d1:	48 81 c1 00 c8 63 e3 	add    $0xffffffffe363c800,%rcx
    28d8:	49 69 d7 00 e1 f5 05 	imul   $0x5f5e100,%r15,%rdx
    28df:	48 b8 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rax
    28e6:	ff ff ff
    28e9:	48 01 d0             	add    %rdx,%rax
    28ec:	e9 f8 02 00 00       	jmp    2be9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2be9>
    28f1:	4c 89 ef             	mov    %r13,%rdi
    28f4:	e8 00 00 00 00       	call   28f9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28f9>
			28f5: R_X86_64_PLT32	.text.unlikely.+0x10fc
    28f9:	e9 cf 01 00 00       	jmp    2acd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2acd>
    28fe:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    2903:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2907:	3c f6                	cmp    $0xf6,%al
    2909:	0f 82 18 03 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    290f:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
    2916:	00 00 00
    2919:	4c 0f af f8          	imul   %rax,%r15
    291d:	49 8d 7d 01          	lea    0x1(%r13),%rdi
    2921:	e8 00 00 00 00       	call   2926 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2926>
			2922: R_X86_64_PLT32	.text.unlikely.+0x10fc
    2926:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 292f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x292f>
    292d:	00 00
			292b: R_X86_64_PC32	.LCPI47_3-0x4
    292f:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2937 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2937>
    2936:	00
			2933: R_X86_64_PC32	.LCPI47_2-0x4
    2937:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 293f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x293f>
    293e:	00
			293b: R_X86_64_PC32	.LCPI47_1-0x4
    293f:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2947 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2947>
    2946:	00
			2943: R_X86_64_PC32	.LCPI47_0-0x4
    2947:	0f 57 e4             	xorps  %xmm4,%xmm4
    294a:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2951:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2958:	4c 8b 1c 24          	mov    (%rsp),%r11
    295c:	48 89 c1             	mov    %rax,%rcx
    295f:	48 b8 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rax
    2966:	ff ff ff
    2969:	e9 05 02 00 00       	jmp    2b73 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b73>
    296e:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    2973:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2977:	3c f6                	cmp    $0xf6,%al
    2979:	0f 82 a8 02 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    297f:	45 0f b6 65 01       	movzbl 0x1(%r13),%r12d
    2984:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
    2989:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    2990:	00 00 80
    2993:	3c f6                	cmp    $0xf6,%al
    2995:	72 27                	jb     29be <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29be>
    2997:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
    299e:	00 00 00
    29a1:	4c 0f af e0          	imul   %rax,%r12
    29a5:	49 8d 7d 02          	lea    0x2(%r13),%rdi
    29a9:	e8 00 00 00 00       	call   29ae <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29ae>
			29aa: R_X86_64_PLT32	.text.unlikely.+0x10fc
    29ae:	48 b9 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rcx
    29b5:	ff ff ff
    29b8:	48 01 c1             	add    %rax,%rcx
    29bb:	4c 01 e1             	add    %r12,%rcx
    29be:	48 b8 00 e8 76 48 17 	movabs $0x174876e800,%rax
    29c5:	00 00 00
    29c8:	4c 0f af f8          	imul   %rax,%r15
    29cc:	48 b8 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%rax
    29d3:	fb ff ff
    29d6:	e9 0b 02 00 00       	jmp    2be6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2be6>
    29db:	4c 89 ef             	mov    %r13,%rdi
    29de:	e8 00 00 00 00       	call   29e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29e3>
			29df: R_X86_64_PLT32	.text+0xeec
    29e3:	e9 e5 00 00 00       	jmp    2acd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2acd>
    29e8:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    29ed:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    29f1:	3c f6                	cmp    $0xf6,%al
    29f3:	0f 82 2e 02 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    29f9:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    2a00:	09 00 00
    2a03:	4c 0f af f8          	imul   %rax,%r15
    2a07:	49 8d 7d 01          	lea    0x1(%r13),%rdi
    2a0b:	e8 00 00 00 00       	call   2a10 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a10>
			2a0c: R_X86_64_PLT32	.text+0xeec
    2a10:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2a19 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a19>
    2a17:	00 00
			2a15: R_X86_64_PC32	.LCPI47_3-0x4
    2a19:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2a21 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a21>
    2a20:	00
			2a1d: R_X86_64_PC32	.LCPI47_2-0x4
    2a21:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2a29 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a29>
    2a28:	00
			2a25: R_X86_64_PC32	.LCPI47_1-0x4
    2a29:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2a31 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a31>
    2a30:	00
			2a2d: R_X86_64_PC32	.LCPI47_0-0x4
    2a31:	0f 57 e4             	xorps  %xmm4,%xmm4
    2a34:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2a3b:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2a42:	4c 8b 1c 24          	mov    (%rsp),%r11
    2a46:	48 89 c1             	mov    %rax,%rcx
    2a49:	48 b8 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rax
    2a50:	4b fe ff
    2a53:	e9 1b 01 00 00       	jmp    2b73 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b73>
    2a58:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    2a5d:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2a61:	3c f6                	cmp    $0xf6,%al
    2a63:	0f 82 be 01 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    2a69:	45 0f b6 65 01       	movzbl 0x1(%r13),%r12d
    2a6e:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
    2a73:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    2a7a:	00 00 80
    2a7d:	3c f6                	cmp    $0xf6,%al
    2a7f:	72 27                	jb     2aa8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2aa8>
    2a81:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    2a88:	09 00 00
    2a8b:	4c 0f af e0          	imul   %rax,%r12
    2a8f:	49 8d 7d 02          	lea    0x2(%r13),%rdi
    2a93:	e8 00 00 00 00       	call   2a98 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a98>
			2a94: R_X86_64_PLT32	.text+0xeec
    2a98:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
    2a9f:	4b fe ff
    2aa2:	48 01 c1             	add    %rax,%rcx
    2aa5:	4c 01 e1             	add    %r12,%rcx
    2aa8:	48 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rax
    2aaf:	5a 00 00
    2ab2:	4c 0f af f8          	imul   %rax,%r15
    2ab6:	48 b8 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%rax
    2abd:	f2 ee ff
    2ac0:	e9 21 01 00 00       	jmp    2be6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2be6>
    2ac5:	4c 89 ef             	mov    %r13,%rdi
    2ac8:	e8 00 00 00 00       	call   2acd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2acd>
			2ac9: R_X86_64_PLT32	.text.unlikely.+0x104c
    2acd:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2ad6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ad6>
    2ad4:	00 00
			2ad2: R_X86_64_PC32	.LCPI47_3-0x4
    2ad6:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2ade <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ade>
    2add:	00
			2ada: R_X86_64_PC32	.LCPI47_2-0x4
    2ade:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2ae6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ae6>
    2ae5:	00
			2ae2: R_X86_64_PC32	.LCPI47_1-0x4
    2ae6:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2aee <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2aee>
    2aed:	00
			2aea: R_X86_64_PC32	.LCPI47_0-0x4
    2aee:	0f 57 e4             	xorps  %xmm4,%xmm4
    2af1:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2af8:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2aff:	4c 8b 1c 24          	mov    (%rsp),%r11
    2b03:	e9 db dc ff ff       	jmp    7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e3>
    2b08:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    2b0d:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2b11:	3c f6                	cmp    $0xf6,%al
    2b13:	0f 82 0e 01 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    2b19:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
    2b20:	86 23 00
    2b23:	4c 0f af f8          	imul   %rax,%r15
    2b27:	49 8d 7d 01          	lea    0x1(%r13),%rdi
    2b2b:	e8 00 00 00 00       	call   2b30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b30>
			2b2c: R_X86_64_PLT32	.text.unlikely.+0x104c
    2b30:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2b39 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b39>
    2b37:	00 00
			2b35: R_X86_64_PC32	.LCPI47_3-0x4
    2b39:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2b41 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b41>
    2b40:	00
			2b3d: R_X86_64_PC32	.LCPI47_2-0x4
    2b41:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2b49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b49>
    2b48:	00
			2b45: R_X86_64_PC32	.LCPI47_1-0x4
    2b49:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2b51 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b51>
    2b50:	00
			2b4d: R_X86_64_PC32	.LCPI47_0-0x4
    2b51:	0f 57 e4             	xorps  %xmm4,%xmm4
    2b54:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2b5b:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2b62:	4c 8b 1c 24          	mov    (%rsp),%r11
    2b66:	48 89 c1             	mov    %rax,%rcx
    2b69:	48 b8 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rax
    2b70:	b2 56 f9
    2b73:	48 01 c8             	add    %rcx,%rax
    2b76:	4c 01 f8             	add    %r15,%rax
    2b79:	e9 65 dc ff ff       	jmp    7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e3>
    2b7e:	45 0f b6 7d 00       	movzbl 0x0(%r13),%r15d
    2b83:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2b87:	3c f6                	cmp    $0xf6,%al
    2b89:	0f 82 98 00 00 00    	jb     2c27 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c27>
    2b8f:	45 0f b6 65 01       	movzbl 0x1(%r13),%r12d
    2b94:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
    2b99:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    2ba0:	00 00 80
    2ba3:	3c f6                	cmp    $0xf6,%al
    2ba5:	72 27                	jb     2bce <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2bce>
    2ba7:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
    2bae:	86 23 00
    2bb1:	4c 0f af e0          	imul   %rax,%r12
    2bb5:	49 8d 7d 02          	lea    0x2(%r13),%rdi
    2bb9:	e8 00 00 00 00       	call   2bbe <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2bbe>
			2bba: R_X86_64_PLT32	.text.unlikely.+0x104c
    2bbe:	48 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rcx
    2bc5:	b2 56 f9
    2bc8:	48 01 c1             	add    %rax,%rcx
    2bcb:	4c 01 e1             	add    %r12,%rcx
    2bce:	48 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rax
    2bd5:	45 63 01
    2bd8:	4c 0f af f8          	imul   %rax,%r15
    2bdc:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
    2be3:	f9 62 bd
    2be6:	4c 01 f8             	add    %r15,%rax
    2be9:	48 01 c8             	add    %rcx,%rax
    2bec:	4c 8b 1c 24          	mov    (%rsp),%r11
    2bf0:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2bf7:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2bfe:	0f 57 e4             	xorps  %xmm4,%xmm4
    2c01:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2c09 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c09>
    2c08:	00
			2c05: R_X86_64_PC32	.LCPI47_0-0x4
    2c09:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2c11 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c11>
    2c10:	00
			2c0d: R_X86_64_PC32	.LCPI47_1-0x4
    2c11:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2c19 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c19>
    2c18:	00
			2c15: R_X86_64_PC32	.LCPI47_2-0x4
    2c19:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2c22 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c22>
    2c20:	00 00
			2c1e: R_X86_64_PC32	.LCPI47_3-0x4
    2c22:	e9 bc db ff ff       	jmp    7e3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7e3>
    2c27:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
    2c2e:	00 00 00
    2c31:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
    2c38:	4c 89 f0             	mov    %r14,%rax
    2c3b:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
    2c42:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
    2c49:	49 ff c6             	inc    %r14
    2c4c:	4c 89 b3 28 01 00 00 	mov    %r14,0x128(%rbx)
    2c53:	e9 9e ee ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2c58:	83 ff 52             	cmp    $0x52,%edi
    2c5b:	0f 85 73 da ff ff    	jne    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    2c61:	bf 52 45 43 45       	mov    $0x45434552,%edi
    2c66:	33 3a                	xor    (%rdx),%edi
    2c68:	41 b8 45 49 50 54    	mov    $0x54504945,%r8d
    2c6e:	44 33 42 03          	xor    0x3(%rdx),%r8d
    2c72:	31 f6                	xor    %esi,%esi
    2c74:	41 09 f8             	or     %edi,%r8d
    2c77:	40 0f 95 c6          	setne  %sil
    2c7b:	48 f7 de             	neg    %rsi
    2c7e:	48 83 ce 0b          	or     $0xb,%rsi
    2c82:	e9 4d da ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    2c87:	83 ff 52             	cmp    $0x52,%edi
    2c8a:	4c 8b 1c 24          	mov    (%rsp),%r11
    2c8e:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2c95:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2c9c:	0f 57 e4             	xorps  %xmm4,%xmm4
    2c9f:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2ca7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ca7>
    2ca6:	00
			2ca3: R_X86_64_PC32	.LCPI47_0-0x4
    2ca7:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2caf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2caf>
    2cae:	00
			2cab: R_X86_64_PC32	.LCPI47_1-0x4
    2caf:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2cb7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cb7>
    2cb6:	00
			2cb3: R_X86_64_PC32	.LCPI47_2-0x4
    2cb7:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2cc0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2cc0>
    2cbe:	00 00
			2cbc: R_X86_64_PC32	.LCPI47_3-0x4
    2cc0:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    2cc7:	7f 7f 7f
    2cca:	0f 85 04 da ff ff    	jne    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    2cd0:	eb 8f                	jmp    2c61 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2c61>
    2cd2:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    2cd9:	e9 c2 f1 ff ff       	jmp    1ea0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ea0>
    2cde:	4c 8b 34 24          	mov    (%rsp),%r14
    2ce2:	e9 0f ee ff ff       	jmp    1af6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1af6>
    2ce7:	83 ff 45             	cmp    $0x45,%edi
    2cea:	75 22                	jne    2d0e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d0e>
    2cec:	be 45 52 52 4f       	mov    $0x4f525245,%esi
    2cf1:	33 32                	xor    (%rdx),%esi
    2cf3:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    2cf7:	83 f2 52             	xor    $0x52,%edx
    2cfa:	31 ff                	xor    %edi,%edi
    2cfc:	09 f2                	or     %esi,%edx
    2cfe:	40 0f 94 c7          	sete   %dil
    2d02:	48 8d 34 ff          	lea    (%rdi,%rdi,8),%rsi
    2d06:	48 ff ce             	dec    %rsi
    2d09:	e9 92 f1 ff ff       	jmp    1ea0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ea0>
    2d0e:	83 ff 42             	cmp    $0x42,%edi
    2d11:	75 23                	jne    2d36 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d36>
    2d13:	be 42 45 47 49       	mov    $0x49474542,%esi
    2d18:	33 32                	xor    (%rdx),%esi
    2d1a:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    2d1e:	83 f2 4e             	xor    $0x4e,%edx
    2d21:	31 ff                	xor    %edi,%edi
    2d23:	09 f2                	or     %esi,%edx
    2d25:	40 0f 94 c7          	sete   %dil
    2d29:	48 8d 34 bd ff ff ff 	lea    -0x1(,%rdi,4),%rsi
    2d30:	ff
    2d31:	e9 6a f1 ff ff       	jmp    1ea0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ea0>
    2d36:	83 ff 41             	cmp    $0x41,%edi
    2d39:	4c 8b 1c 24          	mov    (%rsp),%r11
    2d3d:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2d44:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2d4b:	0f 57 e4             	xorps  %xmm4,%xmm4
    2d4e:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2d56 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d56>
    2d55:	00
			2d52: R_X86_64_PC32	.LCPI47_0-0x4
    2d56:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2d5e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d5e>
    2d5d:	00
			2d5a: R_X86_64_PC32	.LCPI47_1-0x4
    2d5e:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2d66 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d66>
    2d65:	00
			2d62: R_X86_64_PC32	.LCPI47_2-0x4
    2d66:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2d6f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2d6f>
    2d6d:	00 00
			2d6b: R_X86_64_PC32	.LCPI47_3-0x4
    2d6f:	48 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rbp
    2d76:	7f 7f 7f
    2d79:	0f 85 55 d9 ff ff    	jne    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    2d7f:	be 41 42 4f 52       	mov    $0x524f4241,%esi
    2d84:	33 32                	xor    (%rdx),%esi
    2d86:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    2d8a:	83 f2 54             	xor    $0x54,%edx
    2d8d:	31 ff                	xor    %edi,%edi
    2d8f:	09 f2                	or     %esi,%edx
    2d91:	40 0f 94 c7          	sete   %dil
    2d95:	48 8d 34 7d ff ff ff 	lea    -0x1(,%rdi,2),%rsi
    2d9c:	ff
    2d9d:	e9 32 d9 ff ff       	jmp    6d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6d4>
    2da2:	4d 8b 0e             	mov    (%r14),%r9
    2da5:	4d 89 c8             	mov    %r9,%r8
    2da8:	49 21 e8             	and    %rbp,%r8
    2dab:	49 8d 3c 28          	lea    (%r8,%rbp,1),%rdi
    2daf:	4c 09 cf             	or     %r9,%rdi
    2db2:	48 f7 d7             	not    %rdi
    2db5:	4d 89 c2             	mov    %r8,%r10
    2db8:	49 bf 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r15
    2dbf:	0a 0a 0a
    2dc2:	4d 31 fa             	xor    %r15,%r10
    2dc5:	49 01 ea             	add    %rbp,%r10
    2dc8:	4d 09 ca             	or     %r9,%r10
    2dcb:	49 f7 d2             	not    %r10
    2dce:	49 09 fa             	or     %rdi,%r10
    2dd1:	4c 89 c7             	mov    %r8,%rdi
    2dd4:	49 bf 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r15
    2ddb:	0d 0d 0d
    2dde:	4c 31 ff             	xor    %r15,%rdi
    2de1:	48 01 ef             	add    %rbp,%rdi
    2de4:	4c 09 cf             	or     %r9,%rdi
    2de7:	48 f7 d7             	not    %rdi
    2dea:	4c 09 d7             	or     %r10,%rdi
    2ded:	49 ba 80 80 80 80 80 	movabs $0x8080808080808080,%r10
    2df4:	80 80 80
    2df7:	4c 21 d7             	and    %r10,%rdi
    2dfa:	84 d2                	test   %dl,%dl
    2dfc:	75 33                	jne    2e31 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e31>
    2dfe:	4d 89 c2             	mov    %r8,%r10
    2e01:	49 bf 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%r15
    2e08:	5c 5c 5c
    2e0b:	4d 31 fa             	xor    %r15,%r10
    2e0e:	49 01 ea             	add    %rbp,%r10
    2e11:	4d 09 ca             	or     %r9,%r10
    2e14:	49 f7 d2             	not    %r10
    2e17:	49 bf 80 80 80 80 80 	movabs $0x8080808080808080,%r15
    2e1e:	80 80 80
    2e21:	4d 21 fa             	and    %r15,%r10
    2e24:	4c 09 d7             	or     %r10,%rdi
    2e27:	49 ba 80 80 80 80 80 	movabs $0x8080808080808080,%r10
    2e2e:	80 80 80
    2e31:	49 bf 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%r15
    2e38:	3a 3a 3a
    2e3b:	4d 31 f8             	xor    %r15,%r8
    2e3e:	49 01 e8             	add    %rbp,%r8
    2e41:	4d 09 c8             	or     %r9,%r8
    2e44:	4d 21 d0             	and    %r10,%r8
    2e47:	4d 89 c1             	mov    %r8,%r9
    2e4a:	4d 31 d1             	xor    %r10,%r9
    2e4d:	4d 39 d0             	cmp    %r10,%r8
    2e50:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2e57:	74 34                	je     2e8d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e8d>
    2e59:	a8 01                	test   $0x1,%al
    2e5b:	74 30                	je     2e8d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e8d>
    2e5d:	f3 4d 0f bc d1       	tzcnt  %r9,%r10
    2e62:	48 85 ff             	test   %rdi,%rdi
    2e65:	75 64                	jne    2ecb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ecb>
    2e67:	41 c1 ea 03          	shr    $0x3,%r10d
    2e6b:	4d 01 f2             	add    %r14,%r10
    2e6e:	49 f7 d0             	not    %r8
    2e71:	48 b8 80 80 80 80 80 	movabs $0x8080808080808080,%rax
    2e78:	80 80 80
    2e7b:	49 01 c0             	add    %rax,%r8
    2e7e:	4d 21 c1             	and    %r8,%r9
    2e81:	31 c0                	xor    %eax,%eax
    2e83:	4c 89 d1             	mov    %r10,%rcx
    2e86:	4c 8d 93 d0 00 00 00 	lea    0xd0(%rbx),%r10
    2e8d:	84 d2                	test   %dl,%dl
    2e8f:	75 48                	jne    2ed9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ed9>
    2e91:	49 09 f9             	or     %rdi,%r9
    2e94:	75 1e                	jne    2eb4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2eb4>
    2e96:	49 83 c6 08          	add    $0x8,%r14
    2e9a:	48 83 c6 f8          	add    $0xfffffffffffffff8,%rsi
    2e9e:	48 83 fe 07          	cmp    $0x7,%rsi
    2ea2:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2ea9:	0f 8e 14 e8 ff ff    	jle    16c3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16c3>
    2eaf:	e9 ee fe ff ff       	jmp    2da2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2da2>
    2eb4:	f3 49 0f bc c1       	tzcnt  %r9,%rax
    2eb9:	c1 e8 03             	shr    $0x3,%eax
    2ebc:	49 01 c6             	add    %rax,%r14
    2ebf:	4c 8d 8b c0 00 00 00 	lea    0xc0(%rbx),%r9
    2ec6:	e9 15 e8 ff ff       	jmp    16e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16e0>
    2ecb:	f3 48 0f bc c7       	tzcnt  %rdi,%rax
    2ed0:	41 39 c2             	cmp    %eax,%r10d
    2ed3:	72 92                	jb     2e67 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e67>
    2ed5:	b0 01                	mov    $0x1,%al
    2ed7:	eb ad                	jmp    2e86 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e86>
    2ed9:	45 31 c9             	xor    %r9d,%r9d
    2edc:	eb b3                	jmp    2e91 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e91>

0000000000000000 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	41 57                	push   %r15
   7:	41 56                	push   %r14
   9:	41 55                	push   %r13
   b:	41 54                	push   %r12
   d:	53                   	push   %rbx
   e:	48 83 ec 18          	sub    $0x18,%rsp
  12:	48 39 d6             	cmp    %rdx,%rsi
  15:	0f 83 aa 04 00 00    	jae    4c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c5>
  1b:	49 89 d6             	mov    %rdx,%r14
  1e:	48 89 fb             	mov    %rdi,%rbx
  21:	4c 8d af d0 00 00 00 	lea    0xd0(%rdi),%r13
  28:	0f b6 87 0a 01 00 00 	movzbl 0x10a(%rdi),%eax
  2f:	bf 81 00 44 00       	mov    $0x440081,%edi
  34:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 3b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b>
			37: R_X86_64_PC32	.rodata+0x23c
  3b:	45 31 db             	xor    %r11d,%r11d
  3e:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46>
  45:	00
			42: R_X86_64_PC32	.LCPI51_0-0x4
  46:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 4e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e>
  4d:	00
			4a: R_X86_64_PC32	.LCPI51_1-0x4
  4e:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 56 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x56>
  55:	00
			52: R_X86_64_PC32	.LCPI51_2-0x4
  56:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 5e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e>
  5d:	00
			5a: R_X86_64_PC32	.LCPI51_3-0x4
  5e:	45 0f 57 c0          	xorps  %xmm8,%xmm8
  62:	66 44 0f 6f 0d 00 00 	movdqa 0x0(%rip),%xmm9        # 6b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b>
  69:	00 00
			67: R_X86_64_PC32	.LCPI51_4-0x4
  6b:	3c 01                	cmp    $0x1,%al
  6d:	0f 84 03 03 00 00    	je     376 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x376>
  73:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
  7a:	00
  7b:	0f 94 c0             	sete   %al
  7e:	0f b6 93 0b 01 00 00 	movzbl 0x10b(%rbx),%edx
  85:	4c 89 f1             	mov    %r14,%rcx
  88:	48 29 f1             	sub    %rsi,%rcx
  8b:	48 83 f9 10          	cmp    $0x10,%rcx
  8f:	0f 8c c6 04 00 00    	jl     55b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x55b>
  95:	49 89 f7             	mov    %rsi,%r15
  98:	31 ed                	xor    %ebp,%ebp
  9a:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
  9f:	66 0f ef c9          	pxor   %xmm1,%xmm1
  a3:	66 0f ef d2          	pxor   %xmm2,%xmm2
  a7:	84 d2                	test   %dl,%dl
  a9:	75 08                	jne    b3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb3>
  ab:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  af:	66 0f 74 d7          	pcmpeqb %xmm7,%xmm2
  b3:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  b7:	66 0f 74 dc          	pcmpeqb %xmm4,%xmm3
  bb:	66 0f d7 fb          	pmovmskb %xmm3,%edi
  bf:	66 0f 74 c8          	pcmpeqb %xmm0,%xmm1
  c3:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  c7:	66 0f 74 dd          	pcmpeqb %xmm5,%xmm3
  cb:	66 0f 74 c6          	pcmpeqb %xmm6,%xmm0
  cf:	66 0f eb c3          	por    %xmm3,%xmm0
  d3:	66 0f eb c1          	por    %xmm1,%xmm0
  d7:	66 0f eb c2          	por    %xmm2,%xmm0
  db:	66 44 0f d7 c0       	pmovmskb %xmm0,%r8d
  e0:	85 ff                	test   %edi,%edi
  e2:	74 2c                	je     110 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
  e4:	a8 01                	test   $0x1,%al
  e6:	74 28                	je     110 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
  e8:	f3 0f bc c7          	tzcnt  %edi,%eax
  ec:	45 85 c0             	test   %r8d,%r8d
  ef:	74 0e                	je     ff <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xff>
  f1:	f3 45 0f bc c8       	tzcnt  %r8d,%r9d
  f6:	44 39 c8             	cmp    %r9d,%eax
  f9:	0f 83 34 03 00 00    	jae    433 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x433>
  ff:	89 c5                	mov    %eax,%ebp
 101:	4c 01 fd             	add    %r15,%rbp
 104:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
 108:	41 21 f9             	and    %edi,%r9d
 10b:	31 c0                	xor    %eax,%eax
 10d:	44 89 cf             	mov    %r9d,%edi
 110:	84 d2                	test   %dl,%dl
 112:	41 0f 45 fb          	cmovne %r11d,%edi
 116:	44 09 c7             	or     %r8d,%edi
 119:	75 25                	jne    140 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x140>
 11b:	49 83 c7 10          	add    $0x10,%r15
 11f:	48 83 c1 f0          	add    $0xfffffffffffffff0,%rcx
 123:	48 83 f9 0f          	cmp    $0xf,%rcx
 127:	0f 8f 6d ff ff ff    	jg     9a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9a>
 12d:	e9 2e 04 00 00       	jmp    560 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x560>
 132:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
 139:	1f 84 00 00 00 00 00
 140:	f3 0f bc c7          	tzcnt  %edi,%eax
 144:	49 01 c7             	add    %rax,%r15
 147:	48 85 ed             	test   %rbp,%rbp
 14a:	0f 84 1e 02 00 00    	je     36e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x36e>
 150:	49 89 ec             	mov    %rbp,%r12
 153:	49 29 f4             	sub    %rsi,%r12
 156:	0f 84 7b 03 00 00    	je     4d7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d7>
 15c:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 163:	48 89 c8             	mov    %rcx,%rax
 166:	4c 29 e0             	sub    %r12,%rax
 169:	0f 82 74 03 00 00    	jb     4e3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e3>
 16f:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 176:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 17d:	0f 84 d9 02 00 00    	je     45c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x45c>
 183:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 18a:	48 85 c0             	test   %rax,%rax
 18d:	75 06                	jne    195 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x195>
 18f:	49 89 75 00          	mov    %rsi,0x0(%r13)
 193:	31 c0                	xor    %eax,%eax
 195:	4c 01 e0             	add    %r12,%rax
 198:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 19f:	48 85 c0             	test   %rax,%rax
 1a2:	0f 84 f8 05 00 00    	je     7a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a0>
 1a8:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
 1af:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 1b6:	45 0f 11 45 00       	movups %xmm8,0x0(%r13)
 1bb:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
 1c2:	48 89 83 c8 00 00 00 	mov    %rax,0xc8(%rbx)
 1c9:	31 d2                	xor    %edx,%edx
 1cb:	48 83 f8 0e          	cmp    $0xe,%rax
 1cf:	75 0c                	jne    1dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1dd>
 1d1:	8b 43 78             	mov    0x78(%rbx),%eax
 1d4:	83 e0 01             	and    $0x1,%eax
 1d7:	0f 84 5f 01 00 00    	je     33c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x33c>
 1dd:	88 93 0c 01 00 00    	mov    %dl,0x10c(%rbx)
 1e3:	48 ff c5             	inc    %rbp
 1e6:	48 89 ee             	mov    %rbp,%rsi
 1e9:	49 39 f7             	cmp    %rsi,%r15
 1ec:	74 49                	je     237 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x237>
 1ee:	4d 89 fc             	mov    %r15,%r12
 1f1:	49 29 ec             	sub    %rbp,%r12
 1f4:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 1fb:	48 89 c8             	mov    %rcx,%rax
 1fe:	4c 29 e0             	sub    %r12,%rax
 201:	0f 82 dc 02 00 00    	jb     4e3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e3>
 207:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 20e:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 215:	0f 84 1f 02 00 00    	je     43a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x43a>
 21b:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 222:	48 85 c0             	test   %rax,%rax
 225:	75 06                	jne    22d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x22d>
 227:	49 89 75 00          	mov    %rsi,0x0(%r13)
 22b:	31 c0                	xor    %eax,%eax
 22d:	4c 01 e0             	add    %r12,%rax
 230:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 237:	4d 39 f7             	cmp    %r14,%r15
 23a:	0f 84 d3 00 00 00    	je     313 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x313>
 240:	41 0f b6 07          	movzbl (%r15),%eax
 244:	83 f8 5c             	cmp    $0x5c,%eax
 247:	0f 84 7a 01 00 00    	je     3c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3c7>
 24d:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
 254:	00
 255:	0f 84 8c 00 00 00    	je     2e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2e7>
 25b:	83 f8 0d             	cmp    $0xd,%eax
 25e:	75 7e                	jne    2de <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2de>
 260:	48 89 df             	mov    %rbx,%rdi
 263:	4c 89 fe             	mov    %r15,%rsi
 266:	e8 00 00 00 00       	call   26b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x26b>
			267: R_X86_64_PLT32	stomptalk::parser::finish_value(char const*)-0x4
 26b:	84 c0                	test   %al,%al
 26d:	0f 84 dc 02 00 00    	je     54f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54f>
 273:	49 8d 77 01          	lea    0x1(%r15),%rsi
 277:	41 80 3f 0a          	cmpb   $0xa,(%r15)
 27b:	0f 84 9a 00 00 00    	je     31b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x31b>
 281:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 288 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x288>
			284: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 288:	48 89 43 60          	mov    %rax,0x60(%rbx)
 28c:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 293:	00
 294:	4c 39 f6             	cmp    %r14,%rsi
 297:	0f 83 28 02 00 00    	jae    4c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c5>
 29d:	80 3e 0a             	cmpb   $0xa,(%rsi)
 2a0:	0f 85 6b 05 00 00    	jne    811 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x811>
 2a6:	49 83 c7 02          	add    $0x2,%r15
 2aa:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2b1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2b1>
			2ad: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 2b1:	48 89 43 60          	mov    %rax,0x60(%rbx)
 2b5:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 2bc:	00
 2bd:	4d 39 f7             	cmp    %r14,%r15
 2c0:	73 51                	jae    313 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x313>
 2c2:	48 89 df             	mov    %rbx,%rdi
 2c5:	4c 89 fe             	mov    %r15,%rsi
 2c8:	4c 89 f2             	mov    %r14,%rdx
 2cb:	48 83 c4 18          	add    $0x18,%rsp
 2cf:	5b                   	pop    %rbx
 2d0:	41 5c                	pop    %r12
 2d2:	41 5d                	pop    %r13
 2d4:	41 5e                	pop    %r14
 2d6:	41 5f                	pop    %r15
 2d8:	5d                   	pop    %rbp
 2d9:	e9 00 00 00 00       	jmp    2de <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2de>
			2da: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 2de:	83 f8 0a             	cmp    $0xa,%eax
 2e1:	0f 84 79 ff ff ff    	je     260 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x260>
 2e7:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 2ee:	00 00 00
 2f1:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 2f8:	4c 89 f8             	mov    %r15,%rax
 2fb:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 302:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 309:	49 ff c7             	inc    %r15
 30c:	4c 89 bb 28 01 00 00 	mov    %r15,0x128(%rbx)
 313:	4c 89 fe             	mov    %r15,%rsi
 316:	e9 aa 01 00 00       	jmp    4c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c5>
 31b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 322 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x322>
			31e: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 322:	48 89 43 60          	mov    %rax,0x60(%rbx)
 326:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 32d:	00
 32e:	4c 39 f6             	cmp    %r14,%rsi
 331:	0f 83 8e 01 00 00    	jae    4c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c5>
 337:	48 89 df             	mov    %rbx,%rdi
 33a:	eb 8c                	jmp    2c8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c8>
 33c:	49 83 fc 0e          	cmp    $0xe,%r12
 340:	0f 85 ba 01 00 00    	jne    500 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x500>
 346:	48 3b b3 20 01 00 00 	cmp    0x120(%rbx),%rsi
 34d:	0f 86 ad 01 00 00    	jbe    500 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x500>
 353:	f3 0f 6f 46 ff       	movdqu -0x1(%rsi),%xmm0
 358:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
 35d:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 361:	35 ff ff 00 00       	xor    $0xffff,%eax
 366:	0f 94 c2             	sete   %dl
 369:	e9 6f fe ff ff       	jmp    1dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1dd>
 36e:	48 89 f5             	mov    %rsi,%rbp
 371:	e9 73 fe ff ff       	jmp    1e9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1e9>
 376:	0f b6 06             	movzbl (%rsi),%eax
 379:	04 a4                	add    $0xa4,%al
 37b:	3c 17                	cmp    $0x17,%al
 37d:	0f 83 16 01 00 00    	jae    499 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x499>
 383:	0f b6 c0             	movzbl %al,%eax
 386:	0f a3 c7             	bt     %eax,%edi
 389:	0f 83 0a 01 00 00    	jae    499 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x499>
 38f:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 396:	48 85 c9             	test   %rcx,%rcx
 399:	0f 84 3c 04 00 00    	je     7db <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7db>
 39f:	42 0f b6 04 10       	movzbl (%rax,%r10,1),%eax
 3a4:	48 ff c9             	dec    %rcx
 3a7:	48 89 8b 00 01 00 00 	mov    %rcx,0x100(%rbx)
 3ae:	48 8b 4b 48          	mov    0x48(%rbx),%rcx
 3b2:	48 8d 51 01          	lea    0x1(%rcx),%rdx
 3b6:	48 89 53 48          	mov    %rdx,0x48(%rbx)
 3ba:	88 01                	mov    %al,(%rcx)
 3bc:	48 ff 83 d8 00 00 00 	incq   0xd8(%rbx)
 3c3:	31 c0                	xor    %eax,%eax
 3c5:	eb 55                	jmp    41c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x41c>
 3c7:	80 bb 0b 01 00 00 01 	cmpb   $0x1,0x10b(%rbx)
 3ce:	0f 84 79 fe ff ff    	je     24d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x24d>
 3d4:	48 89 df             	mov    %rbx,%rdi
 3d7:	4d 89 d4             	mov    %r10,%r12
 3da:	e8 00 00 00 00       	call   3df <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3df>
			3db: R_X86_64_PLT32	stomptalk::parser::own_token()-0x4
 3df:	66 44 0f 6f 0d 00 00 	movdqa 0x0(%rip),%xmm9        # 3e8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3e8>
 3e6:	00 00
			3e4: R_X86_64_PC32	.LCPI51_4-0x4
 3e8:	45 0f 57 c0          	xorps  %xmm8,%xmm8
 3ec:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 3f4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3f4>
 3f3:	00
			3f0: R_X86_64_PC32	.LCPI51_3-0x4
 3f4:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 3fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fc>
 3fb:	00
			3f8: R_X86_64_PC32	.LCPI51_2-0x4
 3fc:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 404 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x404>
 403:	00
			400: R_X86_64_PC32	.LCPI51_1-0x4
 404:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 40c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x40c>
 40b:	00
			408: R_X86_64_PC32	.LCPI51_0-0x4
 40c:	45 31 db             	xor    %r11d,%r11d
 40f:	4d 89 e2             	mov    %r12,%r10
 412:	bf 81 00 44 00       	mov    $0x440081,%edi
 417:	b0 01                	mov    $0x1,%al
 419:	4c 89 fe             	mov    %r15,%rsi
 41c:	88 83 0a 01 00 00    	mov    %al,0x10a(%rbx)
 422:	48 ff c6             	inc    %rsi
 425:	4c 39 f6             	cmp    %r14,%rsi
 428:	0f 82 3d fc ff ff    	jb     6b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b>
 42e:	e9 92 00 00 00       	jmp    4c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c5>
 433:	b0 01                	mov    $0x1,%al
 435:	e9 d6 fc ff ff       	jmp    110 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
 43a:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 43e:	4c 89 e2             	mov    %r12,%rdx
 441:	4c 89 d5             	mov    %r10,%rbp
 444:	e8 00 00 00 00       	call   449 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x449>
			445: R_X86_64_PLT32	memcpy-0x4
 449:	49 89 ea             	mov    %rbp,%r10
 44c:	4c 01 63 48          	add    %r12,0x48(%rbx)
 450:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 457:	e9 d1 fd ff ff       	jmp    22d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x22d>
 45c:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 460:	49 89 f5             	mov    %rsi,%r13
 463:	4c 89 e2             	mov    %r12,%rdx
 466:	e8 00 00 00 00       	call   46b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46b>
			467: R_X86_64_PLT32	memcpy-0x4
 46b:	66 44 0f 6f 0d 00 00 	movdqa 0x0(%rip),%xmm9        # 474 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x474>
 472:	00 00
			470: R_X86_64_PC32	.LCPI51_4-0x4
 474:	45 0f 57 c0          	xorps  %xmm8,%xmm8
 478:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 47f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x47f>
			47b: R_X86_64_PC32	.rodata+0x23c
 47f:	4c 89 ee             	mov    %r13,%rsi
 482:	4c 8d ab d0 00 00 00 	lea    0xd0(%rbx),%r13
 489:	4c 01 63 48          	add    %r12,0x48(%rbx)
 48d:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 494:	e9 fc fc ff ff       	jmp    195 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x195>
 499:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 4a0:	00 00 00
 4a3:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 4aa:	48 89 f0             	mov    %rsi,%rax
 4ad:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 4b4:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 4bb:	48 ff c6             	inc    %rsi
 4be:	48 89 b3 28 01 00 00 	mov    %rsi,0x128(%rbx)
 4c5:	48 89 f0             	mov    %rsi,%rax
 4c8:	48 83 c4 18          	add    $0x18,%rsp
 4cc:	5b                   	pop    %rbx
 4cd:	41 5c                	pop    %r12
 4cf:	41 5d                	pop    %r13
 4d1:	41 5e                	pop    %r14
 4d3:	41 5f                	pop    %r15
 4d5:	5d                   	pop    %rbp
 4d6:	c3                   	ret
 4d7:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 4de:	e9 bc fc ff ff       	jmp    19f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x19f>
 4e3:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 4ea:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
 4ee:	b8 02 00 00 00       	mov    $0x2,%eax
 4f3:	49 39 fc             	cmp    %rdi,%r12
 4f6:	77 2b                	ja     523 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x523>
 4f8:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
 4fe:	eb be                	jmp    4be <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4be>
 500:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 507:	6e 74 2d
 50a:	48 33 01             	xor    (%rcx),%rax
 50d:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
 514:	67 74 68
 517:	48 33 51 06          	xor    0x6(%rcx),%rdx
 51b:	48 09 c2             	or     %rax,%rdx
 51e:	e9 43 fe ff ff       	jmp    366 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x366>
 523:	48 01 ce             	add    %rcx,%rsi
 526:	48 8d 04 16          	lea    (%rsi,%rdx,1),%rax
 52a:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 531:	00 00 00
 534:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 53b:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 542:	48 01 d6             	add    %rdx,%rsi
 545:	48 ff c6             	inc    %rsi
 548:	b8 03 00 00 00       	mov    $0x3,%eax
 54d:	eb a9                	jmp    4f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f8>
 54f:	48 8b b3 28 01 00 00 	mov    0x128(%rbx),%rsi
 556:	e9 6a ff ff ff       	jmp    4c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c5>
 55b:	31 ed                	xor    %ebp,%ebp
 55d:	49 89 f7             	mov    %rsi,%r15
 560:	4c 89 f1             	mov    %r14,%rcx
 563:	4c 29 f9             	sub    %r15,%rcx
 566:	48 83 f9 08          	cmp    $0x8,%rcx
 56a:	0f 8c c9 01 00 00    	jl     739 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x739>
 570:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
 577:	80 80 80
 57a:	49 b8 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r8
 581:	7f 7f 7f
 584:	45 31 e4             	xor    %r12d,%r12d
 587:	49 bb 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r11
 58e:	0a 0a 0a
 591:	48 bf 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%rdi
 598:	0d 0d 0d
 59b:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
 5a0:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
 5a5:	4d 8b 2f             	mov    (%r15),%r13
 5a8:	4d 89 ec             	mov    %r13,%r12
 5ab:	4d 21 c4             	and    %r8,%r12
 5ae:	4b 8d 0c 04          	lea    (%r12,%r8,1),%rcx
 5b2:	4c 09 e9             	or     %r13,%rcx
 5b5:	48 f7 d1             	not    %rcx
 5b8:	4d 89 e2             	mov    %r12,%r10
 5bb:	4d 31 da             	xor    %r11,%r10
 5be:	4d 01 c2             	add    %r8,%r10
 5c1:	4d 09 ea             	or     %r13,%r10
 5c4:	49 f7 d2             	not    %r10
 5c7:	49 09 ca             	or     %rcx,%r10
 5ca:	4d 89 e3             	mov    %r12,%r11
 5cd:	49 31 fb             	xor    %rdi,%r11
 5d0:	4d 01 c3             	add    %r8,%r11
 5d3:	4d 09 eb             	or     %r13,%r11
 5d6:	49 f7 d3             	not    %r11
 5d9:	4d 09 d3             	or     %r10,%r11
 5dc:	4d 21 cb             	and    %r9,%r11
 5df:	84 d2                	test   %dl,%dl
 5e1:	75 1f                	jne    602 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x602>
 5e3:	4c 89 e1             	mov    %r12,%rcx
 5e6:	48 bf 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%rdi
 5ed:	5c 5c 5c
 5f0:	48 31 f9             	xor    %rdi,%rcx
 5f3:	4c 01 c1             	add    %r8,%rcx
 5f6:	4c 09 e9             	or     %r13,%rcx
 5f9:	48 f7 d1             	not    %rcx
 5fc:	4c 21 c9             	and    %r9,%rcx
 5ff:	49 09 cb             	or     %rcx,%r11
 602:	48 b9 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rcx
 609:	3a 3a 3a
 60c:	49 31 cc             	xor    %rcx,%r12
 60f:	4d 01 c4             	add    %r8,%r12
 612:	4d 09 ec             	or     %r13,%r12
 615:	4d 21 cc             	and    %r9,%r12
 618:	4d 89 e2             	mov    %r12,%r10
 61b:	4d 31 ca             	xor    %r9,%r10
 61e:	4d 39 cc             	cmp    %r9,%r12
 621:	0f 84 60 01 00 00    	je     787 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x787>
 627:	a8 01                	test   $0x1,%al
 629:	4c 8d ab d0 00 00 00 	lea    0xd0(%rbx),%r13
 630:	0f 84 58 01 00 00    	je     78e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78e>
 636:	f3 49 0f bc ca       	tzcnt  %r10,%rcx
 63b:	4d 85 db             	test   %r11,%r11
 63e:	0f 85 11 01 00 00    	jne    755 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x755>
 644:	c1 e9 03             	shr    $0x3,%ecx
 647:	4c 01 f9             	add    %r15,%rcx
 64a:	49 f7 d4             	not    %r12
 64d:	4d 01 cc             	add    %r9,%r12
 650:	4d 21 e2             	and    %r12,%r10
 653:	31 c0                	xor    %eax,%eax
 655:	49 89 cc             	mov    %rcx,%r12
 658:	84 d2                	test   %dl,%dl
 65a:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
 65f:	0f 85 33 01 00 00    	jne    798 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x798>
 665:	4d 09 da             	or     %r11,%r10
 668:	0f 85 d3 00 00 00    	jne    741 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x741>
 66e:	49 83 c7 08          	add    $0x8,%r15
 672:	48 83 c1 f8          	add    $0xfffffffffffffff8,%rcx
 676:	48 83 f9 07          	cmp    $0x7,%rcx
 67a:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 681 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x681>
			67d: R_X86_64_PC32	.rodata+0x23c
 681:	49 b8 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r8
 688:	7f 7f 7f
 68b:	49 bb 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r11
 692:	0a 0a 0a
 695:	48 bf 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%rdi
 69c:	0d 0d 0d
 69f:	0f 8f f6 fe ff ff    	jg     59b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x59b>
 6a5:	4d 39 f7             	cmp    %r14,%r15
 6a8:	0f 83 26 01 00 00    	jae    7d4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7d4>
 6ae:	84 d2                	test   %dl,%dl
 6b0:	74 33                	je     6e5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6e5>
 6b2:	31 d2                	xor    %edx,%edx
 6b4:	41 0f b6 0f          	movzbl (%r15),%ecx
 6b8:	83 f9 3a             	cmp    $0x3a,%ecx
 6bb:	0f 84 a5 00 00 00    	je     766 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x766>
 6c1:	31 ff                	xor    %edi,%edi
 6c3:	40 f6 c7 01          	test   $0x1,%dil
 6c7:	0f 85 a4 00 00 00    	jne    771 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x771>
 6cd:	83 f9 0d             	cmp    $0xd,%ecx
 6d0:	74 53                	je     725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 6d2:	83 f9 0a             	cmp    $0xa,%ecx
 6d5:	74 4e                	je     725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 6d7:	85 c9                	test   %ecx,%ecx
 6d9:	74 4a                	je     725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 6db:	49 ff c7             	inc    %r15
 6de:	4d 39 f7             	cmp    %r14,%r15
 6e1:	72 d1                	jb     6b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b4>
 6e3:	eb 3d                	jmp    722 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x722>
 6e5:	31 d2                	xor    %edx,%edx
 6e7:	41 0f b6 3f          	movzbl (%r15),%edi
 6eb:	83 ff 3a             	cmp    $0x3a,%edi
 6ee:	74 7d                	je     76d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x76d>
 6f0:	31 c9                	xor    %ecx,%ecx
 6f2:	f6 c1 01             	test   $0x1,%cl
 6f5:	0f 85 80 00 00 00    	jne    77b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x77b>
 6fb:	83 ff 0c             	cmp    $0xc,%edi
 6fe:	7e 11                	jle    711 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x711>
 700:	83 ff 0d             	cmp    $0xd,%edi
 703:	74 20                	je     725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 705:	83 ff 3a             	cmp    $0x3a,%edi
 708:	74 1b                	je     725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 70a:	83 ff 5c             	cmp    $0x5c,%edi
 70d:	75 0b                	jne    71a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71a>
 70f:	eb 14                	jmp    725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 711:	83 ff 0a             	cmp    $0xa,%edi
 714:	74 0f                	je     725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 716:	85 ff                	test   %edi,%edi
 718:	74 0b                	je     725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 71a:	49 ff c7             	inc    %r15
 71d:	4d 39 f7             	cmp    %r14,%r15
 720:	72 c5                	jb     6e7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6e7>
 722:	4d 89 f7             	mov    %r14,%r15
 725:	4d 85 e4             	test   %r12,%r12
 728:	4c 0f 44 e2          	cmove  %rdx,%r12
 72c:	48 85 ed             	test   %rbp,%rbp
 72f:	75 51                	jne    782 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x782>
 731:	4c 89 e5             	mov    %r12,%rbp
 734:	e9 0e fa ff ff       	jmp    147 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x147>
 739:	45 31 e4             	xor    %r12d,%r12d
 73c:	e9 64 ff ff ff       	jmp    6a5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a5>
 741:	f3 49 0f bc c2       	tzcnt  %r10,%rax
 746:	c1 e8 03             	shr    $0x3,%eax
 749:	49 01 c7             	add    %rax,%r15
 74c:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 753 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x753>
			74f: R_X86_64_PC32	.rodata+0x23c
 753:	eb d7                	jmp    72c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x72c>
 755:	f3 49 0f bc c3       	tzcnt  %r11,%rax
 75a:	39 c1                	cmp    %eax,%ecx
 75c:	0f 82 e2 fe ff ff    	jb     644 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x644>
 762:	b0 01                	mov    $0x1,%al
 764:	eb 28                	jmp    78e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78e>
 766:	89 c7                	mov    %eax,%edi
 768:	e9 56 ff ff ff       	jmp    6c3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6c3>
 76d:	89 c1                	mov    %eax,%ecx
 76f:	eb 81                	jmp    6f2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f2>
 771:	31 c0                	xor    %eax,%eax
 773:	4c 89 fa             	mov    %r15,%rdx
 776:	e9 60 ff ff ff       	jmp    6db <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6db>
 77b:	31 c0                	xor    %eax,%eax
 77d:	4c 89 fa             	mov    %r15,%rdx
 780:	eb 98                	jmp    71a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x71a>
 782:	49 89 ec             	mov    %rbp,%r12
 785:	eb aa                	jmp    731 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x731>
 787:	4c 8d ab d0 00 00 00 	lea    0xd0(%rbx),%r13
 78e:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 793:	e9 c0 fe ff ff       	jmp    658 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x658>
 798:	45 31 d2             	xor    %r10d,%r10d
 79b:	e9 c5 fe ff ff       	jmp    665 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x665>
 7a0:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 7a7:	00 00 00
 7aa:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 7b1:	48 89 e8             	mov    %rbp,%rax
 7b4:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 7bb:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 7c2:	48 ff c5             	inc    %rbp
 7c5:	48 89 ab 28 01 00 00 	mov    %rbp,0x128(%rbx)
 7cc:	48 89 ee             	mov    %rbp,%rsi
 7cf:	e9 f1 fc ff ff       	jmp    4c5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c5>
 7d4:	31 d2                	xor    %edx,%edx
 7d6:	e9 4a ff ff ff       	jmp    725 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x725>
 7db:	b8 02 00 00 00       	mov    $0x2,%eax
 7e0:	48 83 bb f8 00 00 00 	cmpq   $0x0,0xf8(%rbx)
 7e7:	00
 7e8:	0f 85 0a fd ff ff    	jne    4f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4f8>
 7ee:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 7f5:	00 00 00
 7f8:	48 89 f0             	mov    %rsi,%rax
 7fb:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 802:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 809:	48 ff c6             	inc    %rsi
 80c:	e9 37 fd ff ff       	jmp    548 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x548>
 811:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 818:	00 00 00
 81b:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 822:	48 2b b3 20 01 00 00 	sub    0x120(%rbx),%rsi
 829:	48 89 b3 18 01 00 00 	mov    %rsi,0x118(%rbx)
 830:	49 83 c7 02          	add    $0x2,%r15
 834:	e9 d3 fa ff ff       	jmp    30c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x30c>

0000000000000000 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	53                   	push   %rbx
   9:	80 3e 00             	cmpb   $0x0,(%rsi)
   c:	0f 85 11 01 00 00    	jne    123 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x123>
  12:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 19 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x19>
			15: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
  19:	48 89 47 60          	mov    %rax,0x60(%rdi)
  1d:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
  24:	00
  25:	48 39 d6             	cmp    %rdx,%rsi
  28:	0f 83 a1 02 00 00    	jae    2cf <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2cf>
  2e:	80 3e 00             	cmpb   $0x0,(%rsi)
  31:	0f 85 6c 02 00 00    	jne    2a3 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2a3>
  37:	48 8d 47 70          	lea    0x70(%rdi),%rax
  3b:	48 8b 8f 80 00 00 00 	mov    0x80(%rdi),%rcx
  42:	4c 8b 87 f0 00 00 00 	mov    0xf0(%rdi),%r8
  49:	49 c1 e0 05          	shl    $0x5,%r8
  4d:	4c 03 47 38          	add    0x38(%rdi),%r8
  51:	48 85 c9             	test   %rcx,%rcx
  54:	4c 0f 44 c1          	cmove  %rcx,%r8
  58:	4c 89 87 b0 00 00 00 	mov    %r8,0xb0(%rdi)
  5f:	8b 4f 78             	mov    0x78(%rdi),%ecx
  62:	83 e1 01             	and    $0x1,%ecx
  65:	80 bf 09 01 00 00 00 	cmpb   $0x0,0x109(%rdi)
  6c:	0f 85 1b 02 00 00    	jne    28d <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x28d>
  72:	41 b8 06 00 00 00    	mov    $0x6,%r8d
  78:	41 09 c8             	or     %ecx,%r8d
  7b:	44 89 47 78          	mov    %r8d,0x78(%rdi)
  7f:	48 8b 4f 30          	mov    0x30(%rdi),%rcx
  83:	4c 8b 87 e0 00 00 00 	mov    0xe0(%rdi),%r8
  8a:	4d 8d 48 01          	lea    0x1(%r8),%r9
  8e:	4c 89 8f e0 00 00 00 	mov    %r9,0xe0(%rdi)
  95:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
  99:	49 c1 e0 04          	shl    $0x4,%r8
  9d:	0f 10 40 40          	movups 0x40(%rax),%xmm0
  a1:	42 0f 11 44 01 40    	movups %xmm0,0x40(%rcx,%r8,1)
  a7:	0f 10 00             	movups (%rax),%xmm0
  aa:	0f 10 48 10          	movups 0x10(%rax),%xmm1
  ae:	0f 10 50 20          	movups 0x20(%rax),%xmm2
  b2:	0f 10 58 30          	movups 0x30(%rax),%xmm3
  b6:	42 0f 11 5c 01 30    	movups %xmm3,0x30(%rcx,%r8,1)
  bc:	42 0f 11 54 01 20    	movups %xmm2,0x20(%rcx,%r8,1)
  c2:	42 0f 11 4c 01 10    	movups %xmm1,0x10(%rcx,%r8,1)
  c8:	42 0f 11 04 01       	movups %xmm0,(%rcx,%r8,1)
  cd:	48 8b 87 98 00 00 00 	mov    0x98(%rdi),%rax
  d4:	48 01 87 90 00 00 00 	add    %rax,0x90(%rdi)
  db:	48 c7 87 b8 00 00 00 	movq   $0x0,0xb8(%rdi)
  e2:	00 00 00 00
  e6:	48 c7 87 98 00 00 00 	movq   $0x0,0x98(%rdi)
  ed:	00 00 00 00
  f1:	66 c7 87 08 01 00 00 	movw   $0x100,0x108(%rdi)
  f8:	00 01
  fa:	48 ff c6             	inc    %rsi
  fd:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 104 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x104>
			100: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 104:	48 89 47 60          	mov    %rax,0x60(%rdi)
 108:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 10f:	00
 110:	48 39 d6             	cmp    %rdx,%rsi
 113:	0f 83 b6 01 00 00    	jae    2cf <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2cf>
 119:	5b                   	pop    %rbx
 11a:	41 5e                	pop    %r14
 11c:	41 5f                	pop    %r15
 11e:	e9 00 00 00 00       	jmp    123 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x123>
			11f: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 123:	48 89 fb             	mov    %rdi,%rbx
 126:	48 89 d0             	mov    %rdx,%rax
 129:	48 29 f0             	sub    %rsi,%rax
 12c:	49 89 f6             	mov    %rsi,%r14
 12f:	48 89 f7             	mov    %rsi,%rdi
 132:	31 f6                	xor    %esi,%esi
 134:	49 89 d7             	mov    %rdx,%r15
 137:	48 89 c2             	mov    %rax,%rdx
 13a:	e8 00 00 00 00       	call   13f <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x13f>
			13b: R_X86_64_PLT32	memchr-0x4
 13f:	4c 89 fa             	mov    %r15,%rdx
 142:	4c 89 f9             	mov    %r15,%rcx
 145:	48 85 c0             	test   %rax,%rax
 148:	74 03                	je     14d <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x14d>
 14a:	48 89 c1             	mov    %rax,%rcx
 14d:	4c 29 f1             	sub    %r14,%rcx
 150:	48 89 df             	mov    %rbx,%rdi
 153:	48 8b 73 20          	mov    0x20(%rbx),%rsi
 157:	48 2b b3 90 00 00 00 	sub    0x90(%rbx),%rsi
 15e:	48 39 f1             	cmp    %rsi,%rcx
 161:	0f 87 a8 01 00 00    	ja     30f <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x30f>
 167:	4c 89 b7 b8 00 00 00 	mov    %r14,0xb8(%rdi)
 16e:	48 89 8f 98 00 00 00 	mov    %rcx,0x98(%rdi)
 175:	48 85 c0             	test   %rax,%rax
 178:	0f 84 54 01 00 00    	je     2d2 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2d2>
 17e:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 185 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x185>
			181: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
 185:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 189:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 190:	00
 191:	48 39 d0             	cmp    %rdx,%rax
 194:	0f 83 70 01 00 00    	jae    30a <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x30a>
 19a:	80 38 00             	cmpb   $0x0,(%rax)
 19d:	0f 85 38 01 00 00    	jne    2db <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2db>
 1a3:	48 8d 4f 70          	lea    0x70(%rdi),%rcx
 1a7:	48 8b b7 80 00 00 00 	mov    0x80(%rdi),%rsi
 1ae:	4c 8b 87 f0 00 00 00 	mov    0xf0(%rdi),%r8
 1b5:	49 c1 e0 05          	shl    $0x5,%r8
 1b9:	4c 03 47 38          	add    0x38(%rdi),%r8
 1bd:	48 85 f6             	test   %rsi,%rsi
 1c0:	4c 0f 44 c6          	cmove  %rsi,%r8
 1c4:	4c 89 87 b0 00 00 00 	mov    %r8,0xb0(%rdi)
 1cb:	8b 77 78             	mov    0x78(%rdi),%esi
 1ce:	83 e6 01             	and    $0x1,%esi
 1d1:	80 bf 09 01 00 00 00 	cmpb   $0x0,0x109(%rdi)
 1d8:	0f 85 ba 00 00 00    	jne    298 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x298>
 1de:	41 b8 06 00 00 00    	mov    $0x6,%r8d
 1e4:	41 09 f0             	or     %esi,%r8d
 1e7:	44 89 47 78          	mov    %r8d,0x78(%rdi)
 1eb:	48 8b 77 30          	mov    0x30(%rdi),%rsi
 1ef:	4c 8b 87 e0 00 00 00 	mov    0xe0(%rdi),%r8
 1f6:	4d 8d 48 01          	lea    0x1(%r8),%r9
 1fa:	4c 89 8f e0 00 00 00 	mov    %r9,0xe0(%rdi)
 201:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
 205:	49 c1 e0 04          	shl    $0x4,%r8
 209:	0f 10 41 40          	movups 0x40(%rcx),%xmm0
 20d:	42 0f 11 44 06 40    	movups %xmm0,0x40(%rsi,%r8,1)
 213:	0f 10 01             	movups (%rcx),%xmm0
 216:	0f 10 49 10          	movups 0x10(%rcx),%xmm1
 21a:	0f 10 51 20          	movups 0x20(%rcx),%xmm2
 21e:	0f 10 59 30          	movups 0x30(%rcx),%xmm3
 222:	42 0f 11 5c 06 30    	movups %xmm3,0x30(%rsi,%r8,1)
 228:	42 0f 11 54 06 20    	movups %xmm2,0x20(%rsi,%r8,1)
 22e:	42 0f 11 4c 06 10    	movups %xmm1,0x10(%rsi,%r8,1)
 234:	42 0f 11 04 06       	movups %xmm0,(%rsi,%r8,1)
 239:	48 8b 8f 98 00 00 00 	mov    0x98(%rdi),%rcx
 240:	48 01 8f 90 00 00 00 	add    %rcx,0x90(%rdi)
 247:	48 c7 87 b8 00 00 00 	movq   $0x0,0xb8(%rdi)
 24e:	00 00 00 00
 252:	48 c7 87 98 00 00 00 	movq   $0x0,0x98(%rdi)
 259:	00 00 00 00
 25d:	66 c7 87 08 01 00 00 	movw   $0x100,0x108(%rdi)
 264:	00 01
 266:	48 ff c0             	inc    %rax
 269:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 270 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x270>
			26c: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
 270:	48 89 4f 60          	mov    %rcx,0x60(%rdi)
 274:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 27b:	00
 27c:	48 39 d0             	cmp    %rdx,%rax
 27f:	0f 83 85 00 00 00    	jae    30a <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x30a>
 285:	48 89 c6             	mov    %rax,%rsi
 288:	e9 8c fe ff ff       	jmp    119 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x119>
 28d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
 293:	e9 e0 fd ff ff       	jmp    78 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x78>
 298:	41 b8 04 00 00 00    	mov    $0x4,%r8d
 29e:	e9 41 ff ff ff       	jmp    1e4 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x1e4>
 2a3:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
 2aa:	00 00 00
 2ad:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
 2b4:	48 89 f0             	mov    %rsi,%rax
 2b7:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 2be:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 2c5:	48 ff c6             	inc    %rsi
 2c8:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
 2cf:	48 89 f2             	mov    %rsi,%rdx
 2d2:	48 89 d0             	mov    %rdx,%rax
 2d5:	5b                   	pop    %rbx
 2d6:	41 5e                	pop    %r14
 2d8:	41 5f                	pop    %r15
 2da:	c3                   	ret
 2db:	48 b9 03 00 00 00 0b 	movabs $0xb00000003,%rcx
 2e2:	00 00 00
 2e5:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 2ec:	48 8b 8f 20 01 00 00 	mov    0x120(%rdi),%rcx
 2f3:	48 89 c2             	mov    %rax,%rdx
 2f6:	48 29 ca             	sub    %rcx,%rdx
 2f9:	48 89 97 18 01 00 00 	mov    %rdx,0x118(%rdi)
 300:	48 ff c0             	inc    %rax
 303:	48 89 87 28 01 00 00 	mov    %rax,0x128(%rdi)
 30a:	48 89 c2             	mov    %rax,%rdx
 30d:	eb c3                	jmp    2d2 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2d2>
 30f:	49 8d 04 36          	lea    (%r14,%rsi,1),%rax
 313:	48 b9 03 00 00 00 0e 	movabs $0xe00000003,%rcx
 31a:	00 00 00
 31d:	48 89 8f 10 01 00 00 	mov    %rcx,0x110(%rdi)
 324:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
 32b:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
 332:	49 8d 14 36          	lea    (%r14,%rsi,1),%rdx
 336:	48 ff c2             	inc    %rdx
 339:	48 89 97 28 01 00 00 	mov    %rdx,0x128(%rdi)
 340:	eb 90                	jmp    2d2 <char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)+0x2d2>
