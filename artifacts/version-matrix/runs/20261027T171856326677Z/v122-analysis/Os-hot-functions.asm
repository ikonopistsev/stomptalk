stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)
    2f0c:	f3 0f 1e fa          	endbr64
    2f10:	41 56                	push   %r14
    2f12:	41 55                	push   %r13
    2f14:	49 89 f5             	mov    %rsi,%r13
    2f17:	41 54                	push   %r12
    2f19:	49 89 fc             	mov    %rdi,%r12
    2f1c:	55                   	push   %rbp
    2f1d:	48 89 cd             	mov    %rcx,%rbp
    2f20:	53                   	push   %rbx
    2f21:	48 89 d3             	mov    %rdx,%rbx
    2f24:	0f be 33             	movsbl (%rbx),%esi
    2f27:	48 ff c3             	inc    %rbx
    2f2a:	49 8d 7c 24 10       	lea    0x10(%r12),%rdi
    2f2f:	40 80 fe 0d          	cmp    $0xd,%sil
    2f33:	75 40                	jne    2f75 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x69>
    2f35:	e8 c6 04 00 00       	call   3400 <stomptalk::stackbuf<char, 4096ul>::pop()>
    2f3a:	4c 89 ef             	mov    %r13,%rdi
    2f3d:	48 89 c6             	mov    %rax,%rsi
    2f40:	e8 ef 08 00 00       	call   3834 <stomptalk::parser_hook::on_hdr_val(std::basic_string_view<char, std::char_traits<char> >)>
    2f45:	48 8d 05 94 02 00 00 	lea    0x294(%rip),%rax        # 31e0 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    2f4c:	31 d2                	xor    %edx,%edx
    2f4e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2f53:	49 89 04 24          	mov    %rax,(%r12)
    2f57:	48 39 eb             	cmp    %rbp,%rbx
    2f5a:	73 7b                	jae    2fd7 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0xcb>
    2f5c:	48 89 e9             	mov    %rbp,%rcx
    2f5f:	48 89 da             	mov    %rbx,%rdx
    2f62:	4c 89 ee             	mov    %r13,%rsi
    2f65:	5b                   	pop    %rbx
    2f66:	4c 89 e7             	mov    %r12,%rdi
    2f69:	5d                   	pop    %rbp
    2f6a:	41 5c                	pop    %r12
    2f6c:	41 5d                	pop    %r13
    2f6e:	41 5e                	pop    %r14
    2f70:	e9 6b 02 00 00       	jmp    31e0 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    2f75:	40 80 fe 0a          	cmp    $0xa,%sil
    2f79:	75 40                	jne    2fbb <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0xaf>
    2f7b:	e8 80 04 00 00       	call   3400 <stomptalk::stackbuf<char, 4096ul>::pop()>
    2f80:	4c 89 ef             	mov    %r13,%rdi
    2f83:	48 89 c6             	mov    %rax,%rsi
    2f86:	e8 a9 08 00 00       	call   3834 <stomptalk::parser_hook::on_hdr_val(std::basic_string_view<char, std::char_traits<char> >)>
    2f8b:	48 8d 05 70 01 00 00 	lea    0x170(%rip),%rax        # 3102 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    2f92:	31 d2                	xor    %edx,%edx
    2f94:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2f99:	49 89 04 24          	mov    %rax,(%r12)
    2f9d:	48 39 eb             	cmp    %rbp,%rbx
    2fa0:	73 35                	jae    2fd7 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0xcb>
    2fa2:	48 89 e9             	mov    %rbp,%rcx
    2fa5:	48 89 da             	mov    %rbx,%rdx
    2fa8:	4c 89 ee             	mov    %r13,%rsi
    2fab:	5b                   	pop    %rbx
    2fac:	4c 89 e7             	mov    %r12,%rdi
    2faf:	5d                   	pop    %rbp
    2fb0:	41 5c                	pop    %r12
    2fb2:	41 5d                	pop    %r13
    2fb4:	41 5e                	pop    %r14
    2fb6:	e9 47 01 00 00       	jmp    3102 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    2fbb:	e8 06 04 00 00       	call   33c6 <stomptalk::stackbuf<char, 4096ul>::push(char)>
    2fc0:	84 c0                	test   %al,%al
    2fc2:	75 0a                	jne    2fce <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0xc2>
    2fc4:	4c 89 ef             	mov    %r13,%rdi
    2fc7:	e8 22 08 00 00       	call   37ee <stomptalk::parser_hook::too_big()>
    2fcc:	eb 09                	jmp    2fd7 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0xcb>
    2fce:	48 39 eb             	cmp    %rbp,%rbx
    2fd1:	0f 82 4d ff ff ff    	jb     2f24 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x18>
    2fd7:	48 89 d8             	mov    %rbx,%rax
    2fda:	5b                   	pop    %rbx
    2fdb:	5d                   	pop    %rbp
    2fdc:	41 5c                	pop    %r12
    2fde:	41 5d                	pop    %r13
    2fe0:	41 5e                	pop    %r14
    2fe2:	c3                   	ret
    2fe3:	90                   	nop



stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)
    2fe4:	f3 0f 1e fa          	endbr64
    2fe8:	41 55                	push   %r13
    2fea:	49 89 f5             	mov    %rsi,%r13
    2fed:	41 54                	push   %r12
    2fef:	49 89 fc             	mov    %rdi,%r12
    2ff2:	48 8d 7f 10          	lea    0x10(%rdi),%rdi
    2ff6:	55                   	push   %rbp
    2ff7:	48 89 cd             	mov    %rcx,%rbp
    2ffa:	53                   	push   %rbx
    2ffb:	48 89 d3             	mov    %rdx,%rbx
    2ffe:	48 83 ec 18          	sub    $0x18,%rsp
    3002:	0f be 33             	movsbl (%rbx),%esi
    3005:	48 ff c3             	inc    %rbx
    3008:	40 80 fe 3a          	cmp    $0x3a,%sil
    300c:	75 46                	jne    3054 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x70>
    300e:	e8 ed 03 00 00       	call   3400 <stomptalk::stackbuf<char, 4096ul>::pop()>
    3013:	4c 89 ef             	mov    %r13,%rdi
    3016:	48 89 c6             	mov    %rax,%rsi
    3019:	e8 24 07 00 00       	call   3742 <stomptalk::parser_hook::on_hdr_key(std::basic_string_view<char, std::char_traits<char> >)>
    301e:	48 8d 05 e7 fe ff ff 	lea    -0x119(%rip),%rax        # 2f0c <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)>
    3025:	31 d2                	xor    %edx,%edx
    3027:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    302c:	49 89 04 24          	mov    %rax,(%r12)
    3030:	48 39 eb             	cmp    %rbp,%rbx
    3033:	0f 83 bb 00 00 00    	jae    30f4 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x110>
    3039:	48 83 c4 18          	add    $0x18,%rsp
    303d:	48 89 e9             	mov    %rbp,%rcx
    3040:	48 89 da             	mov    %rbx,%rdx
    3043:	4c 89 ee             	mov    %r13,%rsi
    3046:	5b                   	pop    %rbx
    3047:	4c 89 e7             	mov    %r12,%rdi
    304a:	5d                   	pop    %rbp
    304b:	41 5c                	pop    %r12
    304d:	41 5d                	pop    %r13
    304f:	e9 b8 fe ff ff       	jmp    2f0c <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)>
    3054:	40 80 fe 0d          	cmp    $0xd,%sil
    3058:	75 37                	jne    3091 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0xad>
    305a:	e8 a1 03 00 00       	call   3400 <stomptalk::stackbuf<char, 4096ul>::pop()>
    305f:	48 8d 05 7a 01 00 00 	lea    0x17a(%rip),%rax        # 31e0 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    3066:	31 d2                	xor    %edx,%edx
    3068:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    306d:	49 89 04 24          	mov    %rax,(%r12)
    3071:	48 39 eb             	cmp    %rbp,%rbx
    3074:	73 7e                	jae    30f4 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x110>
    3076:	48 83 c4 18          	add    $0x18,%rsp
    307a:	48 89 e9             	mov    %rbp,%rcx
    307d:	48 89 da             	mov    %rbx,%rdx
    3080:	4c 89 ee             	mov    %r13,%rsi
    3083:	5b                   	pop    %rbx
    3084:	4c 89 e7             	mov    %r12,%rdi
    3087:	5d                   	pop    %rbp
    3088:	41 5c                	pop    %r12
    308a:	41 5d                	pop    %r13
    308c:	e9 4f 01 00 00       	jmp    31e0 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    3091:	40 80 fe 0a          	cmp    $0xa,%sil
    3095:	75 37                	jne    30ce <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0xea>
    3097:	e8 64 03 00 00       	call   3400 <stomptalk::stackbuf<char, 4096ul>::pop()>
    309c:	48 8d 05 5f 00 00 00 	lea    0x5f(%rip),%rax        # 3102 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    30a3:	31 d2                	xor    %edx,%edx
    30a5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    30aa:	49 89 04 24          	mov    %rax,(%r12)
    30ae:	48 39 eb             	cmp    %rbp,%rbx
    30b1:	73 41                	jae    30f4 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x110>
    30b3:	48 83 c4 18          	add    $0x18,%rsp
    30b7:	48 89 e9             	mov    %rbp,%rcx
    30ba:	48 89 da             	mov    %rbx,%rdx
    30bd:	4c 89 ee             	mov    %r13,%rsi
    30c0:	5b                   	pop    %rbx
    30c1:	4c 89 e7             	mov    %r12,%rdi
    30c4:	5d                   	pop    %rbp
    30c5:	41 5c                	pop    %r12
    30c7:	41 5d                	pop    %r13
    30c9:	e9 34 00 00 00       	jmp    3102 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    30ce:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    30d3:	e8 ee 02 00 00       	call   33c6 <stomptalk::stackbuf<char, 4096ul>::push(char)>
    30d8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    30dd:	84 c0                	test   %al,%al
    30df:	75 0a                	jne    30eb <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x107>
    30e1:	4c 89 ef             	mov    %r13,%rdi
    30e4:	e8 05 07 00 00       	call   37ee <stomptalk::parser_hook::too_big()>
    30e9:	eb 09                	jmp    30f4 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x110>
    30eb:	48 39 eb             	cmp    %rbp,%rbx
    30ee:	0f 82 0e ff ff ff    	jb     3002 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x1e>
    30f4:	48 83 c4 18          	add    $0x18,%rsp
    30f8:	48 89 d8             	mov    %rbx,%rax
    30fb:	5b                   	pop    %rbx
    30fc:	5d                   	pop    %rbp
    30fd:	41 5c                	pop    %r12
    30ff:	41 5d                	pop    %r13
    3101:	c3                   	ret

