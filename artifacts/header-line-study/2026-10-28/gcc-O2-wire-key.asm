
artifacts/header-line-study/2026-10-28/runs/20261028T061404564350Z/build/gcc16-O2-wire/CMakeFiles/stomptalk.dir/src/stomptalk.cpp.o:     file format elf64-x86-64


Disassembly of section .text._ZN9stomptalk6parser15hdrline_hdr_keyILj3EEEPKcS3_S3_:

0000000000000000 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 83 ec 48          	sub    $0x48,%rsp
   8:	48 89 6c 24 20       	mov    %rbp,0x20(%rsp)
   d:	48 89 f5             	mov    %rsi,%rbp
  10:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
  15:	48 39 d6             	cmp    %rdx,%rsi
  18:	0f 83 32 05 00 00    	jae    550 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x550>
  1e:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  23:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
  28:	49 89 fd             	mov    %rdi,%r13
  2b:	4c 89 7c 24 40       	mov    %r15,0x40(%rsp)
  30:	49 89 d7             	mov    %rdx,%r15
  33:	41 0f b6 9d 0a 01 00 	movzbl 0x10a(%r13),%ebx
  3a:	00 
  3b:	84 db                	test   %bl,%bl
  3d:	0f 84 95 00 00 00    	je     d8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xd8>
  43:	0f be 75 00          	movsbl 0x0(%rbp),%esi
  47:	40 80 fe 6e          	cmp    $0x6e,%sil
  4b:	0f 84 07 02 00 00    	je     258 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x258>
  51:	0f 8f d9 01 00 00    	jg     230 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x230>
  57:	40 80 fe 5c          	cmp    $0x5c,%sil
  5b:	74 0f                	je     6c <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x6c>
  5d:	40 80 fe 63          	cmp    $0x63,%sil
  61:	0f 85 11 02 00 00    	jne    278 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x278>
  67:	be 3a 00 00 00       	mov    $0x3a,%esi
  6c:	48 89 ea             	mov    %rbp,%rdx
  6f:	4c 89 ef             	mov    %r13,%rdi
  72:	e8 00 00 00 00       	call   77 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x77>
			73: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
  77:	84 c0                	test   %al,%al
  79:	75 2d                	jne    a8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xa8>
  7b:	4d 8b b5 28 01 00 00 	mov    0x128(%r13),%r14
  82:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  87:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  8c:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
  91:	4c 89 f0             	mov    %r14,%rax
  94:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  99:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
  9e:	48 83 c4 48          	add    $0x48,%rsp
  a2:	c3                   	ret
  a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  a8:	48 83 c5 01          	add    $0x1,%rbp
  ac:	31 c0                	xor    %eax,%eax
  ae:	41 88 85 0a 01 00 00 	mov    %al,0x10a(%r13)
  b5:	4c 39 fd             	cmp    %r15,%rbp
  b8:	0f 82 75 ff ff ff    	jb     33 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x33>
  be:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  c3:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  c8:	49 89 ee             	mov    %rbp,%r14
  cb:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
  d0:	eb bf                	jmp    91 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x91>
  d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  d8:	4c 89 f8             	mov    %r15,%rax
  db:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
  e0:	41 0f b6 b5 0b 01 00 	movzbl 0x10b(%r13),%esi
  e7:	00 
  e8:	49 89 ee             	mov    %rbp,%r14
  eb:	48 29 e8             	sub    %rbp,%rax
  ee:	48 83 f8 0f          	cmp    $0xf,%rax
  f2:	0f 8e c8 01 00 00    	jle    2c0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x2c0>
  f8:	b8 0a 0a 0a 0a       	mov    $0xa0a0a0a,%eax
  fd:	66 0f ef ff          	pxor   %xmm7,%xmm7
 101:	66 0f 6e f0          	movd   %eax,%xmm6
 105:	b8 0d 0d 0d 0d       	mov    $0xd0d0d0d,%eax
 10a:	66 0f 6e e8          	movd   %eax,%xmm5
 10e:	b8 3a 3a 3a 3a       	mov    $0x3a3a3a3a,%eax
 113:	66 0f 70 f6 00       	pshufd $0x0,%xmm6,%xmm6
 118:	66 0f 6e e0          	movd   %eax,%xmm4
 11c:	b8 5c 5c 5c 5c       	mov    $0x5c5c5c5c,%eax
 121:	66 0f 70 ed 00       	pshufd $0x0,%xmm5,%xmm5
 126:	66 44 0f 6e c0       	movd   %eax,%xmm8
 12b:	66 0f 70 e4 00       	pshufd $0x0,%xmm4,%xmm4
 130:	66 45 0f 70 c0 00    	pshufd $0x0,%xmm8,%xmm8
 136:	eb 1c                	jmp    154 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x154>
 138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 13f:	00 
 140:	49 83 c6 10          	add    $0x10,%r14
 144:	4c 89 f8             	mov    %r15,%rax
 147:	4c 29 f0             	sub    %r14,%rax
 14a:	48 83 f8 0f          	cmp    $0xf,%rax
 14e:	0f 8e 6c 01 00 00    	jle    2c0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x2c0>
 154:	f3 41 0f 6f 0e       	movdqu (%r14),%xmm1
 159:	66 0f 6f c1          	movdqa %xmm1,%xmm0
 15d:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 161:	66 0f 6f d9          	movdqa %xmm1,%xmm3
 165:	66 0f 74 d5          	pcmpeqb %xmm5,%xmm2
 169:	66 0f 74 c6          	pcmpeqb %xmm6,%xmm0
 16d:	66 0f 74 dc          	pcmpeqb %xmm4,%xmm3
 171:	66 0f eb c2          	por    %xmm2,%xmm0
 175:	66 0f 6f d1          	movdqa %xmm1,%xmm2
 179:	66 0f 74 d7          	pcmpeqb %xmm7,%xmm2
 17d:	66 0f eb d3          	por    %xmm3,%xmm2
 181:	66 0f eb c2          	por    %xmm2,%xmm0
 185:	40 84 f6             	test   %sil,%sil
 188:	75 09                	jne    193 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x193>
 18a:	66 41 0f 74 c8       	pcmpeqb %xmm8,%xmm1
 18f:	66 0f eb c1          	por    %xmm1,%xmm0
 193:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 197:	85 c0                	test   %eax,%eax
 199:	74 a5                	je     140 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x140>
 19b:	f3 0f bc c0          	tzcnt  %eax,%eax
 19f:	49 01 c6             	add    %rax,%r14
 1a2:	4d 89 f4             	mov    %r14,%r12
 1a5:	48 89 ee             	mov    %rbp,%rsi
 1a8:	4c 89 ef             	mov    %r13,%rdi
 1ab:	49 29 ec             	sub    %rbp,%r12
 1ae:	4c 89 e2             	mov    %r12,%rdx
 1b1:	e8 00 00 00 00       	call   1b6 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1b6>
			1b2: R_X86_64_PLT32	stomptalk::parser::append(char const*, unsigned long)-0x4
 1b6:	84 c0                	test   %al,%al
 1b8:	0f 84 9a 03 00 00    	je     558 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x558>
 1be:	4d 39 f7             	cmp    %r14,%r15
 1c1:	0f 84 79 02 00 00    	je     440 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x440>
 1c7:	41 0f b6 16          	movzbl (%r14),%edx
 1cb:	80 fa 5c             	cmp    $0x5c,%dl
 1ce:	0f 85 85 02 00 00    	jne    459 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x459>
 1d4:	41 80 bd 0b 01 00 00 	cmpb   $0x0,0x10b(%r13)
 1db:	00 
 1dc:	0f 84 de 01 00 00    	je     3c0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3c0>
 1e2:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 1e9:	00 00 00 
 1ec:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 1f1:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 1f6:	49 89 85 10 01 00 00 	mov    %rax,0x110(%r13)
 1fd:	4c 89 f0             	mov    %r14,%rax
 200:	49 83 c6 01          	add    $0x1,%r14
 204:	49 2b 85 20 01 00 00 	sub    0x120(%r13),%rax
 20b:	49 89 85 18 01 00 00 	mov    %rax,0x118(%r13)
 212:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 217:	4d 89 b5 28 01 00 00 	mov    %r14,0x128(%r13)
 21e:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 223:	e9 69 fe ff ff       	jmp    91 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x91>
 228:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 22f:	00 
 230:	40 80 fe 72          	cmp    $0x72,%sil
 234:	75 42                	jne    278 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x278>
 236:	be 0d 00 00 00       	mov    $0xd,%esi
 23b:	48 89 ea             	mov    %rbp,%rdx
 23e:	4c 89 ef             	mov    %r13,%rdi
 241:	e8 00 00 00 00       	call   246 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x246>
			242: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 246:	84 c0                	test   %al,%al
 248:	0f 84 2d fe ff ff    	je     7b <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x7b>
 24e:	e9 55 fe ff ff       	jmp    a8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xa8>
 253:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 258:	be 0a 00 00 00       	mov    $0xa,%esi
 25d:	48 89 ea             	mov    %rbp,%rdx
 260:	4c 89 ef             	mov    %r13,%rdi
 263:	e8 00 00 00 00       	call   268 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x268>
			264: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 268:	84 c0                	test   %al,%al
 26a:	0f 84 0b fe ff ff    	je     7b <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x7b>
 270:	e9 33 fe ff ff       	jmp    a8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xa8>
 275:	0f 1f 00             	nopl   (%rax)
 278:	4c 8d 75 01          	lea    0x1(%rbp),%r14
 27c:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 281:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 286:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 28d:	00 00 00 
 290:	49 89 85 10 01 00 00 	mov    %rax,0x110(%r13)
 297:	48 89 e8             	mov    %rbp,%rax
 29a:	49 2b 85 20 01 00 00 	sub    0x120(%r13),%rax
 2a1:	49 89 85 18 01 00 00 	mov    %rax,0x118(%r13)
 2a8:	4d 89 b5 28 01 00 00 	mov    %r14,0x128(%r13)
 2af:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 2b4:	e9 d8 fd ff ff       	jmp    91 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x91>
 2b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 2c0:	48 83 f8 07          	cmp    $0x7,%rax
 2c4:	0f 8e 26 01 00 00    	jle    3f0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3f0>
 2ca:	49 b9 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r9
 2d1:	0a 0a 0a 
 2d4:	48 b9 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%rcx
 2db:	fe fe fe 
 2de:	49 b8 f5 f5 f5 f5 f5 	movabs $0xf5f5f5f5f5f5f5f5,%r8
 2e5:	f5 f5 f5 
 2e8:	48 bf 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%rdi
 2ef:	0d 0d 0d 
 2f2:	49 ba 80 80 80 80 80 	movabs $0x8080808080808080,%r10
 2f9:	80 80 80 
 2fc:	eb 16                	jmp    314 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x314>
 2fe:	66 90                	xchg   %ax,%ax
 300:	49 83 c6 08          	add    $0x8,%r14
 304:	4c 89 f8             	mov    %r15,%rax
 307:	4c 29 f0             	sub    %r14,%rax
 30a:	48 83 f8 07          	cmp    $0x7,%rax
 30e:	0f 8e dc 00 00 00    	jle    3f0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3f0>
 314:	49 bc f2 f2 f2 f2 f2 	movabs $0xf2f2f2f2f2f2f2f2,%r12
 31b:	f2 f2 f2 
 31e:	49 8b 06             	mov    (%r14),%rax
 321:	49 89 c3             	mov    %rax,%r11
 324:	48 89 c2             	mov    %rax,%rdx
 327:	49 31 c4             	xor    %rax,%r12
 32a:	4d 31 cb             	xor    %r9,%r11
 32d:	4c 31 c2             	xor    %r8,%rdx
 330:	49 01 cb             	add    %rcx,%r11
 333:	49 21 d3             	and    %rdx,%r11
 336:	48 89 c2             	mov    %rax,%rdx
 339:	48 31 fa             	xor    %rdi,%rdx
 33c:	48 01 ca             	add    %rcx,%rdx
 33f:	4c 21 e2             	and    %r12,%rdx
 342:	49 89 c4             	mov    %rax,%r12
 345:	4c 09 da             	or     %r11,%rdx
 348:	49 f7 d4             	not    %r12
 34b:	4c 8d 1c 08          	lea    (%rax,%rcx,1),%r11
 34f:	4d 21 e3             	and    %r12,%r11
 352:	49 bc c5 c5 c5 c5 c5 	movabs $0xc5c5c5c5c5c5c5c5,%r12
 359:	c5 c5 c5 
 35c:	4c 09 da             	or     %r11,%rdx
 35f:	49 31 c4             	xor    %rax,%r12
 362:	49 bb 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%r11
 369:	3a 3a 3a 
 36c:	49 31 c3             	xor    %rax,%r11
 36f:	49 01 cb             	add    %rcx,%r11
 372:	4d 21 e3             	and    %r12,%r11
 375:	49 09 d3             	or     %rdx,%r11
 378:	40 84 f6             	test   %sil,%sil
 37b:	75 23                	jne    3a0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3a0>
 37d:	48 ba 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%rdx
 384:	5c 5c 5c 
 387:	49 bc a3 a3 a3 a3 a3 	movabs $0xa3a3a3a3a3a3a3a3,%r12
 38e:	a3 a3 a3 
 391:	48 31 c2             	xor    %rax,%rdx
 394:	4c 31 e0             	xor    %r12,%rax
 397:	48 01 ca             	add    %rcx,%rdx
 39a:	48 21 d0             	and    %rdx,%rax
 39d:	49 09 c3             	or     %rax,%r11
 3a0:	4d 21 d3             	and    %r10,%r11
 3a3:	4d 85 db             	test   %r11,%r11
 3a6:	0f 84 54 ff ff ff    	je     300 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x300>
 3ac:	f3 4d 0f bc db       	tzcnt  %r11,%r11
 3b1:	41 c1 fb 03          	sar    $0x3,%r11d
 3b5:	4d 01 de             	add    %r11,%r14
 3b8:	e9 e5 fd ff ff       	jmp    1a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1a2>
 3bd:	0f 1f 00             	nopl   (%rax)
 3c0:	41 80 bd 0d 01 00 00 	cmpb   $0x0,0x10d(%r13)
 3c7:	00 
 3c8:	75 11                	jne    3db <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3db>
 3ca:	4c 89 ef             	mov    %r13,%rdi
 3cd:	88 44 24 0f          	mov    %al,0xf(%rsp)
 3d1:	e8 00 00 00 00       	call   3d6 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3d6>
			3d2: R_X86_64_PC32	.text+0x87c
 3d6:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
 3db:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 3e0:	49 8d 6e 01          	lea    0x1(%r14),%rbp
 3e4:	e9 c5 fc ff ff       	jmp    ae <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xae>
 3e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 3f0:	4d 39 fe             	cmp    %r15,%r14
 3f3:	0f 83 a9 fd ff ff    	jae    1a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1a2>
 3f9:	48 ba 01 24 00 00 00 	movabs $0x400000000002401,%rdx
 400:	00 00 04 
 403:	41 0f b6 06          	movzbl (%r14),%eax
 407:	3c 3a                	cmp    $0x3a,%al
 409:	0f 87 22 01 00 00    	ja     531 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x531>
 40f:	48 0f a3 c2          	bt     %rax,%rdx
 413:	0f 82 89 fd ff ff    	jb     1a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1a2>
 419:	49 83 c6 01          	add    $0x1,%r14
 41d:	4d 39 f7             	cmp    %r14,%r15
 420:	75 e1                	jne    403 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x403>
 422:	4c 89 f2             	mov    %r14,%rdx
 425:	48 89 ee             	mov    %rbp,%rsi
 428:	4c 89 ef             	mov    %r13,%rdi
 42b:	48 29 ea             	sub    %rbp,%rdx
 42e:	e8 00 00 00 00       	call   433 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x433>
			42f: R_X86_64_PLT32	stomptalk::parser::append(char const*, unsigned long)-0x4
 433:	84 c0                	test   %al,%al
 435:	0f 84 1d 01 00 00    	je     558 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x558>
 43b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 440:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 445:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 44a:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 44f:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 454:	e9 38 fc ff ff       	jmp    91 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x91>
 459:	41 89 d8             	mov    %ebx,%r8d
 45c:	80 fa 3a             	cmp    $0x3a,%dl
 45f:	0f 85 7d fd ff ff    	jne    1e2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1e2>
 465:	49 8b 85 d8 00 00 00 	mov    0xd8(%r13),%rax
 46c:	48 85 c0             	test   %rax,%rax
 46f:	0f 84 6d fd ff ff    	je     1e2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1e2>
 475:	49 8b 95 d0 00 00 00 	mov    0xd0(%r13),%rdx
 47c:	41 c6 85 0d 01 00 00 	movb   $0x0,0x10d(%r13)
 483:	00 
 484:	49 c7 85 d0 00 00 00 	movq   $0x0,0xd0(%r13)
 48b:	00 00 00 00 
 48f:	49 c7 85 d8 00 00 00 	movq   $0x0,0xd8(%r13)
 496:	00 00 00 00 
 49a:	49 89 95 c0 00 00 00 	mov    %rdx,0xc0(%r13)
 4a1:	49 89 85 c8 00 00 00 	mov    %rax,0xc8(%r13)
 4a8:	41 f6 45 78 01       	testb  $0x1,0x78(%r13)
 4ad:	75 1c                	jne    4cb <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4cb>
 4af:	49 39 ad 20 01 00 00 	cmp    %rbp,0x120(%r13)
 4b6:	73 09                	jae    4c1 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4c1>
 4b8:	49 39 c4             	cmp    %rax,%r12
 4bb:	0f 84 b7 00 00 00    	je     578 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x578>
 4c1:	48 83 f8 0e          	cmp    $0xe,%rax
 4c5:	0f 84 d6 00 00 00    	je     5a1 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x5a1>
 4cb:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4d2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4d2>
			4ce: R_X86_64_PC32	char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)-0x4
 4d2:	49 83 c6 01          	add    $0x1,%r14
 4d6:	45 88 85 0c 01 00 00 	mov    %r8b,0x10c(%r13)
 4dd:	49 89 45 60          	mov    %rax,0x60(%r13)
 4e1:	49 c7 45 68 00 00 00 	movq   $0x0,0x68(%r13)
 4e8:	00 
 4e9:	4d 39 fe             	cmp    %r15,%r14
 4ec:	0f 83 4e ff ff ff    	jae    440 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x440>
 4f2:	41 8b 85 10 01 00 00 	mov    0x110(%r13),%eax
 4f9:	85 c0                	test   %eax,%eax
 4fb:	0f 85 3f ff ff ff    	jne    440 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x440>
 501:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 506:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 50b:	4c 89 fa             	mov    %r15,%rdx
 50e:	4c 89 f6             	mov    %r14,%rsi
 511:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 516:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
 51b:	4c 89 ef             	mov    %r13,%rdi
 51e:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
 523:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 528:	48 83 c4 48          	add    $0x48,%rsp
 52c:	e9 00 00 00 00       	jmp    531 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x531>
			52d: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)-0x4
 531:	3c 5c                	cmp    $0x5c,%al
 533:	0f 85 e0 fe ff ff    	jne    419 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x419>
 539:	40 80 fe 01          	cmp    $0x1,%sil
 53d:	0f 84 d6 fe ff ff    	je     419 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x419>
 543:	e9 5a fc ff ff       	jmp    1a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1a2>
 548:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 54f:	00 
 550:	49 89 f6             	mov    %rsi,%r14
 553:	e9 39 fb ff ff       	jmp    91 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x91>
 558:	4d 8b b5 28 01 00 00 	mov    0x128(%r13),%r14
 55f:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
 564:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
 569:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
 56e:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 573:	e9 19 fb ff ff       	jmp    91 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x91>
 578:	49 83 fc 0e          	cmp    $0xe,%r12
 57c:	0f 85 49 ff ff ff    	jne    4cb <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4cb>
 582:	f3 0f 6f 45 ff       	movdqu -0x1(%rbp),%xmm0
 587:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 58f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x58f>
 58e:	00 
			58b: R_X86_64_PC32	.LC35-0x4
 58f:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 593:	3d ff ff 00 00       	cmp    $0xffff,%eax
 598:	41 0f 94 c0          	sete   %r8b
 59c:	e9 2a ff ff ff       	jmp    4cb <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4cb>
 5a1:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 5a8:	6e 74 2d 
 5ab:	48 39 02             	cmp    %rax,(%rdx)
 5ae:	74 10                	je     5c0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x5c0>
 5b0:	b8 01 00 00 00       	mov    $0x1,%eax
 5b5:	85 c0                	test   %eax,%eax
 5b7:	41 0f 94 c0          	sete   %r8b
 5bb:	e9 0b ff ff ff       	jmp    4cb <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4cb>
 5c0:	48 b8 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rax
 5c7:	67 74 68 
 5ca:	48 39 42 06          	cmp    %rax,0x6(%rdx)
 5ce:	75 e0                	jne    5b0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x5b0>
 5d0:	31 c0                	xor    %eax,%eax
 5d2:	eb e1                	jmp    5b5 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x5b5>
