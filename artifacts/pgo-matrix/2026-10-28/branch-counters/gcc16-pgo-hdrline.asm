0000000000006dc0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>:
    6dc0:	endbr64
    6dc4:	movzbl (%rsi),%eax
    6dc7:	cmp    $0xa,%al
    6dc9:	je     6e80 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xc0>
    6dcf:	cmp    $0xd,%al
    6dd1:	je     6e28 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x68>
    6dd3:	mov    0x18(%rdi),%rax
    6dd7:	cmp    %rax,0x80(%rdi)
    6dde:	je     6ee2 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x122>
    6de4:	mov    0x8(%rdi),%rax
    6de8:	cmp    %rax,0xe8(%rdi)
    6def:	je     6ed4 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x114>
    6df5:	lea    0x114(%rip),%rax        # 6f10 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    6dfc:	movq   $0x0,0x68(%rdi)
    6e04:	mov    %rax,0x60(%rdi)
    6e08:	cmp    %rdx,%rsi
    6e0b:	jae    6ede <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11e>
    6e11:	mov    0x110(%rdi),%eax
    6e17:	test   %eax,%eax
    6e19:	jne    6ede <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x11e>
    6e1f:	jmp    6f10 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    6e24:	nopl   0x0(%rax)
    6e28:	lea    0x1261(%rip),%rax        # 8090 <char const* stomptalk::parser::almost_done<3u>(char const*, char const*)>
    6e2f:	lea    0x1(%rsi),%rcx
    6e33:	movq   $0x0,0x68(%rdi)
    6e3b:	mov    %rax,0x60(%rdi)
    6e3f:	cmp    %rdx,%rcx
    6e42:	jae    6ed0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x110>
    6e48:	mov    0x110(%rdi),%r8d
    6e4f:	test   %r8d,%r8d
    6e52:	jne    6ed0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0x110>
    6e54:	lea    0x2(%rsi),%rax
    6e58:	cmpb   $0xa,0x1(%rsi)
    6e5c:	jne    6ea9 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe9>
    6e5e:	lea    0x128b(%rip),%rcx        # 80f0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    6e65:	mov    %rcx,0x60(%rdi)
    6e69:	cmp    %rdx,%rax
    6e6c:	jae    6ea8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe8>
    6e6e:	mov    %rax,%rsi
    6e71:	jmp    80f0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    6e76:	cs nopw 0x0(%rax,%rax,1)
    6e80:	lea    0x1269(%rip),%rcx        # 80f0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    6e87:	lea    0x1(%rsi),%rax
    6e8b:	movq   $0x0,0x68(%rdi)
    6e93:	mov    %rcx,0x60(%rdi)
    6e97:	cmp    %rdx,%rax
    6e9a:	jae    6ea8 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xe8>
    6e9c:	mov    0x110(%rdi),%r9d
    6ea3:	test   %r9d,%r9d
    6ea6:	je     6e6e <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)+0xae>
    6ea8:	ret
    6ea9:	sub    0x120(%rdi),%rcx
    6eb0:	mov    %rax,0x128(%rdi)
    6eb7:	movabs $0x900000003,%rdx
    6ec1:	mov    %rdx,0x110(%rdi)
    6ec8:	mov    %rcx,0x118(%rdi)
    6ecf:	ret
    6ed0:	mov    %rcx,%rax
    6ed3:	ret
    6ed4:	movl   $0x2,0x110(%rdi)
    6ede:	mov    %rsi,%rax
    6ee1:	ret
    6ee2:	movabs $0xc00000003,%rax
    6eec:	mov    %rax,0x110(%rdi)
    6ef3:	mov    %rsi,%rax
    6ef6:	sub    0x120(%rdi),%rax
    6efd:	mov    %rax,0x118(%rdi)
    6f04:	lea    0x1(%rsi),%rax
    6f08:	mov    %rax,0x128(%rdi)
    6f0f:	ret

