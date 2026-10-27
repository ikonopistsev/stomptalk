stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)
    3650:	f3 0f 1e fa          	endbr64
    3654:	48 83 ec 28          	sub    $0x28,%rsp
    3658:	49 89 f8             	mov    %rdi,%r8
    365b:	49 89 f2             	mov    %rsi,%r10
    365e:	48 89 d0             	mov    %rdx,%rax
    3661:	48 8d 77 10          	lea    0x10(%rdi),%rsi
    3665:	48 8b 97 10 10 00 00 	mov    0x1010(%rdi),%rdx
    366c:	49 89 c9             	mov    %rcx,%r9
    366f:	48 81 c7 10 10 00 00 	add    $0x1010,%rdi
    3676:	eb 29                	jmp    36a1 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x51>
    3678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    367f:	00 
    3680:	4c 8d 5a 01          	lea    0x1(%rdx),%r11
    3684:	4d 89 98 10 10 00 00 	mov    %r11,0x1010(%r8)
    368b:	88 0a                	mov    %cl,(%rdx)
    368d:	49 8b 88 10 10 00 00 	mov    0x1010(%r8),%rcx
    3694:	48 39 ca             	cmp    %rcx,%rdx
    3697:	73 31                	jae    36ca <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x7a>
    3699:	4c 39 c8             	cmp    %r9,%rax
    369c:	73 3c                	jae    36da <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x8a>
    369e:	48 89 ca             	mov    %rcx,%rdx
    36a1:	0f b6 08             	movzbl (%rax),%ecx
    36a4:	48 83 c0 01          	add    $0x1,%rax
    36a8:	80 f9 0d             	cmp    $0xd,%cl
    36ab:	74 33                	je     36e0 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x90>
    36ad:	80 f9 0a             	cmp    $0xa,%cl
    36b0:	0f 84 9a 00 00 00    	je     3750 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x100>
    36b6:	48 39 fa             	cmp    %rdi,%rdx
    36b9:	72 c5                	jb     3680 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x30>
    36bb:	48 89 f1             	mov    %rsi,%rcx
    36be:	49 89 b0 10 10 00 00 	mov    %rsi,0x1010(%r8)
    36c5:	48 39 ca             	cmp    %rcx,%rdx
    36c8:	72 cf                	jb     3699 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x49>
    36ca:	4c 89 d7             	mov    %r10,%rdi
    36cd:	48 89 04 24          	mov    %rax,(%rsp)
    36d1:	e8 8a 06 00 00       	call   3d60 <stomptalk::parser_hook::too_big()>
    36d6:	48 8b 04 24          	mov    (%rsp),%rax
    36da:	48 83 c4 28          	add    $0x28,%rsp
    36de:	c3                   	ret
    36df:	90                   	nop
    36e0:	49 89 b0 10 10 00 00 	mov    %rsi,0x1010(%r8)
    36e7:	48 29 f2             	sub    %rsi,%rdx
    36ea:	4c 89 d7             	mov    %r10,%rdi
    36ed:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    36f2:	48 89 d0             	mov    %rdx,%rax
    36f5:	48 89 f2             	mov    %rsi,%rdx
    36f8:	48 89 c6             	mov    %rax,%rsi
    36fb:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    3700:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    3705:	4c 89 14 24          	mov    %r10,(%rsp)
    3709:	e8 a2 06 00 00       	call   3db0 <stomptalk::parser_hook::on_hdr_val(std::basic_string_view<char, std::char_traits<char> >)>
    370e:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    3713:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3718:	31 ff                	xor    %edi,%edi
    371a:	48 8d 35 df fe ff ff 	lea    -0x121(%rip),%rsi        # 3600 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    3721:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    3726:	49 89 78 08          	mov    %rdi,0x8(%r8)
    372a:	49 89 30             	mov    %rsi,(%r8)
    372d:	4c 39 c8             	cmp    %r9,%rax
    3730:	73 a8                	jae    36da <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x8a>
    3732:	48 8b 34 24          	mov    (%rsp),%rsi
    3736:	4c 89 c9             	mov    %r9,%rcx
    3739:	48 89 c2             	mov    %rax,%rdx
    373c:	4c 89 c7             	mov    %r8,%rdi
    373f:	48 83 c4 28          	add    $0x28,%rsp
    3743:	e9 b8 fe ff ff       	jmp    3600 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    3748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    374f:	00 
    3750:	49 89 b0 10 10 00 00 	mov    %rsi,0x1010(%r8)
    3757:	48 29 f2             	sub    %rsi,%rdx
    375a:	4c 89 d7             	mov    %r10,%rdi
    375d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    3762:	48 89 d0             	mov    %rdx,%rax
    3765:	48 89 f2             	mov    %rsi,%rdx
    3768:	48 89 c6             	mov    %rax,%rsi
    376b:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    3770:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    3775:	4c 89 14 24          	mov    %r10,(%rsp)
    3779:	e8 32 06 00 00       	call   3db0 <stomptalk::parser_hook::on_hdr_val(std::basic_string_view<char, std::char_traits<char> >)>
    377e:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    3783:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3788:	31 ff                	xor    %edi,%edi
    378a:	48 8d 35 3f fd ff ff 	lea    -0x2c1(%rip),%rsi        # 34d0 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    3791:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    3796:	49 89 78 08          	mov    %rdi,0x8(%r8)
    379a:	49 89 30             	mov    %rsi,(%r8)
    379d:	4c 39 c8             	cmp    %r9,%rax
    37a0:	0f 83 34 ff ff ff    	jae    36da <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)+0x8a>
    37a6:	48 8b 34 24          	mov    (%rsp),%rsi
    37aa:	4c 89 c9             	mov    %r9,%rcx
    37ad:	48 89 c2             	mov    %rax,%rdx
    37b0:	4c 89 c7             	mov    %r8,%rdi
    37b3:	48 83 c4 28          	add    $0x28,%rsp
    37b7:	e9 14 fd ff ff       	jmp    34d0 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    37bc:	0f 1f 40 00          	nopl   0x0(%rax)



stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)
    37c0:	f3 0f 1e fa          	endbr64
    37c4:	49 89 f3             	mov    %rsi,%r11
    37c7:	49 89 ca             	mov    %rcx,%r10
    37ca:	48 83 ec 28          	sub    $0x28,%rsp
    37ce:	49 89 f9             	mov    %rdi,%r9
    37d1:	49 89 d0             	mov    %rdx,%r8
    37d4:	48 8d 4f 10          	lea    0x10(%rdi),%rcx
    37d8:	48 8d b7 10 10 00 00 	lea    0x1010(%rdi),%rsi
    37df:	eb 25                	jmp    3806 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x46>
    37e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    37e8:	48 8d 7a 01          	lea    0x1(%rdx),%rdi
    37ec:	49 89 b9 10 10 00 00 	mov    %rdi,0x1010(%r9)
    37f3:	88 02                	mov    %al,(%rdx)
    37f5:	49 8b 81 10 10 00 00 	mov    0x1010(%r9),%rax
    37fc:	48 39 c2             	cmp    %rax,%rdx
    37ff:	73 3c                	jae    383d <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x7d>
    3801:	4d 39 d0             	cmp    %r10,%r8
    3804:	73 47                	jae    384d <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    3806:	41 0f b6 00          	movzbl (%r8),%eax
    380a:	49 83 c0 01          	add    $0x1,%r8
    380e:	3c 3a                	cmp    $0x3a,%al
    3810:	74 46                	je     3858 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x98>
    3812:	3c 0d                	cmp    $0xd,%al
    3814:	0f 84 ae 00 00 00    	je     38c8 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x108>
    381a:	3c 0a                	cmp    $0xa,%al
    381c:	0f 84 de 00 00 00    	je     3900 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x140>
    3822:	49 8b 91 10 10 00 00 	mov    0x1010(%r9),%rdx
    3829:	48 39 f2             	cmp    %rsi,%rdx
    382c:	72 ba                	jb     37e8 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x28>
    382e:	48 89 c8             	mov    %rcx,%rax
    3831:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    3838:	48 39 c2             	cmp    %rax,%rdx
    383b:	72 c4                	jb     3801 <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x41>
    383d:	4c 89 df             	mov    %r11,%rdi
    3840:	4c 89 04 24          	mov    %r8,(%rsp)
    3844:	e8 17 05 00 00       	call   3d60 <stomptalk::parser_hook::too_big()>
    3849:	4c 8b 04 24          	mov    (%rsp),%r8
    384d:	4c 89 c0             	mov    %r8,%rax
    3850:	48 83 c4 28          	add    $0x28,%rsp
    3854:	c3                   	ret
    3855:	0f 1f 00             	nopl   (%rax)
    3858:	49 8b 81 10 10 00 00 	mov    0x1010(%r9),%rax
    385f:	48 89 ca             	mov    %rcx,%rdx
    3862:	4c 89 df             	mov    %r11,%rdi
    3865:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
    386a:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    3871:	48 29 c8             	sub    %rcx,%rax
    3874:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    3879:	48 89 c6             	mov    %rax,%rsi
    387c:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
    3881:	4c 89 1c 24          	mov    %r11,(%rsp)
    3885:	e8 06 04 00 00       	call   3c90 <stomptalk::parser_hook::on_hdr_key(std::basic_string_view<char, std::char_traits<char> >)>
    388a:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
    388f:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    3894:	31 d2                	xor    %edx,%edx
    3896:	48 8d 05 b3 fd ff ff 	lea    -0x24d(%rip),%rax        # 3650 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)>
    389d:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
    38a2:	49 89 51 08          	mov    %rdx,0x8(%r9)
    38a6:	49 89 01             	mov    %rax,(%r9)
    38a9:	4d 39 d0             	cmp    %r10,%r8
    38ac:	73 9f                	jae    384d <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    38ae:	48 8b 34 24          	mov    (%rsp),%rsi
    38b2:	4c 89 d1             	mov    %r10,%rcx
    38b5:	4c 89 c2             	mov    %r8,%rdx
    38b8:	4c 89 cf             	mov    %r9,%rdi
    38bb:	48 83 c4 28          	add    $0x28,%rsp
    38bf:	e9 8c fd ff ff       	jmp    3650 <stomptalk::parser::hdrline_val(stomptalk::parser_hook&, char const*, char const*)>
    38c4:	0f 1f 40 00          	nopl   0x0(%rax)
    38c8:	48 8d 05 31 fd ff ff 	lea    -0x2cf(%rip),%rax        # 3600 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    38cf:	31 d2                	xor    %edx,%edx
    38d1:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    38d8:	49 89 51 08          	mov    %rdx,0x8(%r9)
    38dc:	49 89 01             	mov    %rax,(%r9)
    38df:	4d 39 d0             	cmp    %r10,%r8
    38e2:	0f 83 65 ff ff ff    	jae    384d <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    38e8:	4c 89 d1             	mov    %r10,%rcx
    38eb:	4c 89 c2             	mov    %r8,%rdx
    38ee:	4c 89 de             	mov    %r11,%rsi
    38f1:	4c 89 cf             	mov    %r9,%rdi
    38f4:	48 83 c4 28          	add    $0x28,%rsp
    38f8:	e9 03 fd ff ff       	jmp    3600 <stomptalk::parser::hdrline_almost_done(stomptalk::parser_hook&, char const*, char const*)>
    38fd:	0f 1f 00             	nopl   (%rax)
    3900:	48 8d 05 c9 fb ff ff 	lea    -0x437(%rip),%rax        # 34d0 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    3907:	31 d2                	xor    %edx,%edx
    3909:	49 89 89 10 10 00 00 	mov    %rcx,0x1010(%r9)
    3910:	49 89 51 08          	mov    %rdx,0x8(%r9)
    3914:	49 89 01             	mov    %rax,(%r9)
    3917:	4d 39 d0             	cmp    %r10,%r8
    391a:	0f 83 2d ff ff ff    	jae    384d <stomptalk::parser::hdrline_hdr_key(stomptalk::parser_hook&, char const*, char const*)+0x8d>
    3920:	4c 89 d1             	mov    %r10,%rcx
    3923:	4c 89 c2             	mov    %r8,%rdx
    3926:	4c 89 de             	mov    %r11,%rsi
    3929:	4c 89 cf             	mov    %r9,%rdi
    392c:	48 83 c4 28          	add    $0x28,%rsp
    3930:	e9 9b fb ff ff       	jmp    34d0 <stomptalk::parser::hdrline_done(stomptalk::parser_hook&, char const*, char const*)>
    3935:	90                   	nop
    3936:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    393d:	00 00 00 

