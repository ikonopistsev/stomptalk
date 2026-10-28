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
  9a:	0f 83 87 00 00 00    	jae    127 <stomptalk::parser::own_metadata()+0xe7>
  a0:	4d 89 e5             	mov    %r12,%r13
  a3:	49 c1 e5 05          	shl    $0x5,%r13
  a7:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
  ab:	4e 8b 74 2d 08       	mov    0x8(%rbp,%r13,1),%r14
  b0:	4d 85 f6             	test   %r14,%r14
  b3:	74 2e                	je     e3 <stomptalk::parser::own_metadata()+0xa3>
  b5:	4a 8b 74 2d 00       	mov    0x0(%rbp,%r13,1),%rsi
  ba:	48 89 f0             	mov    %rsi,%rax
  bd:	48 2b 43 40          	sub    0x40(%rbx),%rax
  c1:	48 3b 43 10          	cmp    0x10(%rbx),%rax
  c5:	72 1c                	jb     e3 <stomptalk::parser::own_metadata()+0xa3>
  c7:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
  cb:	4c 89 ff             	mov    %r15,%rdi
  ce:	4c 89 f2             	mov    %r14,%rdx
  d1:	e8 00 00 00 00       	call   d6 <stomptalk::parser::own_metadata()+0x96>
			d2: R_X86_64_PLT32	memcpy-0x4
  d6:	4c 01 73 48          	add    %r14,0x48(%rbx)
  da:	4e 89 7c 2d 00       	mov    %r15,0x0(%rbp,%r13,1)
  df:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
  e3:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
  e8:	4d 85 f6             	test   %r14,%r14
  eb:	74 2a                	je     117 <stomptalk::parser::own_metadata()+0xd7>
  ed:	4a 8b 74 2d 10       	mov    0x10(%rbp,%r13,1),%rsi
  f2:	48 89 f0             	mov    %rsi,%rax
  f5:	48 2b 43 40          	sub    0x40(%rbx),%rax
  f9:	48 3b 43 10          	cmp    0x10(%rbx),%rax
  fd:	72 18                	jb     117 <stomptalk::parser::own_metadata()+0xd7>
  ff:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
 103:	4c 89 ff             	mov    %r15,%rdi
 106:	4c 89 f2             	mov    %r14,%rdx
 109:	e8 00 00 00 00       	call   10e <stomptalk::parser::own_metadata()+0xce>
			10a: R_X86_64_PLT32	memcpy-0x4
 10e:	4c 01 73 48          	add    %r14,0x48(%rbx)
 112:	4e 89 7c 2d 10       	mov    %r15,0x10(%rbp,%r13,1)
 117:	49 ff c4             	inc    %r12
 11a:	49 83 c5 20          	add    $0x20,%r13
 11e:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
 125:	72 80                	jb     a7 <stomptalk::parser::own_metadata()+0x67>
 127:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
 12e:	4d 85 f6             	test   %r14,%r14
 131:	74 2e                	je     161 <stomptalk::parser::own_metadata()+0x121>
 133:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
 13a:	48 89 f0             	mov    %rsi,%rax
 13d:	48 2b 43 40          	sub    0x40(%rbx),%rax
 141:	48 3b 43 10          	cmp    0x10(%rbx),%rax
 145:	72 1a                	jb     161 <stomptalk::parser::own_metadata()+0x121>
 147:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
 14b:	4c 89 ff             	mov    %r15,%rdi
 14e:	4c 89 f2             	mov    %r14,%rdx
 151:	e8 00 00 00 00       	call   156 <stomptalk::parser::own_metadata()+0x116>
			152: R_X86_64_PLT32	memcpy-0x4
 156:	4c 01 73 48          	add    %r14,0x48(%rbx)
 15a:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
 161:	48 83 c4 08          	add    $0x8,%rsp
 165:	5b                   	pop    %rbx
 166:	41 5c                	pop    %r12
 168:	41 5d                	pop    %r13
 16a:	41 5e                	pop    %r14
 16c:	41 5f                	pop    %r15
 16e:	5d                   	pop    %rbp
 16f:	c3                   	ret

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

0000000000000000 <stomptalk::parser::own_token()>:
       0:	f3 0f 1e fa          	endbr64
       4:	80 bf 0d 01 00 00 00 	cmpb   $0x0,0x10d(%rdi)
       b:	0f 85 5f 01 00 00    	jne    170 <stomptalk::parser::own_token()+0x170>
      11:	55                   	push   %rbp
      12:	41 57                	push   %r15
      14:	41 56                	push   %r14
      16:	41 55                	push   %r13
      18:	41 54                	push   %r12
      1a:	53                   	push   %rbx
      1b:	50                   	push   %rax
      1c:	48 89 fb             	mov    %rdi,%rbx
      1f:	4c 8b b7 a8 00 00 00 	mov    0xa8(%rdi),%r14
      26:	4d 85 f6             	test   %r14,%r14
      29:	74 2e                	je     59 <stomptalk::parser::own_token()+0x59>
      2b:	48 8b b3 a0 00 00 00 	mov    0xa0(%rbx),%rsi
      32:	48 89 f0             	mov    %rsi,%rax
      35:	48 2b 43 40          	sub    0x40(%rbx),%rax
      39:	48 3b 43 10          	cmp    0x10(%rbx),%rax
      3d:	72 1a                	jb     59 <stomptalk::parser::own_token()+0x59>
      3f:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
      43:	4c 89 ff             	mov    %r15,%rdi
      46:	4c 89 f2             	mov    %r14,%rdx
      49:	e8 00 00 00 00       	call   4e <stomptalk::parser::own_token()+0x4e>
			4a: R_X86_64_PLT32	memcpy-0x4
      4e:	4c 01 73 48          	add    %r14,0x48(%rbx)
      52:	4c 89 bb a0 00 00 00 	mov    %r15,0xa0(%rbx)
      59:	4c 8b a3 f0 00 00 00 	mov    0xf0(%rbx),%r12
      60:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
      67:	0f 83 87 00 00 00    	jae    f4 <stomptalk::parser::own_token()+0xf4>
      6d:	4d 89 e5             	mov    %r12,%r13
      70:	49 c1 e5 05          	shl    $0x5,%r13
      74:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
      78:	4e 8b 74 2d 08       	mov    0x8(%rbp,%r13,1),%r14
      7d:	4d 85 f6             	test   %r14,%r14
      80:	74 2e                	je     b0 <stomptalk::parser::own_token()+0xb0>
      82:	4a 8b 74 2d 00       	mov    0x0(%rbp,%r13,1),%rsi
      87:	48 89 f0             	mov    %rsi,%rax
      8a:	48 2b 43 40          	sub    0x40(%rbx),%rax
      8e:	48 3b 43 10          	cmp    0x10(%rbx),%rax
      92:	72 1c                	jb     b0 <stomptalk::parser::own_token()+0xb0>
      94:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
      98:	4c 89 ff             	mov    %r15,%rdi
      9b:	4c 89 f2             	mov    %r14,%rdx
      9e:	e8 00 00 00 00       	call   a3 <stomptalk::parser::own_token()+0xa3>
			9f: R_X86_64_PLT32	memcpy-0x4
      a3:	4c 01 73 48          	add    %r14,0x48(%rbx)
      a7:	4e 89 7c 2d 00       	mov    %r15,0x0(%rbp,%r13,1)
      ac:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
      b0:	4e 8b 74 2d 18       	mov    0x18(%rbp,%r13,1),%r14
      b5:	4d 85 f6             	test   %r14,%r14
      b8:	74 2a                	je     e4 <stomptalk::parser::own_token()+0xe4>
      ba:	4a 8b 74 2d 10       	mov    0x10(%rbp,%r13,1),%rsi
      bf:	48 89 f0             	mov    %rsi,%rax
      c2:	48 2b 43 40          	sub    0x40(%rbx),%rax
      c6:	48 3b 43 10          	cmp    0x10(%rbx),%rax
      ca:	72 18                	jb     e4 <stomptalk::parser::own_token()+0xe4>
      cc:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
      d0:	4c 89 ff             	mov    %r15,%rdi
      d3:	4c 89 f2             	mov    %r14,%rdx
      d6:	e8 00 00 00 00       	call   db <stomptalk::parser::own_token()+0xdb>
			d7: R_X86_64_PLT32	memcpy-0x4
      db:	4c 01 73 48          	add    %r14,0x48(%rbx)
      df:	4e 89 7c 2d 10       	mov    %r15,0x10(%rbp,%r13,1)
      e4:	49 ff c4             	inc    %r12
      e7:	49 83 c5 20          	add    $0x20,%r13
      eb:	4c 3b a3 e8 00 00 00 	cmp    0xe8(%rbx),%r12
      f2:	72 80                	jb     74 <stomptalk::parser::own_token()+0x74>
      f4:	4c 8b b3 c8 00 00 00 	mov    0xc8(%rbx),%r14
      fb:	4d 85 f6             	test   %r14,%r14
      fe:	74 2e                	je     12e <stomptalk::parser::own_token()+0x12e>
     100:	48 8b b3 c0 00 00 00 	mov    0xc0(%rbx),%rsi
     107:	48 89 f0             	mov    %rsi,%rax
     10a:	48 2b 43 40          	sub    0x40(%rbx),%rax
     10e:	48 3b 43 10          	cmp    0x10(%rbx),%rax
     112:	72 1a                	jb     12e <stomptalk::parser::own_token()+0x12e>
     114:	4c 8b 7b 48          	mov    0x48(%rbx),%r15
     118:	4c 89 ff             	mov    %r15,%rdi
     11b:	4c 89 f2             	mov    %r14,%rdx
     11e:	e8 00 00 00 00       	call   123 <stomptalk::parser::own_token()+0x123>
			11f: R_X86_64_PLT32	memcpy-0x4
     123:	4c 01 73 48          	add    %r14,0x48(%rbx)
     127:	4c 89 bb c0 00 00 00 	mov    %r15,0xc0(%rbx)
     12e:	4c 8b 73 48          	mov    0x48(%rbx),%r14
     132:	4c 8b bb d8 00 00 00 	mov    0xd8(%rbx),%r15
     139:	4d 85 ff             	test   %r15,%r15
     13c:	74 16                	je     154 <stomptalk::parser::own_token()+0x154>
     13e:	48 8b b3 d0 00 00 00 	mov    0xd0(%rbx),%rsi
     145:	4c 89 f7             	mov    %r14,%rdi
     148:	4c 89 fa             	mov    %r15,%rdx
     14b:	e8 00 00 00 00       	call   150 <stomptalk::parser::own_token()+0x150>
			14c: R_X86_64_PLT32	memcpy-0x4
     150:	4c 01 7b 48          	add    %r15,0x48(%rbx)
     154:	4c 89 b3 d0 00 00 00 	mov    %r14,0xd0(%rbx)
     15b:	c6 83 0d 01 00 00 01 	movb   $0x1,0x10d(%rbx)
     162:	48 83 c4 08          	add    $0x8,%rsp
     166:	5b                   	pop    %rbx
     167:	41 5c                	pop    %r12
     169:	41 5d                	pop    %r13
     16b:	41 5e                	pop    %r14
     16d:	41 5f                	pop    %r15
     16f:	5d                   	pop    %rbp
     170:	c3                   	ret
     171:	90                   	nop
     172:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     179:	1f 84 00 00 00 00 00