0000000000006f10 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>:
    6f10:	endbr64
    6f14:	sub    $0x58,%rsp
    6f18:	mov    %rsi,%rcx
    6f1b:	mov    %rbp,0x30(%rsp)
    6f20:	mov    %rbx,0x28(%rsp)
    6f25:	mov    %rdi,%rbx
    6f28:	mov    %r12,0x38(%rsp)
    6f2d:	mov    %rdx,%r12
    6f30:	cmp    %r12,%rcx
    6f33:	jae    741d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x50d>
    6f39:	cmpb   $0x0,0x10a(%rbx)
    6f40:	jne    73ca <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4ba>
    6f46:	cmpq   $0x0,0xc8(%rbx)
    6f4e:	mov    %r12,%rsi
    6f51:	movzbl 0x10b(%rbx),%edx
    6f58:	sete   %al
    6f5b:	sub    %rcx,%rsi
    6f5e:	cmp    $0xf,%rsi
    6f62:	jle    76f8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7e8>
    6f68:	mov    $0x5c5c5c5c,%edi
    6f6d:	movdqu (%rcx),%xmm1
    6f71:	movd   %edi,%xmm5
    6f75:	mov    $0xa0a0a0a,%edi
    6f7a:	movd   %edi,%xmm3
    6f7e:	mov    $0xd0d0d0d,%edi
    6f83:	pshufd $0x0,%xmm5,%xmm5
    6f88:	movd   %edi,%xmm2
    6f8c:	mov    $0x3a3a3a3a,%edi
    6f91:	pshufd $0x0,%xmm3,%xmm3
    6f96:	movdqa %xmm3,%xmm6
    6f9a:	movd   %edi,%xmm4
    6f9e:	pshufd $0x0,%xmm2,%xmm2
    6fa3:	pcmpeqb %xmm1,%xmm6
    6fa7:	pshufd $0x0,%xmm4,%xmm4
    6fac:	movdqa %xmm4,%xmm0
    6fb0:	pcmpeqb %xmm1,%xmm0
    6fb4:	pmovmskb %xmm0,%esi
    6fb8:	movdqa %xmm2,%xmm0
    6fbc:	pcmpeqb %xmm1,%xmm0
    6fc0:	test   %esi,%esi
    6fc2:	mov    %esi,%r10d
    6fc5:	setne  %dil
    6fc9:	and    %eax,%edi
    6fcb:	por    %xmm6,%xmm0
    6fcf:	pxor   %xmm6,%xmm6
    6fd3:	pcmpeqb %xmm1,%xmm6
    6fd7:	por    %xmm6,%xmm0
    6fdb:	test   %dl,%dl
    6fdd:	jne    72c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3b0>
    6fe3:	pcmpeqb %xmm5,%xmm1
    6fe7:	por    %xmm1,%xmm0
    6feb:	pmovmskb %xmm0,%r9d
    6ff0:	test   %dil,%dil
    6ff3:	je     7020 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x110>
    6ff5:	xor    %r8d,%r8d
    6ff8:	mov    %r9d,%edi
    6ffb:	tzcnt  %esi,%r8d
    7000:	test   %r9d,%r9d
    7003:	jne    7040 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x130>
    7005:	lea    -0x1(%rsi),%ebp
    7008:	add    %rcx,%r8
    700b:	and    %esi,%ebp
    700d:	je     7390 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x480>
    7013:	tzcnt  %ebp,%ebp
    7017:	add    %rcx,%rbp
    701a:	jmp    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    701c:	nopl   0x0(%rax)
    7020:	or     %esi,%r9d
    7023:	je     72e0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3d0>
    7029:	tzcnt  %r9d,%r9d
    702e:	lea    (%rcx,%r9,1),%rbp
    7032:	jmp    711e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
    7037:	nopw   0x0(%rax,%rax,1)
    7040:	xor    %edx,%edx
    7042:	mov    %r8,%rax
    7045:	mov    %rcx,%rbp
    7048:	add    %rcx,%r8
    704b:	tzcnt  %r9d,%edx
    7050:	cmp    %eax,%edx
    7052:	jle    78c8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9b8>
    7058:	lea    -0x1(%r10),%eax
    705c:	and    %r10d,%eax
    705f:	or     %edi,%eax
    7061:	tzcnt  %eax,%eax
    7065:	add    %rax,%rbp
    7068:	mov    %r8,%rdx
    706b:	sub    %rcx,%rdx
    706e:	mov    %rdx,%rdi
    7071:	je     7bd7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcc7>
    7077:	mov    0x10(%rbx),%rsi
    707b:	mov    0x100(%rbx),%rax
    7082:	mov    %rsi,%r9
    7085:	sub    %rax,%r9
    7088:	cmp    %rdx,%r9
    708b:	jb     7fb4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x10a4>
    7091:	mov    0xf8(%rbx),%r9
    7098:	add    %rax,%r9
    709b:	sub    %r9,%rsi
    709e:	cmp    %rdx,%rsi
    70a1:	jb     7f9b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x108b>
    70a7:	add    %rdx,%rax
    70aa:	mov    %rax,0x100(%rbx)
    70b1:	cmpb   $0x0,0x10d(%rbx)
    70b8:	jne    7670 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x760>
    70be:	mov    0xd8(%rbx),%rax
    70c5:	test   %rax,%rax
    70c8:	jne    76b5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a5>
    70ce:	mov    %rcx,0xd0(%rbx)
    70d5:	mov    %rcx,%rax
    70d8:	movq   $0x0,0xd0(%rbx)
    70e3:	movq   $0x0,0xd8(%rbx)
    70ee:	movb   $0x0,0x10d(%rbx)
    70f5:	mov    %rax,0xc0(%rbx)
    70fc:	mov    %rdi,0xc8(%rbx)
    7103:	testb  $0x1,0x78(%rbx)
    7107:	jne    7113 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x203>
    7109:	cmp    $0xe,%rdi
    710d:	je     75f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6e0>
    7113:	movb   $0x0,0x10c(%rbx)
    711a:	lea    0x1(%r8),%rcx
    711e:	mov    %rbp,%rdx
    7121:	sub    %rcx,%rdx
    7124:	je     718b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x27b>
    7126:	mov    0x10(%rbx),%rsi
    712a:	mov    0x100(%rbx),%rax
    7131:	mov    %rsi,%rdi
    7134:	sub    %rax,%rdi
    7137:	cmp    %rdx,%rdi
    713a:	jb     8054 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1144>
    7140:	mov    0xf8(%rbx),%rdi
    7147:	add    %rax,%rdi
    714a:	sub    %rdi,%rsi
    714d:	cmp    %rdx,%rsi
    7150:	jb     7f9b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x108b>
    7156:	add    %rdx,%rax
    7159:	mov    %rax,0x100(%rbx)
    7160:	cmpb   $0x0,0x10d(%rbx)
    7167:	jne    7630 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x720>
    716d:	mov    0xd8(%rbx),%rax
    7174:	test   %rax,%rax
    7177:	jne    7661 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x751>
    717d:	mov    %rcx,0xd0(%rbx)
    7184:	mov    %rdx,0xd8(%rbx)
    718b:	cmp    %rbp,%r12
    718e:	je     7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7194:	movzbl 0x0(%rbp),%eax
    7198:	cmp    $0x5c,%al
    719a:	je     73a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x490>
    71a0:	cmpq   $0x0,0xc8(%rbx)
    71a8:	je     8013 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1103>
    71ae:	cmp    $0xd,%al
    71b0:	je     71ba <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x2aa>
    71b2:	cmp    $0xa,%al
    71b4:	jne    8013 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1103>
    71ba:	mov    %rbp,%rsi
    71bd:	mov    %rbx,%rdi
    71c0:	call   55f0 <stomptalk::parser::finish_value(char const*)>
    71c5:	test   %al,%al
    71c7:	je     7dca <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xeba>
    71cd:	lea    0x1(%rbp),%rsi
    71d1:	cmpb   $0xa,0x0(%rbp)
    71d5:	je     7270 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x360>
    71db:	lea    -0x582(%rip),%rax        # 6c60 <char const* stomptalk::parser::hdrline_almost_done<3u>(char const*, char const*)>
    71e2:	movq   $0x0,0x68(%rbx)
    71ea:	mov    %rax,0x60(%rbx)
    71ee:	cmp    %r12,%rsi
    71f1:	jae    7cac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd9c>
    71f7:	mov    0x110(%rbx),%eax
    71fd:	test   %eax,%eax
    71ff:	jne    7cac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd9c>
    7205:	lea    0x2(%rbp),%rcx
    7209:	cmpb   $0xa,0x1(%rbp)
    720d:	jne    7fe8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x10d8>
    7213:	lea    -0x45a(%rip),%rax        # 6dc0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    721a:	mov    %rax,0x60(%rbx)
    721e:	cmp    %r12,%rcx
    7221:	jae    741d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x50d>
    7227:	movzbl 0x2(%rbp),%eax
    722b:	cmp    $0xa,%al
    722d:	je     76d8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7c8>
    7233:	cmp    $0xd,%al
    7235:	je     74a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x590>
    723b:	mov    0x18(%rbx),%rax
    723f:	cmp    %rax,0x80(%rbx)
    7246:	je     7dd6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xec6>
    724c:	mov    0x8(%rbx),%rax
    7250:	cmp    %rax,0xe8(%rbx)
    7257:	je     8045 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1135>
    725d:	lea    -0x354(%rip),%rax        # 6f10 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)>
    7264:	mov    %rax,0x60(%rbx)
    7268:	jmp    6f30 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20>
    726d:	nopl   (%rax)
    7270:	lea    -0x4b7(%rip),%rax        # 6dc0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    7277:	movq   $0x0,0x68(%rbx)
    727f:	mov    %rax,0x60(%rbx)
    7283:	cmp    %r12,%rsi
    7286:	jae    7cac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd9c>
    728c:	mov    0x110(%rbx),%edx
    7292:	test   %edx,%edx
    7294:	jne    7cac <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd9c>
    729a:	mov    0x30(%rsp),%rbp
    729f:	mov    %r12,%rdx
    72a2:	mov    %rbx,%rdi
    72a5:	mov    0x38(%rsp),%r12
    72aa:	mov    0x28(%rsp),%rbx
    72af:	add    $0x58,%rsp
    72b3:	jmp    6dc0 <char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)>
    72b8:	nopl   0x0(%rax,%rax,1)
    72c0:	pmovmskb %xmm0,%ebp
    72c4:	test   %dil,%dil
    72c7:	jne    7540 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x630>
    72cd:	test   %ebp,%ebp
    72cf:	jne    7780 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x870>
    72d5:	data16 cs nopw 0x0(%rax,%rax,1)
    72e0:	xor    %r8d,%r8d
    72e3:	lea    0x10(%rcx),%rbp
    72e7:	mov    %r12,%rsi
    72ea:	sub    %rbp,%rsi
    72ed:	cmp    $0xf,%rsi
    72f1:	jle    7b9a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc8a>
    72f7:	pxor   %xmm7,%xmm7
    72fb:	movdqu 0x0(%rbp),%xmm1
    7300:	movdqa %xmm1,%xmm0
    7304:	movdqa %xmm1,%xmm6
    7308:	pcmpeqb %xmm4,%xmm0
    730c:	pcmpeqb %xmm2,%xmm6
    7310:	pmovmskb %xmm0,%r10d
    7315:	movdqa %xmm1,%xmm0
    7319:	pcmpeqb %xmm3,%xmm0
    731d:	test   %r10d,%r10d
    7320:	mov    %r10d,%r9d
    7323:	setne  %dil
    7327:	and    %eax,%edi
    7329:	por    %xmm6,%xmm0
    732d:	movdqa %xmm1,%xmm6
    7331:	pcmpeqb %xmm7,%xmm6
    7335:	por    %xmm6,%xmm0
    7339:	test   %dl,%dl
    733b:	jne    7500 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5f0>
    7341:	pcmpeqb %xmm5,%xmm1
    7345:	por    %xmm1,%xmm0
    7349:	pmovmskb %xmm0,%esi
    734d:	test   %dil,%dil
    7350:	je     7440 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x530>
    7356:	mov    %esi,%edi
    7358:	test   %esi,%esi
    735a:	jne    7480 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x570>
    7360:	xor    %r8d,%r8d
    7363:	lea    -0x1(%r9),%esi
    7367:	tzcnt  %r9d,%r8d
    736c:	add    %rbp,%r8
    736f:	and    %r9d,%esi
    7372:	je     7520 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x610>
    7378:	tzcnt  %esi,%esi
    737c:	add    %rsi,%rbp
    737f:	test   %r8,%r8
    7382:	jne    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    7388:	jmp    711e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
    738d:	nopl   (%rax)
    7390:	xor    %eax,%eax
    7392:	jmp    72e3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3d3>
    7397:	nopw   0x0(%rax,%rax,1)
    73a0:	cmpb   $0x0,0x10b(%rbx)
    73a7:	jne    8013 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1103>
    73ad:	cmpb   $0x0,0x10d(%rbx)
    73b4:	je     7580 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x670>
    73ba:	lea    0x1(%rbp),%rcx
    73be:	movb   $0x1,0x10a(%rbx)
    73c5:	cmp    %r12,%rcx
    73c8:	jae    741d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x50d>
    73ca:	movsbl (%rcx),%esi
    73cd:	cmp    $0x63,%sil
    73d1:	je     7570 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x660>
    73d7:	jle    7a38 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb28>
    73dd:	cmp    $0x6e,%sil
    73e1:	jne    7a28 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb18>
    73e7:	mov    $0xa,%esi
    73ec:	mov    %rcx,%rdx
    73ef:	mov    %rbx,%rdi
    73f2:	mov    %rcx,0x8(%rsp)
    73f7:	call   5cb0 <stomptalk::parser::append(char, char const*)>
    73fc:	mov    0x8(%rsp),%rcx
    7401:	test   %al,%al
    7403:	je     7dca <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xeba>
    7409:	add    $0x1,%rcx
    740d:	movb   $0x0,0x10a(%rbx)
    7414:	cmp    %r12,%rcx
    7417:	jb     6f46 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x36>
    741d:	mov    %rcx,%rbp
    7420:	mov    %rbp,%rax
    7423:	mov    0x28(%rsp),%rbx
    7428:	mov    0x30(%rsp),%rbp
    742d:	mov    0x38(%rsp),%r12
    7432:	add    $0x58,%rsp
    7436:	ret
    7437:	nopw   0x0(%rax,%rax,1)
    7440:	or     %r10d,%esi
    7443:	jne    7378 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x468>
    7449:	add    $0x10,%rbp
    744d:	mov    %r12,%rsi
    7450:	sub    %rbp,%rsi
    7453:	cmp    $0xf,%rsi
    7457:	jg     72fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3eb>
    745d:	cmp    $0x7,%rsi
    7461:	jg     7bc0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcb0>
    7467:	cmp    %r12,%rbp
    746a:	jae    737f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46f>
    7470:	mov    %r8,%r10
    7473:	xor    %r8d,%r8d
    7476:	jmp    7714 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x804>
    747b:	nopl   0x0(%rax,%rax,1)
    7480:	xor    %eax,%eax
    7482:	xor    %edx,%edx
    7484:	tzcnt  %r10d,%eax
    7489:	tzcnt  %esi,%edx
    748d:	cmp    %edx,%eax
    748f:	jge    79ad <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa9d>
    7495:	lea    0x0(%rbp,%rax,1),%r8
    749a:	jmp    7058 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x148>
    749f:	nop
    74a0:	lea    0xbe9(%rip),%rcx        # 8090 <char const* stomptalk::parser::almost_done<3u>(char const*, char const*)>
    74a7:	lea    0x3(%rbp),%rax
    74ab:	mov    %rcx,0x60(%rbx)
    74af:	cmp    %r12,%rax
    74b2:	jae    7e05 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xef5>
    74b8:	movzbl 0x3(%rbp),%edx
    74bc:	add    $0x4,%rbp
    74c0:	cmp    $0xa,%dl
    74c3:	jne    7e0d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xefd>
    74c9:	lea    0xc20(%rip),%rax        # 80f0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    74d0:	mov    %rax,0x60(%rbx)
    74d4:	cmp    %r12,%rbp
    74d7:	jae    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    74dd:	mov    %r12,%rdx
    74e0:	mov    %rbp,%rsi
    74e3:	mov    0x38(%rsp),%r12
    74e8:	mov    0x30(%rsp),%rbp
    74ed:	mov    %rbx,%rdi
    74f0:	mov    0x28(%rsp),%rbx
    74f5:	add    $0x58,%rsp
    74f9:	jmp    80f0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    74fe:	xchg   %ax,%ax
    7500:	pmovmskb %xmm0,%esi
    7504:	test   %dil,%dil
    7507:	je     7940 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa30>
    750d:	test   %esi,%esi
    750f:	jne    7760 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x850>
    7515:	xor    %r8d,%r8d
    7518:	tzcnt  %r10d,%r8d
    751d:	add    %rbp,%r8
    7520:	add    $0x10,%rbp
    7524:	mov    %r12,%rsi
    7527:	xor    %eax,%eax
    7529:	sub    %rbp,%rsi
    752c:	cmp    $0xf,%rsi
    7530:	jg     72fb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3eb>
    7536:	jmp    745d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x54d>
    753b:	nopl   0x0(%rax,%rax,1)
    7540:	tzcnt  %esi,%esi
    7544:	xor    %eax,%eax
    7546:	lea    (%rcx,%rsi,1),%r8
    754a:	test   %ebp,%ebp
    754c:	je     72e3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x3d3>
    7552:	tzcnt  %ebp,%ebp
    7556:	cmp    %esi,%ebp
    7558:	jle    7cdb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xdcb>
    755e:	lea    (%rcx,%rsi,1),%r8
    7562:	add    %rcx,%rbp
    7565:	jmp    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    756a:	nopw   0x0(%rax,%rax,1)
    7570:	mov    $0x3a,%esi
    7575:	jmp    73ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4dc>
    757a:	nopw   0x0(%rax,%rax,1)
    7580:	mov    %rbx,%rdi
    7583:	call   59b0 <stomptalk::parser::own_metadata()>
    7588:	mov    0x48(%rbx),%rcx
    758c:	mov    0x50(%rbx),%rax
    7590:	mov    0xd8(%rbx),%rdx
    7597:	mov    0xd0(%rbx),%rsi
    759e:	sub    %rcx,%rax
    75a1:	mov    %rcx,%rdi
    75a4:	cmp    %rdx,%rax
    75a7:	jb     7f31 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1021>
    75ad:	test   %rdx,%rdx
    75b0:	je     75cf <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6bf>
    75b2:	mov    %rcx,0x10(%rsp)
    75b7:	mov    %rdx,0x8(%rsp)
    75bc:	call   1230 <memcpy@plt>
    75c1:	mov    0x48(%rbx),%rdi
    75c5:	mov    0x10(%rsp),%rcx
    75ca:	mov    0x8(%rsp),%rdx
    75cf:	add    %rdx,%rdi
    75d2:	mov    %rdi,0x48(%rbx)
    75d6:	mov    %rcx,0xd0(%rbx)
    75dd:	movb   $0x1,0x10d(%rbx)
    75e4:	jmp    73ba <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4aa>
    75e9:	nopl   0x0(%rax)
    75f0:	cmp    %rcx,0x120(%rbx)
    75f7:	jae    7e8f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xf7f>
    75fd:	cmp    $0xe,%rdx
    7601:	jne    7e8f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xf7f>
    7607:	movdqu -0x1(%rcx),%xmm0
    760c:	pcmpeqb 0x7fec(%rip),%xmm0        # f600 <stomptalk::detail::backend::content_length_wire+0xd0>
    7614:	pmovmskb %xmm0,%eax
    7618:	cmp    $0xffff,%eax
    761d:	sete   %al
    7620:	mov    %al,0x10c(%rbx)
    7626:	lea    0x1(%r8),%rcx
    762a:	jmp    711e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
    762f:	nop
    7630:	mov    0x48(%rbx),%rdi
    7634:	mov    0x50(%rbx),%rax
    7638:	sub    %rdi,%rax
    763b:	cmp    %rdx,%rax
    763e:	jb     7ee9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xfd9>
    7644:	mov    %rcx,%rsi
    7647:	mov    %rdx,0x8(%rsp)
    764c:	call   1230 <memcpy@plt>
    7651:	mov    0x8(%rsp),%rdx
    7656:	add    %rdx,0x48(%rbx)
    765a:	mov    0xd8(%rbx),%rax
    7661:	add    %rdx,%rax
    7664:	mov    %rax,0xd8(%rbx)
    766b:	jmp    718b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x27b>
    7670:	mov    0x48(%rbx),%rdi
    7674:	mov    0x50(%rbx),%rax
    7678:	sub    %rdi,%rax
    767b:	cmp    %rdx,%rax
    767e:	jb     7f87 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1077>
    7684:	mov    %rcx,%rsi
    7687:	mov    %r8,0x18(%rsp)
    768c:	mov    %rdx,0x10(%rsp)
    7691:	mov    %rcx,0x8(%rsp)
    7696:	call   1230 <memcpy@plt>
    769b:	mov    0x10(%rsp),%rdx
    76a0:	add    %rdx,0x48(%rbx)
    76a4:	mov    0xd8(%rbx),%rax
    76ab:	mov    0x8(%rsp),%rcx
    76b0:	mov    0x18(%rsp),%r8
    76b5:	lea    (%rdx,%rax,1),%rdi
    76b9:	mov    %rdi,0xd8(%rbx)
    76c0:	test   %rdi,%rdi
    76c3:	je     7eb7 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xfa7>
    76c9:	mov    0xd0(%rbx),%rax
    76d0:	jmp    70d8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1c8>
    76d5:	nopl   (%rax)
    76d8:	lea    0xa11(%rip),%rax        # 80f0 <char const* stomptalk::parser::done<3u>(char const*, char const*)>
    76df:	add    $0x3,%rbp
    76e3:	mov    %rax,0x60(%rbx)
    76e7:	cmp    %r12,%rbp
    76ea:	jb     74dd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x5cd>
    76f0:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    76f5:	nopl   (%rax)
    76f8:	cmp    $0x7,%rsi
    76fc:	jg     778c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x87c>
    7702:	mov    %rcx,%rbp
    7705:	cmp    %r12,%rcx
    7708:	jae    718b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x27b>
    770e:	xor    %r10d,%r10d
    7711:	xor    %r8d,%r8d
    7714:	movzbl 0x0(%rbp),%esi
    7718:	cmp    $0x3a,%sil
    771c:	sete   %dil
    7720:	test   %dil,%al
    7723:	jne    7c28 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd18>
    7729:	cmp    $0xd,%sil
    772d:	ja     78d0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9c0>
    7733:	mov    $0x2401,%edi
    7738:	bt     %rsi,%rdi
    773c:	jae    78e6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9d6>
    7742:	xor    %r9d,%r9d
    7745:	test   %r8,%r8
    7748:	je     7be5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcd5>
    774e:	test   %r10,%r10
    7751:	cmovne %r10,%r8
    7755:	jmp    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    775a:	nopw   0x0(%rax,%rax,1)
    7760:	tzcnt  %r10d,%r10d
    7765:	tzcnt  %esi,%esi
    7769:	cmp    %esi,%r10d
    776c:	jl     7d9b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe8b>
    7772:	add    %rsi,%rbp
    7775:	jmp    737f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46f>
    777a:	nopw   0x0(%rax,%rax,1)
    7780:	tzcnt  %ebp,%ebp
    7784:	add    %rcx,%rbp
    7787:	jmp    711e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
    778c:	mov    %r13,0x40(%rsp)
    7791:	mov    %rcx,%rbp
    7794:	xor    %r10d,%r10d
    7797:	mov    %r14,0x48(%rsp)
    779c:	mov    %r15,0x50(%rsp)
    77a1:	movabs $0x3a3a3a3a3a3a3a3a,%rsi
    77ab:	mov    0x0(%rbp),%r9
    77af:	movabs $0x7f7f7f7f7f7f7f7f,%rdi
    77b9:	movabs $0xa0a0a0a0a0a0a0a,%r11
    77c3:	xor    %r9,%rsi
    77c6:	xor    %r9,%r11
    77c9:	mov    %rsi,%r8
    77cc:	and    %rdi,%r8
    77cf:	add    %rdi,%r8
    77d2:	or     %rsi,%r8
    77d5:	mov    %r8,%r14
    77d8:	mov    %r8,0x8(%rsp)
    77dd:	movabs $0xd0d0d0d0d0d0d0d,%r8
    77e7:	xor    %r9,%r8
    77ea:	or     %rdi,%r14
    77ed:	mov    %r8,%rsi
    77f0:	mov    %r14,%r13
    77f3:	and    %rdi,%rsi
    77f6:	add    %rdi,%rsi
    77f9:	or     %r8,%rsi
    77fc:	mov    %r11,%r8
    77ff:	and    %rdi,%r8
    7802:	add    %rdi,%r8
    7805:	or     %r11,%r8
    7808:	and    %r8,%rsi
    780b:	mov    %r9,%r8
    780e:	and    %rdi,%r8
    7811:	add    %rdi,%r8
    7814:	or     %r9,%r8
    7817:	and    %r8,%rsi
    781a:	xor    $0xffffffffffffffff,%r14
    781e:	setne  %r8b
    7822:	mov    %r14,%r11
    7825:	mov    %rsi,%r15
    7828:	and    %eax,%r8d
    782b:	mov    %r8d,%r14d
    782e:	test   %dl,%dl
    7830:	jne    7d1c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe0c>
    7836:	movabs $0x5c5c5c5c5c5c5c5c,%rsi
    7840:	mov    %r9,%r8
    7843:	xor    %rsi,%r8
    7846:	mov    %r8,%rsi
    7849:	and    %rdi,%rsi
    784c:	add    %rdi,%rsi
    784f:	or     %r8,%rsi
    7852:	and    %r15,%rsi
    7855:	test   %r14b,%r14b
    7858:	je     7c7d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd6d>
    785e:	xor    %r8d,%r8d
    7861:	or     %rdi,%rsi
    7864:	tzcnt  %r11,%r8
    7869:	xor    $0xffffffffffffffff,%rsi
    786d:	jne    7f3a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x102a>
    7873:	mov    $0xfffffffffffffffe,%rsi
    787a:	sar    $0x3,%r8d
    787e:	xor    %eax,%eax
    7880:	sub    %r13,%rsi
    7883:	add    %rbp,%r8
    7886:	and    %r11,%rsi
    7889:	test   %rsi,%rsi
    788c:	jne    7c0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcfa>
    7892:	add    $0x8,%rbp
    7896:	mov    %r12,%rsi
    7899:	sub    %rbp,%rsi
    789c:	cmp    $0x7,%rsi
    78a0:	jg     7a76 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb66>
    78a6:	cmp    %r12,%rbp
    78a9:	jae    7cbe <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xdae>
    78af:	mov    0x40(%rsp),%r13
    78b4:	mov    0x48(%rsp),%r14
    78b9:	mov    0x50(%rsp),%r15
    78be:	jmp    7714 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x804>
    78c3:	nopl   0x0(%rax,%rax,1)
    78c8:	or     %esi,%r9d
    78cb:	jmp    7029 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x119>
    78d0:	cmp    $0x5c,%sil
    78d4:	sete   %sil
    78d8:	or     %dil,%sil
    78db:	je     78e6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9d6>
    78dd:	cmp    $0x1,%dl
    78e0:	jne    7742 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x832>
    78e6:	lea    0x1(%rbp),%rdi
    78ea:	cmp    %r12,%rdi
    78ed:	jae    7c90 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd80>
    78f3:	movzbl 0x1(%rbp),%esi
    78f7:	cmp    $0x3a,%sil
    78fb:	sete   %r9b
    78ff:	mov    %r9d,%r11d
    7902:	test   %al,%al
    7904:	je     790f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x9ff>
    7906:	test   %r9b,%r9b
    7909:	jne    7c55 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd45>
    790f:	xor    %r9d,%r9d
    7912:	cmp    $0xd,%sil
    7916:	ja     7950 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa40>
    7918:	mov    %r14,0x48(%rsp)
    791d:	mov    $0x2401,%r14d
    7923:	bt     %rsi,%r14
    7927:	mov    0x48(%rsp),%r14
    792c:	jae    7950 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa40>
    792e:	mov    %rdi,%rbp
    7931:	jmp    7745 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x835>
    7936:	cs nopw 0x0(%rax,%rax,1)
    7940:	test   %esi,%esi
    7942:	jne    7378 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x468>
    7948:	jmp    7449 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x539>
    794d:	nopl   (%rax)
    7950:	cmp    $0x5c,%sil
    7954:	sete   %sil
    7958:	or     %r11d,%esi
    795b:	mov    %edx,%r11d
    795e:	xor    $0x1,%r11d
    7962:	test   %r11b,%sil
    7965:	jne    792e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa1e>
    7967:	lea    0x2(%rbp),%r11
    796b:	cmp    %r12,%r11
    796e:	jae    7ce3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xdd3>
    7974:	mov    %r15,0x50(%rsp)
    7979:	movzbl 0x2(%rbp),%esi
    797d:	cmp    $0x3a,%sil
    7981:	sete   %r15b
    7985:	jne    798f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa7f>
    7987:	test   %al,%al
    7989:	jne    7cb4 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xda4>
    798f:	cmp    $0xd,%sil
    7993:	ja     79b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaa9>
    7995:	mov    $0x2401,%edi
    799a:	bt     %rsi,%rdi
    799e:	jae    79b9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaa9>
    79a0:	mov    0x50(%rsp),%r15
    79a5:	mov    %r11,%rbp
    79a8:	jmp    7745 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x835>
    79ad:	or     %r10d,%esi
    79b0:	tzcnt  %esi,%esi
    79b4:	jmp    7772 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x862>
    79b9:	cmp    $0x5c,%sil
    79bd:	sete   %sil
    79c1:	or     %r15b,%sil
    79c4:	je     79cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xabb>
    79c6:	cmp    $0x1,%dl
    79c9:	jne    79a0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa90>
    79cb:	add    $0x3,%rbp
    79cf:	cmp    %r12,%rbp
    79d2:	jae    79fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaec>
    79d4:	mov    $0x2401,%r11d
    79da:	movzbl 0x0(%rbp),%esi
    79de:	cmp    $0x3a,%sil
    79e2:	sete   %dil
    79e6:	jne    79f0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xae0>
    79e8:	test   %al,%al
    79ea:	jne    7c4b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd3b>
    79f0:	cmp    $0xd,%sil
    79f4:	ja     7a06 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaf6>
    79f6:	bt     %rsi,%r11
    79fa:	jae    7a18 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb08>
    79fc:	mov    0x50(%rsp),%r15
    7a01:	jmp    7745 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x835>
    7a06:	cmp    $0x5c,%sil
    7a0a:	sete   %sil
    7a0e:	or     %dil,%sil
    7a11:	je     7a18 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb08>
    7a13:	cmp    $0x1,%dl
    7a16:	jne    79fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaec>
    7a18:	add    $0x1,%rbp
    7a1c:	cmp    %rbp,%r12
    7a1f:	jne    79da <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaca>
    7a21:	jmp    79fc <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xaec>
    7a23:	nopl   0x0(%rax,%rax,1)
    7a28:	cmp    $0x72,%sil
    7a2c:	jne    7a42 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb32>
    7a2e:	mov    $0xd,%esi
    7a33:	jmp    73ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4dc>
    7a38:	cmp    $0x5c,%sil
    7a3c:	je     73ec <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x4dc>
    7a42:	movabs $0x800000003,%rax
    7a4c:	lea    0x1(%rcx),%rbp
    7a50:	mov    %rax,0x110(%rbx)
    7a57:	mov    %rcx,%rax
    7a5a:	sub    0x120(%rbx),%rax
    7a61:	mov    %rax,0x118(%rbx)
    7a68:	mov    %rbp,0x128(%rbx)
    7a6f:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7a74:	xor    %eax,%eax
    7a76:	mov    %rbx,0x8(%rsp)
    7a7b:	mov    %r12,%r15
    7a7e:	mov    %r10,%r14
    7a81:	mov    %r8,%r12
    7a84:	movabs $0x7f7f7f7f7f7f7f7f,%rdi
    7a8e:	mov    %rcx,%r13
    7a91:	mov    %edx,%ebx
    7a93:	mov    %eax,%r8d
    7a96:	movabs $0x3a3a3a3a3a3a3a3a,%rax
    7aa0:	mov    0x0(%rbp),%r10
    7aa4:	movabs $0xd0d0d0d0d0d0d0d,%rcx
    7aae:	xor    %r10,%rax
    7ab1:	xor    %r10,%rcx
    7ab4:	mov    %rax,%r11
    7ab7:	and    %rdi,%r11
    7aba:	add    %rdi,%r11
    7abd:	or     %rax,%r11
    7ac0:	movabs $0xa0a0a0a0a0a0a0a,%rax
    7aca:	xor    %r10,%rax
    7acd:	mov    %r11,%rdx
    7ad0:	mov    %rax,%r9
    7ad3:	or     %rdi,%rdx
    7ad6:	and    %rdi,%r9
    7ad9:	add    %rdi,%r9
    7adc:	or     %rax,%r9
    7adf:	mov    %rcx,%rax
    7ae2:	and    %rdi,%rax
    7ae5:	add    %rdi,%rax
    7ae8:	or     %rcx,%rax
    7aeb:	mov    %rdx,%rcx
    7aee:	and    %rax,%r9
    7af1:	mov    %r10,%rax
    7af4:	and    %rdi,%rax
    7af7:	add    %rdi,%rax
    7afa:	or     %r10,%rax
    7afd:	and    %rax,%r9
    7b00:	xor    $0xffffffffffffffff,%rcx
    7b04:	setne  %al
    7b07:	and    %r8d,%eax
    7b0a:	test   %bl,%bl
    7b0c:	jne    7ceb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xddb>
    7b12:	movabs $0x5c5c5c5c5c5c5c5c,%rsi
    7b1c:	xor    %rsi,%r10
    7b1f:	mov    %r10,%rsi
    7b22:	and    %rdi,%rsi
    7b25:	add    %rdi,%rsi
    7b28:	or     %r10,%rsi
    7b2b:	and    %r9,%rsi
    7b2e:	test   %al,%al
    7b30:	je     7c98 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xd88>
    7b36:	xor    %eax,%eax
    7b38:	or     %rdi,%rsi
    7b3b:	tzcnt  %rcx,%rax
    7b40:	xor    $0xffffffffffffffff,%rsi
    7b44:	jne    7f4e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x103e>
    7b4a:	mov    $0xfffffffffffffffe,%rsi
    7b51:	sar    $0x3,%eax
    7b54:	xor    %r8d,%r8d
    7b57:	sub    %rdx,%rsi
    7b5a:	lea    0x0(%rbp,%rax,1),%r12
    7b5f:	and    %rcx,%rsi
    7b62:	test   %rsi,%rsi
    7b65:	jne    7bf9 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xce9>
    7b6b:	add    $0x8,%rbp
    7b6f:	mov    %r15,%rax
    7b72:	sub    %rbp,%rax
    7b75:	cmp    $0x7,%rax
    7b79:	jg     7a96 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb86>
    7b7f:	mov    %ebx,%edx
    7b81:	mov    %r8d,%eax
    7b84:	mov    0x8(%rsp),%rbx
    7b89:	mov    %r12,%r8
    7b8c:	mov    %r14,%r10
    7b8f:	mov    %r13,%rcx
    7b92:	mov    %r15,%r12
    7b95:	jmp    78a6 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x996>
    7b9a:	cmp    $0x7,%rsi
    7b9e:	jg     7bc0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcb0>
    7ba0:	cmp    %r12,%rbp
    7ba3:	jb     7470 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x560>
    7ba9:	test   %r8,%r8
    7bac:	jne    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    7bb2:	mov    $0x10,%edx
    7bb7:	jmp    7126 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x216>
    7bbc:	nopl   0x0(%rax)
    7bc0:	mov    %r13,0x40(%rsp)
    7bc5:	mov    %r8,%r10
    7bc8:	mov    %r14,0x48(%rsp)
    7bcd:	mov    %r15,0x50(%rsp)
    7bd2:	jmp    77a1 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x891>
    7bd7:	mov    0xd8(%rbx),%rdi
    7bde:	xor    %edx,%edx
    7be0:	jmp    76c0 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7b0>
    7be5:	mov    %r9,%r8
    7be8:	test   %r10,%r10
    7beb:	je     737f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x46f>
    7bf1:	mov    %r10,%r8
    7bf4:	jmp    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    7bf9:	mov    0x8(%rsp),%rbx
    7bfe:	mov    %r12,%r8
    7c01:	mov    %r14,%r10
    7c04:	mov    %r13,%rcx
    7c07:	mov    %r15,%r12
    7c0a:	xor    %eax,%eax
    7c0c:	mov    0x40(%rsp),%r13
    7c11:	mov    0x48(%rsp),%r14
    7c16:	tzcnt  %rsi,%rax
    7c1b:	mov    0x50(%rsp),%r15
    7c20:	sar    $0x3,%eax
    7c23:	add    %rax,%rbp
    7c26:	jmp    7be8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcd8>
    7c28:	lea    0x1(%rbp),%rdi
    7c2c:	cmp    %r12,%rdi
    7c2f:	jae    7d7a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe6a>
    7c35:	movzbl 0x1(%rbp),%esi
    7c39:	mov    %rbp,%r9
    7c3c:	cmp    $0x3a,%sil
    7c40:	sete   %r11b
    7c44:	xor    %eax,%eax
    7c46:	jmp    7912 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa02>
    7c4b:	mov    %rbp,%r9
    7c4e:	xor    %eax,%eax
    7c50:	jmp    7a18 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb08>
    7c55:	lea    0x2(%rbp),%r11
    7c59:	cmp    %r12,%r11
    7c5c:	jae    7da8 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe98>
    7c62:	mov    %r15,0x50(%rsp)
    7c67:	movzbl 0x2(%rbp),%esi
    7c6b:	mov    %rdi,%r9
    7c6e:	cmp    $0x3a,%sil
    7c72:	sete   %r15b
    7c76:	xor    %eax,%eax
    7c78:	jmp    798f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa7f>
    7c7d:	and    0x8(%rsp),%rsi
    7c82:	xor    %r8d,%r8d
    7c85:	or     %rdi,%rsi
    7c88:	not    %rsi
    7c8b:	jmp    7889 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x979>
    7c90:	mov    %rdi,%rbp
    7c93:	jmp    7742 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x832>
    7c98:	mov    %r11,%rax
    7c9b:	and    %rsi,%rax
    7c9e:	or     %rdi,%rax
    7ca1:	not    %rax
    7ca4:	mov    %rax,%rsi
    7ca7:	jmp    7b62 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc52>
    7cac:	mov    %rsi,%rbp
    7caf:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7cb4:	mov    %r11,%r9
    7cb7:	xor    %eax,%eax
    7cb9:	jmp    79cb <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xabb>
    7cbe:	test   %r8,%r8
    7cc1:	je     7d82 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe72>
    7cc7:	mov    0x40(%rsp),%r13
    7ccc:	mov    0x48(%rsp),%r14
    7cd1:	mov    0x50(%rsp),%r15
    7cd6:	jmp    774e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x83e>
    7cdb:	add    %rcx,%rbp
    7cde:	jmp    711e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
    7ce3:	mov    %r11,%rbp
    7ce6:	jmp    7745 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x835>
    7ceb:	or     %rdi,%r9
    7cee:	mov    %r9,%rsi
    7cf1:	not    %rsi
    7cf4:	test   %al,%al
    7cf6:	je     7b62 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc52>
    7cfc:	xor    %eax,%eax
    7cfe:	tzcnt  %rcx,%rax
    7d03:	test   %rsi,%rsi
    7d06:	jne    7e38 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xf28>
    7d0c:	sar    $0x3,%eax
    7d0f:	xor    %r8d,%r8d
    7d12:	lea    0x0(%rbp,%rax,1),%r12
    7d17:	jmp    7b6b <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xc5b>
    7d1c:	or     %rdi,%rsi
    7d1f:	not    %rsi
    7d22:	test   %r8b,%r8b
    7d25:	je     7d72 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xe62>
    7d27:	xor    %eax,%eax
    7d29:	tzcnt  %r11,%rax
    7d2e:	test   %rsi,%rsi
    7d31:	jne    7efd <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xfed>
    7d37:	sar    $0x3,%eax
    7d3a:	lea    0x0(%rbp,%rax,1),%r8
    7d3f:	add    $0x8,%rbp
    7d43:	mov    %r12,%rax
    7d46:	sub    %rbp,%rax
    7d49:	cmp    $0x7,%rax
    7d4d:	jg     7a74 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xb64>
    7d53:	mov    0x40(%rsp),%r13
    7d58:	mov    0x48(%rsp),%r14
    7d5d:	xor    %eax,%eax
    7d5f:	mov    0x50(%rsp),%r15
    7d64:	cmp    %r12,%rbp
    7d67:	jb     7714 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x804>
    7d6d:	jmp    774e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x83e>
    7d72:	xor    %r8d,%r8d
    7d75:	jmp    7889 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x979>
    7d7a:	mov    %rbp,%r9
    7d7d:	jmp    792e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xa1e>
    7d82:	test   %r10,%r10
    7d85:	jne    7db3 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xea3>
    7d87:	mov    0x40(%rsp),%r13
    7d8c:	mov    0x48(%rsp),%r14
    7d91:	mov    0x50(%rsp),%r15
    7d96:	jmp    711e <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x20e>
    7d9b:	lea    0x0(%rbp,%r10,1),%r8
    7da0:	add    %rsi,%rbp
    7da3:	jmp    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    7da8:	mov    %rdi,%r9
    7dab:	mov    %r11,%rbp
    7dae:	jmp    7745 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x835>
    7db3:	mov    0x40(%rsp),%r13
    7db8:	mov    0x48(%rsp),%r14
    7dbd:	mov    %r10,%r8
    7dc0:	mov    0x50(%rsp),%r15
    7dc5:	jmp    7068 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x158>
    7dca:	mov    0x128(%rbx),%rbp
    7dd1:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7dd6:	movabs $0xc00000003,%rax
    7de0:	sub    0x120(%rbx),%rcx
    7de7:	add    $0x3,%rbp
    7deb:	mov    %rax,0x110(%rbx)
    7df2:	mov    %rcx,0x118(%rbx)
    7df9:	mov    %rbp,0x128(%rbx)
    7e00:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7e05:	mov    %rax,%rbp
    7e08:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7e0d:	sub    0x120(%rbx),%rax
    7e14:	mov    %rbp,0x128(%rbx)
    7e1b:	movabs $0x900000003,%rdx
    7e25:	mov    %rdx,0x110(%rbx)
    7e2c:	mov    %rax,0x118(%rbx)
    7e33:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7e38:	xor    %r9d,%r9d
    7e3b:	mov    %r12,%r8
    7e3e:	mov    %r14,%r10
    7e41:	mov    %rdx,%r11
    7e44:	tzcnt  %rsi,%r9
    7e49:	mov    %ebx,%edx
    7e4b:	mov    %rcx,%r14
    7e4e:	mov    0x8(%rsp),%rbx
    7e53:	mov    %r13,%rcx
    7e56:	mov    %r15,%r12
    7e59:	mov    %eax,%edi
    7e5b:	cmp    %r9d,%eax
    7e5e:	jge    7c0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcfa>
    7e64:	sar    $0x3,%edi
    7e67:	lea    0x0(%rbp,%rdi,1),%r8
    7e6c:	test   %dl,%dl
    7e6e:	jne    7c0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcfa>
    7e74:	mov    $0xfffffffffffffffe,%rax
    7e7b:	mov    %r14,%rdx
    7e7e:	sub    %r11,%rax
    7e81:	and    %rax,%rdx
    7e84:	mov    %rdx,%r14
    7e87:	or     %r14,%rsi
    7e8a:	jmp    7c0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcfa>
    7e8f:	mov    $0xe,%edx
    7e94:	lea    0x7696(%rip),%rsi        # f531 <stomptalk::detail::backend::content_length_wire+0x1>
    7e9b:	mov    %rax,%rdi
    7e9e:	mov    %r8,0x8(%rsp)
    7ea3:	call   11f0 <memcmp@plt>
    7ea8:	mov    0x8(%rsp),%r8
    7ead:	test   %eax,%eax
    7eaf:	sete   %al
    7eb2:	jmp    7620 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x710>
    7eb7:	movabs $0x700000003,%rax
    7ec1:	lea    0x1(%r8),%rbp
    7ec5:	mov    %rax,0x110(%rbx)
    7ecc:	mov    %r8,%rax
    7ecf:	sub    0x120(%rbx),%rax
    7ed6:	mov    %rax,0x118(%rbx)
    7edd:	mov    %rbp,0x128(%rbx)
    7ee4:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7ee9:	mov    0x40(%rbx),%rax
    7eed:	mov    %rax,0x48(%rbx)
    7ef1:	mov    0xd8(%rbx),%rax
    7ef8:	jmp    7661 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x751>
    7efd:	xor    %r8d,%r8d
    7f00:	mov    %eax,%edi
    7f02:	tzcnt  %rsi,%r8
    7f07:	cmp    %r8d,%eax
    7f0a:	jge    7f7f <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x106f>
    7f0c:	sar    $0x3,%edi
    7f0f:	lea    0x0(%rbp,%rdi,1),%r8
    7f14:	test   %dl,%dl
    7f16:	jne    7c0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcfa>
    7f1c:	mov    $0xfffffffffffffffe,%rax
    7f23:	sub    %r13,%rax
    7f26:	and    %rax,%r11
    7f29:	or     %r11,%rsi
    7f2c:	jmp    7c0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcfa>
    7f31:	mov    0x40(%rbx),%rdi
    7f35:	jmp    75d2 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x6c2>
    7f3a:	xor    %eax,%eax
    7f3c:	mov    %r8d,%edi
    7f3f:	tzcnt  %rsi,%rax
    7f44:	cmp    %eax,%r8d
    7f47:	jl     7f0c <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xffc>
    7f49:	xor    %r8d,%r8d
    7f4c:	jmp    7f29 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x1019>
    7f4e:	xor    %r9d,%r9d
    7f51:	mov    %r12,%r8
    7f54:	mov    %r14,%r10
    7f57:	mov    %rdx,%r11
    7f5a:	tzcnt  %rsi,%r9
    7f5f:	mov    %ebx,%edx
    7f61:	mov    %rcx,%r14
    7f64:	mov    0x8(%rsp),%rbx
    7f69:	mov    %r13,%rcx
    7f6c:	mov    %r15,%r12
    7f6f:	mov    %eax,%edi
    7f71:	cmp    %r9d,%eax
    7f74:	jl     7e64 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xf54>
    7f7a:	jmp    7e87 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xf77>
    7f7f:	xor    %r8d,%r8d
    7f82:	jmp    7c0a <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0xcfa>
    7f87:	mov    0x40(%rbx),%rax
    7f8b:	mov    %rax,0x48(%rbx)
    7f8f:	mov    0xd8(%rbx),%rax
    7f96:	jmp    76b5 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x7a5>
    7f9b:	movl   $0x2,0x110(%rbx)
    7fa5:	mov    %rcx,%rbp
    7fa8:	mov    %rcx,0x128(%rbx)
    7faf:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7fb4:	movabs $0xd00000003,%rax
    7fbe:	lea    0x1(%rcx,%r9,1),%rbp
    7fc3:	mov    %rax,0x110(%rbx)
    7fca:	lea    (%r9,%rcx,1),%rax
    7fce:	sub    0x120(%rbx),%rax
    7fd5:	mov    %rax,0x118(%rbx)
    7fdc:	mov    %rbp,0x128(%rbx)
    7fe3:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    7fe8:	sub    0x120(%rbx),%rsi
    7fef:	mov    %rcx,0x128(%rbx)
    7ff6:	movabs $0x900000003,%rax
    8000:	mov    %rax,0x110(%rbx)
    8007:	mov    %rsi,0x118(%rbx)
    800e:	jmp    741d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x50d>
    8013:	movabs $0x700000003,%rax
    801d:	mov    %rax,0x110(%rbx)
    8024:	mov    %rbp,%rax
    8027:	add    $0x1,%rbp
    802b:	sub    0x120(%rbx),%rax
    8032:	mov    %rax,0x118(%rbx)
    8039:	mov    %rbp,0x128(%rbx)
    8040:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    8045:	movl   $0x2,0x110(%rbx)
    804f:	jmp    741d <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x50d>
    8054:	movabs $0xd00000003,%rax
    805e:	lea    0x1(%rcx,%rdi,1),%rbp
    8063:	mov    %rax,0x110(%rbx)
    806a:	lea    (%rdi,%rcx,1),%rax
    806e:	sub    0x120(%rbx),%rax
    8075:	mov    %rax,0x118(%rbx)
    807c:	mov    %rbp,0x128(%rbx)
    8083:	jmp    7420 <char const* stomptalk::parser::hdrline<3u>(char const*, char const*)+0x510>
    8088:	nopl   0x0(%rax,%rax,1)

