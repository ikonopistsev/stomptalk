stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)
    37b0:	f3 0f 1e fa          	endbr64
    37b4:	48 83 ec 28          	sub    $0x28,%rsp
    37b8:	49 89 f8             	mov    %rdi,%r8
    37bb:	49 89 f2             	mov    %rsi,%r10
    37be:	48 89 d0             	mov    %rdx,%rax
    37c1:	48 8d 77 10          	lea    0x10(%rdi),%rsi
    37c5:	48 8b 97 10 10 00 00 	mov    0x1010(%rdi),%rdx
    37cc:	49 89 c9             	mov    %rcx,%r9
    37cf:	48 81 c7 10 10 00 00 	add    $0x1010,%rdi
    37d6:	eb 29                	jmp    3801 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x51>
    37d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    37df:	00 
    37e0:	4c 8d 5a 01          	lea    0x1(%rdx),%r11
    37e4:	4d 89 98 10 10 00 00 	mov    %r11,0x1010(%r8)
    37eb:	88 0a                	mov    %cl,(%rdx)
    37ed:	49 8b 88 10 10 00 00 	mov    0x1010(%r8),%rcx
    37f4:	48 39 ca             	cmp    %rcx,%rdx
    37f7:	73 31                	jae    382a <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x7a>
    37f9:	4c 39 c8             	cmp    %r9,%rax
    37fc:	73 3c                	jae    383a <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x8a>
    37fe:	48 89 ca             	mov    %rcx,%rdx
    3801:	0f b6 08             	movzbl (%rax),%ecx
    3804:	48 83 c0 01          	add    $0x1,%rax
    3808:	80 f9 0d             	cmp    $0xd,%cl
    380b:	74 33                	je     3840 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x90>
    380d:	80 f9 0a             	cmp    $0xa,%cl
    3810:	0f 84 9a 00 00 00    	je     38b0 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x100>
    3816:	48 39 fa             	cmp    %rdi,%rdx
    3819:	72 c5                	jb     37e0 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x30>
    381b:	48 89 f1             	mov    %rsi,%rcx
    381e:	49 89 b0 10 10 00 00 	mov    %rsi,0x1010(%r8)
    3825:	48 39 ca             	cmp    %rcx,%rdx
    3828:	72 cf                	jb     37f9 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x49>
    382a:	4c 89 d7             	mov    %r10,%rdi
    382d:	48 89 04 24          	mov    %rax,(%rsp)
    3831:	e8 aa 06 00 00       	call   3ee0 <stomptalk::parser_hook::too_big()>
    3836:	48 8b 04 24          	mov    (%rsp),%rax
    383a:	48 83 c4 28          	add    $0x28,%rsp
    383e:	c3                   	ret
    383f:	90                   	nop
    3840:	49 89 b0 10 10 00 00 	mov    %rsi,0x1010(%r8)
    3847:	48 29 f2             	sub    %rsi,%rdx
    384a:	4c 89 d7             	mov    %r10,%rdi
    384d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    3852:	48 89 d0             	mov    %rdx,%rax
    3855:	48 89 f2             	mov    %rsi,%rdx
    3858:	48 89 c6             	mov    %rax,%rsi
    385b:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    3860:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    3865:	4c 89 14 24          	mov    %r10,(%rsp)
    3869:	e8 c2 06 00 00       	call   3f30 <stomptalk::parser_hook::on_hdr_val(std::basic_string_view<char, std::char_traits<char> >)>
    386e:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    3873:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3878:	31 ff                	xor    %edi,%edi
    387a:	48 8d 35 df fe ff ff 	lea    -0x121(%rip),%rsi        # 3760 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    3881:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    3886:	49 89 78 08          	mov    %rdi,0x8(%r8)
    388a:	49 89 30             	mov    %rsi,(%r8)
    388d:	4c 39 c8             	cmp    %r9,%rax
    3890:	73 a8                	jae    383a <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x8a>
    3892:	48 8b 34 24          	mov    (%rsp),%rsi
    3896:	4c 89 c9             	mov    %r9,%rcx
    3899:	48 89 c2             	mov    %rax,%rdx
    389c:	4c 89 c7             	mov    %r8,%rdi
    389f:	48 83 c4 28          	add    $0x28,%rsp
    38a3:	e9 b8 fe ff ff       	jmp    3760 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    38a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    38af:	00 
    38b0:	49 89 b0 10 10 00 00 	mov    %rsi,0x1010(%r8)
    38b7:	48 29 f2             	sub    %rsi,%rdx
    38ba:	4c 89 d7             	mov    %r10,%rdi
    38bd:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    38c2:	48 89 d0             	mov    %rdx,%rax
    38c5:	48 89 f2             	mov    %rsi,%rdx
    38c8:	48 89 c6             	mov    %rax,%rsi
    38cb:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    38d0:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    38d5:	4c 89 14 24          	mov    %r10,(%rsp)
    38d9:	e8 52 06 00 00       	call   3f30 <stomptalk::parser_hook::on_hdr_val(std::basic_string_view<char, std::char_traits<char> >)>
    38de:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    38e3:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    38e8:	31 ff                	xor    %edi,%edi
    38ea:	48 8d 35 3f fd ff ff 	lea    -0x2c1(%rip),%rsi        # 3630 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    38f1:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    38f6:	49 89 78 08          	mov    %rdi,0x8(%r8)
    38fa:	49 89 30             	mov    %rsi,(%r8)
    38fd:	4c 39 c8             	cmp    %r9,%rax
    3900:	0f 83 34 ff ff ff    	jae    383a <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x8a>
    3906:	48 8b 34 24          	mov    (%rsp),%rsi
    390a:	4c 89 c9             	mov    %r9,%rcx
    390d:	48 89 c2             	mov    %rax,%rdx
    3910:	4c 89 c7             	mov    %r8,%rdi
    3913:	48 83 c4 28          	add    $0x28,%rsp
    3917:	e9 14 fd ff ff       	jmp    3630 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    391c:	0f 1f 40 00          	nopl   0x0(%rax)



stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)
    3920:	f3 0f 1e fa          	endbr64
    3924:	49 89 f3             	mov    %rsi,%r11
    3927:	49 89 ca             	mov    %rcx,%r10
    392a:	48 83 ec 28          	sub    $0x28,%rsp
    392e:	49 89 f9             	mov    %rdi,%r9
    3931:	49 89 d0             	mov    %rdx,%r8
    3934:	48 8d 4f 10          	lea    0x10(%rdi),%rcx
    3938:	48 8d b7 10 10 00 00 	lea    0x1010(%rdi),%rsi
    393f:	eb 25                	jmp    3966 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x46>
    3941:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3948:	48 8d 7a 01          	lea    0x1(%rdx),%rdi
    394c:	49 89 b9 10 10 00 00 	mov    %rdi,0x1010(%r9)
    3953:	88 02                	mov    %al,(%rdx)
    3955:	49 8b 81 10 10 00 00 	mov    0x1010(%r9),%rax
    395c:	48 39 c2             	cmp    %rax,%rdx
    395f:	73 3c                	jae    399d <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x7d>
    3961:	4d 39 d0             	cmp    %r10,%r8
    3964:	73 47                	jae    39ad <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    3966:	41 0f b6 00          	movzbl (%r8),%eax
    396a:	49 83 c0 01          	add    $0x1,%r8
    396e:	3c 3a                	cmp    $0x3a,%al
    3970:	74 46                	je     39b8 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x98>
    3972:	3c 0d                	cmp    $0xd,%al
    3974:	0f 84 ae 00 00 00    	je     3a28 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x108>
    397a:	3c 0a                	cmp    $0xa,%al
    397c:	0f 84 de 00 00 00    	je     3a60 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x140>
    3982:	49 8b 91 10 10 00 00 	mov    0x1010(%r9),%rdx
    3989:	48 39 f2             	cmp    %rsi,%rdx
    398c:	72 ba                	jb     3948 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x28>
    398e:	48 89 c8             	mov    %rcx,%rax
    3991:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    3998:	48 39 c2             	cmp    %rax,%rdx
    399b:	72 c4                	jb     3961 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x41>
    399d:	4c 89 df             	mov    %r11,%rdi
    39a0:	4c 89 04 24          	mov    %r8,(%rsp)
    39a4:	e8 37 05 00 00       	call   3ee0 <stomptalk::parser_hook::too_big()>
    39a9:	4c 8b 04 24          	mov    (%rsp),%r8
    39ad:	4c 89 c0             	mov    %r8,%rax
    39b0:	48 83 c4 28          	add    $0x28,%rsp
    39b4:	c3                   	ret
    39b5:	0f 1f 00             	nopl   (%rax)
    39b8:	49 8b 81 10 10 00 00 	mov    0x1010(%r9),%rax
    39bf:	48 89 ca             	mov    %rcx,%rdx
    39c2:	4c 89 df             	mov    %r11,%rdi
    39c5:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
    39ca:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    39d1:	48 29 c8             	sub    %rcx,%rax
    39d4:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    39d9:	48 89 c6             	mov    %rax,%rsi
    39dc:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
    39e1:	4c 89 1c 24          	mov    %r11,(%rsp)
    39e5:	e8 26 04 00 00       	call   3e10 <stomptalk::parser_hook::on_hdr_key(std::basic_string_view<char, std::char_traits<char> >)>
    39ea:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
    39ef:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    39f4:	31 d2                	xor    %edx,%edx
    39f6:	48 8d 05 b3 fd ff ff 	lea    -0x24d(%rip),%rax        # 37b0 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)>
    39fd:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
    3a02:	49 89 51 08          	mov    %rdx,0x8(%r9)
    3a06:	49 89 01             	mov    %rax,(%r9)
    3a09:	4d 39 d0             	cmp    %r10,%r8
    3a0c:	73 9f                	jae    39ad <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    3a0e:	48 8b 34 24          	mov    (%rsp),%rsi
    3a12:	4c 89 d1             	mov    %r10,%rcx
    3a15:	4c 89 c2             	mov    %r8,%rdx
    3a18:	4c 89 cf             	mov    %r9,%rdi
    3a1b:	48 83 c4 28          	add    $0x28,%rsp
    3a1f:	e9 8c fd ff ff       	jmp    37b0 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)>
    3a24:	0f 1f 40 00          	nopl   0x0(%rax)
    3a28:	48 8d 05 31 fd ff ff 	lea    -0x2cf(%rip),%rax        # 3760 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    3a2f:	31 d2                	xor    %edx,%edx
    3a31:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    3a38:	49 89 51 08          	mov    %rdx,0x8(%r9)
    3a3c:	49 89 01             	mov    %rax,(%r9)
    3a3f:	4d 39 d0             	cmp    %r10,%r8
    3a42:	0f 83 65 ff ff ff    	jae    39ad <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    3a48:	4c 89 d1             	mov    %r10,%rcx
    3a4b:	4c 89 c2             	mov    %r8,%rdx
    3a4e:	4c 89 de             	mov    %r11,%rsi
    3a51:	4c 89 cf             	mov    %r9,%rdi
    3a54:	48 83 c4 28          	add    $0x28,%rsp
    3a58:	e9 03 fd ff ff       	jmp    3760 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    3a5d:	0f 1f 00             	nopl   (%rax)
    3a60:	48 8d 05 c9 fb ff ff 	lea    -0x437(%rip),%rax        # 3630 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    3a67:	31 d2                	xor    %edx,%edx
    3a69:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    3a70:	49 89 51 08          	mov    %rdx,0x8(%r9)
    3a74:	49 89 01             	mov    %rax,(%r9)
    3a77:	4d 39 d0             	cmp    %r10,%r8
    3a7a:	0f 83 2d ff ff ff    	jae    39ad <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    3a80:	4c 89 d1             	mov    %r10,%rcx
    3a83:	4c 89 c2             	mov    %r8,%rdx
    3a86:	4c 89 de             	mov    %r11,%rsi
    3a89:	4c 89 cf             	mov    %r9,%rdi
    3a8c:	48 83 c4 28          	add    $0x28,%rsp
    3a90:	e9 9b fb ff ff       	jmp    3630 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    3a95:	90                   	nop
    3a96:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    3a9d:	00 00 00 