0000000000000260 <stomptalk::parser::finish_value(char const*)>:
     260:	f3 0f 1e fa          	endbr64
     264:	55                   	push   %rbp
     265:	41 57                	push   %r15
     267:	41 56                	push   %r14
     269:	41 55                	push   %r13
     26b:	41 54                	push   %r12
     26d:	53                   	push   %rbx
     26e:	48 83 ec 28          	sub    $0x28,%rsp
     272:	48 8b 9f d0 00 00 00 	mov    0xd0(%rdi),%rbx
     279:	4c 8b bf d8 00 00 00 	mov    0xd8(%rdi),%r15
     280:	c6 87 0d 01 00 00 00 	movb   $0x0,0x10d(%rdi)
     287:	0f 57 c9             	xorps  %xmm1,%xmm1
     28a:	0f 11 8f d0 00 00 00 	movups %xmm1,0xd0(%rdi)
     291:	80 bf 0c 01 00 00 01 	cmpb   $0x1,0x10c(%rdi)
     298:	74 55                	je     2ef <stomptalk::parser::finish_value(char const*)+0x8f>
     29a:	48 8b 47 38          	mov    0x38(%rdi),%rax
     29e:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
     2a5:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     2a9:	48 89 97 e8 00 00 00 	mov    %rdx,0xe8(%rdi)
     2b0:	48 c1 e1 05          	shl    $0x5,%rcx
     2b4:	0f 10 87 c0 00 00 00 	movups 0xc0(%rdi),%xmm0
     2bb:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
     2bf:	48 89 5c 08 10       	mov    %rbx,0x10(%rax,%rcx,1)
     2c4:	4c 89 7c 08 18       	mov    %r15,0x18(%rax,%rcx,1)
     2c9:	48 ff 87 80 00 00 00 	incq   0x80(%rdi)
     2d0:	c6 87 0c 01 00 00 00 	movb   $0x0,0x10c(%rdi)
     2d7:	0f 11 8f c0 00 00 00 	movups %xmm1,0xc0(%rdi)
     2de:	b0 01                	mov    $0x1,%al
     2e0:	48 83 c4 28          	add    $0x28,%rsp
     2e4:	5b                   	pop    %rbx
     2e5:	41 5c                	pop    %r12
     2e7:	41 5d                	pop    %r13
     2e9:	41 5e                	pop    %r14
     2eb:	41 5f                	pop    %r15
     2ed:	5d                   	pop    %rbp
     2ee:	c3                   	ret
     2ef:	49 83 ff 15          	cmp    $0x15,%r15
     2f3:	73 79                	jae    36e <stomptalk::parser::finish_value(char const*)+0x10e>
     2f5:	4d 85 ff             	test   %r15,%r15
     2f8:	0f 84 20 06 00 00    	je     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     2fe:	4c 89 f9             	mov    %r15,%rcx
     301:	48 89 d8             	mov    %rbx,%rax
     304:	49 83 ff 13          	cmp    $0x13,%r15
     308:	0f 83 88 00 00 00    	jae    396 <stomptalk::parser::finish_value(char const*)+0x136>
     30e:	49 83 ff 02          	cmp    $0x2,%r15
     312:	0f 85 1d 02 00 00    	jne    535 <stomptalk::parser::finish_value(char const*)+0x2d5>
     318:	0f b6 03             	movzbl (%rbx),%eax
     31b:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     31e:	80 f9 f6             	cmp    $0xf6,%cl
     321:	0f 82 f7 05 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     327:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     32b:	4c 8d 34 45 20 fe ff 	lea    -0x1e0(,%rax,2),%r14
     332:	ff
     333:	48 0f be 43 01       	movsbq 0x1(%rbx),%rax
     338:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     33b:	80 f9 f6             	cmp    $0xf6,%cl
     33e:	0f 82 2e 02 00 00    	jb     572 <stomptalk::parser::finish_value(char const*)+0x312>
     344:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
     348:	49 01 c6             	add    %rax,%r14
     34b:	4d 85 f6             	test   %r14,%r14
     34e:	0f 88 ca 05 00 00    	js     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     354:	4c 3b 77 20          	cmp    0x20(%rdi),%r14
     358:	0f 87 05 02 00 00    	ja     563 <stomptalk::parser::finish_value(char const*)+0x303>
     35e:	4c 89 b7 88 00 00 00 	mov    %r14,0x88(%rdi)
     365:	80 4f 78 01          	orb    $0x1,0x78(%rdi)
     369:	e9 2c ff ff ff       	jmp    29a <stomptalk::parser::finish_value(char const*)+0x3a>
     36e:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
     372:	48 83 c0 ec          	add    $0xffffffffffffffec,%rax
     376:	48 89 da             	mov    %rbx,%rdx
     379:	4d 89 f8             	mov    %r15,%r8
     37c:	b9 14 00 00 00       	mov    $0x14,%ecx
     381:	80 3a 30             	cmpb   $0x30,(%rdx)
     384:	0f 85 94 05 00 00    	jne    91e <stomptalk::parser::finish_value(char const*)+0x6be>
     38a:	48 ff c2             	inc    %rdx
     38d:	49 ff c8             	dec    %r8
     390:	49 83 f8 14          	cmp    $0x14,%r8
     394:	77 eb                	ja     381 <stomptalk::parser::finish_value(char const*)+0x121>
     396:	48 8d 51 ee          	lea    -0x12(%rcx),%rdx
     39a:	45 31 e4             	xor    %r12d,%r12d
     39d:	45 31 c0             	xor    %r8d,%r8d
     3a0:	46 0f b6 0c 00       	movzbl (%rax,%r8,1),%r9d
     3a5:	41 83 c1 d0          	add    $0xffffffd0,%r9d
     3a9:	41 83 f9 09          	cmp    $0x9,%r9d
     3ad:	0f 87 6b 05 00 00    	ja     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     3b3:	4f 8d 14 a4          	lea    (%r12,%r12,4),%r10
     3b7:	45 89 c9             	mov    %r9d,%r9d
     3ba:	4f 8d 24 51          	lea    (%r9,%r10,2),%r12
     3be:	49 ff c0             	inc    %r8
     3c1:	4c 39 c2             	cmp    %r8,%rdx
     3c4:	75 da                	jne    3a0 <stomptalk::parser::finish_value(char const*)+0x140>
     3c6:	0f b6 54 08 ee       	movzbl -0x12(%rax,%rcx,1),%edx
     3cb:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     3cf:	41 80 f8 f6          	cmp    $0xf6,%r8b
     3d3:	0f 82 45 05 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     3d9:	48 01 c8             	add    %rcx,%rax
     3dc:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     3e3:	00 00 80
     3e6:	49 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%r8
     3ed:	45 63 01
     3f0:	49 0f af d0          	imul   %r8,%rdx
     3f4:	49 be 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%r14
     3fb:	f9 62 bd
     3fe:	49 01 d6             	add    %rdx,%r14
     401:	0f b6 50 ef          	movzbl -0x11(%rax),%edx
     405:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     409:	41 80 f8 f6          	cmp    $0xf6,%r8b
     40d:	0f 82 db 00 00 00    	jb     4ee <stomptalk::parser::finish_value(char const*)+0x28e>
     413:	49 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%r8
     41a:	86 23 00
     41d:	49 0f af d0          	imul   %r8,%rdx
     421:	49 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r9
     428:	b2 56 f9
     42b:	49 01 d1             	add    %rdx,%r9
     42e:	0f b6 50 f0          	movzbl -0x10(%rax),%edx
     432:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     436:	41 80 f8 f6          	cmp    $0xf6,%r8b
     43a:	0f 82 ab 00 00 00    	jb     4eb <stomptalk::parser::finish_value(char const*)+0x28b>
     440:	49 b8 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%r8
     447:	8d 03 00
     44a:	49 0f af d0          	imul   %r8,%rdx
     44e:	49 ba 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%r10
     455:	78 55 ff
     458:	49 01 d2             	add    %rdx,%r10
     45b:	0f b6 50 f1          	movzbl -0xf(%rax),%edx
     45f:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     463:	41 80 f8 f6          	cmp    $0xf6,%r8b
     467:	72 7f                	jb     4e8 <stomptalk::parser::finish_value(char const*)+0x288>
     469:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
     46e:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
     473:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
     478:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
     47d:	48 be 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rsi
     484:	5a 00 00
     487:	48 0f af d6          	imul   %rsi,%rdx
     48b:	49 bd 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%r13
     492:	f2 ee ff
     495:	49 01 d5             	add    %rdx,%r13
     498:	0f b6 68 f2          	movzbl -0xe(%rax),%ebp
     49c:	8d 55 c6             	lea    -0x3a(%rbp),%edx
     49f:	80 fa f6             	cmp    $0xf6,%dl
     4a2:	72 2a                	jb     4ce <stomptalk::parser::finish_value(char const*)+0x26e>
     4a4:	48 b9 00 a0 72 4e 18 	movabs $0x9184e72a000,%rcx
     4ab:	09 00 00
     4ae:	48 0f af e9          	imul   %rcx,%rbp
     4b2:	48 83 c0 f3          	add    $0xfffffffffffffff3,%rax
     4b6:	48 89 c7             	mov    %rax,%rdi
     4b9:	e8 00 00 00 00       	call   4be <stomptalk::parser::finish_value(char const*)+0x25e>
			4ba: R_X86_64_PLT32	.text+0x97c
     4be:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
     4c5:	4b fe ff
     4c8:	48 01 c1             	add    %rax,%rcx
     4cb:	48 01 e9             	add    %rbp,%rcx
     4ce:	4c 01 e9             	add    %r13,%rcx
     4d1:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
     4d6:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
     4db:	0f 57 c9             	xorps  %xmm1,%xmm1
     4de:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
     4e3:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
     4e8:	4c 01 d1             	add    %r10,%rcx
     4eb:	4c 01 c9             	add    %r9,%rcx
     4ee:	49 83 fc 13          	cmp    $0x13,%r12
     4f2:	0f 93 c0             	setae  %al
     4f5:	49 01 ce             	add    %rcx,%r14
     4f8:	0f 88 83 00 00 00    	js     581 <stomptalk::parser::finish_value(char const*)+0x321>
     4fe:	84 c0                	test   %al,%al
     500:	0f 85 18 04 00 00    	jne    91e <stomptalk::parser::finish_value(char const*)+0x6be>
     506:	49 83 fc 12          	cmp    $0x12,%r12
     50a:	75 13                	jne    51f <stomptalk::parser::finish_value(char const*)+0x2bf>
     50c:	48 b8 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rax
     513:	27 33 06
     516:	49 39 c6             	cmp    %rax,%r14
     519:	0f 87 ff 03 00 00    	ja     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     51f:	48 b8 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rax
     526:	b6 e0 0d
     529:	4c 0f af e0          	imul   %rax,%r12
     52d:	4d 01 e6             	add    %r12,%r14
     530:	e9 1f fe ff ff       	jmp    354 <stomptalk::parser::finish_value(char const*)+0xf4>
     535:	49 8d 47 ff          	lea    -0x1(%r15),%rax
     539:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 540 <stomptalk::parser::finish_value(char const*)+0x2e0>
			53c: R_X86_64_PC32	.rodata-0x4
     540:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
     544:	48 01 c8             	add    %rcx,%rax
     547:	3e ff e0             	notrack jmp *%rax
     54a:	44 0f b6 33          	movzbl (%rbx),%r14d
     54e:	41 8d 46 c6          	lea    -0x3a(%r14),%eax
     552:	3c f6                	cmp    $0xf6,%al
     554:	0f 82 c4 03 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     55a:	49 83 c6 d0          	add    $0xffffffffffffffd0,%r14
     55e:	e9 e8 fd ff ff       	jmp    34b <stomptalk::parser::finish_value(char const*)+0xeb>
     563:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
     56a:	00 00 00
     56d:	e9 b6 03 00 00       	jmp    928 <stomptalk::parser::finish_value(char const*)+0x6c8>
     572:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     579:	00 00 80
     57c:	e9 c7 fd ff ff       	jmp    348 <stomptalk::parser::finish_value(char const*)+0xe8>
     581:	b0 01                	mov    $0x1,%al
     583:	e9 76 ff ff ff       	jmp    4fe <stomptalk::parser::finish_value(char const*)+0x29e>
     588:	0f b6 0b             	movzbl (%rbx),%ecx
     58b:	8d 41 c6             	lea    -0x3a(%rcx),%eax
     58e:	3c f6                	cmp    $0xf6,%al
     590:	0f 82 88 03 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     596:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     59d:	00 00 80
     5a0:	4c 6b f1 64          	imul   $0x64,%rcx,%r14
     5a4:	49 81 c6 40 ed ff ff 	add    $0xffffffffffffed40,%r14
     5ab:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
     5af:	8d 51 c6             	lea    -0x3a(%rcx),%edx
     5b2:	80 fa f6             	cmp    $0xf6,%dl
     5b5:	0f 82 8d fd ff ff    	jb     348 <stomptalk::parser::finish_value(char const*)+0xe8>
     5bb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     5bf:	48 0f be 53 02       	movsbq 0x2(%rbx),%rdx
     5c4:	44 8d 42 c6          	lea    -0x3a(%rdx),%r8d
     5c8:	48 83 c2 d0          	add    $0xffffffffffffffd0,%rdx
     5cc:	41 80 f8 f6          	cmp    $0xf6,%r8b
     5d0:	48 0f 42 d0          	cmovb  %rax,%rdx
     5d4:	48 8d 04 4a          	lea    (%rdx,%rcx,2),%rax
     5d8:	48 05 20 fe ff ff    	add    $0xfffffffffffffe20,%rax
     5de:	e9 65 fd ff ff       	jmp    348 <stomptalk::parser::finish_value(char const*)+0xe8>
     5e3:	49 89 fe             	mov    %rdi,%r14
     5e6:	48 89 df             	mov    %rbx,%rdi
     5e9:	49 89 f4             	mov    %rsi,%r12
     5ec:	e8 00 00 00 00       	call   5f1 <stomptalk::parser::finish_value(char const*)+0x391>
			5ed: R_X86_64_PLT32	.text.unlikely.+0x126c
     5f1:	e9 c1 02 00 00       	jmp    8b7 <stomptalk::parser::finish_value(char const*)+0x657>
     5f6:	0f b6 03             	movzbl (%rbx),%eax
     5f9:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     5fc:	80 f9 f6             	cmp    $0xf6,%cl
     5ff:	0f 82 19 03 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     605:	4c 69 e8 10 27 00 00 	imul   $0x2710,%rax,%r13
     60c:	48 8d 43 01          	lea    0x1(%rbx),%rax
     610:	49 89 fe             	mov    %rdi,%r14
     613:	48 89 c7             	mov    %rax,%rdi
     616:	49 89 f4             	mov    %rsi,%r12
     619:	e8 00 00 00 00       	call   61e <stomptalk::parser::finish_value(char const*)+0x3be>
			61a: R_X86_64_PLT32	.text.unlikely.+0x126c
     61e:	0f 57 c9             	xorps  %xmm1,%xmm1
     621:	4c 89 e6             	mov    %r12,%rsi
     624:	4c 89 f7             	mov    %r14,%rdi
     627:	4e 8d 34 28          	lea    (%rax,%r13,1),%r14
     62b:	49 81 c6 00 ad f8 ff 	add    $0xfffffffffff8ad00,%r14
     632:	e9 14 fd ff ff       	jmp    34b <stomptalk::parser::finish_value(char const*)+0xeb>
     637:	0f b6 03             	movzbl (%rbx),%eax
     63a:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     63d:	80 f9 f6             	cmp    $0xf6,%cl
     640:	0f 82 d8 02 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     646:	49 89 f4             	mov    %rsi,%r12
     649:	49 89 fd             	mov    %rdi,%r13
     64c:	4c 69 f0 a0 86 01 00 	imul   $0x186a0,%rax,%r14
     653:	49 81 c6 00 c2 b6 ff 	add    $0xffffffffffb6c200,%r14
     65a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     65e:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     661:	80 f9 f6             	cmp    $0xf6,%cl
     664:	0f 82 ab 00 00 00    	jb     715 <stomptalk::parser::finish_value(char const*)+0x4b5>
     66a:	48 69 e8 10 27 00 00 	imul   $0x2710,%rax,%rbp
     671:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     675:	e8 00 00 00 00       	call   67a <stomptalk::parser::finish_value(char const*)+0x41a>
			676: R_X86_64_PLT32	.text.unlikely.+0x126c
     67a:	48 01 e8             	add    %rbp,%rax
     67d:	48 05 00 ad f8 ff    	add    $0xfffffffffff8ad00,%rax
     683:	e9 97 00 00 00       	jmp    71f <stomptalk::parser::finish_value(char const*)+0x4bf>
     688:	49 89 fe             	mov    %rdi,%r14
     68b:	48 89 df             	mov    %rbx,%rdi
     68e:	49 89 f4             	mov    %rsi,%r12
     691:	e8 00 00 00 00       	call   696 <stomptalk::parser::finish_value(char const*)+0x436>
			692: R_X86_64_PLT32	.text.unlikely.+0x118c
     696:	e9 1c 02 00 00       	jmp    8b7 <stomptalk::parser::finish_value(char const*)+0x657>
     69b:	0f b6 03             	movzbl (%rbx),%eax
     69e:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     6a1:	80 f9 f6             	cmp    $0xf6,%cl
     6a4:	0f 82 74 02 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     6aa:	4c 69 e8 80 96 98 00 	imul   $0x989680,%rax,%r13
     6b1:	48 8d 43 01          	lea    0x1(%rbx),%rax
     6b5:	49 89 fe             	mov    %rdi,%r14
     6b8:	48 89 c7             	mov    %rax,%rdi
     6bb:	49 89 f4             	mov    %rsi,%r12
     6be:	e8 00 00 00 00       	call   6c3 <stomptalk::parser::finish_value(char const*)+0x463>
			6bf: R_X86_64_PLT32	.text.unlikely.+0x118c
     6c3:	0f 57 c9             	xorps  %xmm1,%xmm1
     6c6:	4c 89 e6             	mov    %r12,%rsi
     6c9:	4c 89 f7             	mov    %r14,%rdi
     6cc:	4e 8d 34 28          	lea    (%rax,%r13,1),%r14
     6d0:	49 81 c6 00 c8 63 e3 	add    $0xffffffffe363c800,%r14
     6d7:	e9 6f fc ff ff       	jmp    34b <stomptalk::parser::finish_value(char const*)+0xeb>
     6dc:	0f b6 03             	movzbl (%rbx),%eax
     6df:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     6e2:	80 f9 f6             	cmp    $0xf6,%cl
     6e5:	0f 82 33 02 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     6eb:	49 89 f4             	mov    %rsi,%r12
     6ee:	49 89 fd             	mov    %rdi,%r13
     6f1:	48 69 c0 00 e1 f5 05 	imul   $0x5f5e100,%rax,%rax
     6f8:	49 be 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%r14
     6ff:	ff ff ff
     702:	49 01 c6             	add    %rax,%r14
     705:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
     709:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     70c:	80 f9 f6             	cmp    $0xf6,%cl
     70f:	0f 83 74 02 00 00    	jae    989 <stomptalk::parser::finish_value(char const*)+0x729>
     715:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
     71c:	00 00 80
     71f:	49 01 c6             	add    %rax,%r14
     722:	e9 aa 02 00 00       	jmp    9d1 <stomptalk::parser::finish_value(char const*)+0x771>
     727:	49 89 fe             	mov    %rdi,%r14
     72a:	48 89 df             	mov    %rbx,%rdi
     72d:	49 89 f4             	mov    %rsi,%r12
     730:	e8 00 00 00 00       	call   735 <stomptalk::parser::finish_value(char const*)+0x4d5>
			731: R_X86_64_PLT32	.text.unlikely.+0x110c
     735:	e9 7d 01 00 00       	jmp    8b7 <stomptalk::parser::finish_value(char const*)+0x657>
     73a:	44 0f b6 23          	movzbl (%rbx),%r12d
     73e:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     743:	3c f6                	cmp    $0xf6,%al
     745:	0f 82 d3 01 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     74b:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
     752:	00 00 00
     755:	4c 0f af e0          	imul   %rax,%r12
     759:	48 8d 43 01          	lea    0x1(%rbx),%rax
     75d:	49 89 fe             	mov    %rdi,%r14
     760:	48 89 c7             	mov    %rax,%rdi
     763:	49 89 f5             	mov    %rsi,%r13
     766:	e8 00 00 00 00       	call   76b <stomptalk::parser::finish_value(char const*)+0x50b>
			767: R_X86_64_PLT32	.text.unlikely.+0x110c
     76b:	0f 57 c9             	xorps  %xmm1,%xmm1
     76e:	4c 89 ee             	mov    %r13,%rsi
     771:	4c 89 f7             	mov    %r14,%rdi
     774:	49 be 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%r14
     77b:	ff ff ff
     77e:	e9 85 01 00 00       	jmp    908 <stomptalk::parser::finish_value(char const*)+0x6a8>
     783:	0f b6 03             	movzbl (%rbx),%eax
     786:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     789:	80 f9 f6             	cmp    $0xf6,%cl
     78c:	0f 82 8c 01 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     792:	49 89 f4             	mov    %rsi,%r12
     795:	49 89 fd             	mov    %rdi,%r13
     798:	48 b9 00 e8 76 48 17 	movabs $0x174876e800,%rcx
     79f:	00 00 00
     7a2:	48 0f af c1          	imul   %rcx,%rax
     7a6:	49 be 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%r14
     7ad:	fb ff ff
     7b0:	49 01 c6             	add    %rax,%r14
     7b3:	0f b6 6b 01          	movzbl 0x1(%rbx),%ebp
     7b7:	8d 45 c6             	lea    -0x3a(%rbp),%eax
     7ba:	3c f6                	cmp    $0xf6,%al
     7bc:	0f 82 bb 01 00 00    	jb     97d <stomptalk::parser::finish_value(char const*)+0x71d>
     7c2:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
     7c9:	00 00 00
     7cc:	48 0f af e8          	imul   %rax,%rbp
     7d0:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     7d4:	e8 00 00 00 00       	call   7d9 <stomptalk::parser::finish_value(char const*)+0x579>
			7d5: R_X86_64_PLT32	.text.unlikely.+0x110c
     7d9:	48 b9 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rcx
     7e0:	ff ff ff
     7e3:	e9 e0 01 00 00       	jmp    9c8 <stomptalk::parser::finish_value(char const*)+0x768>
     7e8:	49 89 fe             	mov    %rdi,%r14
     7eb:	48 89 df             	mov    %rbx,%rdi
     7ee:	49 89 f4             	mov    %rsi,%r12
     7f1:	e8 00 00 00 00       	call   7f6 <stomptalk::parser::finish_value(char const*)+0x596>
			7f2: R_X86_64_PLT32	.text+0x97c
     7f6:	e9 bc 00 00 00       	jmp    8b7 <stomptalk::parser::finish_value(char const*)+0x657>
     7fb:	44 0f b6 23          	movzbl (%rbx),%r12d
     7ff:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     804:	3c f6                	cmp    $0xf6,%al
     806:	0f 82 12 01 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     80c:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
     813:	09 00 00
     816:	4c 0f af e0          	imul   %rax,%r12
     81a:	48 8d 43 01          	lea    0x1(%rbx),%rax
     81e:	49 89 fe             	mov    %rdi,%r14
     821:	48 89 c7             	mov    %rax,%rdi
     824:	49 89 f5             	mov    %rsi,%r13
     827:	e8 00 00 00 00       	call   82c <stomptalk::parser::finish_value(char const*)+0x5cc>
			828: R_X86_64_PLT32	.text+0x97c
     82c:	0f 57 c9             	xorps  %xmm1,%xmm1
     82f:	4c 89 ee             	mov    %r13,%rsi
     832:	4c 89 f7             	mov    %r14,%rdi
     835:	49 be 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%r14
     83c:	4b fe ff
     83f:	e9 c4 00 00 00       	jmp    908 <stomptalk::parser::finish_value(char const*)+0x6a8>
     844:	0f b6 03             	movzbl (%rbx),%eax
     847:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     84a:	80 f9 f6             	cmp    $0xf6,%cl
     84d:	0f 82 cb 00 00 00    	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     853:	49 89 f4             	mov    %rsi,%r12
     856:	49 89 fd             	mov    %rdi,%r13
     859:	48 b9 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rcx
     860:	5a 00 00
     863:	48 0f af c1          	imul   %rcx,%rax
     867:	49 be 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%r14
     86e:	f2 ee ff
     871:	49 01 c6             	add    %rax,%r14
     874:	0f b6 6b 01          	movzbl 0x1(%rbx),%ebp
     878:	8d 45 c6             	lea    -0x3a(%rbp),%eax
     87b:	3c f6                	cmp    $0xf6,%al
     87d:	0f 82 fa 00 00 00    	jb     97d <stomptalk::parser::finish_value(char const*)+0x71d>
     883:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
     88a:	09 00 00
     88d:	48 0f af e8          	imul   %rax,%rbp
     891:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     895:	e8 00 00 00 00       	call   89a <stomptalk::parser::finish_value(char const*)+0x63a>
			896: R_X86_64_PLT32	.text+0x97c
     89a:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
     8a1:	4b fe ff
     8a4:	e9 1f 01 00 00       	jmp    9c8 <stomptalk::parser::finish_value(char const*)+0x768>
     8a9:	49 89 fe             	mov    %rdi,%r14
     8ac:	48 89 df             	mov    %rbx,%rdi
     8af:	49 89 f4             	mov    %rsi,%r12
     8b2:	e8 00 00 00 00       	call   8b7 <stomptalk::parser::finish_value(char const*)+0x657>
			8b3: R_X86_64_PLT32	.text.unlikely.+0x105c
     8b7:	0f 57 c9             	xorps  %xmm1,%xmm1
     8ba:	4c 89 e6             	mov    %r12,%rsi
     8bd:	4c 89 f7             	mov    %r14,%rdi
     8c0:	49 89 c6             	mov    %rax,%r14
     8c3:	e9 83 fa ff ff       	jmp    34b <stomptalk::parser::finish_value(char const*)+0xeb>
     8c8:	44 0f b6 23          	movzbl (%rbx),%r12d
     8cc:	41 8d 44 24 c6       	lea    -0x3a(%r12),%eax
     8d1:	3c f6                	cmp    $0xf6,%al
     8d3:	72 49                	jb     91e <stomptalk::parser::finish_value(char const*)+0x6be>
     8d5:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
     8dc:	86 23 00
     8df:	4c 0f af e0          	imul   %rax,%r12
     8e3:	48 8d 43 01          	lea    0x1(%rbx),%rax
     8e7:	49 89 fe             	mov    %rdi,%r14
     8ea:	48 89 c7             	mov    %rax,%rdi
     8ed:	49 89 f5             	mov    %rsi,%r13
     8f0:	e8 00 00 00 00       	call   8f5 <stomptalk::parser::finish_value(char const*)+0x695>
			8f1: R_X86_64_PLT32	.text.unlikely.+0x105c
     8f5:	0f 57 c9             	xorps  %xmm1,%xmm1
     8f8:	4c 89 ee             	mov    %r13,%rsi
     8fb:	4c 89 f7             	mov    %r14,%rdi
     8fe:	49 be 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%r14
     905:	b2 56 f9
     908:	49 01 c6             	add    %rax,%r14
     90b:	4d 01 e6             	add    %r12,%r14
     90e:	e9 38 fa ff ff       	jmp    34b <stomptalk::parser::finish_value(char const*)+0xeb>
     913:	0f b6 03             	movzbl (%rbx),%eax
     916:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     919:	80 f9 f6             	cmp    $0xf6,%cl
     91c:	73 33                	jae    951 <stomptalk::parser::finish_value(char const*)+0x6f1>
     91e:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
     925:	00 00 00
     928:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
     92f:	48 89 f0             	mov    %rsi,%rax
     932:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
     939:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
     940:	48 ff c6             	inc    %rsi
     943:	48 89 b7 28 01 00 00 	mov    %rsi,0x128(%rdi)
     94a:	31 c0                	xor    %eax,%eax
     94c:	e9 8f f9 ff ff       	jmp    2e0 <stomptalk::parser::finish_value(char const*)+0x80>
     951:	49 89 f4             	mov    %rsi,%r12
     954:	49 89 fd             	mov    %rdi,%r13
     957:	48 b9 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rcx
     95e:	45 63 01
     961:	48 0f af c1          	imul   %rcx,%rax
     965:	49 be 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%r14
     96c:	f9 62 bd
     96f:	49 01 c6             	add    %rax,%r14
     972:	0f b6 6b 01          	movzbl 0x1(%rbx),%ebp
     976:	8d 45 c6             	lea    -0x3a(%rbp),%eax
     979:	3c f6                	cmp    $0xf6,%al
     97b:	73 2a                	jae    9a7 <stomptalk::parser::finish_value(char const*)+0x747>
     97d:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
     984:	00 00 80
     987:	eb 45                	jmp    9ce <stomptalk::parser::finish_value(char const*)+0x76e>
     989:	48 69 e8 80 96 98 00 	imul   $0x989680,%rax,%rbp
     990:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     994:	e8 00 00 00 00       	call   999 <stomptalk::parser::finish_value(char const*)+0x739>
			995: R_X86_64_PLT32	.text.unlikely.+0x118c
     999:	48 01 e8             	add    %rbp,%rax
     99c:	48 05 00 c8 63 e3    	add    $0xffffffffe363c800,%rax
     9a2:	e9 78 fd ff ff       	jmp    71f <stomptalk::parser::finish_value(char const*)+0x4bf>
     9a7:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
     9ae:	86 23 00
     9b1:	48 0f af e8          	imul   %rax,%rbp
     9b5:	48 8d 7b 02          	lea    0x2(%rbx),%rdi
     9b9:	e8 00 00 00 00       	call   9be <stomptalk::parser::finish_value(char const*)+0x75e>
			9ba: R_X86_64_PLT32	.text.unlikely.+0x105c
     9be:	48 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rcx
     9c5:	b2 56 f9
     9c8:	48 01 c1             	add    %rax,%rcx
     9cb:	48 01 e9             	add    %rbp,%rcx
     9ce:	49 01 ce             	add    %rcx,%r14
     9d1:	4c 89 ef             	mov    %r13,%rdi
     9d4:	4c 89 e6             	mov    %r12,%rsi
     9d7:	0f 57 c9             	xorps  %xmm1,%xmm1
     9da:	e9 6c f9 ff ff       	jmp    34b <stomptalk::parser::finish_value(char const*)+0xeb>
     9df:	90                   	nop

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
       e:	48 83 ec 48          	sub    $0x48,%rsp
      12:	48 89 d3             	mov    %rdx,%rbx
      15:	49 89 f6             	mov    %rsi,%r14
      18:	49 89 fb             	mov    %rdi,%r11
      1b:	4c 8d 8f c0 00 00 00 	lea    0xc0(%rdi),%r9
      22:	4c 8d 97 d0 00 00 00 	lea    0xd0(%rdi),%r10
      29:	48 8d 47 70          	lea    0x70(%rdi),%rax
      2d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
      32:	48 8d 87 09 01 00 00 	lea    0x109(%rdi),%rax
      39:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
      3e:	0f 57 e4             	xorps  %xmm4,%xmm4
      41:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 49 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x49>
      48:	00
			45: R_X86_64_PC32	.LCPI48_0-0x4
      49:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 51 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x51>
      50:	00
			4d: R_X86_64_PC32	.LCPI48_1-0x4
      51:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 59 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x59>
      58:	00
			55: R_X86_64_PC32	.LCPI48_2-0x4
      59:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 62 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x62>
      60:	00 00
			5e: R_X86_64_PC32	.LCPI48_3-0x4
      62:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
      69:	7f 7f 7f
      6c:	48 89 3c 24          	mov    %rdi,(%rsp)
      70:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
      75:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
      7a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
      7f:	eb 38                	jmp    b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb9>
      81:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
      88:	0f 1f 84 00 00 00 00
      8f:	00
      90:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 97 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x97>
			93: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
      97:	49 89 4b 60          	mov    %rcx,0x60(%r11)
      9b:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
      a2:	00
      a3:	49 89 c6             	mov    %rax,%r14
      a6:	48 39 d8             	cmp    %rbx,%rax
      a9:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
      b0:	7f 7f 7f
      b3:	0f 83 4d 18 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
      b9:	41 0f b6 06          	movzbl (%r14),%eax
      bd:	83 f8 0d             	cmp    $0xd,%eax
      c0:	0f 84 a2 03 00 00    	je     468 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x468>
      c6:	83 f8 0a             	cmp    $0xa,%eax
      c9:	0f 84 90 09 00 00    	je     a5f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa5f>
      cf:	49 8b 83 80 00 00 00 	mov    0x80(%r11),%rax
      d6:	49 3b 43 18          	cmp    0x18(%r11),%rax
      da:	0f 84 72 1b 00 00    	je     1c52 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c52>
      e0:	49 8b 83 e8 00 00 00 	mov    0xe8(%r11),%rax
      e7:	49 3b 43 08          	cmp    0x8(%r11),%rax
      eb:	0f 84 92 1d 00 00    	je     1e83 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e83>
      f1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf8>
			f4: R_X86_64_PC32	char const* stomptalk::parser::hdrline<3u>(char const*, char const*)-0x4
      f8:	49 89 43 60          	mov    %rax,0x60(%r11)
      fc:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     103:	00
     104:	49 39 de             	cmp    %rbx,%r14
     107:	0f 83 f9 17 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     10d:	41 0f b6 ab 0a 01 00 	movzbl 0x10a(%r11),%ebp
     114:	00
     115:	4d 89 f7             	mov    %r14,%r15
     118:	40 80 fd 01          	cmp    $0x1,%bpl
     11c:	0f 84 14 0c 00 00    	je     d36 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd36>
     122:	49 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%r11)
     129:	00
     12a:	0f 94 c1             	sete   %cl
     12d:	41 0f b6 83 0b 01 00 	movzbl 0x10b(%r11),%eax
     134:	00
     135:	48 89 da             	mov    %rbx,%rdx
     138:	4c 29 fa             	sub    %r15,%rdx
     13b:	48 83 fa 10          	cmp    $0x10,%rdx
     13f:	0f 8c 44 1c 00 00    	jl     1d89 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d89>
     145:	4d 89 fe             	mov    %r15,%r14
     148:	45 31 e4             	xor    %r12d,%r12d
     14b:	f3 41 0f 6f 06       	movdqu (%r14),%xmm0
     150:	66 0f ef c9          	pxor   %xmm1,%xmm1
     154:	66 0f ef d2          	pxor   %xmm2,%xmm2
     158:	84 c0                	test   %al,%al
     15a:	75 09                	jne    165 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x165>
     15c:	66 0f 6f d0          	movdqa %xmm0,%xmm2
     160:	66 41 0f 74 d0       	pcmpeqb %xmm8,%xmm2
     165:	66 0f 6f d8          	movdqa %xmm0,%xmm3
     169:	66 0f 74 dd          	pcmpeqb %xmm5,%xmm3
     16d:	66 0f d7 f3          	pmovmskb %xmm3,%esi
     171:	66 0f 74 c8          	pcmpeqb %xmm0,%xmm1
     175:	66 0f 6f d8          	movdqa %xmm0,%xmm3
     179:	66 0f 74 de          	pcmpeqb %xmm6,%xmm3
     17d:	66 0f 74 c7          	pcmpeqb %xmm7,%xmm0
     181:	66 0f eb c3          	por    %xmm3,%xmm0
     185:	66 0f eb c1          	por    %xmm1,%xmm0
     189:	66 0f eb c2          	por    %xmm2,%xmm0
     18d:	66 0f d7 f8          	pmovmskb %xmm0,%edi
     191:	85 f6                	test   %esi,%esi
     193:	74 2d                	je     1c2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c2>
     195:	f6 c1 01             	test   $0x1,%cl
     198:	74 28                	je     1c2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c2>
     19a:	f3 0f bc ce          	tzcnt  %esi,%ecx
     19e:	85 ff                	test   %edi,%edi
     1a0:	74 0e                	je     1b0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b0>
     1a2:	f3 44 0f bc c7       	tzcnt  %edi,%r8d
     1a7:	44 39 c1             	cmp    %r8d,%ecx
     1aa:	0f 83 26 11 00 00    	jae    12d6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12d6>
     1b0:	41 89 cc             	mov    %ecx,%r12d
     1b3:	4d 01 f4             	add    %r14,%r12
     1b6:	44 8d 46 ff          	lea    -0x1(%rsi),%r8d
     1ba:	41 21 f0             	and    %esi,%r8d
     1bd:	31 c9                	xor    %ecx,%ecx
     1bf:	44 89 c6             	mov    %r8d,%esi
     1c2:	84 c0                	test   %al,%al
     1c4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
     1ca:	41 0f 45 f0          	cmovne %r8d,%esi
     1ce:	09 fe                	or     %edi,%esi
     1d0:	75 1e                	jne    1f0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f0>
     1d2:	49 83 c6 10          	add    $0x10,%r14
     1d6:	48 83 c2 f0          	add    $0xfffffffffffffff0,%rdx
     1da:	48 83 fa 0f          	cmp    $0xf,%rdx
     1de:	0f 8f 67 ff ff ff    	jg     14b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14b>
     1e4:	e9 8c 12 00 00       	jmp    1475 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1475>
     1e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     1f0:	f3 0f bc c6          	tzcnt  %esi,%eax
     1f4:	49 01 c6             	add    %rax,%r14
     1f7:	4d 85 e4             	test   %r12,%r12
     1fa:	0f 84 2e 0b 00 00    	je     d2e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd2e>
     200:	4d 89 e5             	mov    %r12,%r13
     203:	4d 29 fd             	sub    %r15,%r13
     206:	0f 84 0c 17 00 00    	je     1918 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1918>
     20c:	49 8b 8b 00 01 00 00 	mov    0x100(%r11),%rcx
     213:	48 89 c8             	mov    %rcx,%rax
     216:	4c 29 e8             	sub    %r13,%rax
     219:	0f 82 9b 19 00 00    	jb     1bba <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bba>
     21f:	49 89 83 00 01 00 00 	mov    %rax,0x100(%r11)
     226:	41 80 bb 0d 01 00 00 	cmpb   $0x1,0x10d(%r11)
     22d:	01
     22e:	0f 84 89 11 00 00    	je     13bd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13bd>
     234:	49 8b 83 d8 00 00 00 	mov    0xd8(%r11),%rax
     23b:	48 85 c0             	test   %rax,%rax
     23e:	75 05                	jne    245 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x245>
     240:	4d 89 3a             	mov    %r15,(%r10)
     243:	31 c0                	xor    %eax,%eax
     245:	4c 01 e8             	add    %r13,%rax
     248:	49 89 83 d8 00 00 00 	mov    %rax,0xd8(%r11)
     24f:	48 85 c0             	test   %rax,%rax
     252:	0f 84 0e 1d 00 00    	je     1f66 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f66>
     258:	49 8b 8b d0 00 00 00 	mov    0xd0(%r11),%rcx
     25f:	41 c6 83 0d 01 00 00 	movb   $0x0,0x10d(%r11)
     266:	00
     267:	41 0f 11 22          	movups %xmm4,(%r10)
     26b:	49 89 8b c0 00 00 00 	mov    %rcx,0xc0(%r11)
     272:	49 89 83 c8 00 00 00 	mov    %rax,0xc8(%r11)
     279:	31 d2                	xor    %edx,%edx
     27b:	48 83 f8 0e          	cmp    $0xe,%rax
     27f:	75 0d                	jne    28e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28e>
     281:	41 8b 43 78          	mov    0x78(%r11),%eax
     285:	83 e0 01             	and    $0x1,%eax
     288:	0f 84 60 05 00 00    	je     7ee <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7ee>
     28e:	41 88 93 0c 01 00 00 	mov    %dl,0x10c(%r11)
     295:	49 ff c4             	inc    %r12
     298:	4d 89 e7             	mov    %r12,%r15
     29b:	4d 39 fe             	cmp    %r15,%r14
     29e:	74 49                	je     2e9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2e9>
     2a0:	4d 89 f5             	mov    %r14,%r13
     2a3:	4d 29 e5             	sub    %r12,%r13
     2a6:	49 8b 8b 00 01 00 00 	mov    0x100(%r11),%rcx
     2ad:	48 89 c8             	mov    %rcx,%rax
     2b0:	4c 29 e8             	sub    %r13,%rax
     2b3:	0f 82 01 19 00 00    	jb     1bba <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bba>
     2b9:	49 89 83 00 01 00 00 	mov    %rax,0x100(%r11)
     2c0:	41 80 bb 0d 01 00 00 	cmpb   $0x1,0x10d(%r11)
     2c7:	01
     2c8:	0f 84 9e 10 00 00    	je     136c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x136c>
     2ce:	49 8b 83 d8 00 00 00 	mov    0xd8(%r11),%rax
     2d5:	48 85 c0             	test   %rax,%rax
     2d8:	75 05                	jne    2df <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2df>
     2da:	4d 89 3a             	mov    %r15,(%r10)
     2dd:	31 c0                	xor    %eax,%eax
     2df:	4c 01 e8             	add    %r13,%rax
     2e2:	49 89 83 d8 00 00 00 	mov    %rax,0xd8(%r11)
     2e9:	49 39 de             	cmp    %rbx,%r14
     2ec:	0f 84 14 16 00 00    	je     1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     2f2:	41 0f b6 06          	movzbl (%r14),%eax
     2f6:	83 f8 5c             	cmp    $0x5c,%eax
     2f9:	0f 85 31 0b 00 00    	jne    e30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe30>
     2ff:	e9 ab 0a 00 00       	jmp    daf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdaf>
     304:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
     30b:	00 00 00 00 00
     310:	49 8b 5b 38          	mov    0x38(%r11),%rbx
     314:	4e 8b 64 3b 08       	mov    0x8(%rbx,%r15,1),%r12
     319:	4d 85 e4             	test   %r12,%r12
     31c:	74 37                	je     355 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x355>
     31e:	4a 8b 34 3b          	mov    (%rbx,%r15,1),%rsi
     322:	48 89 f0             	mov    %rsi,%rax
     325:	49 2b 43 40          	sub    0x40(%r11),%rax
     329:	49 3b 43 10          	cmp    0x10(%r11),%rax
     32d:	72 26                	jb     355 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x355>
     32f:	49 8b 7b 48          	mov    0x48(%r11),%rdi
     333:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
     338:	4c 89 e2             	mov    %r12,%rdx
     33b:	e8 00 00 00 00       	call   340 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x340>
			33c: R_X86_64_PLT32	memcpy-0x4
     340:	4c 8b 1c 24          	mov    (%rsp),%r11
     344:	4d 01 63 48          	add    %r12,0x48(%r11)
     348:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
     34d:	4a 89 04 3b          	mov    %rax,(%rbx,%r15,1)
     351:	49 8b 5b 38          	mov    0x38(%r11),%rbx
     355:	4e 8b 64 3b 18       	mov    0x18(%rbx,%r15,1),%r12
     35a:	4d 85 e4             	test   %r12,%r12
     35d:	74 35                	je     394 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x394>
     35f:	4a 8b 74 3b 10       	mov    0x10(%rbx,%r15,1),%rsi
     364:	48 89 f0             	mov    %rsi,%rax
     367:	49 2b 43 40          	sub    0x40(%r11),%rax
     36b:	49 3b 43 10          	cmp    0x10(%r11),%rax
     36f:	72 23                	jb     394 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x394>
     371:	49 8b 7b 48          	mov    0x48(%r11),%rdi
     375:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
     37a:	4c 89 e2             	mov    %r12,%rdx
     37d:	e8 00 00 00 00       	call   382 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x382>
			37e: R_X86_64_PLT32	memcpy-0x4
     382:	4c 8b 1c 24          	mov    (%rsp),%r11
     386:	4d 01 63 48          	add    %r12,0x48(%r11)
     38a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
     38f:	4a 89 44 3b 10       	mov    %rax,0x10(%rbx,%r15,1)
     394:	49 ff c5             	inc    %r13
     397:	49 83 c7 20          	add    $0x20,%r15
     39b:	4d 3b ab e8 00 00 00 	cmp    0xe8(%r11),%r13
     3a2:	0f 82 68 ff ff ff    	jb     310 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x310>
     3a8:	4d 8b ab c8 00 00 00 	mov    0xc8(%r11),%r13
     3af:	4d 85 ed             	test   %r13,%r13
     3b2:	0f 84 02 15 00 00    	je     18ba <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18ba>
     3b8:	4d 8b 63 48          	mov    0x48(%r11),%r12
     3bc:	49 8b b3 c0 00 00 00 	mov    0xc0(%r11),%rsi
     3c3:	48 89 f0             	mov    %rsi,%rax
     3c6:	49 2b 43 40          	sub    0x40(%r11),%rax
     3ca:	49 3b 43 10          	cmp    0x10(%r11),%rax
     3ce:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
     3d3:	72 21                	jb     3f6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3f6>
     3d5:	4c 89 e7             	mov    %r12,%rdi
     3d8:	4c 89 ea             	mov    %r13,%rdx
     3db:	e8 00 00 00 00       	call   3e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3e0>
			3dc: R_X86_64_PLT32	memcpy-0x4
     3e0:	4c 8b 1c 24          	mov    (%rsp),%r11
     3e4:	4d 03 6b 48          	add    0x48(%r11),%r13
     3e8:	4d 89 6b 48          	mov    %r13,0x48(%r11)
     3ec:	4d 89 a3 c0 00 00 00 	mov    %r12,0xc0(%r11)
     3f3:	4d 89 ec             	mov    %r13,%r12
     3f6:	4d 8b ab d8 00 00 00 	mov    0xd8(%r11),%r13
     3fd:	4d 85 ed             	test   %r13,%r13
     400:	74 1a                	je     41c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x41c>
     402:	49 8b b3 d0 00 00 00 	mov    0xd0(%r11),%rsi
     409:	4c 89 e7             	mov    %r12,%rdi
     40c:	4c 89 ea             	mov    %r13,%rdx
     40f:	e8 00 00 00 00       	call   414 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x414>
			410: R_X86_64_PLT32	memcpy-0x4
     414:	4c 8b 1c 24          	mov    (%rsp),%r11
     418:	4d 01 6b 48          	add    %r13,0x48(%r11)
     41c:	4d 89 a3 d0 00 00 00 	mov    %r12,0xd0(%r11)
     423:	41 c6 83 0d 01 00 00 	movb   $0x1,0x10d(%r11)
     42a:	01
     42b:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
     430:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
     435:	0f 57 e4             	xorps  %xmm4,%xmm4
     438:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 440 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x440>
     43f:	00
			43c: R_X86_64_PC32	.LCPI48_0-0x4
     440:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 448 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x448>
     447:	00
			444: R_X86_64_PC32	.LCPI48_1-0x4
     448:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 450 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x450>
     44f:	00
			44c: R_X86_64_PC32	.LCPI48_2-0x4
     450:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 459 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x459>
     457:	00 00
			455: R_X86_64_PC32	.LCPI48_3-0x4
     459:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
     460:	7f 7f 7f
     463:	e9 2c 09 00 00       	jmp    d94 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd94>
     468:	49 8d 46 01          	lea    0x1(%r14),%rax
     46c:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 473 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x473>
			46f: R_X86_64_PC32	char const* stomptalk::parser::almost_done<3u>(char const*, char const*)-0x4
     473:	49 89 4b 60          	mov    %rcx,0x60(%r11)
     477:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     47e:	00
     47f:	48 39 d8             	cmp    %rbx,%rax
     482:	0f 83 f5 16 00 00    	jae    1b7d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b7d>
     488:	80 38 0a             	cmpb   $0xa,(%rax)
     48b:	0f 85 f5 1d 00 00    	jne    2286 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2286>
     491:	4d 8d 66 02          	lea    0x2(%r14),%r12
     495:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 49c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x49c>
			498: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
     49c:	49 89 43 60          	mov    %rax,0x60(%r11)
     4a0:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     4a7:	00
     4a8:	49 39 dc             	cmp    %rbx,%r12
     4ab:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
     4b0:	0f 83 ab 17 00 00    	jae    1c61 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c61>
     4b6:	41 f6 43 78 01       	testb  $0x1,0x78(%r11)
     4bb:	0f 85 63 03 00 00    	jne    824 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x824>
     4c1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4c8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4c8>
			4c4: R_X86_64_PC32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
     4c8:	49 89 43 60          	mov    %rax,0x60(%r11)
     4cc:	41 80 3c 24 00       	cmpb   $0x0,(%r12)
     4d1:	0f 85 ed 0a 00 00    	jne    fc4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfc4>
     4d7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4de <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x4de>
			4da: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
     4de:	49 89 43 60          	mov    %rax,0x60(%r11)
     4e2:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     4e9:	00
     4ea:	41 80 3c 24 00       	cmpb   $0x0,(%r12)
     4ef:	0f 85 9f 18 00 00    	jne    1d94 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d94>
     4f5:	49 8b 83 f0 00 00 00 	mov    0xf0(%r11),%rax
     4fc:	48 c1 e0 05          	shl    $0x5,%rax
     500:	49 03 43 38          	add    0x38(%r11),%rax
     504:	49 8b 8b 80 00 00 00 	mov    0x80(%r11),%rcx
     50b:	48 85 c9             	test   %rcx,%rcx
     50e:	48 0f 44 c1          	cmove  %rcx,%rax
     512:	49 89 83 b0 00 00 00 	mov    %rax,0xb0(%r11)
     519:	41 80 bb 09 01 00 00 	cmpb   $0x0,0x109(%r11)
     520:	00
     521:	0f 85 c0 17 00 00    	jne    1ce7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ce7>
     527:	b8 06 00 00 00       	mov    $0x6,%eax
     52c:	41 89 43 78          	mov    %eax,0x78(%r11)
     530:	49 8b 43 30          	mov    0x30(%r11),%rax
     534:	49 8b 8b e0 00 00 00 	mov    0xe0(%r11),%rcx
     53b:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     53f:	49 89 93 e0 00 00 00 	mov    %rdx,0xe0(%r11)
     546:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     54a:	48 c1 e1 04          	shl    $0x4,%rcx
     54e:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
     553:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
     558:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
     55d:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
     563:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
     569:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
     56f:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
     575:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
     57b:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
     581:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     586:	49 8b 83 98 00 00 00 	mov    0x98(%r11),%rax
     58d:	49 01 83 90 00 00 00 	add    %rax,0x90(%r11)
     594:	49 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%r11)
     59b:	00 00 00 00
     59f:	49 c7 83 98 00 00 00 	movq   $0x0,0x98(%r11)
     5a6:	00 00 00 00
     5aa:	66 41 c7 83 08 01 00 	movw   $0x100,0x108(%r11)
     5b1:	00 00 01
     5b4:	49 83 c6 03          	add    $0x3,%r14
     5b8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 5bf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5bf>
			5bb: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
     5bf:	49 89 43 60          	mov    %rax,0x60(%r11)
     5c3:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     5ca:	00
     5cb:	49 39 de             	cmp    %rbx,%r14
     5ce:	0f 83 32 13 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     5d4:	4c 89 f6             	mov    %r14,%rsi
     5d7:	49 39 de             	cmp    %rbx,%r14
     5da:	0f 83 ca 1c 00 00    	jae    22aa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22aa>
     5e0:	48 89 d8             	mov    %rbx,%rax
     5e3:	48 29 f0             	sub    %rsi,%rax
     5e6:	48 89 c7             	mov    %rax,%rdi
     5e9:	31 c9                	xor    %ecx,%ecx
     5eb:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
     5ef:	83 fa 0d             	cmp    $0xd,%edx
     5f2:	0f 84 c4 17 00 00    	je     1dbc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1dbc>
     5f8:	83 fa 0a             	cmp    $0xa,%edx
     5fb:	0f 84 b1 1c 00 00    	je     22b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22b2>
     601:	80 c2 a5             	add    $0xa5,%dl
     604:	80 fa e5             	cmp    $0xe5,%dl
     607:	0f 86 c0 1b 00 00    	jbe    21cd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21cd>
     60d:	49 8b 83 e0 00 00 00 	mov    0xe0(%r11),%rax
     614:	49 3b 03             	cmp    (%r11),%rax
     617:	0f 84 37 18 00 00    	je     1e54 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e54>
     61d:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
     621:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
     626:	c6 40 04 00          	movb   $0x0,0x4(%rax)
     62a:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     630:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
     635:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
     63a:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
     63f:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
     644:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
     649:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
     64e:	41 0f 11 27          	movups %xmm4,(%r15)
     652:	41 c6 83 08 01 00 00 	movb   $0x1,0x108(%r11)
     659:	01
     65a:	4d 8b 43 40          	mov    0x40(%r11),%r8
     65e:	49 8b 43 48          	mov    0x48(%r11),%rax
     662:	49 89 c1             	mov    %rax,%r9
     665:	4d 29 c1             	sub    %r8,%r9
     668:	4d 89 8b f8 00 00 00 	mov    %r9,0xf8(%r11)
     66f:	4d 8b 4b 50          	mov    0x50(%r11),%r9
     673:	4d 89 ca             	mov    %r9,%r10
     676:	49 29 c2             	sub    %rax,%r10
     679:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
     680:	49 8b 83 e8 00 00 00 	mov    0xe8(%r11),%rax
     687:	49 89 83 f0 00 00 00 	mov    %rax,0xf0(%r11)
     68e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 695 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x695>
			691: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
     695:	49 89 43 60          	mov    %rax,0x60(%r11)
     699:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     6a0:	00
     6a1:	48 89 d0             	mov    %rdx,%rax
     6a4:	48 39 da             	cmp    %rbx,%rdx
     6a7:	0f 83 ab 14 00 00    	jae    1b58 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b58>
     6ad:	0f 1f 00             	nopl   (%rax)
     6b0:	44 0f b6 18          	movzbl (%rax),%r11d
     6b4:	41 80 c3 bf          	add    $0xbf,%r11b
     6b8:	41 80 fb 19          	cmp    $0x19,%r11b
     6bc:	77 0d                	ja     6cb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6cb>
     6be:	48 ff c0             	inc    %rax
     6c1:	48 ff cf             	dec    %rdi
     6c4:	75 ea                	jne    6b0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6b0>
     6c6:	e9 2f 15 00 00       	jmp    1bfa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bfa>
     6cb:	48 39 c2             	cmp    %rax,%rdx
     6ce:	0f 84 ee 1b 00 00    	je     22c2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22c2>
     6d4:	49 89 c3             	mov    %rax,%r11
     6d7:	49 29 f3             	sub    %rsi,%r11
     6da:	4c 89 df             	mov    %r11,%rdi
     6dd:	48 29 cf             	sub    %rcx,%rdi
     6e0:	4c 39 d7             	cmp    %r10,%rdi
     6e3:	0f 87 59 16 00 00    	ja     1d42 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d42>
     6e9:	49 29 c2             	sub    %rax,%r10
     6ec:	49 01 d2             	add    %rdx,%r10
     6ef:	4c 8b 1c 24          	mov    (%rsp),%r11
     6f3:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
     6fa:	49 89 93 d0 00 00 00 	mov    %rdx,0xd0(%r11)
     701:	49 89 bb d8 00 00 00 	mov    %rdi,0xd8(%r11)
     708:	48 89 c6             	mov    %rax,%rsi
     70b:	48 39 d8             	cmp    %rbx,%rax
     70e:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
     713:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
     718:	0f 84 5f 14 00 00    	je     1b7d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b7d>
     71e:	0f b6 08             	movzbl (%rax),%ecx
     721:	83 f9 0d             	cmp    $0xd,%ecx
     724:	0f 85 e4 0c 00 00    	jne    140e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x140e>
     72a:	41 c6 83 0d 01 00 00 	movb   $0x0,0x10d(%r11)
     731:	00
     732:	41 0f 11 22          	movups %xmm4,(%r10)
     736:	49 89 93 a0 00 00 00 	mov    %rdx,0xa0(%r11)
     73d:	49 89 bb a8 00 00 00 	mov    %rdi,0xa8(%r11)
     744:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
     74b:	48 83 ff 07          	cmp    $0x7,%rdi
     74f:	0f 85 d5 0c 00 00    	jne    142a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x142a>
     755:	0f b6 3a             	movzbl (%rdx),%edi
     758:	83 ff 4d             	cmp    $0x4d,%edi
     75b:	0f 85 a1 14 00 00    	jne    1c02 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c02>
     761:	8b 3a                	mov    (%rdx),%edi
     763:	be 4d 45 53 53       	mov    $0x5353454d,%esi
     768:	31 f7                	xor    %esi,%edi
     76a:	8b 52 03             	mov    0x3(%rdx),%edx
     76d:	be 53 41 47 45       	mov    $0x45474153,%esi
     772:	31 f2                	xor    %esi,%edx
     774:	be 09 00 00 00       	mov    $0x9,%esi
     779:	09 fa                	or     %edi,%edx
     77b:	0f 85 8e 10 00 00    	jne    180f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x180f>
     781:	49 89 73 70          	mov    %rsi,0x70(%r11)
     785:	83 c6 fb             	add    $0xfffffffb,%esi
     788:	83 fe 02             	cmp    $0x2,%esi
     78b:	41 0f 92 83 0b 01 00 	setb   0x10b(%r11)
     792:	00
     793:	4c 8d 70 01          	lea    0x1(%rax),%r14
     797:	80 f9 0a             	cmp    $0xa,%cl
     79a:	0f 84 51 07 00 00    	je     ef1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xef1>
     7a0:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 7a7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7a7>
			7a3: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
     7a7:	49 89 4b 60          	mov    %rcx,0x60(%r11)
     7ab:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     7b2:	00
     7b3:	49 39 de             	cmp    %rbx,%r14
     7b6:	0f 83 4a 11 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     7bc:	41 80 3e 0a          	cmpb   $0xa,(%r14)
     7c0:	0f 85 75 19 00 00    	jne    213b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x213b>
     7c6:	48 83 c0 02          	add    $0x2,%rax
     7ca:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 7d1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x7d1>
			7cd: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
     7d1:	49 89 4b 60          	mov    %rcx,0x60(%r11)
     7d5:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     7dc:	00
     7dd:	49 89 c6             	mov    %rax,%r14
     7e0:	48 39 d8             	cmp    %rbx,%rax
     7e3:	0f 82 d0 f8 ff ff    	jb     b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb9>
     7e9:	e9 18 11 00 00       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     7ee:	49 83 fd 0e          	cmp    $0xe,%r13
     7f2:	0f 85 37 14 00 00    	jne    1c2f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c2f>
     7f8:	4d 3b bb 20 01 00 00 	cmp    0x120(%r11),%r15
     7ff:	0f 86 2a 14 00 00    	jbe    1c2f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c2f>
     805:	f3 41 0f 6f 47 ff    	movdqu -0x1(%r15),%xmm0
     80b:	66 0f 74 05 00 00 00 	pcmpeqb 0x0(%rip),%xmm0        # 813 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x813>
     812:	00
			80f: R_X86_64_PC32	.LCPI48_4-0x4
     813:	66 0f d7 c0          	pmovmskb %xmm0,%eax
     817:	35 ff ff 00 00       	xor    $0xffff,%eax
     81c:	0f 94 c2             	sete   %dl
     81f:	e9 6a fa ff ff       	jmp    28e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28e>
     824:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 82b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x82b>
			827: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
     82b:	49 89 43 60          	mov    %rax,0x60(%r11)
     82f:	49 8b 83 88 00 00 00 	mov    0x88(%r11),%rax
     836:	49 2b 83 90 00 00 00 	sub    0x90(%r11),%rax
     83d:	48 89 d9             	mov    %rbx,%rcx
     840:	4c 29 e1             	sub    %r12,%rcx
     843:	48 39 c1             	cmp    %rax,%rcx
     846:	49 89 c6             	mov    %rax,%r14
     849:	4c 0f 42 f1          	cmovb  %rcx,%r14
     84d:	4d 89 a3 b8 00 00 00 	mov    %r12,0xb8(%r11)
     854:	4d 89 b3 98 00 00 00 	mov    %r14,0x98(%r11)
     85b:	4d 01 e6             	add    %r12,%r14
     85e:	48 39 c8             	cmp    %rcx,%rax
     861:	0f 87 9f 10 00 00    	ja     1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     867:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 86e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x86e>
			86a: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
     86e:	49 89 43 60          	mov    %rax,0x60(%r11)
     872:	49 39 de             	cmp    %rbx,%r14
     875:	0f 83 8b 10 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     87b:	41 80 3e 00          	cmpb   $0x0,(%r14)
     87f:	0f 85 ef 15 00 00    	jne    1e74 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e74>
     885:	49 8b 83 f0 00 00 00 	mov    0xf0(%r11),%rax
     88c:	48 c1 e0 05          	shl    $0x5,%rax
     890:	49 03 43 38          	add    0x38(%r11),%rax
     894:	49 8b 8b 80 00 00 00 	mov    0x80(%r11),%rcx
     89b:	48 85 c9             	test   %rcx,%rcx
     89e:	48 0f 44 c1          	cmove  %rcx,%rax
     8a2:	49 89 83 b0 00 00 00 	mov    %rax,0xb0(%r11)
     8a9:	41 80 bb 09 01 00 00 	cmpb   $0x0,0x109(%r11)
     8b0:	00
     8b1:	0f 85 81 14 00 00    	jne    1d38 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d38>
     8b7:	b8 07 00 00 00       	mov    $0x7,%eax
     8bc:	41 89 43 78          	mov    %eax,0x78(%r11)
     8c0:	49 8b 43 30          	mov    0x30(%r11),%rax
     8c4:	49 8b 8b e0 00 00 00 	mov    0xe0(%r11),%rcx
     8cb:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     8cf:	49 89 93 e0 00 00 00 	mov    %rdx,0xe0(%r11)
     8d6:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     8da:	48 c1 e1 04          	shl    $0x4,%rcx
     8de:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
     8e3:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
     8e8:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
     8ed:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
     8f3:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
     8f9:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
     8ff:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
     905:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
     90b:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
     911:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     916:	49 8b 83 98 00 00 00 	mov    0x98(%r11),%rax
     91d:	49 01 83 90 00 00 00 	add    %rax,0x90(%r11)
     924:	49 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%r11)
     92b:	00 00 00 00
     92f:	49 c7 83 98 00 00 00 	movq   $0x0,0x98(%r11)
     936:	00 00 00 00
     93a:	66 41 c7 83 08 01 00 	movw   $0x100,0x108(%r11)
     941:	00 00 01
     944:	49 ff c6             	inc    %r14
     947:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 94e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x94e>
			94a: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
     94e:	49 89 43 60          	mov    %rax,0x60(%r11)
     952:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     959:	00
     95a:	49 39 de             	cmp    %rbx,%r14
     95d:	0f 83 a3 0f 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     963:	4c 89 f6             	mov    %r14,%rsi
     966:	49 39 de             	cmp    %rbx,%r14
     969:	0f 83 3b 19 00 00    	jae    22aa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22aa>
     96f:	48 89 d8             	mov    %rbx,%rax
     972:	48 29 f0             	sub    %rsi,%rax
     975:	48 89 c7             	mov    %rax,%rdi
     978:	31 c9                	xor    %ecx,%ecx
     97a:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
     97e:	83 fa 0d             	cmp    $0xd,%edx
     981:	0f 84 45 15 00 00    	je     1ecc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ecc>
     987:	83 fa 0a             	cmp    $0xa,%edx
     98a:	0f 84 3c 19 00 00    	je     22cc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22cc>
     990:	80 c2 a5             	add    $0xa5,%dl
     993:	80 fa e5             	cmp    $0xe5,%dl
     996:	0f 86 31 18 00 00    	jbe    21cd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21cd>
     99c:	49 8b 83 e0 00 00 00 	mov    0xe0(%r11),%rax
     9a3:	49 3b 03             	cmp    (%r11),%rax
     9a6:	0f 84 a8 14 00 00    	je     1e54 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e54>
     9ac:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
     9b0:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
     9b5:	c6 40 04 00          	movb   $0x0,0x4(%rax)
     9b9:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     9bf:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
     9c4:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
     9c9:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
     9ce:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
     9d3:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
     9d8:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
     9dd:	41 0f 11 27          	movups %xmm4,(%r15)
     9e1:	41 c6 83 08 01 00 00 	movb   $0x1,0x108(%r11)
     9e8:	01
     9e9:	4d 8b 43 40          	mov    0x40(%r11),%r8
     9ed:	49 8b 43 48          	mov    0x48(%r11),%rax
     9f1:	49 89 c1             	mov    %rax,%r9
     9f4:	4d 29 c1             	sub    %r8,%r9
     9f7:	4d 89 8b f8 00 00 00 	mov    %r9,0xf8(%r11)
     9fe:	4d 8b 4b 50          	mov    0x50(%r11),%r9
     a02:	4d 89 ca             	mov    %r9,%r10
     a05:	49 29 c2             	sub    %rax,%r10
     a08:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
     a0f:	49 8b 83 e8 00 00 00 	mov    0xe8(%r11),%rax
     a16:	49 89 83 f0 00 00 00 	mov    %rax,0xf0(%r11)
     a1d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a24 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa24>
			a20: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
     a24:	49 89 43 60          	mov    %rax,0x60(%r11)
     a28:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     a2f:	00
     a30:	48 89 d0             	mov    %rdx,%rax
     a33:	48 39 da             	cmp    %rbx,%rdx
     a36:	0f 83 49 11 00 00    	jae    1b85 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b85>
     a3c:	0f 1f 40 00          	nopl   0x0(%rax)
     a40:	44 0f b6 18          	movzbl (%rax),%r11d
     a44:	41 80 c3 bf          	add    $0xbf,%r11b
     a48:	41 80 fb 19          	cmp    $0x19,%r11b
     a4c:	0f 87 4d 02 00 00    	ja     c9f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc9f>
     a52:	48 ff c0             	inc    %rax
     a55:	48 ff cf             	dec    %rdi
     a58:	75 e6                	jne    a40 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa40>
     a5a:	e9 0a 12 00 00       	jmp    1c69 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c69>
     a5f:	4d 8d 66 01          	lea    0x1(%r14),%r12
     a63:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a6a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa6a>
			a66: R_X86_64_PC32	char const* stomptalk::parser::done<3u>(char const*, char const*)-0x4
     a6a:	49 89 43 60          	mov    %rax,0x60(%r11)
     a6e:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     a75:	00
     a76:	49 39 dc             	cmp    %rbx,%r12
     a79:	0f 83 e2 11 00 00    	jae    1c61 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c61>
     a7f:	41 f6 43 78 01       	testb  $0x1,0x78(%r11)
     a84:	0f 85 6e 0a 00 00    	jne    14f8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14f8>
     a8a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a91 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xa91>
			a8d: R_X86_64_PC32	char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)-0x4
     a91:	49 89 43 60          	mov    %rax,0x60(%r11)
     a95:	41 80 3c 24 00       	cmpb   $0x0,(%r12)
     a9a:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
     a9f:	0f 85 a6 0b 00 00    	jne    164b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164b>
     aa5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # aac <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xaac>
			aa8: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
     aac:	49 89 43 60          	mov    %rax,0x60(%r11)
     ab0:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     ab7:	00
     ab8:	41 80 3c 24 00       	cmpb   $0x0,(%r12)
     abd:	0f 85 c0 15 00 00    	jne    2083 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2083>
     ac3:	49 8b 83 f0 00 00 00 	mov    0xf0(%r11),%rax
     aca:	48 c1 e0 05          	shl    $0x5,%rax
     ace:	49 03 43 38          	add    0x38(%r11),%rax
     ad2:	49 8b 8b 80 00 00 00 	mov    0x80(%r11),%rcx
     ad9:	48 85 c9             	test   %rcx,%rcx
     adc:	48 0f 44 c1          	cmove  %rcx,%rax
     ae0:	49 89 83 b0 00 00 00 	mov    %rax,0xb0(%r11)
     ae7:	41 80 bb 09 01 00 00 	cmpb   $0x0,0x109(%r11)
     aee:	00
     aef:	0f 85 8a 12 00 00    	jne    1d7f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d7f>
     af5:	b8 06 00 00 00       	mov    $0x6,%eax
     afa:	41 89 43 78          	mov    %eax,0x78(%r11)
     afe:	49 8b 43 30          	mov    0x30(%r11),%rax
     b02:	49 8b 8b e0 00 00 00 	mov    0xe0(%r11),%rcx
     b09:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     b0d:	49 89 93 e0 00 00 00 	mov    %rdx,0xe0(%r11)
     b14:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
     b18:	48 c1 e1 04          	shl    $0x4,%rcx
     b1c:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
     b21:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
     b26:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
     b2b:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
     b31:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
     b37:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
     b3d:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
     b43:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
     b49:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
     b4f:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     b54:	49 8b 83 98 00 00 00 	mov    0x98(%r11),%rax
     b5b:	49 01 83 90 00 00 00 	add    %rax,0x90(%r11)
     b62:	49 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%r11)
     b69:	00 00 00 00
     b6d:	49 c7 83 98 00 00 00 	movq   $0x0,0x98(%r11)
     b74:	00 00 00 00
     b78:	66 41 c7 83 08 01 00 	movw   $0x100,0x108(%r11)
     b7f:	00 00 01
     b82:	49 83 c6 02          	add    $0x2,%r14
     b86:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b8d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb8d>
			b89: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
     b8d:	49 89 43 60          	mov    %rax,0x60(%r11)
     b91:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     b98:	00
     b99:	49 39 de             	cmp    %rbx,%r14
     b9c:	0f 83 64 0d 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     ba2:	4c 89 f6             	mov    %r14,%rsi
     ba5:	49 39 de             	cmp    %rbx,%r14
     ba8:	0f 83 fc 16 00 00    	jae    22aa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22aa>
     bae:	48 89 d8             	mov    %rbx,%rax
     bb1:	48 29 f0             	sub    %rsi,%rax
     bb4:	48 89 c7             	mov    %rax,%rdi
     bb7:	31 c9                	xor    %ecx,%ecx
     bb9:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
     bbd:	83 fa 0d             	cmp    $0xd,%edx
     bc0:	0f 84 e5 14 00 00    	je     20ab <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20ab>
     bc6:	83 fa 0a             	cmp    $0xa,%edx
     bc9:	0f 84 5a 17 00 00    	je     2329 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2329>
     bcf:	80 c2 a5             	add    $0xa5,%dl
     bd2:	80 fa e5             	cmp    $0xe5,%dl
     bd5:	0f 86 f2 15 00 00    	jbe    21cd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21cd>
     bdb:	49 8b 83 e0 00 00 00 	mov    0xe0(%r11),%rax
     be2:	49 3b 03             	cmp    (%r11),%rax
     be5:	0f 84 69 12 00 00    	je     1e54 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e54>
     beb:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
     bef:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
     bf4:	c6 40 04 00          	movb   $0x0,0x4(%rax)
     bf8:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
     bfe:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
     c03:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
     c08:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
     c0d:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
     c12:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
     c17:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
     c1c:	41 0f 11 27          	movups %xmm4,(%r15)
     c20:	41 c6 83 08 01 00 00 	movb   $0x1,0x108(%r11)
     c27:	01
     c28:	4d 8b 43 40          	mov    0x40(%r11),%r8
     c2c:	49 8b 43 48          	mov    0x48(%r11),%rax
     c30:	49 89 c1             	mov    %rax,%r9
     c33:	4d 29 c1             	sub    %r8,%r9
     c36:	4d 89 8b f8 00 00 00 	mov    %r9,0xf8(%r11)
     c3d:	4d 8b 4b 50          	mov    0x50(%r11),%r9
     c41:	4d 89 ca             	mov    %r9,%r10
     c44:	49 29 c2             	sub    %rax,%r10
     c47:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
     c4e:	49 8b 83 e8 00 00 00 	mov    0xe8(%r11),%rax
     c55:	49 89 83 f0 00 00 00 	mov    %rax,0xf0(%r11)
     c5c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c63 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc63>
			c5f: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
     c63:	49 89 43 60          	mov    %rax,0x60(%r11)
     c67:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     c6e:	00
     c6f:	48 89 d0             	mov    %rdx,%rax
     c72:	48 39 da             	cmp    %rbx,%rdx
     c75:	0f 83 6c 0f 00 00    	jae    1be7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1be7>
     c7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     c80:	44 0f b6 18          	movzbl (%rax),%r11d
     c84:	41 80 c3 bf          	add    $0xbf,%r11b
     c88:	41 80 fb 19          	cmp    $0x19,%r11b
     c8c:	0f 87 4b 06 00 00    	ja     12dd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12dd>
     c92:	48 ff c0             	inc    %rax
     c95:	48 ff cf             	dec    %rdi
     c98:	75 e6                	jne    c80 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc80>
     c9a:	e9 91 10 00 00       	jmp    1d30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d30>
     c9f:	48 39 c2             	cmp    %rax,%rdx
     ca2:	0f 84 35 16 00 00    	je     22dd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22dd>
     ca8:	49 89 c3             	mov    %rax,%r11
     cab:	49 29 f3             	sub    %rsi,%r11
     cae:	4c 89 df             	mov    %r11,%rdi
     cb1:	48 29 cf             	sub    %rcx,%rdi
     cb4:	4c 39 d7             	cmp    %r10,%rdi
     cb7:	0f 87 85 10 00 00    	ja     1d42 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d42>
     cbd:	49 29 c2             	sub    %rax,%r10
     cc0:	49 01 d2             	add    %rdx,%r10
     cc3:	4c 8b 1c 24          	mov    (%rsp),%r11
     cc7:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
     cce:	49 89 93 d0 00 00 00 	mov    %rdx,0xd0(%r11)
     cd5:	49 89 bb d8 00 00 00 	mov    %rdi,0xd8(%r11)
     cdc:	48 89 c6             	mov    %rax,%rsi
     cdf:	48 39 d8             	cmp    %rbx,%rax
     ce2:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
     ce7:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
     cec:	0f 84 8b 0e 00 00    	je     1b7d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b7d>
     cf2:	0f b6 08             	movzbl (%rax),%ecx
     cf5:	83 f9 0d             	cmp    $0xd,%ecx
     cf8:	0f 85 1e 07 00 00    	jne    141c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x141c>
     cfe:	41 c6 83 0d 01 00 00 	movb   $0x0,0x10d(%r11)
     d05:	00
     d06:	41 0f 11 22          	movups %xmm4,(%r10)
     d0a:	49 89 93 a0 00 00 00 	mov    %rdx,0xa0(%r11)
     d11:	49 89 bb a8 00 00 00 	mov    %rdi,0xa8(%r11)
     d18:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
     d1f:	48 83 ff 07          	cmp    $0x7,%rdi
     d23:	0f 84 2c fa ff ff    	je     755 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x755>
     d29:	e9 a5 0a 00 00       	jmp    17d3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17d3>
     d2e:	4d 89 fc             	mov    %r15,%r12
     d31:	e9 65 f5 ff ff       	jmp    29b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29b>
     d36:	41 0f b6 07          	movzbl (%r15),%eax
     d3a:	04 a4                	add    $0xa4,%al
     d3c:	3c 17                	cmp    $0x17,%al
     d3e:	0f 83 93 0b 00 00    	jae    18d7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18d7>
     d44:	0f b6 c0             	movzbl %al,%eax
     d47:	b9 81 00 44 00       	mov    $0x440081,%ecx
     d4c:	0f a3 c1             	bt     %eax,%ecx
     d4f:	0f 83 82 0b 00 00    	jae    18d7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18d7>
     d55:	49 8b 8b 00 01 00 00 	mov    0x100(%r11),%rcx
     d5c:	48 85 c9             	test   %rcx,%rcx
     d5f:	0f 84 d5 14 00 00    	je     223a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x223a>
     d65:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # d6c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd6c>
			d68: R_X86_64_PC32	.rodata+0x23c
     d6c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
     d70:	48 ff c9             	dec    %rcx
     d73:	49 89 8b 00 01 00 00 	mov    %rcx,0x100(%r11)
     d7a:	49 8b 4b 48          	mov    0x48(%r11),%rcx
     d7e:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     d82:	49 89 53 48          	mov    %rdx,0x48(%r11)
     d86:	88 01                	mov    %al,(%rcx)
     d88:	49 ff 83 d8 00 00 00 	incq   0xd8(%r11)
     d8f:	31 ed                	xor    %ebp,%ebp
     d91:	4d 89 fe             	mov    %r15,%r14
     d94:	41 88 ab 0a 01 00 00 	mov    %bpl,0x10a(%r11)
     d9b:	49 ff c6             	inc    %r14
     d9e:	4d 89 f7             	mov    %r14,%r15
     da1:	49 39 de             	cmp    %rbx,%r14
     da4:	0f 82 6e f3 ff ff    	jb     118 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x118>
     daa:	e9 57 0b 00 00       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     daf:	41 80 bb 0b 01 00 00 	cmpb   $0x0,0x10b(%r11)
     db6:	00
     db7:	75 77                	jne    e30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe30>
     db9:	40 b5 01             	mov    $0x1,%bpl
     dbc:	41 80 bb 0d 01 00 00 	cmpb   $0x0,0x10d(%r11)
     dc3:	00
     dc4:	0f 85 fe 0a 00 00    	jne    18c8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18c8>
     dca:	4d 8b a3 a8 00 00 00 	mov    0xa8(%r11),%r12
     dd1:	4d 85 e4             	test   %r12,%r12
     dd4:	74 32                	je     e08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe08>
     dd6:	49 8b b3 a0 00 00 00 	mov    0xa0(%r11),%rsi
     ddd:	48 89 f0             	mov    %rsi,%rax
     de0:	49 2b 43 40          	sub    0x40(%r11),%rax
     de4:	49 3b 43 10          	cmp    0x10(%r11),%rax
     de8:	72 1e                	jb     e08 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe08>
     dea:	4d 8b 6b 48          	mov    0x48(%r11),%r13
     dee:	4c 89 ef             	mov    %r13,%rdi
     df1:	4c 89 e2             	mov    %r12,%rdx
     df4:	e8 00 00 00 00       	call   df9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xdf9>
			df5: R_X86_64_PLT32	memcpy-0x4
     df9:	4c 8b 1c 24          	mov    (%rsp),%r11
     dfd:	4d 01 63 48          	add    %r12,0x48(%r11)
     e01:	4d 89 ab a0 00 00 00 	mov    %r13,0xa0(%r11)
     e08:	4d 8b ab f0 00 00 00 	mov    0xf0(%r11),%r13
     e0f:	4d 3b ab e8 00 00 00 	cmp    0xe8(%r11),%r13
     e16:	0f 83 8c f5 ff ff    	jae    3a8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3a8>
     e1c:	4d 89 ef             	mov    %r13,%r15
     e1f:	49 c1 e7 05          	shl    $0x5,%r15
     e23:	e9 e8 f4 ff ff       	jmp    310 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x310>
     e28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     e2f:	00
     e30:	49 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%r11)
     e37:	00
     e38:	0f 84 6d 0d 00 00    	je     1bab <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bab>
     e3e:	83 f8 0d             	cmp    $0xd,%eax
     e41:	0f 85 d9 00 00 00    	jne    f20 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf20>
     e47:	4d 8b a3 d0 00 00 00 	mov    0xd0(%r11),%r12
     e4e:	4d 8b ab d8 00 00 00 	mov    0xd8(%r11),%r13
     e55:	41 c6 83 0d 01 00 00 	movb   $0x0,0x10d(%r11)
     e5c:	00
     e5d:	41 0f 11 22          	movups %xmm4,(%r10)
     e61:	41 80 bb 0c 01 00 00 	cmpb   $0x1,0x10c(%r11)
     e68:	01
     e69:	0f 84 bf 00 00 00    	je     f2e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf2e>
     e6f:	49 8b 43 38          	mov    0x38(%r11),%rax
     e73:	49 8b 8b e8 00 00 00 	mov    0xe8(%r11),%rcx
     e7a:	48 8d 51 01          	lea    0x1(%rcx),%rdx
     e7e:	49 89 93 e8 00 00 00 	mov    %rdx,0xe8(%r11)
     e85:	48 c1 e1 05          	shl    $0x5,%rcx
     e89:	f3 41 0f 6f 01       	movdqu (%r9),%xmm0
     e8e:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
     e93:	4c 89 64 08 10       	mov    %r12,0x10(%rax,%rcx,1)
     e98:	4c 89 6c 08 18       	mov    %r13,0x18(%rax,%rcx,1)
     e9d:	49 ff 83 80 00 00 00 	incq   0x80(%r11)
     ea4:	41 c6 83 0c 01 00 00 	movb   $0x0,0x10c(%r11)
     eab:	00
     eac:	41 0f 11 21          	movups %xmm4,(%r9)
     eb0:	49 8d 46 01          	lea    0x1(%r14),%rax
     eb4:	41 80 3e 0a          	cmpb   $0xa,(%r14)
     eb8:	0f 84 d2 f1 ff ff    	je     90 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x90>
     ebe:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ec5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xec5>
			ec1: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
     ec5:	49 89 4b 60          	mov    %rcx,0x60(%r11)
     ec9:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     ed0:	00
     ed1:	48 39 d8             	cmp    %rbx,%rax
     ed4:	0f 83 a3 0c 00 00    	jae    1b7d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b7d>
     eda:	80 38 0a             	cmpb   $0xa,(%rax)
     edd:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
     ee4:	7f 7f 7f
     ee7:	0f 85 99 13 00 00    	jne    2286 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2286>
     eed:	49 83 c6 02          	add    $0x2,%r14
     ef1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # ef8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xef8>
			ef4: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
     ef8:	49 89 43 60          	mov    %rax,0x60(%r11)
     efc:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
     f03:	00
     f04:	49 39 de             	cmp    %rbx,%r14
     f07:	0f 82 ac f1 ff ff    	jb     b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xb9>
     f0d:	e9 f4 09 00 00       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
     f12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     f19:	1f 84 00 00 00 00 00
     f20:	83 f8 0a             	cmp    $0xa,%eax
     f23:	0f 84 1e ff ff ff    	je     e47 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe47>
     f29:	e9 7d 0c 00 00       	jmp    1bab <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bab>
     f2e:	49 83 fd 15          	cmp    $0x15,%r13
     f32:	0f 83 ec 09 00 00    	jae    1924 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1924>
     f38:	4d 85 ed             	test   %r13,%r13
     f3b:	0f 84 bf 19 00 00    	je     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
     f41:	4c 89 e8             	mov    %r13,%rax
     f44:	4c 89 e7             	mov    %r12,%rdi
     f47:	49 83 fd 13          	cmp    $0x13,%r13
     f4b:	0f 83 fb 09 00 00    	jae    194c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x194c>
     f51:	49 83 fd 02          	cmp    $0x2,%r13
     f55:	0f 85 ce 0b 00 00    	jne    1b29 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b29>
     f5b:	41 0f b6 04 24       	movzbl (%r12),%eax
     f60:	8d 48 c6             	lea    -0x3a(%rax),%ecx
     f63:	80 f9 f6             	cmp    $0xf6,%cl
     f66:	0f 82 94 19 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
     f6c:	49 0f be 4c 24 01    	movsbq 0x1(%r12),%rcx
     f72:	8d 71 c6             	lea    -0x3a(%rcx),%esi
     f75:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
     f7c:	00 00 80
     f7f:	40 80 fe f6          	cmp    $0xf6,%sil
     f83:	72 07                	jb     f8c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf8c>
     f85:	48 83 c1 d0          	add    $0xffffffffffffffd0,%rcx
     f89:	48 89 ca             	mov    %rcx,%rdx
     f8c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
     f90:	48 8d 04 45 20 fe ff 	lea    -0x1e0(,%rax,2),%rax
     f97:	ff
     f98:	48 01 d0             	add    %rdx,%rax
     f9b:	48 85 c0             	test   %rax,%rax
     f9e:	0f 88 5c 19 00 00    	js     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
     fa4:	49 3b 43 20          	cmp    0x20(%r11),%rax
     fa8:	0f 87 73 0d 00 00    	ja     1d21 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d21>
     fae:	49 89 83 88 00 00 00 	mov    %rax,0x88(%r11)
     fb5:	41 80 4b 78 01       	orb    $0x1,0x78(%r11)
     fba:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
     fbf:	e9 ab fe ff ff       	jmp    e6f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe6f>
     fc4:	48 89 da             	mov    %rbx,%rdx
     fc7:	4c 29 e2             	sub    %r12,%rdx
     fca:	4c 89 e7             	mov    %r12,%rdi
     fcd:	31 f6                	xor    %esi,%esi
     fcf:	e8 00 00 00 00       	call   fd4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfd4>
			fd0: R_X86_64_PLT32	memchr-0x4
     fd4:	49 89 c6             	mov    %rax,%r14
     fd7:	48 89 d8             	mov    %rbx,%rax
     fda:	4d 85 f6             	test   %r14,%r14
     fdd:	74 03                	je     fe2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfe2>
     fdf:	4c 89 f0             	mov    %r14,%rax
     fe2:	4c 29 e0             	sub    %r12,%rax
     fe5:	4c 8b 1c 24          	mov    (%rsp),%r11
     fe9:	49 8b 4b 20          	mov    0x20(%r11),%rcx
     fed:	49 2b 8b 90 00 00 00 	sub    0x90(%r11),%rcx
     ff4:	48 39 c8             	cmp    %rcx,%rax
     ff7:	0f 87 c7 0f 00 00    	ja     1fc4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1fc4>
     ffd:	4d 89 a3 b8 00 00 00 	mov    %r12,0xb8(%r11)
    1004:	49 89 83 98 00 00 00 	mov    %rax,0x98(%r11)
    100b:	4d 85 f6             	test   %r14,%r14
    100e:	0f 57 e4             	xorps  %xmm4,%xmm4
    1011:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1019 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1019>
    1018:	00
			1015: R_X86_64_PC32	.LCPI48_0-0x4
    1019:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1021 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1021>
    1020:	00
			101d: R_X86_64_PC32	.LCPI48_1-0x4
    1021:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1029 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1029>
    1028:	00
			1025: R_X86_64_PC32	.LCPI48_2-0x4
    1029:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1032 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1032>
    1030:	00 00
			102e: R_X86_64_PC32	.LCPI48_3-0x4
    1032:	0f 84 00 13 00 00    	je     2338 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2338>
    1038:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 103f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x103f>
			103b: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    103f:	49 89 43 60          	mov    %rax,0x60(%r11)
    1043:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
    104a:	00
    104b:	49 39 de             	cmp    %rbx,%r14
    104e:	0f 83 b2 08 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1054:	41 80 3e 00          	cmpb   $0x0,(%r14)
    1058:	0f 85 3c 0f 00 00    	jne    1f9a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f9a>
    105e:	49 8b 83 f0 00 00 00 	mov    0xf0(%r11),%rax
    1065:	48 c1 e0 05          	shl    $0x5,%rax
    1069:	49 03 43 38          	add    0x38(%r11),%rax
    106d:	49 8b 8b 80 00 00 00 	mov    0x80(%r11),%rcx
    1074:	48 85 c9             	test   %rcx,%rcx
    1077:	48 0f 44 c1          	cmove  %rcx,%rax
    107b:	49 89 83 b0 00 00 00 	mov    %rax,0xb0(%r11)
    1082:	41 80 bb 09 01 00 00 	cmpb   $0x0,0x109(%r11)
    1089:	00
    108a:	0f 85 e5 0c 00 00    	jne    1d75 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d75>
    1090:	b8 06 00 00 00       	mov    $0x6,%eax
    1095:	41 89 43 78          	mov    %eax,0x78(%r11)
    1099:	49 8b 43 30          	mov    0x30(%r11),%rax
    109d:	49 8b 8b e0 00 00 00 	mov    0xe0(%r11),%rcx
    10a4:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    10a8:	49 89 93 e0 00 00 00 	mov    %rdx,0xe0(%r11)
    10af:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    10b3:	48 c1 e1 04          	shl    $0x4,%rcx
    10b7:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
    10bc:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
    10c1:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
    10c6:	f3 41 0f 6f 4f 10    	movdqu 0x10(%r15),%xmm1
    10cc:	f3 41 0f 6f 57 20    	movdqu 0x20(%r15),%xmm2
    10d2:	f3 41 0f 6f 5f 30    	movdqu 0x30(%r15),%xmm3
    10d8:	f3 0f 7f 5c 08 30    	movdqu %xmm3,0x30(%rax,%rcx,1)
    10de:	f3 0f 7f 54 08 20    	movdqu %xmm2,0x20(%rax,%rcx,1)
    10e4:	f3 0f 7f 4c 08 10    	movdqu %xmm1,0x10(%rax,%rcx,1)
    10ea:	f3 0f 7f 04 08       	movdqu %xmm0,(%rax,%rcx,1)
    10ef:	49 8b 83 98 00 00 00 	mov    0x98(%r11),%rax
    10f6:	49 01 83 90 00 00 00 	add    %rax,0x90(%r11)
    10fd:	49 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%r11)
    1104:	00 00 00 00
    1108:	49 c7 83 98 00 00 00 	movq   $0x0,0x98(%r11)
    110f:	00 00 00 00
    1113:	66 41 c7 83 08 01 00 	movw   $0x100,0x108(%r11)
    111a:	00 00 01
    111d:	49 ff c6             	inc    %r14
    1120:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1127 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1127>
			1123: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    1127:	49 89 43 60          	mov    %rax,0x60(%r11)
    112b:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
    1132:	00
    1133:	49 39 de             	cmp    %rbx,%r14
    1136:	0f 83 ca 07 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    113c:	4c 89 f6             	mov    %r14,%rsi
    113f:	49 39 de             	cmp    %rbx,%r14
    1142:	0f 83 62 11 00 00    	jae    22aa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22aa>
    1148:	48 89 d8             	mov    %rbx,%rax
    114b:	48 29 f0             	sub    %rsi,%rax
    114e:	48 89 c7             	mov    %rax,%rdi
    1151:	31 c9                	xor    %ecx,%ecx
    1153:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
    1157:	83 fa 0d             	cmp    $0xd,%edx
    115a:	0f 84 93 0e 00 00    	je     1ff3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ff3>
    1160:	83 fa 0a             	cmp    $0xa,%edx
    1163:	0f 84 7e 11 00 00    	je     22e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22e7>
    1169:	80 c2 a5             	add    $0xa5,%dl
    116c:	80 fa e5             	cmp    $0xe5,%dl
    116f:	0f 86 58 10 00 00    	jbe    21cd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21cd>
    1175:	49 8b 83 e0 00 00 00 	mov    0xe0(%r11),%rax
    117c:	49 3b 03             	cmp    (%r11),%rax
    117f:	0f 84 cf 0c 00 00    	je     1e54 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e54>
    1185:	48 8d 14 0e          	lea    (%rsi,%rcx,1),%rdx
    1189:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    118e:	c6 40 04 00          	movb   $0x0,0x4(%rax)
    1192:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    1198:	41 0f 11 67 60       	movups %xmm4,0x60(%r15)
    119d:	41 0f 11 67 50       	movups %xmm4,0x50(%r15)
    11a2:	41 0f 11 67 40       	movups %xmm4,0x40(%r15)
    11a7:	41 0f 11 67 30       	movups %xmm4,0x30(%r15)
    11ac:	41 0f 11 67 20       	movups %xmm4,0x20(%r15)
    11b1:	41 0f 11 67 10       	movups %xmm4,0x10(%r15)
    11b6:	41 0f 11 27          	movups %xmm4,(%r15)
    11ba:	41 c6 83 08 01 00 00 	movb   $0x1,0x108(%r11)
    11c1:	01
    11c2:	4d 8b 43 40          	mov    0x40(%r11),%r8
    11c6:	49 8b 43 48          	mov    0x48(%r11),%rax
    11ca:	49 89 c1             	mov    %rax,%r9
    11cd:	4d 29 c1             	sub    %r8,%r9
    11d0:	4d 89 8b f8 00 00 00 	mov    %r9,0xf8(%r11)
    11d7:	4d 8b 4b 50          	mov    0x50(%r11),%r9
    11db:	4d 89 ca             	mov    %r9,%r10
    11de:	49 29 c2             	sub    %rax,%r10
    11e1:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
    11e8:	49 8b 83 e8 00 00 00 	mov    0xe8(%r11),%rax
    11ef:	49 89 83 f0 00 00 00 	mov    %rax,0xf0(%r11)
    11f6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11fd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11fd>
			11f9: R_X86_64_PC32	char const* stomptalk::parser::method_state<3u>(char const*, char const*)-0x4
    11fd:	49 89 43 60          	mov    %rax,0x60(%r11)
    1201:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
    1208:	00
    1209:	48 89 d0             	mov    %rdx,%rax
    120c:	48 39 da             	cmp    %rbx,%rdx
    120f:	0f 83 83 09 00 00    	jae    1b98 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b98>
    1215:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    121c:	00 00 00 00
    1220:	44 0f b6 18          	movzbl (%rax),%r11d
    1224:	41 80 c3 bf          	add    $0xbf,%r11b
    1228:	41 80 fb 19          	cmp    $0x19,%r11b
    122c:	77 0d                	ja     123b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x123b>
    122e:	48 ff c0             	inc    %rax
    1231:	48 ff cf             	dec    %rdi
    1234:	75 ea                	jne    1220 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1220>
    1236:	e9 a4 0a 00 00       	jmp    1cdf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cdf>
    123b:	48 39 c2             	cmp    %rax,%rdx
    123e:	0f 84 b3 10 00 00    	je     22f7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x22f7>
    1244:	49 89 c3             	mov    %rax,%r11
    1247:	49 29 f3             	sub    %rsi,%r11
    124a:	4c 89 df             	mov    %r11,%rdi
    124d:	48 29 cf             	sub    %rcx,%rdi
    1250:	4c 39 d7             	cmp    %r10,%rdi
    1253:	0f 87 e9 0a 00 00    	ja     1d42 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d42>
    1259:	49 29 c2             	sub    %rax,%r10
    125c:	49 01 d2             	add    %rdx,%r10
    125f:	4c 8b 1c 24          	mov    (%rsp),%r11
    1263:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
    126a:	49 89 93 d0 00 00 00 	mov    %rdx,0xd0(%r11)
    1271:	49 89 bb d8 00 00 00 	mov    %rdi,0xd8(%r11)
    1278:	48 89 c6             	mov    %rax,%rsi
    127b:	48 39 d8             	cmp    %rbx,%rax
    127e:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    1283:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    1288:	0f 84 ef 08 00 00    	je     1b7d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b7d>
    128e:	0f b6 08             	movzbl (%rax),%ecx
    1291:	83 f9 0d             	cmp    $0xd,%ecx
    1294:	0f 85 ff 04 00 00    	jne    1799 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1799>
    129a:	41 c6 83 0d 01 00 00 	movb   $0x0,0x10d(%r11)
    12a1:	00
    12a2:	41 0f 11 22          	movups %xmm4,(%r10)
    12a6:	49 89 93 a0 00 00 00 	mov    %rdx,0xa0(%r11)
    12ad:	49 89 bb a8 00 00 00 	mov    %rdi,0xa8(%r11)
    12b4:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    12bb:	48 83 ff 07          	cmp    $0x7,%rdi
    12bf:	0f 85 64 05 00 00    	jne    1829 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1829>
    12c5:	0f b6 3a             	movzbl (%rdx),%edi
    12c8:	83 ff 4d             	cmp    $0x4d,%edi
    12cb:	0f 84 90 f4 ff ff    	je     761 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x761>
    12d1:	e9 9b 09 00 00       	jmp    1c71 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c71>
    12d6:	b1 01                	mov    $0x1,%cl
    12d8:	e9 e5 ee ff ff       	jmp    1c2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c2>
    12dd:	48 39 c2             	cmp    %rax,%rdx
    12e0:	0f 84 5a 10 00 00    	je     2340 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2340>
    12e6:	49 89 c3             	mov    %rax,%r11
    12e9:	49 29 f3             	sub    %rsi,%r11
    12ec:	4c 89 df             	mov    %r11,%rdi
    12ef:	48 29 cf             	sub    %rcx,%rdi
    12f2:	4c 39 d7             	cmp    %r10,%rdi
    12f5:	0f 87 47 0a 00 00    	ja     1d42 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d42>
    12fb:	49 29 c2             	sub    %rax,%r10
    12fe:	49 01 d2             	add    %rdx,%r10
    1301:	4c 8b 1c 24          	mov    (%rsp),%r11
    1305:	4d 89 93 00 01 00 00 	mov    %r10,0x100(%r11)
    130c:	49 89 93 d0 00 00 00 	mov    %rdx,0xd0(%r11)
    1313:	49 89 bb d8 00 00 00 	mov    %rdi,0xd8(%r11)
    131a:	48 89 c6             	mov    %rax,%rsi
    131d:	48 39 d8             	cmp    %rbx,%rax
    1320:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    1325:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    132a:	0f 84 4d 08 00 00    	je     1b7d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b7d>
    1330:	0f b6 08             	movzbl (%rax),%ecx
    1333:	83 f9 0d             	cmp    $0xd,%ecx
    1336:	0f 85 df 04 00 00    	jne    181b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x181b>
    133c:	41 c6 83 0d 01 00 00 	movb   $0x0,0x10d(%r11)
    1343:	00
    1344:	41 0f 11 22          	movups %xmm4,(%r10)
    1348:	49 89 93 a0 00 00 00 	mov    %rdx,0xa0(%r11)
    134f:	49 89 bb a8 00 00 00 	mov    %rdi,0xa8(%r11)
    1356:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    135d:	48 83 ff 07          	cmp    $0x7,%rdi
    1361:	0f 84 5e ff ff ff    	je     12c5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12c5>
    1367:	e9 0a 05 00 00       	jmp    1876 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1876>
    136c:	49 8b 7b 48          	mov    0x48(%r11),%rdi
    1370:	4c 89 fe             	mov    %r15,%rsi
    1373:	4c 89 ea             	mov    %r13,%rdx
    1376:	e8 00 00 00 00       	call   137b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x137b>
			1377: R_X86_64_PLT32	memcpy-0x4
    137b:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1384 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1384>
    1382:	00 00
			1380: R_X86_64_PC32	.LCPI48_3-0x4
    1384:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 138c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x138c>
    138b:	00
			1388: R_X86_64_PC32	.LCPI48_2-0x4
    138c:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1394 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1394>
    1393:	00
			1390: R_X86_64_PC32	.LCPI48_1-0x4
    1394:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 139c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x139c>
    139b:	00
			1398: R_X86_64_PC32	.LCPI48_0-0x4
    139c:	0f 57 e4             	xorps  %xmm4,%xmm4
    139f:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    13a4:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    13a9:	4c 8b 1c 24          	mov    (%rsp),%r11
    13ad:	4d 01 6b 48          	add    %r13,0x48(%r11)
    13b1:	49 8b 83 d8 00 00 00 	mov    0xd8(%r11),%rax
    13b8:	e9 22 ef ff ff       	jmp    2df <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2df>
    13bd:	49 8b 7b 48          	mov    0x48(%r11),%rdi
    13c1:	4c 89 fe             	mov    %r15,%rsi
    13c4:	4c 89 ea             	mov    %r13,%rdx
    13c7:	e8 00 00 00 00       	call   13cc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13cc>
			13c8: R_X86_64_PLT32	memcpy-0x4
    13cc:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 13d5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13d5>
    13d3:	00 00
			13d1: R_X86_64_PC32	.LCPI48_3-0x4
    13d5:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 13dd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13dd>
    13dc:	00
			13d9: R_X86_64_PC32	.LCPI48_2-0x4
    13dd:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 13e5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13e5>
    13e4:	00
			13e1: R_X86_64_PC32	.LCPI48_1-0x4
    13e5:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 13ed <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x13ed>
    13ec:	00
			13e9: R_X86_64_PC32	.LCPI48_0-0x4
    13ed:	0f 57 e4             	xorps  %xmm4,%xmm4
    13f0:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    13f5:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    13fa:	4c 8b 1c 24          	mov    (%rsp),%r11
    13fe:	4d 01 6b 48          	add    %r13,0x48(%r11)
    1402:	49 8b 83 d8 00 00 00 	mov    0xd8(%r11),%rax
    1409:	e9 37 ee ff ff       	jmp    245 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x245>
    140e:	83 f9 0a             	cmp    $0xa,%ecx
    1411:	0f 84 13 f3 ff ff    	je     72a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x72a>
    1417:	e9 86 03 00 00       	jmp    17a2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17a2>
    141c:	83 f9 0a             	cmp    $0xa,%ecx
    141f:	0f 84 d9 f8 ff ff    	je     cfe <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xcfe>
    1425:	e9 78 03 00 00       	jmp    17a2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17a2>
    142a:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    142e:	48 83 ff 08          	cmp    $0x8,%rdi
    1432:	0f 87 49 f3 ff ff    	ja     781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    1438:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 143f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x143f>
			143b: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x44
    143f:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    1443:	4c 01 c7             	add    %r8,%rdi
    1446:	3e ff e7             	notrack jmp *%rdi
    1449:	48 8b 3a             	mov    (%rdx),%rdi
    144c:	48 be 43 4f 4e 4e 45 	movabs $0x455443454e4e4f43,%rsi
    1453:	43 54 45
    1456:	48 31 f7             	xor    %rsi,%rdi
    1459:	44 0f b6 42 08       	movzbl 0x8(%rdx),%r8d
    145e:	49 83 f0 44          	xor    $0x44,%r8
    1462:	be 06 00 00 00       	mov    $0x6,%esi
    1467:	49 09 f8             	or     %rdi,%r8
    146a:	0f 84 11 f3 ff ff    	je     781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    1470:	e9 33 0f 00 00       	jmp    23a8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23a8>
    1475:	48 89 de             	mov    %rbx,%rsi
    1478:	4c 29 f6             	sub    %r14,%rsi
    147b:	31 d2                	xor    %edx,%edx
    147d:	48 83 fe 08          	cmp    $0x8,%rsi
    1481:	0f 8d ed 15 00 00    	jge    2a74 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a74>
    1487:	31 f6                	xor    %esi,%esi
    1489:	49 39 de             	cmp    %rbx,%r14
    148c:	73 52                	jae    14e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14e0>
    148e:	41 0f b6 3e          	movzbl (%r14),%edi
    1492:	83 ff 3a             	cmp    $0x3a,%edi
    1495:	0f 84 d0 06 00 00    	je     1b6b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b6b>
    149b:	45 31 c0             	xor    %r8d,%r8d
    149e:	41 f6 c0 01          	test   $0x1,%r8b
    14a2:	0f 85 cb 06 00 00    	jne    1b73 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b73>
    14a8:	83 ff 0d             	cmp    $0xd,%edi
    14ab:	77 0c                	ja     14b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14b9>
    14ad:	41 b8 01 24 00 00    	mov    $0x2401,%r8d
    14b3:	41 0f a3 f8          	bt     %edi,%r8d
    14b7:	72 27                	jb     14e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14e0>
    14b9:	83 ff 3a             	cmp    $0x3a,%edi
    14bc:	41 0f 95 c0          	setne  %r8b
    14c0:	83 ff 5c             	cmp    $0x5c,%edi
    14c3:	40 0f 95 c7          	setne  %dil
    14c7:	44 20 c7             	and    %r8b,%dil
    14ca:	40 08 c7             	or     %al,%dil
    14cd:	40 80 ff 01          	cmp    $0x1,%dil
    14d1:	75 0d                	jne    14e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14e0>
    14d3:	49 ff c6             	inc    %r14
    14d6:	49 39 de             	cmp    %rbx,%r14
    14d9:	72 b3                	jb     148e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x148e>
    14db:	e9 41 06 00 00       	jmp    1b21 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b21>
    14e0:	48 85 d2             	test   %rdx,%rdx
    14e3:	48 0f 44 d6          	cmove  %rsi,%rdx
    14e7:	4d 85 e4             	test   %r12,%r12
    14ea:	0f 85 ef 06 00 00    	jne    1bdf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bdf>
    14f0:	49 89 d4             	mov    %rdx,%r12
    14f3:	e9 ff ec ff ff       	jmp    1f7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f7>
    14f8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 14ff <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14ff>
			14fb: R_X86_64_PC32	char const* stomptalk::parser::body_read<3u>(char const*, char const*)-0x4
    14ff:	49 89 43 60          	mov    %rax,0x60(%r11)
    1503:	49 8b 83 88 00 00 00 	mov    0x88(%r11),%rax
    150a:	49 2b 83 90 00 00 00 	sub    0x90(%r11),%rax
    1511:	48 89 d9             	mov    %rbx,%rcx
    1514:	4c 29 e1             	sub    %r12,%rcx
    1517:	48 39 c1             	cmp    %rax,%rcx
    151a:	49 89 c6             	mov    %rax,%r14
    151d:	4c 0f 42 f1          	cmovb  %rcx,%r14
    1521:	4d 89 a3 b8 00 00 00 	mov    %r12,0xb8(%r11)
    1528:	4d 89 b3 98 00 00 00 	mov    %r14,0x98(%r11)
    152f:	4d 01 e6             	add    %r12,%r14
    1532:	48 39 c8             	cmp    %rcx,%rax
    1535:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    153a:	0f 87 c6 03 00 00    	ja     1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1540:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1547 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1547>
			1543: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    1547:	49 89 43 60          	mov    %rax,0x60(%r11)
    154b:	49 39 de             	cmp    %rbx,%r14
    154e:	0f 83 b2 03 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1554:	41 80 3e 00          	cmpb   $0x0,(%r14)
    1558:	0f 85 16 09 00 00    	jne    1e74 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e74>
    155e:	49 8b 83 f0 00 00 00 	mov    0xf0(%r11),%rax
    1565:	48 c1 e0 05          	shl    $0x5,%rax
    1569:	49 03 43 38          	add    0x38(%r11),%rax
    156d:	49 8b 8b 80 00 00 00 	mov    0x80(%r11),%rcx
    1574:	48 85 c9             	test   %rcx,%rcx
    1577:	48 0f 44 c1          	cmove  %rcx,%rax
    157b:	49 89 83 b0 00 00 00 	mov    %rax,0xb0(%r11)
    1582:	41 80 bb 09 01 00 00 	cmpb   $0x0,0x109(%r11)
    1589:	00
    158a:	0f 85 da 08 00 00    	jne    1e6a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e6a>
    1590:	b8 07 00 00 00       	mov    $0x7,%eax
    1595:	41 89 43 78          	mov    %eax,0x78(%r11)
    1599:	49 8b 43 30          	mov    0x30(%r11),%rax
    159d:	49 8b 8b e0 00 00 00 	mov    0xe0(%r11),%rcx
    15a4:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    15a8:	49 89 93 e0 00 00 00 	mov    %rdx,0xe0(%r11)
    15af:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    15b3:	48 c1 e1 04          	shl    $0x4,%rcx
    15b7:	0f 10 46 40          	movups 0x40(%rsi),%xmm0
    15bb:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
    15c0:	0f 10 06             	movups (%rsi),%xmm0
    15c3:	0f 10 4e 10          	movups 0x10(%rsi),%xmm1
    15c7:	0f 10 56 20          	movups 0x20(%rsi),%xmm2
    15cb:	0f 10 5e 30          	movups 0x30(%rsi),%xmm3
    15cf:	0f 11 5c 08 30       	movups %xmm3,0x30(%rax,%rcx,1)
    15d4:	0f 11 54 08 20       	movups %xmm2,0x20(%rax,%rcx,1)
    15d9:	0f 11 4c 08 10       	movups %xmm1,0x10(%rax,%rcx,1)
    15de:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    15e2:	49 8b 83 98 00 00 00 	mov    0x98(%r11),%rax
    15e9:	49 01 83 90 00 00 00 	add    %rax,0x90(%r11)
    15f0:	49 c7 83 b8 00 00 00 	movq   $0x0,0xb8(%r11)
    15f7:	00 00 00 00
    15fb:	49 c7 83 98 00 00 00 	movq   $0x0,0x98(%r11)
    1602:	00 00 00 00
    1606:	66 41 c7 83 08 01 00 	movw   $0x100,0x108(%r11)
    160d:	00 00 01
    1610:	49 ff c6             	inc    %r14
    1613:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 161a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x161a>
			1616: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    161a:	49 89 43 60          	mov    %rax,0x60(%r11)
    161e:	49 c7 43 68 00 00 00 	movq   $0x0,0x68(%r11)
    1625:	00
    1626:	49 39 de             	cmp    %rbx,%r14
    1629:	0f 83 d7 02 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    162f:	4c 89 df             	mov    %r11,%rdi
    1632:	4c 89 f6             	mov    %r14,%rsi
    1635:	48 89 da             	mov    %rbx,%rdx
    1638:	48 83 c4 48          	add    $0x48,%rsp
    163c:	5b                   	pop    %rbx
    163d:	41 5c                	pop    %r12
    163f:	41 5d                	pop    %r13
    1641:	41 5e                	pop    %r14
    1643:	41 5f                	pop    %r15
    1645:	5d                   	pop    %rbp
    1646:	e9 00 00 00 00       	jmp    164b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x164b>
			1647: R_X86_64_PLT32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    164b:	48 89 da             	mov    %rbx,%rdx
    164e:	4c 29 e2             	sub    %r12,%rdx
    1651:	4c 89 e7             	mov    %r12,%rdi
    1654:	31 f6                	xor    %esi,%esi
    1656:	e8 00 00 00 00       	call   165b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x165b>
			1657: R_X86_64_PLT32	memchr-0x4
    165b:	49 89 c6             	mov    %rax,%r14
    165e:	48 89 d8             	mov    %rbx,%rax
    1661:	4d 85 f6             	test   %r14,%r14
    1664:	74 03                	je     1669 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1669>
    1666:	4c 89 f0             	mov    %r14,%rax
    1669:	4c 29 e0             	sub    %r12,%rax
    166c:	48 8b 3c 24          	mov    (%rsp),%rdi
    1670:	48 8b 4f 20          	mov    0x20(%rdi),%rcx
    1674:	48 2b 8f 90 00 00 00 	sub    0x90(%rdi),%rcx
    167b:	48 39 c8             	cmp    %rcx,%rax
    167e:	0f 87 13 0b 00 00    	ja     2197 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2197>
    1684:	4c 89 a7 b8 00 00 00 	mov    %r12,0xb8(%rdi)
    168b:	48 89 87 98 00 00 00 	mov    %rax,0x98(%rdi)
    1692:	4d 85 f6             	test   %r14,%r14
    1695:	0f 84 9d 0c 00 00    	je     2338 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2338>
    169b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16a2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16a2>
			169e: R_X86_64_PC32	char const* stomptalk::parser::frame_end<3u>(char const*, char const*)-0x4
    16a2:	48 89 47 60          	mov    %rax,0x60(%rdi)
    16a6:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
    16ad:	00
    16ae:	49 39 de             	cmp    %rbx,%r14
    16b1:	0f 83 4f 02 00 00    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    16b7:	41 80 3e 00          	cmpb   $0x0,(%r14)
    16bb:	0f 85 a2 0a 00 00    	jne    2163 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2163>
    16c1:	48 8b 87 f0 00 00 00 	mov    0xf0(%rdi),%rax
    16c8:	48 c1 e0 05          	shl    $0x5,%rax
    16cc:	48 03 47 38          	add    0x38(%rdi),%rax
    16d0:	48 8b 8f 80 00 00 00 	mov    0x80(%rdi),%rcx
    16d7:	48 85 c9             	test   %rcx,%rcx
    16da:	48 0f 44 c1          	cmove  %rcx,%rax
    16de:	48 89 87 b0 00 00 00 	mov    %rax,0xb0(%rdi)
    16e5:	80 bf 09 01 00 00 00 	cmpb   $0x0,0x109(%rdi)
    16ec:	0f 85 6a 08 00 00    	jne    1f5c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f5c>
    16f2:	b8 06 00 00 00       	mov    $0x6,%eax
    16f7:	89 47 78             	mov    %eax,0x78(%rdi)
    16fa:	48 8b 47 30          	mov    0x30(%rdi),%rax
    16fe:	48 8b 8f e0 00 00 00 	mov    0xe0(%rdi),%rcx
    1705:	48 8d 51 01          	lea    0x1(%rcx),%rdx
    1709:	48 89 97 e0 00 00 00 	mov    %rdx,0xe0(%rdi)
    1710:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    1714:	48 c1 e1 04          	shl    $0x4,%rcx
    1718:	41 0f 10 47 40       	movups 0x40(%r15),%xmm0
    171d:	0f 11 44 08 40       	movups %xmm0,0x40(%rax,%rcx,1)
    1722:	41 0f 10 07          	movups (%r15),%xmm0
    1726:	41 0f 10 4f 10       	movups 0x10(%r15),%xmm1
    172b:	41 0f 10 57 20       	movups 0x20(%r15),%xmm2
    1730:	41 0f 10 5f 30       	movups 0x30(%r15),%xmm3
    1735:	0f 11 5c 08 30       	movups %xmm3,0x30(%rax,%rcx,1)
    173a:	0f 11 54 08 20       	movups %xmm2,0x20(%rax,%rcx,1)
    173f:	0f 11 4c 08 10       	movups %xmm1,0x10(%rax,%rcx,1)
    1744:	0f 11 04 08          	movups %xmm0,(%rax,%rcx,1)
    1748:	48 8b 87 98 00 00 00 	mov    0x98(%rdi),%rax
    174f:	48 01 87 90 00 00 00 	add    %rax,0x90(%rdi)
    1756:	48 c7 87 b8 00 00 00 	movq   $0x0,0xb8(%rdi)
    175d:	00 00 00 00
    1761:	48 c7 87 98 00 00 00 	movq   $0x0,0x98(%rdi)
    1768:	00 00 00 00
    176c:	66 c7 87 08 01 00 00 	movw   $0x100,0x108(%rdi)
    1773:	00 01
    1775:	49 ff c6             	inc    %r14
    1778:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 177f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x177f>
			177b: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    177f:	48 89 47 60          	mov    %rax,0x60(%rdi)
    1783:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
    178a:	00
    178b:	49 39 de             	cmp    %rbx,%r14
    178e:	0f 82 9e fe ff ff    	jb     1632 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1632>
    1794:	e9 6d 01 00 00       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1799:	83 f9 0a             	cmp    $0xa,%ecx
    179c:	0f 84 f8 fa ff ff    	je     129a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x129a>
    17a2:	48 b9 03 00 00 00 06 	movabs $0x600000003,%rcx
    17a9:	00 00 00
    17ac:	49 89 8b 10 01 00 00 	mov    %rcx,0x110(%r11)
    17b3:	49 2b b3 20 01 00 00 	sub    0x120(%r11),%rsi
    17ba:	49 89 b3 18 01 00 00 	mov    %rsi,0x118(%r11)
    17c1:	48 ff c0             	inc    %rax
    17c4:	49 89 83 28 01 00 00 	mov    %rax,0x128(%r11)
    17cb:	49 89 c6             	mov    %rax,%r14
    17ce:	e9 33 01 00 00       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    17d3:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    17d7:	48 83 ff 08          	cmp    $0x8,%rdi
    17db:	0f 87 a0 ef ff ff    	ja     781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    17e1:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 17e8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17e8>
			17e4: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_-0x4
    17e8:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    17ec:	4c 01 c7             	add    %r8,%rdi
    17ef:	3e ff e7             	notrack jmp *%rdi
    17f2:	81 3a 4e 41 43 4b    	cmpl   $0x4b43414e,(%rdx)
    17f8:	0f 84 d4 0b 00 00    	je     23d2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23d2>
    17fe:	be 0c 00 00 00       	mov    $0xc,%esi
    1803:	81 3a 53 45 4e 44    	cmpl   $0x444e4553,(%rdx)
    1809:	0f 84 72 ef ff ff    	je     781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    180f:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    1816:	e9 66 ef ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    181b:	83 f9 0a             	cmp    $0xa,%ecx
    181e:	0f 84 18 fb ff ff    	je     133c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x133c>
    1824:	e9 79 ff ff ff       	jmp    17a2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17a2>
    1829:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    182d:	48 83 ff 08          	cmp    $0x8,%rdi
    1831:	0f 87 4a ef ff ff    	ja     781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    1837:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 183e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x183e>
			183a: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x20
    183e:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    1842:	4c 01 c7             	add    %r8,%rdi
    1845:	3e ff e7             	notrack jmp *%rdi
    1848:	0f b6 3a             	movzbl (%rdx),%edi
    184b:	83 ff 53             	cmp    $0x53,%edi
    184e:	0f 85 64 11 00 00    	jne    29b8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29b8>
    1854:	bf 53 54 4f 4d       	mov    $0x4d4f5453,%edi
    1859:	33 3a                	xor    (%rdx),%edi
    185b:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    185f:	83 f2 50             	xor    $0x50,%edx
    1862:	31 f6                	xor    %esi,%esi
    1864:	09 fa                	or     %edi,%edx
    1866:	40 0f 95 c6          	setne  %sil
    186a:	48 f7 de             	neg    %rsi
    186d:	48 83 ce 0d          	or     $0xd,%rsi
    1871:	e9 23 04 00 00       	jmp    1c99 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c99>
    1876:	48 83 c7 fd          	add    $0xfffffffffffffffd,%rdi
    187a:	48 83 ff 08          	cmp    $0x8,%rdi
    187e:	0f 87 fd ee ff ff    	ja     781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    1884:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # 188b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x188b>
			1887: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x68
    188b:	49 63 3c b8          	movslq (%r8,%rdi,4),%rdi
    188f:	4c 01 c7             	add    %r8,%rdi
    1892:	3e ff e7             	notrack jmp *%rdi
    1895:	0f b7 32             	movzwl (%rdx),%esi
    1898:	81 f6 41 43 00 00    	xor    $0x4341,%esi
    189e:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
    18a2:	83 f2 4b             	xor    $0x4b,%edx
    18a5:	31 ff                	xor    %edi,%edi
    18a7:	66 09 f2             	or     %si,%dx
    18aa:	40 0f 94 c7          	sete   %dil
    18ae:	48 8d 34 7f          	lea    (%rdi,%rdi,2),%rsi
    18b2:	48 ff ce             	dec    %rsi
    18b5:	e9 c7 ee ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    18ba:	4d 8b 63 48          	mov    0x48(%r11),%r12
    18be:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    18c3:	e9 2e eb ff ff       	jmp    3f6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x3f6>
    18c8:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    18cf:	7f 7f 7f
    18d2:	e9 bd f4 ff ff       	jmp    d94 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xd94>
    18d7:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
    18de:	00 00 00
    18e1:	49 89 83 10 01 00 00 	mov    %rax,0x110(%r11)
    18e8:	4c 89 f8             	mov    %r15,%rax
    18eb:	49 2b 83 20 01 00 00 	sub    0x120(%r11),%rax
    18f2:	49 89 83 18 01 00 00 	mov    %rax,0x118(%r11)
    18f9:	49 ff c7             	inc    %r15
    18fc:	4d 89 bb 28 01 00 00 	mov    %r15,0x128(%r11)
    1903:	4d 89 fe             	mov    %r15,%r14
    1906:	4c 89 f0             	mov    %r14,%rax
    1909:	48 83 c4 48          	add    $0x48,%rsp
    190d:	5b                   	pop    %rbx
    190e:	41 5c                	pop    %r12
    1910:	41 5d                	pop    %r13
    1912:	41 5e                	pop    %r14
    1914:	41 5f                	pop    %r15
    1916:	5d                   	pop    %rbp
    1917:	c3                   	ret
    1918:	49 8b 83 d8 00 00 00 	mov    0xd8(%r11),%rax
    191f:	e9 2b e9 ff ff       	jmp    24f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x24f>
    1924:	4b 8d 3c 2c          	lea    (%r12,%r13,1),%rdi
    1928:	48 83 c7 ec          	add    $0xffffffffffffffec,%rdi
    192c:	4c 89 e1             	mov    %r12,%rcx
    192f:	4c 89 ea             	mov    %r13,%rdx
    1932:	80 39 30             	cmpb   $0x30,(%rcx)
    1935:	0f 85 c5 0f 00 00    	jne    2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    193b:	48 ff c1             	inc    %rcx
    193e:	48 ff ca             	dec    %rdx
    1941:	b8 14 00 00 00       	mov    $0x14,%eax
    1946:	48 83 fa 14          	cmp    $0x14,%rdx
    194a:	77 e6                	ja     1932 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1932>
    194c:	48 8d 48 ee          	lea    -0x12(%rax),%rcx
    1950:	45 31 ff             	xor    %r15d,%r15d
    1953:	31 d2                	xor    %edx,%edx
    1955:	0f b6 34 17          	movzbl (%rdi,%rdx,1),%esi
    1959:	83 c6 d0             	add    $0xffffffd0,%esi
    195c:	83 fe 09             	cmp    $0x9,%esi
    195f:	0f 87 9b 0f 00 00    	ja     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    1965:	4f 8d 04 bf          	lea    (%r15,%r15,4),%r8
    1969:	89 f6                	mov    %esi,%esi
    196b:	4e 8d 3c 46          	lea    (%rsi,%r8,2),%r15
    196f:	48 ff c2             	inc    %rdx
    1972:	48 39 d1             	cmp    %rdx,%rcx
    1975:	75 de                	jne    1955 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1955>
    1977:	0f b6 74 07 ee       	movzbl -0x12(%rdi,%rax,1),%esi
    197c:	8d 4e c6             	lea    -0x3a(%rsi),%ecx
    197f:	80 f9 f6             	cmp    $0xf6,%cl
    1982:	0f 82 78 0f 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    1988:	48 01 c7             	add    %rax,%rdi
    198b:	44 0f b6 47 ef       	movzbl -0x11(%rdi),%r8d
    1990:	41 8d 40 c6          	lea    -0x3a(%r8),%eax
    1994:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    199b:	00 00 80
    199e:	3c f6                	cmp    $0xf6,%al
    19a0:	0f 82 19 01 00 00    	jb     1abf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1abf>
    19a6:	0f b6 4f f0          	movzbl -0x10(%rdi),%ecx
    19aa:	8d 41 c6             	lea    -0x3a(%rcx),%eax
    19ad:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    19b4:	00 00 80
    19b7:	3c f6                	cmp    $0xf6,%al
    19b9:	0f 82 e2 00 00 00    	jb     1aa1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1aa1>
    19bf:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    19c4:	0f b6 6f f1          	movzbl -0xf(%rdi),%ebp
    19c8:	8d 4d c6             	lea    -0x3a(%rbp),%ecx
    19cb:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    19d2:	00 00 80
    19d5:	80 f9 f6             	cmp    $0xf6,%cl
    19d8:	0f 82 a0 00 00 00    	jb     1a7e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a7e>
    19de:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    19e3:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    19e8:	0f b6 5f f2          	movzbl -0xe(%rdi),%ebx
    19ec:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    19ef:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    19f6:	00 00 80
    19f9:	3c f6                	cmp    $0xf6,%al
    19fb:	72 27                	jb     1a24 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a24>
    19fd:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    1a04:	09 00 00
    1a07:	48 0f af d8          	imul   %rax,%rbx
    1a0b:	48 83 c7 f3          	add    $0xfffffffffffffff3,%rdi
    1a0f:	e8 00 00 00 00       	call   1a14 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a14>
			1a10: R_X86_64_PLT32	.text+0x97c
    1a14:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
    1a1b:	4b fe ff
    1a1e:	48 01 c1             	add    %rax,%rcx
    1a21:	48 01 d9             	add    %rbx,%rcx
    1a24:	48 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rax
    1a2b:	5a 00 00
    1a2e:	48 0f af e8          	imul   %rax,%rbp
    1a32:	48 b8 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%rax
    1a39:	f2 ee ff
    1a3c:	48 01 e8             	add    %rbp,%rax
    1a3f:	48 01 c8             	add    %rcx,%rax
    1a42:	4c 8b 1c 24          	mov    (%rsp),%r11
    1a46:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    1a4b:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    1a50:	0f 57 e4             	xorps  %xmm4,%xmm4
    1a53:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1a5b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a5b>
    1a5a:	00
			1a57: R_X86_64_PC32	.LCPI48_0-0x4
    1a5b:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1a63 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a63>
    1a62:	00
			1a5f: R_X86_64_PC32	.LCPI48_1-0x4
    1a63:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1a6b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a6b>
    1a6a:	00
			1a67: R_X86_64_PC32	.LCPI48_2-0x4
    1a6b:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1a74 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1a74>
    1a72:	00 00
			1a70: R_X86_64_PC32	.LCPI48_3-0x4
    1a74:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    1a79:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
    1a7e:	48 b9 00 80 c6 a4 7e 	movabs $0x38d7ea4c68000,%rcx
    1a85:	8d 03 00
    1a88:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    1a8d:	48 0f af f9          	imul   %rcx,%rdi
    1a91:	48 ba 00 00 c8 1a 41 	movabs $0xff5578411ac80000,%rdx
    1a98:	78 55 ff
    1a9b:	48 01 fa             	add    %rdi,%rdx
    1a9e:	48 01 c2             	add    %rax,%rdx
    1aa1:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
    1aa8:	86 23 00
    1aab:	4c 0f af c0          	imul   %rax,%r8
    1aaf:	48 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rcx
    1ab6:	b2 56 f9
    1ab9:	4c 01 c1             	add    %r8,%rcx
    1abc:	48 01 d1             	add    %rdx,%rcx
    1abf:	48 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rax
    1ac6:	45 63 01
    1ac9:	48 0f af f0          	imul   %rax,%rsi
    1acd:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
    1ad4:	f9 62 bd
    1ad7:	48 01 f0             	add    %rsi,%rax
    1ada:	49 83 ff 13          	cmp    $0x13,%r15
    1ade:	0f 93 c2             	setae  %dl
    1ae1:	48 01 c8             	add    %rcx,%rax
    1ae4:	0f 88 f2 08 00 00    	js     23dc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x23dc>
    1aea:	84 d2                	test   %dl,%dl
    1aec:	0f 85 0e 0e 00 00    	jne    2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    1af2:	49 83 ff 12          	cmp    $0x12,%r15
    1af6:	75 13                	jne    1b0b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b0b>
    1af8:	48 b9 ff ff f7 3a 5e 	movabs $0x633275e3af7ffff,%rcx
    1aff:	27 33 06
    1b02:	48 39 c8             	cmp    %rcx,%rax
    1b05:	0f 87 f5 0d 00 00    	ja     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    1b0b:	48 b9 00 00 64 a7 b3 	movabs $0xde0b6b3a7640000,%rcx
    1b12:	b6 e0 0d
    1b15:	4c 0f af f9          	imul   %rcx,%r15
    1b19:	4c 01 f8             	add    %r15,%rax
    1b1c:	e9 83 f4 ff ff       	jmp    fa4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xfa4>
    1b21:	49 89 de             	mov    %rbx,%r14
    1b24:	e9 b7 f9 ff ff       	jmp    14e0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14e0>
    1b29:	49 8d 45 ff          	lea    -0x1(%r13),%rax
    1b2d:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1b34 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b34>
			1b30: R_X86_64_PC32	.rodata.hot._ZN9stomptalk6parser12hdrline_doneILj3EEEPKcS3_S3_+0x8c
    1b34:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    1b38:	48 01 c8             	add    %rcx,%rax
    1b3b:	3e ff e0             	notrack jmp *%rax
    1b3e:	41 0f b6 04 24       	movzbl (%r12),%eax
    1b43:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    1b46:	80 f9 f6             	cmp    $0xf6,%cl
    1b49:	0f 82 b1 0d 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    1b4f:	48 83 c0 d0          	add    $0xffffffffffffffd0,%rax
    1b53:	e9 43 f4 ff ff       	jmp    f9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf9b>
    1b58:	48 01 ce             	add    %rcx,%rsi
    1b5b:	31 ff                	xor    %edi,%edi
    1b5d:	48 89 d0             	mov    %rdx,%rax
    1b60:	31 d2                	xor    %edx,%edx
    1b62:	4c 8b 1c 24          	mov    (%rsp),%r11
    1b66:	e9 a0 eb ff ff       	jmp    70b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x70b>
    1b6b:	41 89 c8             	mov    %ecx,%r8d
    1b6e:	e9 2b f9 ff ff       	jmp    149e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x149e>
    1b73:	31 c9                	xor    %ecx,%ecx
    1b75:	4c 89 f6             	mov    %r14,%rsi
    1b78:	e9 56 f9 ff ff       	jmp    14d3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14d3>
    1b7d:	49 89 c6             	mov    %rax,%r14
    1b80:	e9 81 fd ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1b85:	48 01 ce             	add    %rcx,%rsi
    1b88:	31 ff                	xor    %edi,%edi
    1b8a:	48 89 d0             	mov    %rdx,%rax
    1b8d:	31 d2                	xor    %edx,%edx
    1b8f:	4c 8b 1c 24          	mov    (%rsp),%r11
    1b93:	e9 47 f1 ff ff       	jmp    cdf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xcdf>
    1b98:	48 01 ce             	add    %rcx,%rsi
    1b9b:	31 ff                	xor    %edi,%edi
    1b9d:	48 89 d0             	mov    %rdx,%rax
    1ba0:	31 d2                	xor    %edx,%edx
    1ba2:	4c 8b 1c 24          	mov    (%rsp),%r11
    1ba6:	e9 d0 f6 ff ff       	jmp    127b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x127b>
    1bab:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
    1bb2:	00 00 00
    1bb5:	e9 50 0d 00 00       	jmp    290a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x290a>
    1bba:	49 8b 93 f8 00 00 00 	mov    0xf8(%r11),%rdx
    1bc1:	48 8d 34 0a          	lea    (%rdx,%rcx,1),%rsi
    1bc5:	b8 02 00 00 00       	mov    $0x2,%eax
    1bca:	49 39 f5             	cmp    %rsi,%r13
    1bcd:	0f 87 1e 01 00 00    	ja     1cf1 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cf1>
    1bd3:	41 89 83 10 01 00 00 	mov    %eax,0x110(%r11)
    1bda:	e9 1d fd ff ff       	jmp    18fc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x18fc>
    1bdf:	4c 89 e2             	mov    %r12,%rdx
    1be2:	e9 09 f9 ff ff       	jmp    14f0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14f0>
    1be7:	48 01 ce             	add    %rcx,%rsi
    1bea:	31 ff                	xor    %edi,%edi
    1bec:	48 89 d0             	mov    %rdx,%rax
    1bef:	31 d2                	xor    %edx,%edx
    1bf1:	4c 8b 1c 24          	mov    (%rsp),%r11
    1bf5:	e9 23 f7 ff ff       	jmp    131d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x131d>
    1bfa:	48 89 d8             	mov    %rbx,%rax
    1bfd:	e9 c9 ea ff ff       	jmp    6cb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x6cb>
    1c02:	83 ff 43             	cmp    $0x43,%edi
    1c05:	0f 85 26 0d 00 00    	jne    2931 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2931>
    1c0b:	bf 43 4f 4e 4e       	mov    $0x4e4e4f43,%edi
    1c10:	33 3a                	xor    (%rdx),%edi
    1c12:	41 b8 4e 45 43 54    	mov    $0x5443454e,%r8d
    1c18:	44 33 42 03          	xor    0x3(%rdx),%r8d
    1c1c:	be 05 00 00 00       	mov    $0x5,%esi
    1c21:	41 09 f8             	or     %edi,%r8d
    1c24:	0f 84 57 eb ff ff    	je     781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    1c2a:	e9 e0 fb ff ff       	jmp    180f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x180f>
    1c2f:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
    1c36:	6e 74 2d
    1c39:	48 33 01             	xor    (%rcx),%rax
    1c3c:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
    1c43:	67 74 68
    1c46:	48 33 51 06          	xor    0x6(%rcx),%rdx
    1c4a:	48 09 c2             	or     %rax,%rdx
    1c4d:	e9 ca eb ff ff       	jmp    81c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x81c>
    1c52:	48 b8 03 00 00 00 0c 	movabs $0xc00000003,%rax
    1c59:	00 00 00
    1c5c:	e9 a9 0c 00 00       	jmp    290a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x290a>
    1c61:	4d 89 e6             	mov    %r12,%r14
    1c64:	e9 9d fc ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1c69:	48 89 d8             	mov    %rbx,%rax
    1c6c:	e9 2e f0 ff ff       	jmp    c9f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc9f>
    1c71:	83 ff 43             	cmp    $0x43,%edi
    1c74:	0f 85 e6 0c 00 00    	jne    2960 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2960>
    1c7a:	bf 43 4f 4e 4e       	mov    $0x4e4e4f43,%edi
    1c7f:	33 3a                	xor    (%rdx),%edi
    1c81:	41 b8 4e 45 43 54    	mov    $0x5443454e,%r8d
    1c87:	44 33 42 03          	xor    0x3(%rdx),%r8d
    1c8b:	be 05 00 00 00       	mov    $0x5,%esi
    1c90:	41 09 f8             	or     %edi,%r8d
    1c93:	0f 85 13 0d 00 00    	jne    29ac <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29ac>
    1c99:	4c 8b 1c 24          	mov    (%rsp),%r11
    1c9d:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    1ca2:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    1ca7:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    1cac:	0f 57 e4             	xorps  %xmm4,%xmm4
    1caf:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1cb7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cb7>
    1cb6:	00
			1cb3: R_X86_64_PC32	.LCPI48_0-0x4
    1cb7:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1cbf <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cbf>
    1cbe:	00
			1cbb: R_X86_64_PC32	.LCPI48_1-0x4
    1cbf:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1cc7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cc7>
    1cc6:	00
			1cc3: R_X86_64_PC32	.LCPI48_2-0x4
    1cc7:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1cd0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1cd0>
    1cce:	00 00
			1ccc: R_X86_64_PC32	.LCPI48_3-0x4
    1cd0:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    1cd7:	7f 7f 7f
    1cda:	e9 a2 ea ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    1cdf:	48 89 d8             	mov    %rbx,%rax
    1ce2:	e9 54 f5 ff ff       	jmp    123b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x123b>
    1ce7:	b8 04 00 00 00       	mov    $0x4,%eax
    1cec:	e9 3b e8 ff ff       	jmp    52c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x52c>
    1cf1:	49 01 cf             	add    %rcx,%r15
    1cf4:	49 8d 04 17          	lea    (%r15,%rdx,1),%rax
    1cf8:	41 c7 83 14 01 00 00 	movl   $0xd,0x114(%r11)
    1cff:	0d 00 00 00
    1d03:	49 2b 83 20 01 00 00 	sub    0x120(%r11),%rax
    1d0a:	49 89 83 18 01 00 00 	mov    %rax,0x118(%r11)
    1d11:	49 01 d7             	add    %rdx,%r15
    1d14:	49 ff c7             	inc    %r15
    1d17:	b8 03 00 00 00       	mov    $0x3,%eax
    1d1c:	e9 b2 fe ff ff       	jmp    1bd3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bd3>
    1d21:	48 b8 03 00 00 00 0e 	movabs $0xe00000003,%rax
    1d28:	00 00 00
    1d2b:	e9 da 0b 00 00       	jmp    290a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x290a>
    1d30:	48 89 d8             	mov    %rbx,%rax
    1d33:	e9 a5 f5 ff ff       	jmp    12dd <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x12dd>
    1d38:	b8 05 00 00 00       	mov    $0x5,%eax
    1d3d:	e9 7a eb ff ff       	jmp    8bc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x8bc>
    1d42:	4c 89 c8             	mov    %r9,%rax
    1d45:	4c 29 c0             	sub    %r8,%rax
    1d48:	49 29 cb             	sub    %rcx,%r11
    1d4b:	49 39 c3             	cmp    %rax,%r11
    1d4e:	0f 87 3f 01 00 00    	ja     1e93 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e93>
    1d54:	48 01 ce             	add    %rcx,%rsi
    1d57:	b8 02 00 00 00       	mov    $0x2,%eax
    1d5c:	49 89 f6             	mov    %rsi,%r14
    1d5f:	48 8b 0c 24          	mov    (%rsp),%rcx
    1d63:	89 81 10 01 00 00    	mov    %eax,0x110(%rcx)
    1d69:	4c 89 b1 28 01 00 00 	mov    %r14,0x128(%rcx)
    1d70:	e9 91 fb ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1d75:	b8 04 00 00 00       	mov    $0x4,%eax
    1d7a:	e9 16 f3 ff ff       	jmp    1095 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1095>
    1d7f:	b8 04 00 00 00       	mov    $0x4,%eax
    1d84:	e9 71 ed ff ff       	jmp    afa <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xafa>
    1d89:	45 31 e4             	xor    %r12d,%r12d
    1d8c:	4d 89 fe             	mov    %r15,%r14
    1d8f:	e9 e1 f6 ff ff       	jmp    1475 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1475>
    1d94:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    1d9b:	00 00 00
    1d9e:	49 89 83 10 01 00 00 	mov    %rax,0x110(%r11)
    1da5:	4d 2b a3 20 01 00 00 	sub    0x120(%r11),%r12
    1dac:	4d 89 a3 18 01 00 00 	mov    %r12,0x118(%r11)
    1db3:	49 83 c6 03          	add    $0x3,%r14
    1db7:	e9 69 0b 00 00       	jmp    2925 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2925>
    1dbc:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1dc0:	49 ff c6             	inc    %r14
    1dc3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1dca <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1dca>
			1dc6: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    1dca:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1dcf:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    1dd5:	49 39 de             	cmp    %rbx,%r14
    1dd8:	0f 83 28 fb ff ff    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1dde:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    1de2:	0f 85 14 04 00 00    	jne    21fc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21fc>
    1de8:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1dec:	49 83 c6 02          	add    $0x2,%r14
    1df0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1df7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1df7>
			1df3: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    1df7:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1dfc:	4c 8b 1c 24          	mov    (%rsp),%r11
    1e00:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    1e06:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    1e0b:	49 39 de             	cmp    %rbx,%r14
    1e0e:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    1e13:	0f 57 e4             	xorps  %xmm4,%xmm4
    1e16:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1e1e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e1e>
    1e1d:	00
			1e1a: R_X86_64_PC32	.LCPI48_0-0x4
    1e1e:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1e26 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e26>
    1e25:	00
			1e22: R_X86_64_PC32	.LCPI48_1-0x4
    1e26:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1e2e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e2e>
    1e2d:	00
			1e2a: R_X86_64_PC32	.LCPI48_2-0x4
    1e2e:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1e37 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e37>
    1e35:	00 00
			1e33: R_X86_64_PC32	.LCPI48_3-0x4
    1e37:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    1e3e:	7f 7f 7f
    1e41:	0f 82 8d e7 ff ff    	jb     5d4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5d4>
    1e47:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1e4b:	49 83 c6 02          	add    $0x2,%r14
    1e4f:	e9 b2 fa ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1e54:	41 c7 83 10 01 00 00 	movl   $0x2,0x110(%r11)
    1e5b:	02 00 00 00
    1e5f:	48 01 ce             	add    %rcx,%rsi
    1e62:	49 89 f6             	mov    %rsi,%r14
    1e65:	e9 9c fa ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1e6a:	b8 05 00 00 00       	mov    $0x5,%eax
    1e6f:	e9 21 f7 ff ff       	jmp    1595 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1595>
    1e74:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    1e7b:	00 00 00
    1e7e:	e9 87 0a 00 00       	jmp    290a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x290a>
    1e83:	41 c7 83 10 01 00 00 	movl   $0x2,0x110(%r11)
    1e8a:	02 00 00 00
    1e8e:	e9 73 fa ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1e93:	48 8b 3c 24          	mov    (%rsp),%rdi
    1e97:	c7 87 14 01 00 00 0d 	movl   $0xd,0x114(%rdi)
    1e9e:	00 00 00
    1ea1:	4c 2b 8f 20 01 00 00 	sub    0x120(%rdi),%r9
    1ea8:	4d 29 c1             	sub    %r8,%r9
    1eab:	49 01 f1             	add    %rsi,%r9
    1eae:	49 01 c9             	add    %rcx,%r9
    1eb1:	4c 89 8f 18 01 00 00 	mov    %r9,0x118(%rdi)
    1eb8:	48 01 f0             	add    %rsi,%rax
    1ebb:	4c 8d 34 01          	lea    (%rcx,%rax,1),%r14
    1ebf:	49 ff c6             	inc    %r14
    1ec2:	b8 03 00 00 00       	mov    $0x3,%eax
    1ec7:	e9 93 fe ff ff       	jmp    1d5f <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1d5f>
    1ecc:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1ed0:	49 ff c6             	inc    %r14
    1ed3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1eda <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1eda>
			1ed6: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    1eda:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1edf:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    1ee5:	49 39 de             	cmp    %rbx,%r14
    1ee8:	0f 83 18 fa ff ff    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1eee:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    1ef2:	0f 85 04 03 00 00    	jne    21fc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21fc>
    1ef8:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1efc:	49 83 c6 02          	add    $0x2,%r14
    1f00:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1f07 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f07>
			1f03: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    1f07:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1f0c:	4c 8b 1c 24          	mov    (%rsp),%r11
    1f10:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    1f16:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    1f1b:	49 39 de             	cmp    %rbx,%r14
    1f1e:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    1f23:	0f 57 e4             	xorps  %xmm4,%xmm4
    1f26:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 1f2e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f2e>
    1f2d:	00
			1f2a: R_X86_64_PC32	.LCPI48_0-0x4
    1f2e:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 1f36 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f36>
    1f35:	00
			1f32: R_X86_64_PC32	.LCPI48_1-0x4
    1f36:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 1f3e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f3e>
    1f3d:	00
			1f3a: R_X86_64_PC32	.LCPI48_2-0x4
    1f3e:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 1f47 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1f47>
    1f45:	00 00
			1f43: R_X86_64_PC32	.LCPI48_3-0x4
    1f47:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    1f4e:	7f 7f 7f
    1f51:	0f 83 f0 fe ff ff    	jae    1e47 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e47>
    1f57:	e9 07 ea ff ff       	jmp    963 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x963>
    1f5c:	b8 04 00 00 00       	mov    $0x4,%eax
    1f61:	e9 91 f7 ff ff       	jmp    16f7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x16f7>
    1f66:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
    1f6d:	00 00 00
    1f70:	49 89 83 10 01 00 00 	mov    %rax,0x110(%r11)
    1f77:	4c 89 e0             	mov    %r12,%rax
    1f7a:	49 2b 83 20 01 00 00 	sub    0x120(%r11),%rax
    1f81:	49 89 83 18 01 00 00 	mov    %rax,0x118(%r11)
    1f88:	49 ff c4             	inc    %r12
    1f8b:	4d 89 a3 28 01 00 00 	mov    %r12,0x128(%r11)
    1f92:	4d 89 e6             	mov    %r12,%r14
    1f95:	e9 6c f9 ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    1f9a:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    1fa1:	00 00 00
    1fa4:	49 89 83 10 01 00 00 	mov    %rax,0x110(%r11)
    1fab:	49 8b 83 20 01 00 00 	mov    0x120(%r11),%rax
    1fb2:	4c 89 f1             	mov    %r14,%rcx
    1fb5:	48 29 c1             	sub    %rax,%rcx
    1fb8:	49 89 8b 18 01 00 00 	mov    %rcx,0x118(%r11)
    1fbf:	e9 5e 09 00 00       	jmp    2922 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2922>
    1fc4:	49 8d 04 0c          	lea    (%r12,%rcx,1),%rax
    1fc8:	48 ba 03 00 00 00 0e 	movabs $0xe00000003,%rdx
    1fcf:	00 00 00
    1fd2:	49 89 93 10 01 00 00 	mov    %rdx,0x110(%r11)
    1fd9:	49 2b 83 20 01 00 00 	sub    0x120(%r11),%rax
    1fe0:	49 89 83 18 01 00 00 	mov    %rax,0x118(%r11)
    1fe7:	4d 8d 34 0c          	lea    (%r12,%rcx,1),%r14
    1feb:	49 ff c6             	inc    %r14
    1fee:	e9 32 09 00 00       	jmp    2925 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2925>
    1ff3:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    1ff7:	49 ff c6             	inc    %r14
    1ffa:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2001 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2001>
			1ffd: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    2001:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2006:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    200c:	49 39 de             	cmp    %rbx,%r14
    200f:	0f 83 f1 f8 ff ff    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    2015:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    2019:	0f 85 dd 01 00 00    	jne    21fc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21fc>
    201f:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    2023:	49 83 c6 02          	add    $0x2,%r14
    2027:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 202e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x202e>
			202a: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    202e:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2033:	4c 8b 1c 24          	mov    (%rsp),%r11
    2037:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    203d:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    2042:	49 39 de             	cmp    %rbx,%r14
    2045:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    204a:	0f 57 e4             	xorps  %xmm4,%xmm4
    204d:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2055 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2055>
    2054:	00
			2051: R_X86_64_PC32	.LCPI48_0-0x4
    2055:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 205d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x205d>
    205c:	00
			2059: R_X86_64_PC32	.LCPI48_1-0x4
    205d:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2065 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2065>
    2064:	00
			2061: R_X86_64_PC32	.LCPI48_2-0x4
    2065:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 206e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x206e>
    206c:	00 00
			206a: R_X86_64_PC32	.LCPI48_3-0x4
    206e:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    2075:	7f 7f 7f
    2078:	0f 83 c9 fd ff ff    	jae    1e47 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e47>
    207e:	e9 b9 f0 ff ff       	jmp    113c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x113c>
    2083:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    208a:	00 00 00
    208d:	49 89 83 10 01 00 00 	mov    %rax,0x110(%r11)
    2094:	4d 2b a3 20 01 00 00 	sub    0x120(%r11),%r12
    209b:	4d 89 a3 18 01 00 00 	mov    %r12,0x118(%r11)
    20a2:	49 83 c6 02          	add    $0x2,%r14
    20a6:	e9 7a 08 00 00       	jmp    2925 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2925>
    20ab:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    20af:	49 ff c6             	inc    %r14
    20b2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 20b9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20b9>
			20b5: R_X86_64_PC32	char const* stomptalk::parser::start_cr<3u>(char const*, char const*)-0x4
    20b9:	66 48 0f 6e c0       	movq   %rax,%xmm0
    20be:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    20c4:	49 39 de             	cmp    %rbx,%r14
    20c7:	0f 83 39 f8 ff ff    	jae    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    20cd:	41 80 3e 0a          	cmpb   $0xa,(%r14)
    20d1:	0f 85 25 01 00 00    	jne    21fc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x21fc>
    20d7:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    20db:	49 83 c6 02          	add    $0x2,%r14
    20df:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 20e6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20e6>
			20e2: R_X86_64_PC32	char const* stomptalk::parser::start_state<3u>(char const*, char const*)-0x4
    20e6:	66 48 0f 6e c0       	movq   %rax,%xmm0
    20eb:	4c 8b 1c 24          	mov    (%rsp),%r11
    20ef:	f3 41 0f 7f 43 60    	movdqu %xmm0,0x60(%r11)
    20f5:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    20fa:	49 39 de             	cmp    %rbx,%r14
    20fd:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    2102:	0f 57 e4             	xorps  %xmm4,%xmm4
    2105:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 210d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x210d>
    210c:	00
			2109: R_X86_64_PC32	.LCPI48_0-0x4
    210d:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2115 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2115>
    2114:	00
			2111: R_X86_64_PC32	.LCPI48_1-0x4
    2115:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 211d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x211d>
    211c:	00
			2119: R_X86_64_PC32	.LCPI48_2-0x4
    211d:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2126 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2126>
    2124:	00 00
			2122: R_X86_64_PC32	.LCPI48_3-0x4
    2126:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    212d:	7f 7f 7f
    2130:	0f 82 6c ea ff ff    	jb     ba2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xba2>
    2136:	e9 0c fd ff ff       	jmp    1e47 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1e47>
    213b:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
    2142:	00 00 00
    2145:	49 89 8b 10 01 00 00 	mov    %rcx,0x110(%r11)
    214c:	4d 2b b3 20 01 00 00 	sub    0x120(%r11),%r14
    2153:	4d 89 b3 18 01 00 00 	mov    %r14,0x118(%r11)
    215a:	48 83 c0 02          	add    $0x2,%rax
    215e:	e9 61 f6 ff ff       	jmp    17c4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x17c4>
    2163:	48 b8 03 00 00 00 0b 	movabs $0xb00000003,%rax
    216a:	00 00 00
    216d:	48 89 87 10 01 00 00 	mov    %rax,0x110(%rdi)
    2174:	48 8b 87 20 01 00 00 	mov    0x120(%rdi),%rax
    217b:	4c 89 f1             	mov    %r14,%rcx
    217e:	48 29 c1             	sub    %rax,%rcx
    2181:	48 89 8f 18 01 00 00 	mov    %rcx,0x118(%rdi)
    2188:	49 ff c6             	inc    %r14
    218b:	4c 89 b7 28 01 00 00 	mov    %r14,0x128(%rdi)
    2192:	e9 6f f7 ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    2197:	49 8d 04 0c          	lea    (%r12,%rcx,1),%rax
    219b:	48 ba 03 00 00 00 0e 	movabs $0xe00000003,%rdx
    21a2:	00 00 00
    21a5:	48 89 97 10 01 00 00 	mov    %rdx,0x110(%rdi)
    21ac:	48 2b 87 20 01 00 00 	sub    0x120(%rdi),%rax
    21b3:	48 89 87 18 01 00 00 	mov    %rax,0x118(%rdi)
    21ba:	4d 8d 34 0c          	lea    (%r12,%rcx,1),%r14
    21be:	49 ff c6             	inc    %r14
    21c1:	4c 89 b7 28 01 00 00 	mov    %r14,0x128(%rdi)
    21c8:	e9 39 f7 ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    21cd:	48 b8 03 00 00 00 06 	movabs $0x600000003,%rax
    21d4:	00 00 00
    21d7:	49 89 83 10 01 00 00 	mov    %rax,0x110(%r11)
    21de:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
    21e2:	49 2b 83 20 01 00 00 	sub    0x120(%r11),%rax
    21e9:	49 89 83 18 01 00 00 	mov    %rax,0x118(%r11)
    21f0:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    21f4:	49 ff c6             	inc    %r14
    21f7:	e9 29 07 00 00       	jmp    2925 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2925>
    21fc:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
    2203:	00 00 00
    2206:	48 8b 14 24          	mov    (%rsp),%rdx
    220a:	48 89 82 10 01 00 00 	mov    %rax,0x110(%rdx)
    2211:	48 8d 04 0e          	lea    (%rsi,%rcx,1),%rax
    2215:	48 2b 82 20 01 00 00 	sub    0x120(%rdx),%rax
    221c:	48 ff c0             	inc    %rax
    221f:	48 89 82 18 01 00 00 	mov    %rax,0x118(%rdx)
    2226:	4c 8d 34 0e          	lea    (%rsi,%rcx,1),%r14
    222a:	49 83 c6 02          	add    $0x2,%r14
    222e:	4c 89 b2 28 01 00 00 	mov    %r14,0x128(%rdx)
    2235:	e9 cc f6 ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    223a:	b8 02 00 00 00       	mov    $0x2,%eax
    223f:	49 83 bb f8 00 00 00 	cmpq   $0x0,0xf8(%r11)
    2246:	00
    2247:	75 27                	jne    2270 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2270>
    2249:	48 8b 0c 24          	mov    (%rsp),%rcx
    224d:	c7 81 14 01 00 00 0d 	movl   $0xd,0x114(%rcx)
    2254:	00 00 00
    2257:	4c 89 f8             	mov    %r15,%rax
    225a:	48 2b 81 20 01 00 00 	sub    0x120(%rcx),%rax
    2261:	48 89 81 18 01 00 00 	mov    %rax,0x118(%rcx)
    2268:	49 ff c7             	inc    %r15
    226b:	b8 03 00 00 00       	mov    $0x3,%eax
    2270:	48 8b 0c 24          	mov    (%rsp),%rcx
    2274:	89 81 10 01 00 00    	mov    %eax,0x110(%rcx)
    227a:	4c 89 b9 28 01 00 00 	mov    %r15,0x128(%rcx)
    2281:	e9 7d f6 ff ff       	jmp    1903 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1903>
    2286:	48 b9 03 00 00 00 09 	movabs $0x900000003,%rcx
    228d:	00 00 00
    2290:	49 89 8b 10 01 00 00 	mov    %rcx,0x110(%r11)
    2297:	49 2b 83 20 01 00 00 	sub    0x120(%r11),%rax
    229e:	49 89 83 18 01 00 00 	mov    %rax,0x118(%r11)
    22a5:	e9 f8 fd ff ff       	jmp    20a2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x20a2>
    22aa:	49 89 f6             	mov    %rsi,%r14
    22ad:	e9 54 f6 ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    22b2:	48 ff c1             	inc    %rcx
    22b5:	48 ff cf             	dec    %rdi
    22b8:	48 39 c8             	cmp    %rcx,%rax
    22bb:	74 7b                	je     2338 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2338>
    22bd:	e9 29 e3 ff ff       	jmp    5eb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x5eb>
    22c2:	48 89 c6             	mov    %rax,%rsi
    22c5:	31 ff                	xor    %edi,%edi
    22c7:	e9 94 f8 ff ff       	jmp    1b60 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b60>
    22cc:	48 ff c1             	inc    %rcx
    22cf:	48 ff cf             	dec    %rdi
    22d2:	48 39 c8             	cmp    %rcx,%rax
    22d5:	0f 85 9f e6 ff ff    	jne    97a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x97a>
    22db:	eb 5b                	jmp    2338 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2338>
    22dd:	48 89 c6             	mov    %rax,%rsi
    22e0:	31 ff                	xor    %edi,%edi
    22e2:	e9 a6 f8 ff ff       	jmp    1b8d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1b8d>
    22e7:	48 ff c1             	inc    %rcx
    22ea:	48 ff cf             	dec    %rdi
    22ed:	48 39 c8             	cmp    %rcx,%rax
    22f0:	74 46                	je     2338 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2338>
    22f2:	e9 5c ee ff ff       	jmp    1153 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1153>
    22f7:	48 89 c6             	mov    %rax,%rsi
    22fa:	48 89 d0             	mov    %rdx,%rax
    22fd:	31 ff                	xor    %edi,%edi
    22ff:	e9 9c f8 ff ff       	jmp    1ba0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1ba0>
    2304:	be 43 4f 4d 4d       	mov    $0x4d4d4f43,%esi
    2309:	33 32                	xor    (%rdx),%esi
    230b:	0f b7 52 04          	movzwl 0x4(%rdx),%edx
    230f:	81 f2 49 54 00 00    	xor    $0x5449,%edx
    2315:	31 ff                	xor    %edi,%edi
    2317:	09 f2                	or     %esi,%edx
    2319:	40 0f 94 c7          	sete   %dil
    231d:	48 8d 34 bf          	lea    (%rdi,%rdi,4),%rsi
    2321:	48 ff ce             	dec    %rsi
    2324:	e9 58 e4 ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    2329:	48 ff c1             	inc    %rcx
    232c:	48 ff cf             	dec    %rdi
    232f:	48 39 c8             	cmp    %rcx,%rax
    2332:	0f 85 81 e8 ff ff    	jne    bb9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xbb9>
    2338:	49 89 de             	mov    %rbx,%r14
    233b:	e9 c6 f5 ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    2340:	48 89 c6             	mov    %rax,%rsi
    2343:	31 ff                	xor    %edi,%edi
    2345:	e9 a5 f8 ff ff       	jmp    1bef <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1bef>
    234a:	48 be 44 49 53 43 4f 	movabs $0x454e4e4f43534944,%rsi
    2351:	4e 4e 45
    2354:	48 33 32             	xor    (%rdx),%rsi
    2357:	0f b7 52 08          	movzwl 0x8(%rdx),%edx
    235b:	48 81 f2 43 54 00 00 	xor    $0x5443,%rdx
    2362:	31 ff                	xor    %edi,%edi
    2364:	48 09 f2             	or     %rsi,%rdx
    2367:	40 0f 94 c7          	sete   %dil
    236b:	48 8d 34 fd ff ff ff 	lea    -0x1(,%rdi,8),%rsi
    2372:	ff
    2373:	e9 09 e4 ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    2378:	48 bf 55 4e 53 55 42 	movabs $0x5243534255534e55,%rdi
    237f:	53 43 52
    2382:	48 33 3a             	xor    (%rdx),%rdi
    2385:	49 b8 55 42 53 43 52 	movabs $0x4542495243534255,%r8
    238c:	49 42 45
    238f:	4c 33 42 03          	xor    0x3(%rdx),%r8
    2393:	31 f6                	xor    %esi,%esi
    2395:	49 09 f8             	or     %rdi,%r8
    2398:	40 0f 95 c6          	setne  %sil
    239c:	48 f7 de             	neg    %rsi
    239f:	48 83 ce 0f          	or     $0xf,%rsi
    23a3:	e9 d9 e3 ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    23a8:	48 bf 53 55 42 53 43 	movabs $0x4249524353425553,%rdi
    23af:	52 49 42
    23b2:	48 33 3a             	xor    (%rdx),%rdi
    23b5:	0f b6 52 08          	movzbl 0x8(%rdx),%edx
    23b9:	48 83 f2 45          	xor    $0x45,%rdx
    23bd:	31 f6                	xor    %esi,%esi
    23bf:	48 09 fa             	or     %rdi,%rdx
    23c2:	40 0f 95 c6          	setne  %sil
    23c6:	48 f7 de             	neg    %rsi
    23c9:	48 83 ce 0e          	or     $0xe,%rsi
    23cd:	e9 af e3 ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    23d2:	be 0a 00 00 00       	mov    $0xa,%esi
    23d7:	e9 a5 e3 ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    23dc:	b2 01                	mov    $0x1,%dl
    23de:	e9 07 f7 ff ff       	jmp    1aea <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1aea>
    23e3:	41 0f b6 04 24       	movzbl (%r12),%eax
    23e8:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    23eb:	80 f9 f6             	cmp    $0xf6,%cl
    23ee:	0f 82 0c 05 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    23f4:	41 0f b6 4c 24 01    	movzbl 0x1(%r12),%ecx
    23fa:	8d 71 c6             	lea    -0x3a(%rcx),%esi
    23fd:	48 ba 00 00 00 00 00 	movabs $0x8000000000000000,%rdx
    2404:	00 00 80
    2407:	40 80 fe f6          	cmp    $0xf6,%sil
    240b:	72 2e                	jb     243b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x243b>
    240d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
    2411:	49 0f be 54 24 02    	movsbq 0x2(%r12),%rdx
    2417:	8d 72 c6             	lea    -0x3a(%rdx),%esi
    241a:	48 83 c2 d0          	add    $0xffffffffffffffd0,%rdx
    241e:	40 80 fe f6          	cmp    $0xf6,%sil
    2422:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    2429:	00 00 80
    242c:	48 0f 42 d6          	cmovb  %rsi,%rdx
    2430:	48 8d 14 4a          	lea    (%rdx,%rcx,2),%rdx
    2434:	48 81 c2 20 fe ff ff 	add    $0xfffffffffffffe20,%rdx
    243b:	48 6b c0 64          	imul   $0x64,%rax,%rax
    243f:	48 05 40 ed ff ff    	add    $0xffffffffffffed40,%rax
    2445:	48 01 d0             	add    %rdx,%rax
    2448:	e9 7c 04 00 00       	jmp    28c9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28c9>
    244d:	4c 89 e7             	mov    %r12,%rdi
    2450:	e8 00 00 00 00       	call   2455 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2455>
			2451: R_X86_64_PLT32	.text.unlikely.+0x126c
    2455:	e9 58 03 00 00       	jmp    27b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27b2>
    245a:	41 0f b6 04 24       	movzbl (%r12),%eax
    245f:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    2462:	80 f9 f6             	cmp    $0xf6,%cl
    2465:	0f 82 95 04 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    246b:	48 69 d8 10 27 00 00 	imul   $0x2710,%rax,%rbx
    2472:	49 8d 7c 24 01       	lea    0x1(%r12),%rdi
    2477:	e8 00 00 00 00       	call   247c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x247c>
			2478: R_X86_64_PLT32	.text.unlikely.+0x126c
    247c:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2485 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2485>
    2483:	00 00
			2481: R_X86_64_PC32	.LCPI48_3-0x4
    2485:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 248d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x248d>
    248c:	00
			2489: R_X86_64_PC32	.LCPI48_2-0x4
    248d:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2495 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2495>
    2494:	00
			2491: R_X86_64_PC32	.LCPI48_1-0x4
    2495:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 249d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x249d>
    249c:	00
			2499: R_X86_64_PC32	.LCPI48_0-0x4
    249d:	0f 57 e4             	xorps  %xmm4,%xmm4
    24a0:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    24a5:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    24aa:	4c 8b 1c 24          	mov    (%rsp),%r11
    24ae:	48 01 d8             	add    %rbx,%rax
    24b1:	48 05 00 ad f8 ff    	add    $0xfffffffffff8ad00,%rax
    24b7:	e9 df ea ff ff       	jmp    f9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf9b>
    24bc:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    24c1:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    24c4:	3c f6                	cmp    $0xf6,%al
    24c6:	0f 82 34 04 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    24cc:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
    24d2:	8d 50 c6             	lea    -0x3a(%rax),%edx
    24d5:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    24dc:	00 00 80
    24df:	80 fa f6             	cmp    $0xf6,%dl
    24e2:	72 1c                	jb     2500 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2500>
    24e4:	4c 69 f8 10 27 00 00 	imul   $0x2710,%rax,%r15
    24eb:	49 8d 7c 24 02       	lea    0x2(%r12),%rdi
    24f0:	e8 00 00 00 00       	call   24f5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x24f5>
			24f1: R_X86_64_PLT32	.text.unlikely.+0x126c
    24f5:	49 8d 0c 07          	lea    (%r15,%rax,1),%rcx
    24f9:	48 81 c1 00 ad f8 ff 	add    $0xfffffffffff8ad00,%rcx
    2500:	48 69 c3 a0 86 01 00 	imul   $0x186a0,%rbx,%rax
    2507:	48 05 00 c2 b6 ff    	add    $0xffffffffffb6c200,%rax
    250d:	e9 b4 03 00 00       	jmp    28c6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28c6>
    2512:	4c 89 e7             	mov    %r12,%rdi
    2515:	e8 00 00 00 00       	call   251a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x251a>
			2516: R_X86_64_PLT32	.text.unlikely.+0x118c
    251a:	e9 93 02 00 00       	jmp    27b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27b2>
    251f:	41 0f b6 04 24       	movzbl (%r12),%eax
    2524:	8d 48 c6             	lea    -0x3a(%rax),%ecx
    2527:	80 f9 f6             	cmp    $0xf6,%cl
    252a:	0f 82 d0 03 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    2530:	48 69 d8 80 96 98 00 	imul   $0x989680,%rax,%rbx
    2537:	49 8d 7c 24 01       	lea    0x1(%r12),%rdi
    253c:	e8 00 00 00 00       	call   2541 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2541>
			253d: R_X86_64_PLT32	.text.unlikely.+0x118c
    2541:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 254a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x254a>
    2548:	00 00
			2546: R_X86_64_PC32	.LCPI48_3-0x4
    254a:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2552 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2552>
    2551:	00
			254e: R_X86_64_PC32	.LCPI48_2-0x4
    2552:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 255a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x255a>
    2559:	00
			2556: R_X86_64_PC32	.LCPI48_1-0x4
    255a:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2562 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2562>
    2561:	00
			255e: R_X86_64_PC32	.LCPI48_0-0x4
    2562:	0f 57 e4             	xorps  %xmm4,%xmm4
    2565:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    256a:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    256f:	4c 8b 1c 24          	mov    (%rsp),%r11
    2573:	48 01 d8             	add    %rbx,%rax
    2576:	48 05 00 c8 63 e3    	add    $0xffffffffe363c800,%rax
    257c:	e9 1a ea ff ff       	jmp    f9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf9b>
    2581:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    2586:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    2589:	3c f6                	cmp    $0xf6,%al
    258b:	0f 82 6f 03 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    2591:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
    2597:	8d 50 c6             	lea    -0x3a(%rax),%edx
    259a:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    25a1:	00 00 80
    25a4:	80 fa f6             	cmp    $0xf6,%dl
    25a7:	72 1c                	jb     25c5 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25c5>
    25a9:	4c 69 f8 80 96 98 00 	imul   $0x989680,%rax,%r15
    25b0:	49 8d 7c 24 02       	lea    0x2(%r12),%rdi
    25b5:	e8 00 00 00 00       	call   25ba <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25ba>
			25b6: R_X86_64_PLT32	.text.unlikely.+0x118c
    25ba:	49 8d 0c 07          	lea    (%r15,%rax,1),%rcx
    25be:	48 81 c1 00 c8 63 e3 	add    $0xffffffffe363c800,%rcx
    25c5:	48 69 d3 00 e1 f5 05 	imul   $0x5f5e100,%rbx,%rdx
    25cc:	48 b8 00 d0 e5 e1 fe 	movabs $0xfffffffee1e5d000,%rax
    25d3:	ff ff ff
    25d6:	48 01 d0             	add    %rdx,%rax
    25d9:	e9 e8 02 00 00       	jmp    28c6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28c6>
    25de:	4c 89 e7             	mov    %r12,%rdi
    25e1:	e8 00 00 00 00       	call   25e6 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x25e6>
			25e2: R_X86_64_PLT32	.text.unlikely.+0x110c
    25e6:	e9 c7 01 00 00       	jmp    27b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27b2>
    25eb:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    25f0:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    25f3:	3c f6                	cmp    $0xf6,%al
    25f5:	0f 82 05 03 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    25fb:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
    2602:	00 00 00
    2605:	48 0f af d8          	imul   %rax,%rbx
    2609:	49 8d 7c 24 01       	lea    0x1(%r12),%rdi
    260e:	e8 00 00 00 00       	call   2613 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2613>
			260f: R_X86_64_PLT32	.text.unlikely.+0x110c
    2613:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 261c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x261c>
    261a:	00 00
			2618: R_X86_64_PC32	.LCPI48_3-0x4
    261c:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2624 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2624>
    2623:	00
			2620: R_X86_64_PC32	.LCPI48_2-0x4
    2624:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 262c <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x262c>
    262b:	00
			2628: R_X86_64_PC32	.LCPI48_1-0x4
    262c:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2634 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2634>
    2633:	00
			2630: R_X86_64_PC32	.LCPI48_0-0x4
    2634:	0f 57 e4             	xorps  %xmm4,%xmm4
    2637:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    263c:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    2641:	4c 8b 1c 24          	mov    (%rsp),%r11
    2645:	48 89 c1             	mov    %rax,%rcx
    2648:	48 b8 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rax
    264f:	ff ff ff
    2652:	e9 f9 01 00 00       	jmp    2850 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2850>
    2657:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    265c:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    265f:	3c f6                	cmp    $0xf6,%al
    2661:	0f 82 99 02 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    2667:	45 0f b6 7c 24 01    	movzbl 0x1(%r12),%r15d
    266d:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2671:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    2678:	00 00 80
    267b:	3c f6                	cmp    $0xf6,%al
    267d:	72 28                	jb     26a7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x26a7>
    267f:	48 b8 00 e4 0b 54 02 	movabs $0x2540be400,%rax
    2686:	00 00 00
    2689:	4c 0f af f8          	imul   %rax,%r15
    268d:	49 8d 7c 24 02       	lea    0x2(%r12),%rdi
    2692:	e8 00 00 00 00       	call   2697 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2697>
			2693: R_X86_64_PLT32	.text.unlikely.+0x110c
    2697:	48 b9 00 40 c5 3d 90 	movabs $0xffffff903dc54000,%rcx
    269e:	ff ff ff
    26a1:	48 01 c1             	add    %rax,%rcx
    26a4:	4c 01 f9             	add    %r15,%rcx
    26a7:	48 b8 00 e8 76 48 17 	movabs $0x174876e800,%rax
    26ae:	00 00 00
    26b1:	48 0f af d8          	imul   %rax,%rbx
    26b5:	48 b8 00 80 b4 69 a2 	movabs $0xfffffba269b48000,%rax
    26bc:	fb ff ff
    26bf:	e9 ff 01 00 00       	jmp    28c3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28c3>
    26c4:	4c 89 e7             	mov    %r12,%rdi
    26c7:	e8 00 00 00 00       	call   26cc <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x26cc>
			26c8: R_X86_64_PLT32	.text+0x97c
    26cc:	e9 e1 00 00 00       	jmp    27b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27b2>
    26d1:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    26d6:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    26d9:	3c f6                	cmp    $0xf6,%al
    26db:	0f 82 1f 02 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    26e1:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    26e8:	09 00 00
    26eb:	48 0f af d8          	imul   %rax,%rbx
    26ef:	49 8d 7c 24 01       	lea    0x1(%r12),%rdi
    26f4:	e8 00 00 00 00       	call   26f9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x26f9>
			26f5: R_X86_64_PLT32	.text+0x97c
    26f9:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2702 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2702>
    2700:	00 00
			26fe: R_X86_64_PC32	.LCPI48_3-0x4
    2702:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 270a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x270a>
    2709:	00
			2706: R_X86_64_PC32	.LCPI48_2-0x4
    270a:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2712 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2712>
    2711:	00
			270e: R_X86_64_PC32	.LCPI48_1-0x4
    2712:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 271a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x271a>
    2719:	00
			2716: R_X86_64_PC32	.LCPI48_0-0x4
    271a:	0f 57 e4             	xorps  %xmm4,%xmm4
    271d:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    2722:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    2727:	4c 8b 1c 24          	mov    (%rsp),%r11
    272b:	48 89 c1             	mov    %rax,%rcx
    272e:	48 b8 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rax
    2735:	4b fe ff
    2738:	e9 13 01 00 00       	jmp    2850 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2850>
    273d:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    2742:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    2745:	3c f6                	cmp    $0xf6,%al
    2747:	0f 82 b3 01 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    274d:	45 0f b6 7c 24 01    	movzbl 0x1(%r12),%r15d
    2753:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2757:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    275e:	00 00 80
    2761:	3c f6                	cmp    $0xf6,%al
    2763:	72 28                	jb     278d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x278d>
    2765:	48 b8 00 a0 72 4e 18 	movabs $0x9184e72a000,%rax
    276c:	09 00 00
    276f:	4c 0f af f8          	imul   %rax,%r15
    2773:	49 8d 7c 24 02       	lea    0x2(%r12),%rdi
    2778:	e8 00 00 00 00       	call   277d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x277d>
			2779: R_X86_64_PLT32	.text+0x97c
    277d:	48 b9 00 00 82 4a 71 	movabs $0xfffe4b714a820000,%rcx
    2784:	4b fe ff
    2787:	48 01 c1             	add    %rax,%rcx
    278a:	4c 01 f9             	add    %r15,%rcx
    278d:	48 b8 00 40 7a 10 f3 	movabs $0x5af3107a4000,%rax
    2794:	5a 00 00
    2797:	48 0f af d8          	imul   %rax,%rbx
    279b:	48 b8 00 00 14 e9 6c 	movabs $0xffeef26ce9140000,%rax
    27a2:	f2 ee ff
    27a5:	e9 19 01 00 00       	jmp    28c3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28c3>
    27aa:	4c 89 e7             	mov    %r12,%rdi
    27ad:	e8 00 00 00 00       	call   27b2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27b2>
			27ae: R_X86_64_PLT32	.text.unlikely.+0x105c
    27b2:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 27bb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27bb>
    27b9:	00 00
			27b7: R_X86_64_PC32	.LCPI48_3-0x4
    27bb:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 27c3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27c3>
    27c2:	00
			27bf: R_X86_64_PC32	.LCPI48_2-0x4
    27c3:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 27cb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27cb>
    27ca:	00
			27c7: R_X86_64_PC32	.LCPI48_1-0x4
    27cb:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 27d3 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x27d3>
    27d2:	00
			27cf: R_X86_64_PC32	.LCPI48_0-0x4
    27d3:	0f 57 e4             	xorps  %xmm4,%xmm4
    27d6:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    27db:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    27e0:	4c 8b 1c 24          	mov    (%rsp),%r11
    27e4:	e9 b2 e7 ff ff       	jmp    f9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf9b>
    27e9:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    27ee:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    27f1:	3c f6                	cmp    $0xf6,%al
    27f3:	0f 82 07 01 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    27f9:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
    2800:	86 23 00
    2803:	48 0f af d8          	imul   %rax,%rbx
    2807:	49 8d 7c 24 01       	lea    0x1(%r12),%rdi
    280c:	e8 00 00 00 00       	call   2811 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2811>
			280d: R_X86_64_PLT32	.text.unlikely.+0x105c
    2811:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 281a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x281a>
    2818:	00 00
			2816: R_X86_64_PC32	.LCPI48_3-0x4
    281a:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2822 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2822>
    2821:	00
			281e: R_X86_64_PC32	.LCPI48_2-0x4
    2822:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 282a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x282a>
    2829:	00
			2826: R_X86_64_PC32	.LCPI48_1-0x4
    282a:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2832 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2832>
    2831:	00
			282e: R_X86_64_PC32	.LCPI48_0-0x4
    2832:	0f 57 e4             	xorps  %xmm4,%xmm4
    2835:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    283a:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    283f:	4c 8b 1c 24          	mov    (%rsp),%r11
    2843:	48 89 c1             	mov    %rax,%rcx
    2846:	48 b8 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rax
    284d:	b2 56 f9
    2850:	48 01 c8             	add    %rcx,%rax
    2853:	48 01 d8             	add    %rbx,%rax
    2856:	e9 40 e7 ff ff       	jmp    f9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf9b>
    285b:	41 0f b6 1c 24       	movzbl (%r12),%ebx
    2860:	8d 43 c6             	lea    -0x3a(%rbx),%eax
    2863:	3c f6                	cmp    $0xf6,%al
    2865:	0f 82 95 00 00 00    	jb     2900 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2900>
    286b:	45 0f b6 7c 24 01    	movzbl 0x1(%r12),%r15d
    2871:	41 8d 47 c6          	lea    -0x3a(%r15),%eax
    2875:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    287c:	00 00 80
    287f:	3c f6                	cmp    $0xf6,%al
    2881:	72 28                	jb     28ab <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28ab>
    2883:	48 b8 00 00 c1 6f f2 	movabs $0x2386f26fc10000,%rax
    288a:	86 23 00
    288d:	4c 0f af f8          	imul   %rax,%r15
    2891:	49 8d 7c 24 02       	lea    0x2(%r12),%rdi
    2896:	e8 00 00 00 00       	call   289b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x289b>
			2897: R_X86_64_PLT32	.text.unlikely.+0x105c
    289b:	48 b9 00 00 d0 0b 8b 	movabs $0xf956b28b0bd00000,%rcx
    28a2:	b2 56 f9
    28a5:	48 01 c1             	add    %rax,%rcx
    28a8:	4c 01 f9             	add    %r15,%rcx
    28ab:	48 b8 00 00 8a 5d 78 	movabs $0x16345785d8a0000,%rax
    28b2:	45 63 01
    28b5:	48 0f af d8          	imul   %rax,%rbx
    28b9:	48 b8 00 00 20 76 6e 	movabs $0xbd62f96e76200000,%rax
    28c0:	f9 62 bd
    28c3:	48 01 d8             	add    %rbx,%rax
    28c6:	48 01 c8             	add    %rcx,%rax
    28c9:	4c 8b 1c 24          	mov    (%rsp),%r11
    28cd:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    28d2:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    28d7:	0f 57 e4             	xorps  %xmm4,%xmm4
    28da:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 28e2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28e2>
    28e1:	00
			28de: R_X86_64_PC32	.LCPI48_0-0x4
    28e2:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 28ea <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28ea>
    28e9:	00
			28e6: R_X86_64_PC32	.LCPI48_1-0x4
    28ea:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 28f2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28f2>
    28f1:	00
			28ee: R_X86_64_PC32	.LCPI48_2-0x4
    28f2:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 28fb <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x28fb>
    28f9:	00 00
			28f7: R_X86_64_PC32	.LCPI48_3-0x4
    28fb:	e9 9b e6 ff ff       	jmp    f9b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xf9b>
    2900:	48 b8 03 00 00 00 0a 	movabs $0xa00000003,%rax
    2907:	00 00 00
    290a:	49 89 83 10 01 00 00 	mov    %rax,0x110(%r11)
    2911:	4c 89 f0             	mov    %r14,%rax
    2914:	49 2b 83 20 01 00 00 	sub    0x120(%r11),%rax
    291b:	49 89 83 18 01 00 00 	mov    %rax,0x118(%r11)
    2922:	49 ff c6             	inc    %r14
    2925:	4d 89 b3 28 01 00 00 	mov    %r14,0x128(%r11)
    292c:	e9 d5 ef ff ff       	jmp    1906 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1906>
    2931:	83 ff 52             	cmp    $0x52,%edi
    2934:	0f 85 47 de ff ff    	jne    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    293a:	bf 52 45 43 45       	mov    $0x45434552,%edi
    293f:	33 3a                	xor    (%rdx),%edi
    2941:	41 b8 45 49 50 54    	mov    $0x54504945,%r8d
    2947:	44 33 42 03          	xor    0x3(%rdx),%r8d
    294b:	31 f6                	xor    %esi,%esi
    294d:	41 09 f8             	or     %edi,%r8d
    2950:	40 0f 95 c6          	setne  %sil
    2954:	48 f7 de             	neg    %rsi
    2957:	48 83 ce 0b          	or     $0xb,%rsi
    295b:	e9 21 de ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    2960:	83 ff 52             	cmp    $0x52,%edi
    2963:	4c 8b 1c 24          	mov    (%rsp),%r11
    2967:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    296c:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    2971:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    2976:	0f 57 e4             	xorps  %xmm4,%xmm4
    2979:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2981 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2981>
    2980:	00
			297d: R_X86_64_PC32	.LCPI48_0-0x4
    2981:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2989 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2989>
    2988:	00
			2985: R_X86_64_PC32	.LCPI48_1-0x4
    2989:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2991 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2991>
    2990:	00
			298d: R_X86_64_PC32	.LCPI48_2-0x4
    2991:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 299a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x299a>
    2998:	00 00
			2996: R_X86_64_PC32	.LCPI48_3-0x4
    299a:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    29a1:	7f 7f 7f
    29a4:	0f 85 d7 dd ff ff    	jne    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    29aa:	eb 8e                	jmp    293a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x293a>
    29ac:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    29b3:	e9 e1 f2 ff ff       	jmp    1c99 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c99>
    29b8:	83 ff 45             	cmp    $0x45,%edi
    29bb:	75 22                	jne    29df <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x29df>
    29bd:	be 45 52 52 4f       	mov    $0x4f525245,%esi
    29c2:	33 32                	xor    (%rdx),%esi
    29c4:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    29c8:	83 f2 52             	xor    $0x52,%edx
    29cb:	31 ff                	xor    %edi,%edi
    29cd:	09 f2                	or     %esi,%edx
    29cf:	40 0f 94 c7          	sete   %dil
    29d3:	48 8d 34 ff          	lea    (%rdi,%rdi,8),%rsi
    29d7:	48 ff ce             	dec    %rsi
    29da:	e9 ba f2 ff ff       	jmp    1c99 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c99>
    29df:	83 ff 42             	cmp    $0x42,%edi
    29e2:	75 23                	jne    2a07 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a07>
    29e4:	be 42 45 47 49       	mov    $0x49474542,%esi
    29e9:	33 32                	xor    (%rdx),%esi
    29eb:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    29ef:	83 f2 4e             	xor    $0x4e,%edx
    29f2:	31 ff                	xor    %edi,%edi
    29f4:	09 f2                	or     %esi,%edx
    29f6:	40 0f 94 c7          	sete   %dil
    29fa:	48 8d 34 bd ff ff ff 	lea    -0x1(,%rdi,4),%rsi
    2a01:	ff
    2a02:	e9 92 f2 ff ff       	jmp    1c99 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1c99>
    2a07:	83 ff 41             	cmp    $0x41,%edi
    2a0a:	4c 8b 1c 24          	mov    (%rsp),%r11
    2a0e:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    2a13:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    2a18:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    2a1d:	0f 57 e4             	xorps  %xmm4,%xmm4
    2a20:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 2a28 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a28>
    2a27:	00
			2a24: R_X86_64_PC32	.LCPI48_0-0x4
    2a28:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 2a30 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a30>
    2a2f:	00
			2a2c: R_X86_64_PC32	.LCPI48_1-0x4
    2a30:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 2a38 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a38>
    2a37:	00
			2a34: R_X86_64_PC32	.LCPI48_2-0x4
    2a38:	66 44 0f 6f 05 00 00 	movdqa 0x0(%rip),%xmm8        # 2a41 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a41>
    2a3f:	00 00
			2a3d: R_X86_64_PC32	.LCPI48_3-0x4
    2a41:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    2a48:	7f 7f 7f
    2a4b:	0f 85 30 dd ff ff    	jne    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    2a51:	be 41 42 4f 52       	mov    $0x524f4241,%esi
    2a56:	33 32                	xor    (%rdx),%esi
    2a58:	0f b6 52 04          	movzbl 0x4(%rdx),%edx
    2a5c:	83 f2 54             	xor    $0x54,%edx
    2a5f:	31 ff                	xor    %edi,%edi
    2a61:	09 f2                	or     %esi,%edx
    2a63:	40 0f 94 c7          	sete   %dil
    2a67:	48 8d 34 7d ff ff ff 	lea    -0x1(,%rdi,2),%rsi
    2a6e:	ff
    2a6f:	e9 0d dd ff ff       	jmp    781 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x781>
    2a74:	4d 8b 0e             	mov    (%r14),%r9
    2a77:	4d 89 c8             	mov    %r9,%r8
    2a7a:	4d 21 e8             	and    %r13,%r8
    2a7d:	4b 8d 3c 28          	lea    (%r8,%r13,1),%rdi
    2a81:	4c 09 cf             	or     %r9,%rdi
    2a84:	48 f7 d7             	not    %rdi
    2a87:	4d 89 c2             	mov    %r8,%r10
    2a8a:	48 bd 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%rbp
    2a91:	0a 0a 0a
    2a94:	49 31 ea             	xor    %rbp,%r10
    2a97:	4d 01 ea             	add    %r13,%r10
    2a9a:	4d 09 ca             	or     %r9,%r10
    2a9d:	49 f7 d2             	not    %r10
    2aa0:	49 09 fa             	or     %rdi,%r10
    2aa3:	4c 89 c7             	mov    %r8,%rdi
    2aa6:	48 bd 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%rbp
    2aad:	0d 0d 0d
    2ab0:	48 31 ef             	xor    %rbp,%rdi
    2ab3:	4c 01 ef             	add    %r13,%rdi
    2ab6:	4c 09 cf             	or     %r9,%rdi
    2ab9:	48 f7 d7             	not    %rdi
    2abc:	4c 09 d7             	or     %r10,%rdi
    2abf:	49 ba 80 80 80 80 80 	movabs $0x8080808080808080,%r10
    2ac6:	80 80 80
    2ac9:	4c 21 d7             	and    %r10,%rdi
    2acc:	84 c0                	test   %al,%al
    2ace:	75 3d                	jne    2b0d <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b0d>
    2ad0:	4d 89 c2             	mov    %r8,%r10
    2ad3:	48 bd 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%rbp
    2ada:	5c 5c 5c
    2add:	49 31 ea             	xor    %rbp,%r10
    2ae0:	4d 01 ea             	add    %r13,%r10
    2ae3:	4d 09 ca             	or     %r9,%r10
    2ae6:	49 f7 d2             	not    %r10
    2ae9:	49 bd 80 80 80 80 80 	movabs $0x8080808080808080,%r13
    2af0:	80 80 80
    2af3:	4d 21 ea             	and    %r13,%r10
    2af6:	49 bd 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%r13
    2afd:	7f 7f 7f
    2b00:	4c 09 d7             	or     %r10,%rdi
    2b03:	49 ba 80 80 80 80 80 	movabs $0x8080808080808080,%r10
    2b0a:	80 80 80
    2b0d:	48 bd 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rbp
    2b14:	3a 3a 3a
    2b17:	49 31 e8             	xor    %rbp,%r8
    2b1a:	4d 01 e8             	add    %r13,%r8
    2b1d:	4d 09 c8             	or     %r9,%r8
    2b20:	4d 21 d0             	and    %r10,%r8
    2b23:	4d 89 c1             	mov    %r8,%r9
    2b26:	4d 31 d1             	xor    %r10,%r9
    2b29:	4d 39 d0             	cmp    %r10,%r8
    2b2c:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    2b31:	74 33                	je     2b66 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b66>
    2b33:	f6 c1 01             	test   $0x1,%cl
    2b36:	74 2e                	je     2b66 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b66>
    2b38:	f3 4d 0f bc d1       	tzcnt  %r9,%r10
    2b3d:	48 85 ff             	test   %rdi,%rdi
    2b40:	75 5e                	jne    2ba0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2ba0>
    2b42:	41 c1 ea 03          	shr    $0x3,%r10d
    2b46:	4d 01 f2             	add    %r14,%r10
    2b49:	49 f7 d0             	not    %r8
    2b4c:	48 b9 80 80 80 80 80 	movabs $0x8080808080808080,%rcx
    2b53:	80 80 80
    2b56:	49 01 c8             	add    %rcx,%r8
    2b59:	4d 21 c1             	and    %r8,%r9
    2b5c:	31 c9                	xor    %ecx,%ecx
    2b5e:	4c 89 d2             	mov    %r10,%rdx
    2b61:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
    2b66:	84 c0                	test   %al,%al
    2b68:	75 44                	jne    2bae <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2bae>
    2b6a:	49 09 f9             	or     %rdi,%r9
    2b6d:	75 1c                	jne    2b8b <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b8b>
    2b6f:	49 83 c6 08          	add    $0x8,%r14
    2b73:	48 83 c6 f8          	add    $0xfffffffffffffff8,%rsi
    2b77:	48 83 fe 07          	cmp    $0x7,%rsi
    2b7b:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    2b80:	0f 8e 01 e9 ff ff    	jle    1487 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x1487>
    2b86:	e9 e9 fe ff ff       	jmp    2a74 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2a74>
    2b8b:	f3 49 0f bc c1       	tzcnt  %r9,%rax
    2b90:	c1 e8 03             	shr    $0x3,%eax
    2b93:	49 01 c6             	add    %rax,%r14
    2b96:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    2b9b:	e9 47 e9 ff ff       	jmp    14e7 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x14e7>
    2ba0:	f3 48 0f bc cf       	tzcnt  %rdi,%rcx
    2ba5:	41 39 ca             	cmp    %ecx,%r10d
    2ba8:	72 98                	jb     2b42 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b42>
    2baa:	b1 01                	mov    $0x1,%cl
    2bac:	eb b3                	jmp    2b61 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b61>
    2bae:	45 31 c9             	xor    %r9d,%r9d
    2bb1:	eb b7                	jmp    2b6a <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x2b6a>

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
  15:	0f 83 ac 04 00 00    	jae    4c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c7>
  1b:	49 89 d6             	mov    %rdx,%r14
  1e:	48 89 fb             	mov    %rdi,%rbx
  21:	48 8d af d0 00 00 00 	lea    0xd0(%rdi),%rbp
  28:	0f b6 87 0a 01 00 00 	movzbl 0x10a(%rdi),%eax
  2f:	bf 81 00 44 00       	mov    $0x440081,%edi
  34:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 3b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b>
			37: R_X86_64_PC32	.rodata+0x23c
  3b:	45 31 db             	xor    %r11d,%r11d
  3e:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46>
  45:	00
			42: R_X86_64_PC32	.LCPI52_0-0x4
  46:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 4e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e>
  4d:	00
			4a: R_X86_64_PC32	.LCPI52_1-0x4
  4e:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 56 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x56>
  55:	00
			52: R_X86_64_PC32	.LCPI52_2-0x4
  56:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 5e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5e>
  5d:	00
			5a: R_X86_64_PC32	.LCPI52_3-0x4
  5e:	45 0f 57 c0          	xorps  %xmm8,%xmm8
  62:	66 44 0f 6f 0d 00 00 	movdqa 0x0(%rip),%xmm9        # 6b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b>
  69:	00 00
			67: R_X86_64_PC32	.LCPI52_4-0x4
  6b:	3c 01                	cmp    $0x1,%al
  6d:	0f 84 03 03 00 00    	je     376 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x376>
  73:	48 83 bb c8 00 00 00 	cmpq   $0x0,0xc8(%rbx)
  7a:	00
  7b:	0f 94 c1             	sete   %cl
  7e:	0f b6 83 0b 01 00 00 	movzbl 0x10b(%rbx),%eax
  85:	4c 89 f2             	mov    %r14,%rdx
  88:	48 29 f2             	sub    %rsi,%rdx
  8b:	48 83 fa 10          	cmp    $0x10,%rdx
  8f:	0f 8c c8 04 00 00    	jl     55d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x55d>
  95:	49 89 f7             	mov    %rsi,%r15
  98:	45 31 ed             	xor    %r13d,%r13d
  9b:	f3 41 0f 6f 07       	movdqu (%r15),%xmm0
  a0:	66 0f ef c9          	pxor   %xmm1,%xmm1
  a4:	66 0f ef d2          	pxor   %xmm2,%xmm2
  a8:	84 c0                	test   %al,%al
  aa:	75 08                	jne    b4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb4>
  ac:	66 0f 6f d0          	movdqa %xmm0,%xmm2
  b0:	66 0f 74 d7          	pcmpeqb %xmm7,%xmm2
  b4:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  b8:	66 0f 74 dc          	pcmpeqb %xmm4,%xmm3
  bc:	66 0f d7 fb          	pmovmskb %xmm3,%edi
  c0:	66 0f 74 c8          	pcmpeqb %xmm0,%xmm1
  c4:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  c8:	66 0f 74 dd          	pcmpeqb %xmm5,%xmm3
  cc:	66 0f 74 c6          	pcmpeqb %xmm6,%xmm0
  d0:	66 0f eb c3          	por    %xmm3,%xmm0
  d4:	66 0f eb c1          	por    %xmm1,%xmm0
  d8:	66 0f eb c2          	por    %xmm2,%xmm0
  dc:	66 44 0f d7 c0       	pmovmskb %xmm0,%r8d
  e1:	85 ff                	test   %edi,%edi
  e3:	74 2e                	je     113 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x113>
  e5:	f6 c1 01             	test   $0x1,%cl
  e8:	74 29                	je     113 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x113>
  ea:	f3 0f bc cf          	tzcnt  %edi,%ecx
  ee:	45 85 c0             	test   %r8d,%r8d
  f1:	74 0e                	je     101 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x101>
  f3:	f3 45 0f bc c8       	tzcnt  %r8d,%r9d
  f8:	44 39 c9             	cmp    %r9d,%ecx
  fb:	0f 83 32 03 00 00    	jae    433 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x433>
 101:	41 89 cd             	mov    %ecx,%r13d
 104:	4d 01 fd             	add    %r15,%r13
 107:	44 8d 4f ff          	lea    -0x1(%rdi),%r9d
 10b:	41 21 f9             	and    %edi,%r9d
 10e:	31 c9                	xor    %ecx,%ecx
 110:	44 89 cf             	mov    %r9d,%edi
 113:	84 c0                	test   %al,%al
 115:	41 0f 45 fb          	cmovne %r11d,%edi
 119:	44 09 c7             	or     %r8d,%edi
 11c:	75 22                	jne    140 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x140>
 11e:	49 83 c7 10          	add    $0x10,%r15
 122:	48 83 c2 f0          	add    $0xfffffffffffffff0,%rdx
 126:	48 83 fa 0f          	cmp    $0xf,%rdx
 12a:	0f 8f 6b ff ff ff    	jg     9b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9b>
 130:	e9 2e 04 00 00       	jmp    563 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x563>
 135:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
 13c:	00 00 00 00
 140:	f3 0f bc c7          	tzcnt  %edi,%eax
 144:	49 01 c7             	add    %rax,%r15
 147:	4d 85 ed             	test   %r13,%r13
 14a:	0f 84 1e 02 00 00    	je     36e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x36e>
 150:	4d 89 ec             	mov    %r13,%r12
 153:	49 29 f4             	sub    %rsi,%r12
 156:	0f 84 7d 03 00 00    	je     4d9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4d9>
 15c:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 163:	48 89 c8             	mov    %rcx,%rax
 166:	4c 29 e0             	sub    %r12,%rax
 169:	0f 82 76 03 00 00    	jb     4e5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e5>
 16f:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 176:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 17d:	0f 84 d9 02 00 00    	je     45c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x45c>
 183:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 18a:	48 85 c0             	test   %rax,%rax
 18d:	75 06                	jne    195 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x195>
 18f:	48 89 75 00          	mov    %rsi,0x0(%rbp)
 193:	31 c0                	xor    %eax,%eax
 195:	4c 01 e0             	add    %r12,%rax
 198:	48 89 83 d8 00 00 00 	mov    %rax,0xd8(%rbx)
 19f:	48 85 c0             	test   %rax,%rax
 1a2:	0f 84 b2 05 00 00    	je     75a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x75a>
 1a8:	48 8b 8b d0 00 00 00 	mov    0xd0(%rbx),%rcx
 1af:	c6 83 0d 01 00 00 00 	movb   $0x0,0x10d(%rbx)
 1b6:	44 0f 11 45 00       	movups %xmm8,0x0(%rbp)
 1bb:	48 89 8b c0 00 00 00 	mov    %rcx,0xc0(%rbx)
 1c2:	48 89 83 c8 00 00 00 	mov    %rax,0xc8(%rbx)
 1c9:	31 d2                	xor    %edx,%edx
 1cb:	48 83 f8 0e          	cmp    $0xe,%rax
 1cf:	75 0c                	jne    1dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1dd>
 1d1:	8b 43 78             	mov    0x78(%rbx),%eax
 1d4:	83 e0 01             	and    $0x1,%eax
 1d7:	0f 84 5f 01 00 00    	je     33c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x33c>
 1dd:	88 93 0c 01 00 00    	mov    %dl,0x10c(%rbx)
 1e3:	49 ff c5             	inc    %r13
 1e6:	4c 89 ee             	mov    %r13,%rsi
 1e9:	49 39 f7             	cmp    %rsi,%r15
 1ec:	74 49                	je     237 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x237>
 1ee:	4d 89 fc             	mov    %r15,%r12
 1f1:	4d 29 ec             	sub    %r13,%r12
 1f4:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 1fb:	48 89 c8             	mov    %rcx,%rax
 1fe:	4c 29 e0             	sub    %r12,%rax
 201:	0f 82 de 02 00 00    	jb     4e5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4e5>
 207:	48 89 83 00 01 00 00 	mov    %rax,0x100(%rbx)
 20e:	80 bb 0d 01 00 00 01 	cmpb   $0x1,0x10d(%rbx)
 215:	0f 84 1f 02 00 00    	je     43a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x43a>
 21b:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 222:	48 85 c0             	test   %rax,%rax
 225:	75 06                	jne    22d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x22d>
 227:	48 89 75 00          	mov    %rsi,0x0(%rbp)
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
 26d:	0f 84 de 02 00 00    	je     551 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x551>
 273:	49 8d 77 01          	lea    0x1(%r15),%rsi
 277:	41 80 3f 0a          	cmpb   $0xa,(%r15)
 27b:	0f 84 9a 00 00 00    	je     31b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x31b>
 281:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 288 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x288>
			284: R_X86_64_PC32	char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)-0x4
 288:	48 89 43 60          	mov    %rax,0x60(%rbx)
 28c:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 293:	00
 294:	4c 39 f6             	cmp    %r14,%rsi
 297:	0f 83 2a 02 00 00    	jae    4c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c7>
 29d:	80 3e 0a             	cmpb   $0xa,(%rsi)
 2a0:	0f 85 1e 05 00 00    	jne    7c4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c4>
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
 316:	e9 ac 01 00 00       	jmp    4c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c7>
 31b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 322 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x322>
			31e: R_X86_64_PC32	char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)-0x4
 322:	48 89 43 60          	mov    %rax,0x60(%rbx)
 326:	48 c7 43 68 00 00 00 	movq   $0x0,0x68(%rbx)
 32d:	00
 32e:	4c 39 f6             	cmp    %r14,%rsi
 331:	0f 83 90 01 00 00    	jae    4c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c7>
 337:	48 89 df             	mov    %rbx,%rdi
 33a:	eb 8c                	jmp    2c8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2c8>
 33c:	49 83 fc 0e          	cmp    $0xe,%r12
 340:	0f 85 bc 01 00 00    	jne    502 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x502>
 346:	48 3b b3 20 01 00 00 	cmp    0x120(%rbx),%rsi
 34d:	0f 86 af 01 00 00    	jbe    502 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x502>
 353:	f3 0f 6f 46 ff       	movdqu -0x1(%rsi),%xmm0
 358:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
 35d:	66 0f d7 c0          	pmovmskb %xmm0,%eax
 361:	35 ff ff 00 00       	xor    $0xffff,%eax
 366:	0f 94 c2             	sete   %dl
 369:	e9 6f fe ff ff       	jmp    1dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1dd>
 36e:	49 89 f5             	mov    %rsi,%r13
 371:	e9 73 fe ff ff       	jmp    1e9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1e9>
 376:	0f b6 06             	movzbl (%rsi),%eax
 379:	04 a4                	add    $0xa4,%al
 37b:	3c 17                	cmp    $0x17,%al
 37d:	0f 83 18 01 00 00    	jae    49b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x49b>
 383:	0f b6 c0             	movzbl %al,%eax
 386:	0f a3 c7             	bt     %eax,%edi
 389:	0f 83 0c 01 00 00    	jae    49b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x49b>
 38f:	48 8b 8b 00 01 00 00 	mov    0x100(%rbx),%rcx
 396:	48 85 c9             	test   %rcx,%rcx
 399:	0f 84 ef 03 00 00    	je     78e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x78e>
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
			3e4: R_X86_64_PC32	.LCPI52_4-0x4
 3e8:	45 0f 57 c0          	xorps  %xmm8,%xmm8
 3ec:	66 0f 6f 3d 00 00 00 	movdqa 0x0(%rip),%xmm7        # 3f4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3f4>
 3f3:	00
			3f0: R_X86_64_PC32	.LCPI52_3-0x4
 3f4:	66 0f 6f 35 00 00 00 	movdqa 0x0(%rip),%xmm6        # 3fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3fc>
 3fb:	00
			3f8: R_X86_64_PC32	.LCPI52_2-0x4
 3fc:	66 0f 6f 2d 00 00 00 	movdqa 0x0(%rip),%xmm5        # 404 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x404>
 403:	00
			400: R_X86_64_PC32	.LCPI52_1-0x4
 404:	66 0f 6f 25 00 00 00 	movdqa 0x0(%rip),%xmm4        # 40c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x40c>
 40b:	00
			408: R_X86_64_PC32	.LCPI52_0-0x4
 40c:	45 31 db             	xor    %r11d,%r11d
 40f:	4d 89 e2             	mov    %r12,%r10
 412:	bf 81 00 44 00       	mov    $0x440081,%edi
 417:	b0 01                	mov    $0x1,%al
 419:	4c 89 fe             	mov    %r15,%rsi
 41c:	88 83 0a 01 00 00    	mov    %al,0x10a(%rbx)
 422:	48 ff c6             	inc    %rsi
 425:	4c 39 f6             	cmp    %r14,%rsi
 428:	0f 82 3d fc ff ff    	jb     6b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6b>
 42e:	e9 94 00 00 00       	jmp    4c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c7>
 433:	b1 01                	mov    $0x1,%cl
 435:	e9 d9 fc ff ff       	jmp    113 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x113>
 43a:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 43e:	4c 89 e2             	mov    %r12,%rdx
 441:	4d 89 d5             	mov    %r10,%r13
 444:	e8 00 00 00 00       	call   449 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x449>
			445: R_X86_64_PLT32	memcpy-0x4
 449:	4d 89 ea             	mov    %r13,%r10
 44c:	4c 01 63 48          	add    %r12,0x48(%rbx)
 450:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 457:	e9 d1 fd ff ff       	jmp    22d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x22d>
 45c:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
 460:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
 465:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 46a:	4c 89 e2             	mov    %r12,%rdx
 46d:	e8 00 00 00 00       	call   472 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x472>
			46e: R_X86_64_PLT32	memcpy-0x4
 472:	66 44 0f 6f 0d 00 00 	movdqa 0x0(%rip),%xmm9        # 47b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x47b>
 479:	00 00
			477: R_X86_64_PC32	.LCPI52_4-0x4
 47b:	45 0f 57 c0          	xorps  %xmm8,%xmm8
 47f:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 486 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x486>
			482: R_X86_64_PC32	.rodata+0x23c
 486:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 48b:	4c 01 63 48          	add    %r12,0x48(%rbx)
 48f:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 496:	e9 fa fc ff ff       	jmp    195 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x195>
 49b:	48 b8 03 00 00 00 08 	movabs $0x800000003,%rax
 4a2:	00 00 00
 4a5:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 4ac:	48 89 f0             	mov    %rsi,%rax
 4af:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 4b6:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 4bd:	48 ff c6             	inc    %rsi
 4c0:	48 89 b3 28 01 00 00 	mov    %rsi,0x128(%rbx)
 4c7:	48 89 f0             	mov    %rsi,%rax
 4ca:	48 83 c4 18          	add    $0x18,%rsp
 4ce:	5b                   	pop    %rbx
 4cf:	41 5c                	pop    %r12
 4d1:	41 5d                	pop    %r13
 4d3:	41 5e                	pop    %r14
 4d5:	41 5f                	pop    %r15
 4d7:	5d                   	pop    %rbp
 4d8:	c3                   	ret
 4d9:	48 8b 83 d8 00 00 00 	mov    0xd8(%rbx),%rax
 4e0:	e9 ba fc ff ff       	jmp    19f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x19f>
 4e5:	48 8b 93 f8 00 00 00 	mov    0xf8(%rbx),%rdx
 4ec:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
 4f0:	b8 02 00 00 00       	mov    $0x2,%eax
 4f5:	49 39 fc             	cmp    %rdi,%r12
 4f8:	77 2b                	ja     525 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x525>
 4fa:	89 83 10 01 00 00    	mov    %eax,0x110(%rbx)
 500:	eb be                	jmp    4c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c0>
 502:	48 b8 63 6f 6e 74 65 	movabs $0x2d746e65746e6f63,%rax
 509:	6e 74 2d
 50c:	48 33 01             	xor    (%rcx),%rax
 50f:	48 ba 74 2d 6c 65 6e 	movabs $0x6874676e656c2d74,%rdx
 516:	67 74 68
 519:	48 33 51 06          	xor    0x6(%rcx),%rdx
 51d:	48 09 c2             	or     %rax,%rdx
 520:	e9 41 fe ff ff       	jmp    366 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x366>
 525:	48 01 ce             	add    %rcx,%rsi
 528:	48 8d 04 16          	lea    (%rsi,%rdx,1),%rax
 52c:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 533:	00 00 00
 536:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 53d:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 544:	48 01 d6             	add    %rdx,%rsi
 547:	48 ff c6             	inc    %rsi
 54a:	b8 03 00 00 00       	mov    $0x3,%eax
 54f:	eb a9                	jmp    4fa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4fa>
 551:	48 8b b3 28 01 00 00 	mov    0x128(%rbx),%rsi
 558:	e9 6a ff ff ff       	jmp    4c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c7>
 55d:	45 31 ed             	xor    %r13d,%r13d
 560:	49 89 f7             	mov    %rsi,%r15
 563:	4c 89 f2             	mov    %r14,%rdx
 566:	4c 29 fa             	sub    %r15,%rdx
 569:	48 83 fa 08          	cmp    $0x8,%rdx
 56d:	0f 8c 99 01 00 00    	jl     70c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x70c>
 573:	48 bf 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rdi
 57a:	7f 7f 7f
 57d:	45 31 db             	xor    %r11d,%r11d
 580:	49 bc 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r12
 587:	0a 0a 0a
 58a:	49 b8 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r8
 591:	0d 0d 0d
 594:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
 599:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
 59e:	4d 8b 0f             	mov    (%r15),%r9
 5a1:	4d 89 ca             	mov    %r9,%r10
 5a4:	49 21 fa             	and    %rdi,%r10
 5a7:	49 8d 14 3a          	lea    (%r10,%rdi,1),%rdx
 5ab:	4c 09 ca             	or     %r9,%rdx
 5ae:	48 f7 d2             	not    %rdx
 5b1:	4d 89 d3             	mov    %r10,%r11
 5b4:	4d 31 e3             	xor    %r12,%r11
 5b7:	49 01 fb             	add    %rdi,%r11
 5ba:	4d 09 cb             	or     %r9,%r11
 5bd:	49 f7 d3             	not    %r11
 5c0:	49 09 d3             	or     %rdx,%r11
 5c3:	4d 89 d4             	mov    %r10,%r12
 5c6:	4d 31 c4             	xor    %r8,%r12
 5c9:	49 01 fc             	add    %rdi,%r12
 5cc:	4d 09 cc             	or     %r9,%r12
 5cf:	49 f7 d4             	not    %r12
 5d2:	4d 09 dc             	or     %r11,%r12
 5d5:	49 b8 80 80 80 80 80 	movabs $0x8080808080808080,%r8
 5dc:	80 80 80
 5df:	4d 21 c4             	and    %r8,%r12
 5e2:	84 c0                	test   %al,%al
 5e4:	75 1f                	jne    605 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x605>
 5e6:	4c 89 d2             	mov    %r10,%rdx
 5e9:	49 bb 5c 5c 5c 5c 5c 	movabs $0x5c5c5c5c5c5c5c5c,%r11
 5f0:	5c 5c 5c
 5f3:	4c 31 da             	xor    %r11,%rdx
 5f6:	48 01 fa             	add    %rdi,%rdx
 5f9:	4c 09 ca             	or     %r9,%rdx
 5fc:	48 f7 d2             	not    %rdx
 5ff:	4c 21 c2             	and    %r8,%rdx
 602:	49 09 d4             	or     %rdx,%r12
 605:	48 ba 3a 3a 3a 3a 3a 	movabs $0x3a3a3a3a3a3a3a3a,%rdx
 60c:	3a 3a 3a
 60f:	49 31 d2             	xor    %rdx,%r10
 612:	49 01 fa             	add    %rdi,%r10
 615:	4d 09 ca             	or     %r9,%r10
 618:	4d 21 c2             	and    %r8,%r10
 61b:	4d 89 d3             	mov    %r10,%r11
 61e:	4d 31 c3             	xor    %r8,%r11
 621:	4d 39 c2             	cmp    %r8,%r10
 624:	74 2c                	je     652 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x652>
 626:	f6 c1 01             	test   $0x1,%cl
 629:	74 27                	je     652 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x652>
 62b:	4c 89 c7             	mov    %r8,%rdi
 62e:	f3 49 0f bc d3       	tzcnt  %r11,%rdx
 633:	4d 85 e4             	test   %r12,%r12
 636:	0f 85 ee 00 00 00    	jne    72a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x72a>
 63c:	c1 ea 03             	shr    $0x3,%edx
 63f:	4c 01 fa             	add    %r15,%rdx
 642:	49 f7 d2             	not    %r10
 645:	49 01 fa             	add    %rdi,%r10
 648:	4d 21 d3             	and    %r10,%r11
 64b:	31 c9                	xor    %ecx,%ecx
 64d:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 652:	84 c0                	test   %al,%al
 654:	0f 85 f8 00 00 00    	jne    752 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x752>
 65a:	4d 09 e3             	or     %r12,%r11
 65d:	0f 85 ae 00 00 00    	jne    711 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x711>
 663:	49 83 c7 08          	add    $0x8,%r15
 667:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
 66c:	48 83 c2 f8          	add    $0xfffffffffffffff8,%rdx
 670:	48 83 fa 07          	cmp    $0x7,%rdx
 674:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 67b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x67b>
			677: R_X86_64_PC32	.rodata+0x23c
 67b:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
 680:	48 bf 7f 7f 7f 7f 7f 	movabs $0x7f7f7f7f7f7f7f7f,%rdi
 687:	7f 7f 7f
 68a:	49 bc 0a 0a 0a 0a 0a 	movabs $0xa0a0a0a0a0a0a0a,%r12
 691:	0a 0a 0a
 694:	49 b8 0d 0d 0d 0d 0d 	movabs $0xd0d0d0d0d0d0d0d,%r8
 69b:	0d 0d 0d
 69e:	0f 8f f0 fe ff ff    	jg     594 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x594>
 6a4:	31 ff                	xor    %edi,%edi
 6a6:	4d 39 f7             	cmp    %r14,%r15
 6a9:	73 4d                	jae    6f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f8>
 6ab:	41 0f b6 17          	movzbl (%r15),%edx
 6af:	83 fa 3a             	cmp    $0x3a,%edx
 6b2:	0f 84 86 00 00 00    	je     73e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x73e>
 6b8:	45 31 c9             	xor    %r9d,%r9d
 6bb:	41 f6 c1 01          	test   $0x1,%r9b
 6bf:	0f 85 81 00 00 00    	jne    746 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x746>
 6c5:	83 fa 0d             	cmp    $0xd,%edx
 6c8:	77 0c                	ja     6d6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6d6>
 6ca:	41 b9 01 24 00 00    	mov    $0x2401,%r9d
 6d0:	41 0f a3 d1          	bt     %edx,%r9d
 6d4:	72 22                	jb     6f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f8>
 6d6:	83 fa 3a             	cmp    $0x3a,%edx
 6d9:	41 0f 95 c1          	setne  %r9b
 6dd:	83 fa 5c             	cmp    $0x5c,%edx
 6e0:	0f 95 c2             	setne  %dl
 6e3:	44 20 ca             	and    %r9b,%dl
 6e6:	08 c2                	or     %al,%dl
 6e8:	80 fa 01             	cmp    $0x1,%dl
 6eb:	75 0b                	jne    6f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6f8>
 6ed:	49 ff c7             	inc    %r15
 6f0:	4d 39 f7             	cmp    %r14,%r15
 6f3:	72 b6                	jb     6ab <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ab>
 6f5:	4d 89 f7             	mov    %r14,%r15
 6f8:	4d 85 db             	test   %r11,%r11
 6fb:	4c 0f 44 df          	cmove  %rdi,%r11
 6ff:	4d 85 ed             	test   %r13,%r13
 702:	75 49                	jne    74d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x74d>
 704:	4d 89 dd             	mov    %r11,%r13
 707:	e9 3b fa ff ff       	jmp    147 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x147>
 70c:	45 31 db             	xor    %r11d,%r11d
 70f:	eb 93                	jmp    6a4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6a4>
 711:	f3 49 0f bc c3       	tzcnt  %r11,%rax
 716:	c1 e8 03             	shr    $0x3,%eax
 719:	49 01 c7             	add    %rax,%r15
 71c:	4c 8d 15 00 00 00 00 	lea    0x0(%rip),%r10        # 723 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x723>
			71f: R_X86_64_PC32	.rodata+0x23c
 723:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
 728:	eb d5                	jmp    6ff <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ff>
 72a:	f3 49 0f bc cc       	tzcnt  %r12,%rcx
 72f:	39 ca                	cmp    %ecx,%edx
 731:	0f 82 05 ff ff ff    	jb     63c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x63c>
 737:	b1 01                	mov    $0x1,%cl
 739:	e9 14 ff ff ff       	jmp    652 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x652>
 73e:	41 89 c9             	mov    %ecx,%r9d
 741:	e9 75 ff ff ff       	jmp    6bb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6bb>
 746:	31 c9                	xor    %ecx,%ecx
 748:	4c 89 ff             	mov    %r15,%rdi
 74b:	eb a0                	jmp    6ed <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6ed>
 74d:	4d 89 eb             	mov    %r13,%r11
 750:	eb b2                	jmp    704 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x704>
 752:	45 31 db             	xor    %r11d,%r11d
 755:	e9 00 ff ff ff       	jmp    65a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x65a>
 75a:	48 b8 03 00 00 00 07 	movabs $0x700000003,%rax
 761:	00 00 00
 764:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 76b:	4c 89 e8             	mov    %r13,%rax
 76e:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 775:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 77c:	49 ff c5             	inc    %r13
 77f:	4c 89 ab 28 01 00 00 	mov    %r13,0x128(%rbx)
 786:	4c 89 ee             	mov    %r13,%rsi
 789:	e9 39 fd ff ff       	jmp    4c7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4c7>
 78e:	b8 02 00 00 00       	mov    $0x2,%eax
 793:	48 83 bb f8 00 00 00 	cmpq   $0x0,0xf8(%rbx)
 79a:	00
 79b:	0f 85 59 fd ff ff    	jne    4fa <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4fa>
 7a1:	c7 83 14 01 00 00 0d 	movl   $0xd,0x114(%rbx)
 7a8:	00 00 00
 7ab:	48 89 f0             	mov    %rsi,%rax
 7ae:	48 2b 83 20 01 00 00 	sub    0x120(%rbx),%rax
 7b5:	48 89 83 18 01 00 00 	mov    %rax,0x118(%rbx)
 7bc:	48 ff c6             	inc    %rsi
 7bf:	e9 86 fd ff ff       	jmp    54a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54a>
 7c4:	48 b8 03 00 00 00 09 	movabs $0x900000003,%rax
 7cb:	00 00 00
 7ce:	48 89 83 10 01 00 00 	mov    %rax,0x110(%rbx)
 7d5:	48 2b b3 20 01 00 00 	sub    0x120(%rbx),%rsi
 7dc:	48 89 b3 18 01 00 00 	mov    %rsi,0x118(%rbx)
 7e3:	49 83 c7 02          	add    $0x2,%r15
 7e7:	e9 20 fb ff ff       	jmp    30c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x30c>

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
