
artifacts/header-line-study/2026-10-28/runs/20261028T062508203190Z/build/gcc16-O2-wire/CMakeFiles/stomptalk.dir/src/stomptalk.cpp.o:     file format elf64-x86-64


Disassembly of section .text._ZN9stomptalk6parser15hdrline_hdr_keyILj3EEEPKcS3_S3_:

0000000000000000 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)>:
   0:	f3 0f 1e fa          	endbr64
   4:	48 83 ec 38          	sub    $0x38,%rsp
   8:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
   d:	48 89 f5             	mov    %rsi,%rbp
  10:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
  15:	48 39 d6             	cmp    %rdx,%rsi
  18:	0f 83 22 05 00 00    	jae    540 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x540>
  1e:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  23:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
  28:	49 89 fd             	mov    %rdi,%r13
  2b:	4c 89 7c 24 30       	mov    %r15,0x30(%rsp)
  30:	49 89 d7             	mov    %rdx,%r15
  33:	41 80 bd 0a 01 00 00 	cmpb   $0x0,0x10a(%r13)
  3a:	00 
  3b:	0f 84 97 00 00 00    	je     d8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xd8>
  41:	0f be 75 00          	movsbl 0x0(%rbp),%esi
  45:	40 80 fe 6e          	cmp    $0x6e,%sil
  49:	0f 84 09 02 00 00    	je     258 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x258>
  4f:	0f 8f db 01 00 00    	jg     230 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x230>
  55:	40 80 fe 5c          	cmp    $0x5c,%sil
  59:	74 0f                	je     6a <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x6a>
  5b:	40 80 fe 63          	cmp    $0x63,%sil
  5f:	0f 85 13 02 00 00    	jne    278 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x278>
  65:	be 3a 00 00 00       	mov    $0x3a,%esi
  6a:	48 89 ea             	mov    %rbp,%rdx
  6d:	4c 89 ef             	mov    %r13,%rdi
  70:	e8 00 00 00 00       	call   75 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x75>
			71: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
  75:	84 c0                	test   %al,%al
  77:	75 2f                	jne    a8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xa8>
  79:	4d 8b b5 28 01 00 00 	mov    0x128(%r13),%r14
  80:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  85:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  8a:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  8f:	4c 89 f0             	mov    %r14,%rax
  92:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  97:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  9c:	48 83 c4 38          	add    $0x38,%rsp
  a0:	c3                   	ret
  a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  a8:	48 83 c5 01          	add    $0x1,%rbp
  ac:	31 db                	xor    %ebx,%ebx
  ae:	41 88 9d 0a 01 00 00 	mov    %bl,0x10a(%r13)
  b5:	4c 39 fd             	cmp    %r15,%rbp
  b8:	0f 82 75 ff ff ff    	jb     33 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x33>
  be:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  c3:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  c8:	49 89 ee             	mov    %rbp,%r14
  cb:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  d0:	eb bd                	jmp    8f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x8f>
  d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  d8:	4c 89 f8             	mov    %r15,%rax
  db:	4c 89 64 24 18       	mov    %r12,0x18(%rsp)
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
 1b6:	89 c3                	mov    %eax,%ebx
 1b8:	84 c0                	test   %al,%al
 1ba:	0f 84 88 03 00 00    	je     548 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x548>
 1c0:	4d 39 f7             	cmp    %r14,%r15
 1c3:	0f 84 77 02 00 00    	je     440 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x440>
 1c9:	41 0f b6 06          	movzbl (%r14),%eax
 1cd:	3c 5c                	cmp    $0x5c,%al
 1cf:	0f 85 84 02 00 00    	jne    459 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x459>
 1d5:	41 80 bd 0b 01 00 00 	cmpb   $0x0,0x10b(%r13)
 1dc:	00 
 1dd:	0f 84 e5 01 00 00    	je     3c8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3c8>
 1e3:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 1ea:	00 00 00 
 1ed:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 1f2:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
 1f7:	49 89 85 10 01 00 00 	mov    %rax,0x110(%r13)
 1fe:	4c 89 f0             	mov    %r14,%rax
 201:	49 83 c6 01          	add    $0x1,%r14
 205:	49 2b 85 20 01 00 00 	sub    0x120(%r13),%rax
 20c:	49 89 85 18 01 00 00 	mov    %rax,0x118(%r13)
 213:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
 218:	4d 89 b5 28 01 00 00 	mov    %r14,0x128(%r13)
 21f:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
 224:	e9 66 fe ff ff       	jmp    8f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x8f>
 229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 230:	40 80 fe 72          	cmp    $0x72,%sil
 234:	75 42                	jne    278 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x278>
 236:	be 0d 00 00 00       	mov    $0xd,%esi
 23b:	48 89 ea             	mov    %rbp,%rdx
 23e:	4c 89 ef             	mov    %r13,%rdi
 241:	e8 00 00 00 00       	call   246 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x246>
			242: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 246:	84 c0                	test   %al,%al
 248:	0f 84 2b fe ff ff    	je     79 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x79>
 24e:	e9 55 fe ff ff       	jmp    a8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xa8>
 253:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 258:	be 0a 00 00 00       	mov    $0xa,%esi
 25d:	48 89 ea             	mov    %rbp,%rdx
 260:	4c 89 ef             	mov    %r13,%rdi
 263:	e8 00 00 00 00       	call   268 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x268>
			264: R_X86_64_PLT32	stomptalk::parser::append(char, char const*)-0x4
 268:	84 c0                	test   %al,%al
 26a:	0f 84 09 fe ff ff    	je     79 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x79>
 270:	e9 33 fe ff ff       	jmp    a8 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xa8>
 275:	0f 1f 00             	nopl   (%rax)
 278:	4c 8d 75 01          	lea    0x1(%rbp),%r14
 27c:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 281:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
 286:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 28d:	00 00 00 
 290:	49 89 85 10 01 00 00 	mov    %rax,0x110(%r13)
 297:	48 89 e8             	mov    %rbp,%rax
 29a:	49 2b 85 20 01 00 00 	sub    0x120(%r13),%rax
 2a1:	49 89 85 18 01 00 00 	mov    %rax,0x118(%r13)
 2a8:	4d 89 b5 28 01 00 00 	mov    %r14,0x128(%r13)
 2af:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
 2b4:	e9 d6 fd ff ff       	jmp    8f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x8f>
 2b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 2c0:	48 83 f8 07          	cmp    $0x7,%rax
 2c4:	0f 8e 26 01 00 00    	jle    3f0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3f0>
 2ca:	49 ba 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r10
 2d1:	0a 0a 0a 
 2d4:	48 b9 ff fe fe fe fe 	movabs $0xfefefefefefefeff,%rcx
 2db:	fe fe fe 
 2de:	49 b9 f5 f5 f5 f5 f5 	movabs $0xf5f5f5f5f5f5f5f5,%r9
 2e5:	f5 f5 f5 
 2e8:	49 b8 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r8
 2ef:	0d 0d 0d 
 2f2:	48 bf f2 f2 f2 f2 f2 	movabs $0xf2f2f2f2f2f2f2f2,%rdi
 2f9:	f2 f2 f2 
 2fc:	49 bb 80 80 80 80 80 	movabs $0x8080808080808080,%r11
 303:	80 80 80 
 306:	eb 1c                	jmp    324 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x324>
 308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 30f:	00 
 310:	49 83 c6 08          	add    $0x8,%r14
 314:	4c 89 f8             	mov    %r15,%rax
 317:	4c 29 f0             	sub    %r14,%rax
 31a:	48 83 f8 07          	cmp    $0x7,%rax
 31e:	0f 8e cc 00 00 00    	jle    3f0 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3f0>
 324:	49 8b 06             	mov    (%r14),%rax
 327:	48 89 c3             	mov    %rax,%rbx
 32a:	48 89 c2             	mov    %rax,%rdx
 32d:	49 89 c4             	mov    %rax,%r12
 330:	4c 31 d3             	xor    %r10,%rbx
 333:	4c 31 ca             	xor    %r9,%rdx
 336:	49 31 fc             	xor    %rdi,%r12
 339:	48 01 cb             	add    %rcx,%rbx
 33c:	48 21 d3             	and    %rdx,%rbx
 33f:	48 89 c2             	mov    %rax,%rdx
 342:	4c 31 c2             	xor    %r8,%rdx
 345:	48 01 ca             	add    %rcx,%rdx
 348:	4c 21 e2             	and    %r12,%rdx
 34b:	49 89 c4             	mov    %rax,%r12
 34e:	48 09 da             	or     %rbx,%rdx
 351:	49 f7 d4             	not    %r12
 354:	48 8d 1c 08          	lea    (%rax,%rcx,1),%rbx
 358:	4c 21 e3             	and    %r12,%rbx
 35b:	49 bc c5 c5 c5 c5 c5 	movabs $0xc5c5c5c5c5c5c5c5,%r12
 362:	c5 c5 c5 
 365:	48 09 da             	or     %rbx,%rdx
 368:	49 31 c4             	xor    %rax,%r12
 36b:	48 bb 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rbx
 372:	3a 3a 3a 
 375:	48 31 c3             	xor    %rax,%rbx
 378:	48 01 cb             	add    %rcx,%rbx
 37b:	4c 21 e3             	and    %r12,%rbx
 37e:	48 09 d3             	or     %rdx,%rbx
 381:	40 84 f6             	test   %sil,%sil
 384:	75 23                	jne    3a9 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3a9>
 386:	48 ba 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%rdx
 38d:	5c 5c 5c 
 390:	49 bc a3 a3 a3 a3 a3 	movabs $0xa3a3a3a3a3a3a3a3,%r12
 397:	a3 a3 a3 
 39a:	48 31 c2             	xor    %rax,%rdx
 39d:	4c 31 e0             	xor    %r12,%rax
 3a0:	48 01 ca             	add    %rcx,%rdx
 3a3:	48 21 d0             	and    %rdx,%rax
 3a6:	48 09 c3             	or     %rax,%rbx
 3a9:	4c 21 db             	and    %r11,%rbx
 3ac:	48 85 db             	test   %rbx,%rbx
 3af:	0f 84 5b ff ff ff    	je     310 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x310>
 3b5:	f3 48 0f bc db       	tzcnt  %rbx,%rbx
 3ba:	c1 fb 03             	sar    $0x3,%ebx
 3bd:	49 01 de             	add    %rbx,%r14
 3c0:	e9 dd fd ff ff       	jmp    1a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1a2>
 3c5:	0f 1f 00             	nopl   (%rax)
 3c8:	41 80 bd 0d 01 00 00 	cmpb   $0x0,0x10d(%r13)
 3cf:	00 
 3d0:	75 08                	jne    3da <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3da>
 3d2:	4c 89 ef             	mov    %r13,%rdi
 3d5:	e8 00 00 00 00       	call   3da <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x3da>
			3d6: R_X86_64_PC32	.text+0x87c
 3da:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
 3df:	49 8d 6e 01          	lea    0x1(%r14),%rbp
 3e3:	e9 c6 fc ff ff       	jmp    ae <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0xae>
 3e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 3ef:	00 
 3f0:	4d 39 fe             	cmp    %r15,%r14
 3f3:	0f 83 a9 fd ff ff    	jae    1a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1a2>
 3f9:	48 ba 01 24 00 00 00 	movabs $0x400000000002401,%rdx
 400:	00 00 04 
 403:	41 0f b6 06          	movzbl (%r14),%eax
 407:	3c 3a                	cmp    $0x3a,%al
 409:	0f 87 10 01 00 00    	ja     51f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x51f>
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
 435:	0f 84 0d 01 00 00    	je     548 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x548>
 43b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 440:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 445:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
 44a:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
 44f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
 454:	e9 36 fc ff ff       	jmp    8f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x8f>
 459:	3c 3a                	cmp    $0x3a,%al
 45b:	0f 85 82 fd ff ff    	jne    1e3 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1e3>
 461:	49 8b 85 d8 00 00 00 	mov    0xd8(%r13),%rax
 468:	48 85 c0             	test   %rax,%rax
 46b:	0f 84 72 fd ff ff    	je     1e3 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1e3>
 471:	41 8b 55 78          	mov    0x78(%r13),%edx
 475:	49 8b 8d d0 00 00 00 	mov    0xd0(%r13),%rcx
 47c:	48 83 f8 0e          	cmp    $0xe,%rax
 480:	49 89 85 c8 00 00 00 	mov    %rax,0xc8(%r13)
 487:	0f 94 c0             	sete   %al
 48a:	41 c6 85 0d 01 00 00 	movb   $0x0,0x10d(%r13)
 491:	00 
 492:	f7 d2                	not    %edx
 494:	49 89 8d c0 00 00 00 	mov    %rcx,0xc0(%r13)
 49b:	49 c7 85 d0 00 00 00 	movq   $0x0,0xd0(%r13)
 4a2:	00 00 00 00 
 4a6:	49 c7 85 d8 00 00 00 	movq   $0x0,0xd8(%r13)
 4ad:	00 00 00 00 
 4b1:	20 d0                	and    %dl,%al
 4b3:	0f 85 af 00 00 00    	jne    568 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x568>
 4b9:	41 88 85 0c 01 00 00 	mov    %al,0x10c(%r13)
 4c0:	49 83 c6 01          	add    $0x1,%r14
 4c4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4cb <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4cb>
			4c7: R_X86_64_PC32	char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)-0x4
 4cb:	49 89 45 60          	mov    %rax,0x60(%r13)
 4cf:	49 c7 45 68 00 00 00 	movq   $0x0,0x68(%r13)
 4d6:	00 
 4d7:	4d 39 fe             	cmp    %r15,%r14
 4da:	0f 83 60 ff ff ff    	jae    440 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x440>
 4e0:	41 8b 85 10 01 00 00 	mov    0x110(%r13),%eax
 4e7:	85 c0                	test   %eax,%eax
 4e9:	0f 85 51 ff ff ff    	jne    440 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x440>
 4ef:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 4f4:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
 4f9:	4c 89 fa             	mov    %r15,%rdx
 4fc:	4c 89 f6             	mov    %r14,%rsi
 4ff:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
 504:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
 509:	4c 89 ef             	mov    %r13,%rdi
 50c:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
 511:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
 516:	48 83 c4 38          	add    $0x38,%rsp
 51a:	e9 00 00 00 00       	jmp    51f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x51f>
			51b: R_X86_64_PLT32	char const* stomptalk::parser::hdrline_val<3u>(char const*, char const*)-0x4
 51f:	3c 5c                	cmp    $0x5c,%al
 521:	0f 85 f2 fe ff ff    	jne    419 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x419>
 527:	40 80 fe 01          	cmp    $0x1,%sil
 52b:	0f 84 e8 fe ff ff    	je     419 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x419>
 531:	e9 6c fc ff ff       	jmp    1a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x1a2>
 536:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
 53d:	00 00 00 
 540:	49 89 f6             	mov    %rsi,%r14
 543:	e9 47 fb ff ff       	jmp    8f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x8f>
 548:	4d 8b b5 28 01 00 00 	mov    0x128(%r13),%r14
 54f:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
 554:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
 559:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
 55e:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
 563:	e9 27 fb ff ff       	jmp    8f <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x8f>
 568:	49 39 ad 20 01 00 00 	cmp    %rbp,0x120(%r13)
 56f:	73 06                	jae    577 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x577>
 571:	49 83 fc 0e          	cmp    $0xe,%r12
 575:	74 1e                	je     595 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x595>
 577:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 57e:	6e 74 2d 
 581:	48 39 01             	cmp    %rax,(%rcx)
 584:	74 2d                	je     5b3 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x5b3>
 586:	b8 01 00 00 00       	mov    $0x1,%eax
 58b:	85 c0                	test   %eax,%eax
 58d:	0f 94 c0             	sete   %al
 590:	e9 24 ff ff ff       	jmp    4b9 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4b9>
 595:	f3 0f 6f 45 ff       	movdqu -0x1(%rbp),%xmm0
 59a:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 5a2 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x5a2>
 5a1:	00 
			59e: R_X86_64_PC32	.LC35-0x4
 5a2:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 5a6:	3d ff ff 00 00       	cmp    $0xffff,%eax
 5ab:	0f 94 c0             	sete   %al
 5ae:	e9 06 ff ff ff       	jmp    4b9 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x4b9>
 5b3:	48 b8 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rax
 5ba:	67 74 68 
 5bd:	48 39 41 06          	cmp    %rax,0x6(%rcx)
 5c1:	75 c3                	jne    586 <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x586>
 5c3:	31 c0                	xor    %eax,%eax
 5c5:	eb c4                	jmp    58b <char const* stomptalk::parser::hdrline_hdr_key<3u>(char const*, char const*)+0x58b>
