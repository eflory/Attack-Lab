
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 31 3f 00 00 	mov    0x3f31(%rip),%rax        # 405f40 <__gmon_start__@Base>
  40200f:	48 85 c0             	test   %rax,%rax
  402012:	74 02                	je     402016 <_init+0x16>
  402014:	ff d0                	call   *%rax
  402016:	48 83 c4 08          	add    $0x8,%rsp
  40201a:	c3                   	ret    

Disassembly of section .text:

0000000000402020 <_start>:
  402020:	f3 0f 1e fa          	endbr64 
  402024:	31 ed                	xor    %ebp,%ebp
  402026:	49 89 d1             	mov    %rdx,%r9
  402029:	5e                   	pop    %rsi
  40202a:	48 89 e2             	mov    %rsp,%rdx
  40202d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402031:	50                   	push   %rax
  402032:	54                   	push   %rsp
  402033:	45 31 c0             	xor    %r8d,%r8d
  402036:	31 c9                	xor    %ecx,%ecx
  402038:	48 c7 c7 68 22 40 00 	mov    $0x402268,%rdi
  40203f:	ff 15 5b 3e 00 00    	call   *0x3e5b(%rip)        # 405ea0 <__libc_start_main@GLIBC_2.34>
  402045:	f4                   	hlt    
  402046:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40204d:	00 00 00 

0000000000402050 <_dl_relocate_static_pie>:
  402050:	f3 0f 1e fa          	endbr64 
  402054:	c3                   	ret    
  402055:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40205c:	00 00 00 
  40205f:	90                   	nop

0000000000402060 <deregister_tm_clones>:
  402060:	b8 38 60 40 00       	mov    $0x406038,%eax
  402065:	48 3d 38 60 40 00    	cmp    $0x406038,%rax
  40206b:	74 13                	je     402080 <deregister_tm_clones+0x20>
  40206d:	b8 00 00 00 00       	mov    $0x0,%eax
  402072:	48 85 c0             	test   %rax,%rax
  402075:	74 09                	je     402080 <deregister_tm_clones+0x20>
  402077:	bf 38 60 40 00       	mov    $0x406038,%edi
  40207c:	ff e0                	jmp    *%rax
  40207e:	66 90                	xchg   %ax,%ax
  402080:	c3                   	ret    
  402081:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402088:	00 00 00 00 
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402090 <register_tm_clones>:
  402090:	be 38 60 40 00       	mov    $0x406038,%esi
  402095:	48 81 ee 38 60 40 00 	sub    $0x406038,%rsi
  40209c:	48 89 f0             	mov    %rsi,%rax
  40209f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4020a3:	48 c1 f8 03          	sar    $0x3,%rax
  4020a7:	48 01 c6             	add    %rax,%rsi
  4020aa:	48 d1 fe             	sar    %rsi
  4020ad:	74 11                	je     4020c0 <register_tm_clones+0x30>
  4020af:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b4:	48 85 c0             	test   %rax,%rax
  4020b7:	74 07                	je     4020c0 <register_tm_clones+0x30>
  4020b9:	bf 38 60 40 00       	mov    $0x406038,%edi
  4020be:	ff e0                	jmp    *%rax
  4020c0:	c3                   	ret    
  4020c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020c8:	00 00 00 00 
  4020cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004020d0 <__do_global_dtors_aux>:
  4020d0:	f3 0f 1e fa          	endbr64 
  4020d4:	80 3d cd 3f 00 00 00 	cmpb   $0x0,0x3fcd(%rip)        # 4060a8 <completed.0>
  4020db:	75 13                	jne    4020f0 <__do_global_dtors_aux+0x20>
  4020dd:	55                   	push   %rbp
  4020de:	48 89 e5             	mov    %rsp,%rbp
  4020e1:	e8 7a ff ff ff       	call   402060 <deregister_tm_clones>
  4020e6:	c6 05 bb 3f 00 00 01 	movb   $0x1,0x3fbb(%rip)        # 4060a8 <completed.0>
  4020ed:	5d                   	pop    %rbp
  4020ee:	c3                   	ret    
  4020ef:	90                   	nop
  4020f0:	c3                   	ret    
  4020f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020f8:	00 00 00 00 
  4020fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402100 <frame_dummy>:
  402100:	f3 0f 1e fa          	endbr64 
  402104:	eb 8a                	jmp    402090 <register_tm_clones>

0000000000402106 <initialize_target>:
  402106:	55                   	push   %rbp
  402107:	53                   	push   %rbx
  402108:	48 83 ec 08          	sub    $0x8,%rsp
  40210c:	89 f5                	mov    %esi,%ebp
  40210e:	89 3d b4 3f 00 00    	mov    %edi,0x3fb4(%rip)        # 4060c8 <check_level>
  402114:	8b 1d b6 20 00 00    	mov    0x20b6(%rip),%ebx        # 4041d0 <target_id>
  40211a:	89 df                	mov    %ebx,%edi
  40211c:	67 e8 3a 15 00 00    	addr32 call 40365c <gencookie>
  402122:	89 05 98 3f 00 00    	mov    %eax,0x3f98(%rip)        # 4060c0 <cookie>
  402128:	8d 7b 01             	lea    0x1(%rbx),%edi
  40212b:	ff 15 7f 3d 00 00    	call   *0x3d7f(%rip)        # 405eb0 <srandom@GLIBC_2.2.5>
  402131:	ff 15 31 3e 00 00    	call   *0x3e31(%rip)        # 405f68 <random@GLIBC_2.2.5>
  402137:	89 c7                	mov    %eax,%edi
  402139:	67 e8 7f 03 00 00    	addr32 call 4024be <scramble>
  40213f:	89 c3                	mov    %eax,%ebx
  402141:	bf 00 00 00 00       	mov    $0x0,%edi
  402146:	ff 15 0c 3e 00 00    	call   *0x3e0c(%rip)        # 405f58 <time@GLIBC_2.2.5>
  40214c:	89 c7                	mov    %eax,%edi
  40214e:	ff 15 5c 3d 00 00    	call   *0x3d5c(%rip)        # 405eb0 <srandom@GLIBC_2.2.5>
  402154:	85 ed                	test   %ebp,%ebp
  402156:	75 1a                	jne    402172 <initialize_target+0x6c>
  402158:	b8 00 00 00 00       	mov    $0x0,%eax
  40215d:	01 d8                	add    %ebx,%eax
  40215f:	0f b7 c0             	movzwl %ax,%eax
  402162:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  402169:	89 c0                	mov    %eax,%eax
  40216b:	48 83 c4 08          	add    $0x8,%rsp
  40216f:	5b                   	pop    %rbx
  402170:	5d                   	pop    %rbp
  402171:	c3                   	ret    
  402172:	ff 15 f0 3d 00 00    	call   *0x3df0(%rip)        # 405f68 <random@GLIBC_2.2.5>
  402178:	eb e3                	jmp    40215d <initialize_target+0x57>

000000000040217a <usage>:
  40217a:	50                   	push   %rax
  40217b:	58                   	pop    %rax
  40217c:	48 83 ec 08          	sub    $0x8,%rsp
  402180:	48 89 fa             	mov    %rdi,%rdx
  402183:	80 3d 66 21 00 00 00 	cmpb   $0x0,0x2166(%rip)        # 4042f0 <is_checker>
  40218a:	74 7e                	je     40220a <usage+0x90>
  40218c:	48 8d 35 75 1e 00 00 	lea    0x1e75(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  402193:	bf 01 00 00 00       	mov    $0x1,%edi
  402198:	b8 00 00 00 00       	mov    $0x0,%eax
  40219d:	ff 15 f5 3d 00 00    	call   *0x3df5(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021a3:	48 8d 35 86 1e 00 00 	lea    0x1e86(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
  4021aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4021af:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b4:	ff 15 de 3d 00 00    	call   *0x3dde(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021ba:	48 8d 35 58 1f 00 00 	lea    0x1f58(%rip),%rsi        # 404119 <_IO_stdin_used+0x119>
  4021c1:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021cb:	ff 15 c7 3d 00 00    	call   *0x3dc7(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021d1:	48 8d 35 5c 1f 00 00 	lea    0x1f5c(%rip),%rsi        # 404134 <_IO_stdin_used+0x134>
  4021d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e2:	ff 15 b0 3d 00 00    	call   *0x3db0(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021e8:	48 8d 35 69 1e 00 00 	lea    0x1e69(%rip),%rsi        # 404058 <_IO_stdin_used+0x58>
  4021ef:	bf 01 00 00 00       	mov    $0x1,%edi
  4021f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f9:	ff 15 99 3d 00 00    	call   *0x3d99(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4021ff:	bf 00 00 00 00       	mov    $0x0,%edi
  402204:	ff 15 be 3d 00 00    	call   *0x3dbe(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  40220a:	48 8d 35 6f 1e 00 00 	lea    0x1e6f(%rip),%rsi        # 404080 <_IO_stdin_used+0x80>
  402211:	bf 01 00 00 00       	mov    $0x1,%edi
  402216:	b8 00 00 00 00       	mov    $0x0,%eax
  40221b:	ff 15 77 3d 00 00    	call   *0x3d77(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402221:	48 8d 35 78 1e 00 00 	lea    0x1e78(%rip),%rsi        # 4040a0 <_IO_stdin_used+0xa0>
  402228:	bf 01 00 00 00       	mov    $0x1,%edi
  40222d:	b8 00 00 00 00       	mov    $0x0,%eax
  402232:	ff 15 60 3d 00 00    	call   *0x3d60(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402238:	48 8d 35 89 1e 00 00 	lea    0x1e89(%rip),%rsi        # 4040c8 <_IO_stdin_used+0xc8>
  40223f:	bf 01 00 00 00       	mov    $0x1,%edi
  402244:	b8 00 00 00 00       	mov    $0x0,%eax
  402249:	ff 15 49 3d 00 00    	call   *0x3d49(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  40224f:	48 8d 35 fb 1e 00 00 	lea    0x1efb(%rip),%rsi        # 404151 <_IO_stdin_used+0x151>
  402256:	bf 01 00 00 00       	mov    $0x1,%edi
  40225b:	b8 00 00 00 00       	mov    $0x0,%eax
  402260:	ff 15 32 3d 00 00    	call   *0x3d32(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402266:	eb 97                	jmp    4021ff <usage+0x85>

0000000000402268 <main>:
  402268:	41 56                	push   %r14
  40226a:	41 55                	push   %r13
  40226c:	41 54                	push   %r12
  40226e:	55                   	push   %rbp
  40226f:	53                   	push   %rbx
  402270:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  402277:	89 fd                	mov    %edi,%ebp
  402279:	48 89 f3             	mov    %rsi,%rbx
  40227c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402283:	00 00 
  402285:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  40228c:	00 
  40228d:	31 c0                	xor    %eax,%eax
  40228f:	44 0f b6 35 59 20 00 	movzbl 0x2059(%rip),%r14d        # 4042f0 <is_checker>
  402296:	00 
  402297:	45 84 f6             	test   %r14b,%r14b
  40229a:	74 20                	je     4022bc <main+0x54>
  40229c:	4c 8d 25 c8 1e 00 00 	lea    0x1ec8(%rip),%r12        # 40416b <_IO_stdin_used+0x16b>
  4022a3:	48 8b 05 a6 3d 00 00 	mov    0x3da6(%rip),%rax        # 406050 <stdin@GLIBC_2.2.5>
  4022aa:	48 89 05 ff 3d 00 00 	mov    %rax,0x3dff(%rip)        # 4060b0 <global_infile>
  4022b1:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4022b7:	e9 ad 00 00 00       	jmp    402369 <main+0x101>
  4022bc:	4c 8d 25 b0 1e 00 00 	lea    0x1eb0(%rip),%r12        # 404173 <_IO_stdin_used+0x173>
  4022c3:	eb de                	jmp    4022a3 <main+0x3b>
  4022c5:	48 8b 3b             	mov    (%rbx),%rdi
  4022c8:	e8 ad fe ff ff       	call   40217a <usage>
  4022cd:	48 8d 35 a4 1e 00 00 	lea    0x1ea4(%rip),%rsi        # 404178 <_IO_stdin_used+0x178>
  4022d4:	48 8b 3d a5 3d 00 00 	mov    0x3da5(%rip),%rdi        # 406080 <optarg@GLIBC_2.2.5>
  4022db:	ff 15 c7 3c 00 00    	call   *0x3cc7(%rip)        # 405fa8 <fopen@GLIBC_2.2.5>
  4022e1:	48 89 05 c8 3d 00 00 	mov    %rax,0x3dc8(%rip)        # 4060b0 <global_infile>
  4022e8:	48 85 c0             	test   %rax,%rax
  4022eb:	75 7c                	jne    402369 <main+0x101>
  4022ed:	ff 15 b5 3b 00 00    	call   *0x3bb5(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  4022f3:	8b 38                	mov    (%rax),%edi
  4022f5:	ff 15 ed 3c 00 00    	call   *0x3ced(%rip)        # 405fe8 <strerror@GLIBC_2.2.5>
  4022fb:	49 89 c0             	mov    %rax,%r8
  4022fe:	48 8b 0d 7b 3d 00 00 	mov    0x3d7b(%rip),%rcx        # 406080 <optarg@GLIBC_2.2.5>
  402305:	48 8d 15 ec 1d 00 00 	lea    0x1dec(%rip),%rdx        # 4040f8 <_IO_stdin_used+0xf8>
  40230c:	be 01 00 00 00       	mov    $0x1,%esi
  402311:	48 8b 3d 88 3d 00 00 	mov    0x3d88(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402318:	b8 00 00 00 00       	mov    $0x0,%eax
  40231d:	ff 15 b5 3c 00 00    	call   *0x3cb5(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402323:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
  40232a:	00 
  40232b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402332:	00 00 
  402334:	0f 85 7e 01 00 00    	jne    4024b8 <main+0x250>
  40233a:	b8 01 00 00 00       	mov    $0x1,%eax
  40233f:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  402346:	5b                   	pop    %rbx
  402347:	5d                   	pop    %rbp
  402348:	41 5c                	pop    %r12
  40234a:	41 5d                	pop    %r13
  40234c:	41 5e                	pop    %r14
  40234e:	c3                   	ret    
  40234f:	ba 0a 00 00 00       	mov    $0xa,%edx
  402354:	be 00 00 00 00       	mov    $0x0,%esi
  402359:	48 8b 3d 20 3d 00 00 	mov    0x3d20(%rip),%rdi        # 406080 <optarg@GLIBC_2.2.5>
  402360:	ff 15 e2 3b 00 00    	call   *0x3be2(%rip)        # 405f48 <strtol@GLIBC_2.2.5>
  402366:	41 89 c5             	mov    %eax,%r13d
  402369:	4c 89 e2             	mov    %r12,%rdx
  40236c:	48 89 de             	mov    %rbx,%rsi
  40236f:	89 ef                	mov    %ebp,%edi
  402371:	ff 15 41 3c 00 00    	call   *0x3c41(%rip)        # 405fb8 <getopt@GLIBC_2.2.5>
  402377:	3c ff                	cmp    $0xff,%al
  402379:	74 66                	je     4023e1 <main+0x179>
  40237b:	0f be c8             	movsbl %al,%ecx
  40237e:	83 e8 68             	sub    $0x68,%eax
  402381:	3c 0c                	cmp    $0xc,%al
  402383:	77 3b                	ja     4023c0 <main+0x158>
  402385:	0f b6 c0             	movzbl %al,%eax
  402388:	48 8d 15 0d 1e 00 00 	lea    0x1e0d(%rip),%rdx        # 40419c <_IO_stdin_used+0x19c>
  40238f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402393:	48 01 d0             	add    %rdx,%rax
  402396:	ff e0                	jmp    *%rax
  402398:	c6 05 71 3c 00 00 00 	movb   $0x0,0x3c71(%rip)        # 406010 <notify>
  40239f:	eb c8                	jmp    402369 <main+0x101>
  4023a1:	ba 0a 00 00 00       	mov    $0xa,%edx
  4023a6:	be 00 00 00 00       	mov    $0x0,%esi
  4023ab:	48 8b 3d ce 3c 00 00 	mov    0x3cce(%rip),%rdi        # 406080 <optarg@GLIBC_2.2.5>
  4023b2:	ff 15 08 3c 00 00    	call   *0x3c08(%rip)        # 405fc0 <strtoul@GLIBC_2.2.5>
  4023b8:	89 05 6a 3c 00 00    	mov    %eax,0x3c6a(%rip)        # 406028 <checker_timeout>
  4023be:	eb a9                	jmp    402369 <main+0x101>
  4023c0:	89 ca                	mov    %ecx,%edx
  4023c2:	48 8d 35 b1 1d 00 00 	lea    0x1db1(%rip),%rsi        # 40417a <_IO_stdin_used+0x17a>
  4023c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d3:	ff 15 bf 3b 00 00    	call   *0x3bbf(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4023d9:	48 8b 3b             	mov    (%rbx),%rdi
  4023dc:	e8 99 fd ff ff       	call   40217a <usage>
  4023e1:	c7 84 24 88 00 00 00 	movl   $0xc0000000,0x88(%rsp)
  4023e8:	00 00 00 c0 
  4023ec:	48 c7 c0 40 32 40 00 	mov    $0x403240,%rax
  4023f3:	48 89 04 24          	mov    %rax,(%rsp)
  4023f7:	48 89 e3             	mov    %rsp,%rbx
  4023fa:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4023ff:	ff 15 33 3b 00 00    	call   *0x3b33(%rip)        # 405f38 <sigemptyset@GLIBC_2.2.5>
  402405:	ba 00 00 00 00       	mov    $0x0,%edx
  40240a:	48 89 de             	mov    %rbx,%rsi
  40240d:	bf 0b 00 00 00       	mov    $0xb,%edi
  402412:	ff 15 b0 3a 00 00    	call   *0x3ab0(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  402418:	ba 00 00 00 00       	mov    $0x0,%edx
  40241d:	48 89 de             	mov    %rbx,%rsi
  402420:	bf 07 00 00 00       	mov    $0x7,%edi
  402425:	ff 15 9d 3a 00 00    	call   *0x3a9d(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  40242b:	ba 00 00 00 00       	mov    $0x0,%edx
  402430:	48 89 de             	mov    %rbx,%rsi
  402433:	bf 04 00 00 00       	mov    $0x4,%edi
  402438:	ff 15 8a 3a 00 00    	call   *0x3a8a(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  40243e:	ba 00 00 00 00       	mov    $0x0,%edx
  402443:	48 89 de             	mov    %rbx,%rsi
  402446:	bf 08 00 00 00       	mov    $0x8,%edi
  40244b:	ff 15 77 3a 00 00    	call   *0x3a77(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  402451:	ba 00 00 00 00       	mov    $0x0,%edx
  402456:	48 89 de             	mov    %rbx,%rsi
  402459:	bf 0e 00 00 00       	mov    $0xe,%edi
  40245e:	ff 15 64 3a 00 00    	call   *0x3a64(%rip)        # 405ec8 <sigaction@GLIBC_2.2.5>
  402464:	0f b6 1d 6a 1d 00 00 	movzbl 0x1d6a(%rip),%ebx        # 4041d5 <randomize_stack>
  40246b:	0f b6 f3             	movzbl %bl,%esi
  40246e:	44 89 ef             	mov    %r13d,%edi
  402471:	e8 90 fc ff ff       	call   402106 <initialize_target>
  402476:	48 89 c5             	mov    %rax,%rbp
  402479:	8b 15 41 3c 00 00    	mov    0x3c41(%rip),%edx        # 4060c0 <cookie>
  40247f:	48 8d 35 07 1d 00 00 	lea    0x1d07(%rip),%rsi        # 40418d <_IO_stdin_used+0x18d>
  402486:	bf 01 00 00 00       	mov    $0x1,%edi
  40248b:	b8 00 00 00 00       	mov    $0x0,%eax
  402490:	ff 15 02 3b 00 00    	call   *0x3b02(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402496:	45 84 f6             	test   %r14b,%r14b
  402499:	75 0f                	jne    4024aa <main+0x242>
  40249b:	83 f3 01             	xor    $0x1,%ebx
  40249e:	0f b6 fb             	movzbl %bl,%edi
  4024a1:	48 89 ee             	mov    %rbp,%rsi
  4024a4:	67 e8 dd 0f 00 00    	addr32 call 403487 <launch>
  4024aa:	8b 3d 78 3b 00 00    	mov    0x3b78(%rip),%edi        # 406028 <checker_timeout>
  4024b0:	ff 15 6a 3a 00 00    	call   *0x3a6a(%rip)        # 405f20 <alarm@GLIBC_2.2.5>
  4024b6:	eb e3                	jmp    40249b <main+0x233>
  4024b8:	ff 15 2a 3a 00 00    	call   *0x3a2a(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

00000000004024be <scramble>:
  4024be:	48 83 ec 38          	sub    $0x38,%rsp
  4024c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024c9:	00 00 
  4024cb:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4024d0:	31 c0                	xor    %eax,%eax
  4024d2:	eb 10                	jmp    4024e4 <scramble+0x26>
  4024d4:	69 d0 29 92 00 00    	imul   $0x9229,%eax,%edx
  4024da:	01 fa                	add    %edi,%edx
  4024dc:	89 c1                	mov    %eax,%ecx
  4024de:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4024e1:	83 c0 01             	add    $0x1,%eax
  4024e4:	83 f8 09             	cmp    $0x9,%eax
  4024e7:	76 eb                	jbe    4024d4 <scramble+0x16>
  4024e9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4024ed:	69 c0 92 4a 00 00    	imul   $0x4a92,%eax,%eax
  4024f3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4024f7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4024fb:	69 c0 04 30 00 00    	imul   $0x3004,%eax,%eax
  402501:	89 44 24 08          	mov    %eax,0x8(%rsp)
  402505:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402509:	69 c0 0e 48 00 00    	imul   $0x480e,%eax,%eax
  40250f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402513:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402517:	69 c0 8e 15 00 00    	imul   $0x158e,%eax,%eax
  40251d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402521:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402525:	69 c0 98 1b 00 00    	imul   $0x1b98,%eax,%eax
  40252b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40252f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402533:	69 c0 3b 8e 00 00    	imul   $0x8e3b,%eax,%eax
  402539:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40253d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  402541:	69 c0 5c 97 00 00    	imul   $0x975c,%eax,%eax
  402547:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40254b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40254f:	69 c0 98 a4 00 00    	imul   $0xa498,%eax,%eax
  402555:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402559:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40255d:	69 c0 79 59 00 00    	imul   $0x5979,%eax,%eax
  402563:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402567:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40256b:	69 c0 06 dd 00 00    	imul   $0xdd06,%eax,%eax
  402571:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402575:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402579:	69 c0 68 57 00 00    	imul   $0x5768,%eax,%eax
  40257f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402583:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402587:	69 c0 34 1e 00 00    	imul   $0x1e34,%eax,%eax
  40258d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402591:	8b 04 24             	mov    (%rsp),%eax
  402594:	69 c0 72 23 00 00    	imul   $0x2372,%eax,%eax
  40259a:	89 04 24             	mov    %eax,(%rsp)
  40259d:	8b 04 24             	mov    (%rsp),%eax
  4025a0:	69 c0 c2 fa 00 00    	imul   $0xfac2,%eax,%eax
  4025a6:	89 04 24             	mov    %eax,(%rsp)
  4025a9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4025ad:	69 c0 ba d4 00 00    	imul   $0xd4ba,%eax,%eax
  4025b3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4025b7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4025bb:	69 c0 aa d8 00 00    	imul   $0xd8aa,%eax,%eax
  4025c1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4025c5:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4025c9:	69 c0 a0 76 00 00    	imul   $0x76a0,%eax,%eax
  4025cf:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4025d3:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4025d7:	69 c0 21 05 00 00    	imul   $0x521,%eax,%eax
  4025dd:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4025e1:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4025e5:	69 c0 fc 59 00 00    	imul   $0x59fc,%eax,%eax
  4025eb:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4025ef:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4025f3:	69 c0 23 35 00 00    	imul   $0x3523,%eax,%eax
  4025f9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4025fd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402601:	69 c0 6e b2 00 00    	imul   $0xb26e,%eax,%eax
  402607:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40260b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40260f:	69 c0 af a6 00 00    	imul   $0xa6af,%eax,%eax
  402615:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402619:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40261d:	69 c0 ab c8 00 00    	imul   $0xc8ab,%eax,%eax
  402623:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402627:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40262b:	69 c0 1a 3b 00 00    	imul   $0x3b1a,%eax,%eax
  402631:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402635:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402639:	69 c0 46 94 00 00    	imul   $0x9446,%eax,%eax
  40263f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402643:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402647:	69 c0 b9 8b 00 00    	imul   $0x8bb9,%eax,%eax
  40264d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402651:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402655:	69 c0 d3 4c 00 00    	imul   $0x4cd3,%eax,%eax
  40265b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40265f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402663:	69 c0 58 97 00 00    	imul   $0x9758,%eax,%eax
  402669:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40266d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402671:	69 c0 2b 7c 00 00    	imul   $0x7c2b,%eax,%eax
  402677:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40267b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40267f:	69 c0 c5 b6 00 00    	imul   $0xb6c5,%eax,%eax
  402685:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402689:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40268d:	69 c0 a2 45 00 00    	imul   $0x45a2,%eax,%eax
  402693:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402697:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40269b:	69 c0 33 70 00 00    	imul   $0x7033,%eax,%eax
  4026a1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4026a5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4026a9:	69 c0 1e 98 00 00    	imul   $0x981e,%eax,%eax
  4026af:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4026b3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4026b7:	69 c0 f0 7a 00 00    	imul   $0x7af0,%eax,%eax
  4026bd:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4026c1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4026c5:	69 c0 03 90 00 00    	imul   $0x9003,%eax,%eax
  4026cb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4026cf:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4026d3:	69 c0 af 67 00 00    	imul   $0x67af,%eax,%eax
  4026d9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4026dd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4026e1:	69 c0 72 73 00 00    	imul   $0x7372,%eax,%eax
  4026e7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4026eb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4026ef:	69 c0 3c 8c 00 00    	imul   $0x8c3c,%eax,%eax
  4026f5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4026f9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4026fd:	69 c0 a5 59 00 00    	imul   $0x59a5,%eax,%eax
  402703:	89 44 24 08          	mov    %eax,0x8(%rsp)
  402707:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40270b:	69 c0 42 5e 00 00    	imul   $0x5e42,%eax,%eax
  402711:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402715:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402719:	69 c0 76 df 00 00    	imul   $0xdf76,%eax,%eax
  40271f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402723:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402727:	69 c0 99 d9 00 00    	imul   $0xd999,%eax,%eax
  40272d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402731:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402735:	69 c0 e8 93 00 00    	imul   $0x93e8,%eax,%eax
  40273b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40273f:	8b 04 24             	mov    (%rsp),%eax
  402742:	69 c0 8e 9c 00 00    	imul   $0x9c8e,%eax,%eax
  402748:	89 04 24             	mov    %eax,(%rsp)
  40274b:	8b 04 24             	mov    (%rsp),%eax
  40274e:	69 c0 0d 03 00 00    	imul   $0x30d,%eax,%eax
  402754:	89 04 24             	mov    %eax,(%rsp)
  402757:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40275b:	69 c0 fa 60 00 00    	imul   $0x60fa,%eax,%eax
  402761:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402765:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402769:	69 c0 c3 e2 00 00    	imul   $0xe2c3,%eax,%eax
  40276f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402773:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402777:	69 c0 f2 04 00 00    	imul   $0x4f2,%eax,%eax
  40277d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402781:	8b 44 24 18          	mov    0x18(%rsp),%eax
  402785:	69 c0 81 46 00 00    	imul   $0x4681,%eax,%eax
  40278b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40278f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  402793:	69 c0 fc 6c 00 00    	imul   $0x6cfc,%eax,%eax
  402799:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40279d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4027a1:	69 c0 f6 2f 00 00    	imul   $0x2ff6,%eax,%eax
  4027a7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4027ab:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4027af:	69 c0 f6 18 00 00    	imul   $0x18f6,%eax,%eax
  4027b5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4027b9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4027bd:	69 c0 09 e3 00 00    	imul   $0xe309,%eax,%eax
  4027c3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4027c7:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4027cb:	69 c0 85 df 00 00    	imul   $0xdf85,%eax,%eax
  4027d1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4027d5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4027d9:	69 c0 89 6c 00 00    	imul   $0x6c89,%eax,%eax
  4027df:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4027e3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4027e7:	69 c0 99 2a 00 00    	imul   $0x2a99,%eax,%eax
  4027ed:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4027f1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4027f5:	69 c0 c3 27 00 00    	imul   $0x27c3,%eax,%eax
  4027fb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4027ff:	8b 04 24             	mov    (%rsp),%eax
  402802:	69 c0 49 78 00 00    	imul   $0x7849,%eax,%eax
  402808:	89 04 24             	mov    %eax,(%rsp)
  40280b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40280f:	69 c0 24 75 00 00    	imul   $0x7524,%eax,%eax
  402815:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402819:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40281d:	69 c0 c0 cb 00 00    	imul   $0xcbc0,%eax,%eax
  402823:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402827:	8b 04 24             	mov    (%rsp),%eax
  40282a:	69 c0 2c 68 00 00    	imul   $0x682c,%eax,%eax
  402830:	89 04 24             	mov    %eax,(%rsp)
  402833:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  402837:	69 c0 e1 c0 00 00    	imul   $0xc0e1,%eax,%eax
  40283d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  402841:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402845:	69 c0 e7 fd 00 00    	imul   $0xfde7,%eax,%eax
  40284b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40284f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402853:	69 c0 d1 c5 00 00    	imul   $0xc5d1,%eax,%eax
  402859:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40285d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402861:	69 c0 b5 45 00 00    	imul   $0x45b5,%eax,%eax
  402867:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40286b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40286f:	69 c0 ec 1a 00 00    	imul   $0x1aec,%eax,%eax
  402875:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402879:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40287d:	69 c0 78 07 00 00    	imul   $0x778,%eax,%eax
  402883:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402887:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40288b:	69 c0 13 19 00 00    	imul   $0x1913,%eax,%eax
  402891:	89 44 24 14          	mov    %eax,0x14(%rsp)
  402895:	8b 44 24 14          	mov    0x14(%rsp),%eax
  402899:	69 c0 16 d9 00 00    	imul   $0xd916,%eax,%eax
  40289f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4028a3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4028a7:	69 c0 2f 27 00 00    	imul   $0x272f,%eax,%eax
  4028ad:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4028b1:	8b 04 24             	mov    (%rsp),%eax
  4028b4:	69 c0 61 36 00 00    	imul   $0x3661,%eax,%eax
  4028ba:	89 04 24             	mov    %eax,(%rsp)
  4028bd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4028c1:	69 c0 9f 91 00 00    	imul   $0x919f,%eax,%eax
  4028c7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4028cb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4028cf:	69 c0 fa 55 00 00    	imul   $0x55fa,%eax,%eax
  4028d5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4028d9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4028dd:	69 c0 d0 19 00 00    	imul   $0x19d0,%eax,%eax
  4028e3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4028e7:	8b 04 24             	mov    (%rsp),%eax
  4028ea:	69 c0 c1 1e 00 00    	imul   $0x1ec1,%eax,%eax
  4028f0:	89 04 24             	mov    %eax,(%rsp)
  4028f3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4028f7:	69 c0 50 43 00 00    	imul   $0x4350,%eax,%eax
  4028fd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  402901:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402905:	69 c0 4a 12 00 00    	imul   $0x124a,%eax,%eax
  40290b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40290f:	8b 44 24 14          	mov    0x14(%rsp),%eax
  402913:	69 c0 dc d1 00 00    	imul   $0xd1dc,%eax,%eax
  402919:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40291d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402921:	69 c0 04 ca 00 00    	imul   $0xca04,%eax,%eax
  402927:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40292b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40292f:	69 c0 99 54 00 00    	imul   $0x5499,%eax,%eax
  402935:	89 44 24 18          	mov    %eax,0x18(%rsp)
  402939:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40293d:	69 c0 7a ca 00 00    	imul   $0xca7a,%eax,%eax
  402943:	89 44 24 10          	mov    %eax,0x10(%rsp)
  402947:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40294b:	69 c0 65 85 00 00    	imul   $0x8565,%eax,%eax
  402951:	89 44 24 20          	mov    %eax,0x20(%rsp)
  402955:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402959:	69 c0 69 a3 00 00    	imul   $0xa369,%eax,%eax
  40295f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  402963:	8b 44 24 24          	mov    0x24(%rsp),%eax
  402967:	69 c0 73 bc 00 00    	imul   $0xbc73,%eax,%eax
  40296d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  402971:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402975:	69 c0 12 97 00 00    	imul   $0x9712,%eax,%eax
  40297b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40297f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  402983:	69 c0 1e c2 00 00    	imul   $0xc21e,%eax,%eax
  402989:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40298d:	8b 04 24             	mov    (%rsp),%eax
  402990:	69 c0 6a 35 00 00    	imul   $0x356a,%eax,%eax
  402996:	89 04 24             	mov    %eax,(%rsp)
  402999:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40299d:	69 c0 97 2b 00 00    	imul   $0x2b97,%eax,%eax
  4029a3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4029a7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4029ab:	69 c0 a7 5d 00 00    	imul   $0x5da7,%eax,%eax
  4029b1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4029b5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4029b9:	69 c0 84 56 00 00    	imul   $0x5684,%eax,%eax
  4029bf:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4029c3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4029c7:	69 c0 f8 2a 00 00    	imul   $0x2af8,%eax,%eax
  4029cd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4029d1:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4029d5:	69 c0 55 03 00 00    	imul   $0x355,%eax,%eax
  4029db:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4029df:	b8 00 00 00 00       	mov    $0x0,%eax
  4029e4:	ba 00 00 00 00       	mov    $0x0,%edx
  4029e9:	eb 0a                	jmp    4029f5 <scramble+0x537>
  4029eb:	89 c1                	mov    %eax,%ecx
  4029ed:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  4029f0:	01 ca                	add    %ecx,%edx
  4029f2:	83 c0 01             	add    $0x1,%eax
  4029f5:	83 f8 09             	cmp    $0x9,%eax
  4029f8:	76 f1                	jbe    4029eb <scramble+0x52d>
  4029fa:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4029ff:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402a06:	00 00 
  402a08:	75 07                	jne    402a11 <scramble+0x553>
  402a0a:	89 d0                	mov    %edx,%eax
  402a0c:	48 83 c4 38          	add    $0x38,%rsp
  402a10:	c3                   	ret    
  402a11:	ff 15 d1 34 00 00    	call   *0x34d1(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000402a17 <read_and_process_line>:
  402a17:	55                   	push   %rbp
  402a18:	53                   	push   %rbx
  402a19:	48 83 ec 28          	sub    $0x28,%rsp
  402a1d:	48 89 fd             	mov    %rdi,%rbp
  402a20:	48 89 e3             	mov    %rsp,%rbx
  402a23:	eb 06                	jmp    402a2b <read_and_process_line+0x14>
  402a25:	88 03                	mov    %al,(%rbx)
  402a27:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
  402a2b:	48 89 ef             	mov    %rbp,%rdi
  402a2e:	ff 15 c4 35 00 00    	call   *0x35c4(%rip)        # 405ff8 <getc@GLIBC_2.2.5>
  402a34:	83 f8 ff             	cmp    $0xffffffff,%eax
  402a37:	74 05                	je     402a3e <read_and_process_line+0x27>
  402a39:	83 f8 0a             	cmp    $0xa,%eax
  402a3c:	75 e7                	jne    402a25 <read_and_process_line+0xe>
  402a3e:	48 89 e7             	mov    %rsp,%rdi
  402a41:	48 89 de             	mov    %rbx,%rsi
  402a44:	48 29 fe             	sub    %rdi,%rsi
  402a47:	67 e8 61 09 00 00    	addr32 call 4033ae <process_line>
  402a4d:	48 83 c4 28          	add    $0x28,%rsp
  402a51:	5b                   	pop    %rbx
  402a52:	5d                   	pop    %rbp
  402a53:	c3                   	ret    

0000000000402a54 <hexmatch>:
  402a54:	55                   	push   %rbp
  402a55:	53                   	push   %rbx
  402a56:	48 83 ec 18          	sub    $0x18,%rsp
  402a5a:	89 fb                	mov    %edi,%ebx
  402a5c:	48 89 f5             	mov    %rsi,%rbp
  402a5f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a66:	00 00 
  402a68:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a6d:	31 c0                	xor    %eax,%eax
  402a6f:	48 89 e6             	mov    %rsp,%rsi
  402a72:	ba 10 00 00 00       	mov    $0x10,%edx
  402a77:	48 89 ef             	mov    %rbp,%rdi
  402a7a:	ff 15 40 35 00 00    	call   *0x3540(%rip)        # 405fc0 <strtoul@GLIBC_2.2.5>
  402a80:	89 db                	mov    %ebx,%ebx
  402a82:	48 39 c3             	cmp    %rax,%rbx
  402a85:	74 1c                	je     402aa3 <hexmatch+0x4f>
  402a87:	b8 00 00 00 00       	mov    $0x0,%eax
  402a8c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402a91:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402a98:	00 00 
  402a9a:	75 2a                	jne    402ac6 <hexmatch+0x72>
  402a9c:	48 83 c4 18          	add    $0x18,%rsp
  402aa0:	5b                   	pop    %rbx
  402aa1:	5d                   	pop    %rbp
  402aa2:	c3                   	ret    
  402aa3:	48 8b 04 24          	mov    (%rsp),%rax
  402aa7:	48 39 e8             	cmp    %rbp,%rax
  402aaa:	74 0c                	je     402ab8 <hexmatch+0x64>
  402aac:	80 38 00             	cmpb   $0x0,(%rax)
  402aaf:	74 0e                	je     402abf <hexmatch+0x6b>
  402ab1:	b8 00 00 00 00       	mov    $0x0,%eax
  402ab6:	eb d4                	jmp    402a8c <hexmatch+0x38>
  402ab8:	b8 00 00 00 00       	mov    $0x0,%eax
  402abd:	eb cd                	jmp    402a8c <hexmatch+0x38>
  402abf:	b8 01 00 00 00       	mov    $0x1,%eax
  402ac4:	eb c6                	jmp    402a8c <hexmatch+0x38>
  402ac6:	ff 15 1c 34 00 00    	call   *0x341c(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000402acc <report_touch3>:
  402acc:	53                   	push   %rbx
  402acd:	48 89 fa             	mov    %rdi,%rdx
  402ad0:	48 89 f3             	mov    %rsi,%rbx
  402ad3:	48 8d 35 10 17 00 00 	lea    0x1710(%rip),%rsi        # 4041ea <randomize_stack+0x15>
  402ada:	bf 01 00 00 00       	mov    $0x1,%edi
  402adf:	b8 00 00 00 00       	mov    $0x0,%eax
  402ae4:	ff 15 ae 34 00 00    	call   *0x34ae(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402aea:	eb 1f                	jmp    402b0b <report_touch3+0x3f>
  402aec:	40 0f b6 d7          	movzbl %dil,%edx
  402af0:	48 8d 35 0b 17 00 00 	lea    0x170b(%rip),%rsi        # 404202 <randomize_stack+0x2d>
  402af7:	bf 01 00 00 00       	mov    $0x1,%edi
  402afc:	b8 00 00 00 00       	mov    $0x0,%eax
  402b01:	ff 15 91 34 00 00    	call   *0x3491(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402b07:	48 83 c3 01          	add    $0x1,%rbx
  402b0b:	0f b6 3b             	movzbl (%rbx),%edi
  402b0e:	40 84 ff             	test   %dil,%dil
  402b11:	74 72                	je     402b85 <report_touch3+0xb9>
  402b13:	8d 47 e0             	lea    -0x20(%rdi),%eax
  402b16:	3c 5e                	cmp    $0x5e,%al
  402b18:	77 d2                	ja     402aec <report_touch3+0x20>
  402b1a:	40 80 ff 5c          	cmp    $0x5c,%dil
  402b1e:	74 19                	je     402b39 <report_touch3+0x6d>
  402b20:	40 80 ff 22          	cmp    $0x22,%dil
  402b24:	74 39                	je     402b5f <report_touch3+0x93>
  402b26:	40 0f b6 ff          	movzbl %dil,%edi
  402b2a:	48 8b 35 0f 35 00 00 	mov    0x350f(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b31:	ff 15 f9 33 00 00    	call   *0x33f9(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b37:	eb ce                	jmp    402b07 <report_touch3+0x3b>
  402b39:	48 8b 35 00 35 00 00 	mov    0x3500(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b40:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b45:	ff 15 e5 33 00 00    	call   *0x33e5(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b4b:	48 8b 35 ee 34 00 00 	mov    0x34ee(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b52:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b57:	ff 15 d3 33 00 00    	call   *0x33d3(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b5d:	eb a8                	jmp    402b07 <report_touch3+0x3b>
  402b5f:	48 8b 35 da 34 00 00 	mov    0x34da(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b66:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b6b:	ff 15 bf 33 00 00    	call   *0x33bf(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b71:	48 8b 35 c8 34 00 00 	mov    0x34c8(%rip),%rsi        # 406040 <stdout@GLIBC_2.2.5>
  402b78:	bf 22 00 00 00       	mov    $0x22,%edi
  402b7d:	ff 15 ad 33 00 00    	call   *0x33ad(%rip)        # 405f30 <putc@GLIBC_2.2.5>
  402b83:	eb 82                	jmp    402b07 <report_touch3+0x3b>
  402b85:	48 8d 3d 7d 16 00 00 	lea    0x167d(%rip),%rdi        # 404209 <randomize_stack+0x34>
  402b8c:	ff 15 26 33 00 00    	call   *0x3326(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  402b92:	5b                   	pop    %rbx
  402b93:	c3                   	ret    

0000000000402b94 <touch1>:
  402b94:	55                   	push   %rbp
  402b95:	48 89 e5             	mov    %rsp,%rbp
  402b98:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402b9c:	c7 05 1e 35 00 00 01 	movl   $0x1,0x351e(%rip)        # 4060c4 <vlevel>
  402ba3:	00 00 00 
  402ba6:	48 8d 35 5f 16 00 00 	lea    0x165f(%rip),%rsi        # 40420c <randomize_stack+0x37>
  402bad:	bf 01 00 00 00       	mov    $0x1,%edi
  402bb2:	b8 00 00 00 00       	mov    $0x0,%eax
  402bb7:	ff 15 db 33 00 00    	call   *0x33db(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402bbd:	bf 01 00 00 00       	mov    $0x1,%edi
  402bc2:	67 e8 e0 00 00 00    	addr32 call 402ca8 <validate>

0000000000402bc8 <touch2>:
  402bc8:	55                   	push   %rbp
  402bc9:	48 89 e5             	mov    %rsp,%rbp
  402bcc:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402bd0:	89 fa                	mov    %edi,%edx
  402bd2:	c7 05 e8 34 00 00 02 	movl   $0x2,0x34e8(%rip)        # 4060c4 <vlevel>
  402bd9:	00 00 00 
  402bdc:	39 3d de 34 00 00    	cmp    %edi,0x34de(%rip)        # 4060c0 <cookie>
  402be2:	74 17                	je     402bfb <touch2+0x33>
  402be4:	48 8d 35 7d 16 00 00 	lea    0x167d(%rip),%rsi        # 404268 <randomize_stack+0x93>
  402beb:	bf 02 00 00 00       	mov    $0x2,%edi
  402bf0:	b8 00 00 00 00       	mov    $0x0,%eax
  402bf5:	67 e8 7a 04 00 00    	addr32 call 403075 <notify_fail>
  402bfb:	48 8d 35 3e 16 00 00 	lea    0x163e(%rip),%rsi        # 404240 <randomize_stack+0x6b>
  402c02:	bf 01 00 00 00       	mov    $0x1,%edi
  402c07:	b8 00 00 00 00       	mov    $0x0,%eax
  402c0c:	ff 15 86 33 00 00    	call   *0x3386(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  402c12:	bf 02 00 00 00       	mov    $0x2,%edi
  402c17:	67 e8 8b 00 00 00    	addr32 call 402ca8 <validate>

0000000000402c1d <touch3>:
  402c1d:	55                   	push   %rbp
  402c1e:	48 89 e5             	mov    %rsp,%rbp
  402c21:	53                   	push   %rbx
  402c22:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402c26:	48 89 fb             	mov    %rdi,%rbx
  402c29:	c7 05 91 34 00 00 03 	movl   $0x3,0x3491(%rip)        # 4060c4 <vlevel>
  402c30:	00 00 00 
  402c33:	48 89 fe             	mov    %rdi,%rsi
  402c36:	8b 3d 84 34 00 00    	mov    0x3484(%rip),%edi        # 4060c0 <cookie>
  402c3c:	e8 13 fe ff ff       	call   402a54 <hexmatch>
  402c41:	85 c0                	test   %eax,%eax
  402c43:	74 1a                	je     402c5f <touch3+0x42>
  402c45:	48 89 de             	mov    %rbx,%rsi
  402c48:	48 8d 3d db 15 00 00 	lea    0x15db(%rip),%rdi        # 40422a <randomize_stack+0x55>
  402c4f:	e8 78 fe ff ff       	call   402acc <report_touch3>
  402c54:	bf 03 00 00 00       	mov    $0x3,%edi
  402c59:	67 e8 49 00 00 00    	addr32 call 402ca8 <validate>
  402c5f:	48 89 de             	mov    %rbx,%rsi
  402c62:	48 8d 3d c9 15 00 00 	lea    0x15c9(%rip),%rdi        # 404232 <randomize_stack+0x5d>
  402c69:	e8 5e fe ff ff       	call   402acc <report_touch3>
  402c6e:	48 8d 35 1b 16 00 00 	lea    0x161b(%rip),%rsi        # 404290 <randomize_stack+0xbb>
  402c75:	bf 03 00 00 00       	mov    $0x3,%edi
  402c7a:	b8 00 00 00 00       	mov    $0x0,%eax
  402c7f:	67 e8 f0 03 00 00    	addr32 call 403075 <notify_fail>

0000000000402c85 <test>:
  402c85:	50                   	push   %rax
  402c86:	58                   	pop    %rax
  402c87:	48 83 ec 08          	sub    $0x8,%rsp
  402c8b:	67 e8 86 fd ff ff    	addr32 call 402a17 <read_and_process_line>
  402c91:	48 8d 35 20 16 00 00 	lea    0x1620(%rip),%rsi        # 4042b8 <randomize_stack+0xe3>
  402c98:	bf 00 00 00 00       	mov    $0x0,%edi
  402c9d:	b8 00 00 00 00       	mov    $0x0,%eax
  402ca2:	67 e8 cd 03 00 00    	addr32 call 403075 <notify_fail>

0000000000402ca8 <validate>:
  402ca8:	8b 35 16 34 00 00    	mov    0x3416(%rip),%esi        # 4060c4 <vlevel>
  402cae:	8b 15 14 34 00 00    	mov    0x3414(%rip),%edx        # 4060c8 <check_level>
  402cb4:	e9 36 05 00 00       	jmp    4031ef <validate_inner>

0000000000402cb9 <notify_generate_submission>:
  402cb9:	41 54                	push   %r12
  402cbb:	55                   	push   %rbp
  402cbc:	53                   	push   %rbx
  402cbd:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  402cc4:	48 89 fb             	mov    %rdi,%rbx
  402cc7:	48 89 f5             	mov    %rsi,%rbp
  402cca:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402cd1:	00 00 
  402cd3:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402cda:	00 
  402cdb:	31 c0                	xor    %eax,%eax
  402cdd:	ff 15 0d 32 00 00    	call   *0x320d(%rip)        # 405ef0 <getuid@GLIBC_2.2.5>
  402ce3:	41 89 c4             	mov    %eax,%r12d
  402ce6:	89 c7                	mov    %eax,%edi
  402ce8:	ff 15 f2 31 00 00    	call   *0x31f2(%rip)        # 405ee0 <getpwuid@GLIBC_2.2.5>
  402cee:	48 85 c0             	test   %rax,%rax
  402cf1:	0f 84 eb 00 00 00    	je     402de2 <notify_generate_submission+0x129>
  402cf7:	48 8b 08             	mov    (%rax),%rcx
  402cfa:	48 8d 15 f3 15 00 00 	lea    0x15f3(%rip),%rdx        # 4042f4 <is_checker+0x4>
  402d01:	be 01 00 00 00       	mov    $0x1,%esi
  402d06:	48 89 df             	mov    %rbx,%rdi
  402d09:	b8 00 00 00 00       	mov    $0x0,%eax
  402d0e:	ff 15 c4 32 00 00    	call   *0x32c4(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402d14:	44 8b 4d 14          	mov    0x14(%rbp),%r9d
  402d18:	44 0f be 05 b4 14 00 	movsbl 0x14b4(%rip),%r8d        # 4041d4 <target_prefix>
  402d1f:	00 
  402d20:	8b 0d aa 14 00 00    	mov    0x14aa(%rip),%ecx        # 4041d0 <target_id>
  402d26:	48 8d 15 ab 16 00 00 	lea    0x16ab(%rip),%rdx        # 4043d8 <is_checker+0xe8>
  402d2d:	be 01 00 00 00       	mov    $0x1,%esi
  402d32:	48 89 df             	mov    %rbx,%rdi
  402d35:	b8 00 00 00 00       	mov    $0x0,%eax
  402d3a:	ff 15 98 32 00 00    	call   *0x3298(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402d40:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
  402d44:	0f 85 ba 00 00 00    	jne    402e04 <notify_generate_submission+0x14b>
  402d4a:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
  402d4f:	0f 84 ce 00 00 00    	je     402e23 <notify_generate_submission+0x16a>
  402d55:	48 89 d9             	mov    %rbx,%rcx
  402d58:	ba 06 00 00 00       	mov    $0x6,%edx
  402d5d:	be 01 00 00 00       	mov    $0x1,%esi
  402d62:	48 8d 3d b9 15 00 00 	lea    0x15b9(%rip),%rdi        # 404322 <is_checker+0x32>
  402d69:	ff 15 61 32 00 00    	call   *0x3261(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  402d6f:	48 8b 4d 08          	mov    0x8(%rbp),%rcx
  402d73:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  402d77:	be 01 00 00 00       	mov    $0x1,%esi
  402d7c:	48 89 df             	mov    %rbx,%rdi
  402d7f:	ff 15 13 31 00 00    	call   *0x3113(%rip)        # 405e98 <__vfprintf_chk@GLIBC_2.3.4>
  402d85:	48 8b 0d 2c 33 00 00 	mov    0x332c(%rip),%rcx        # 4060b8 <gets_buf>
  402d8c:	48 8d 15 96 15 00 00 	lea    0x1596(%rip),%rdx        # 404329 <is_checker+0x39>
  402d93:	be 01 00 00 00       	mov    $0x1,%esi
  402d98:	48 89 df             	mov    %rbx,%rdi
  402d9b:	b8 00 00 00 00       	mov    $0x0,%eax
  402da0:	ff 15 32 32 00 00    	call   *0x3232(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402da6:	48 89 df             	mov    %rbx,%rdi
  402da9:	ff 15 11 31 00 00    	call   *0x3111(%rip)        # 405ec0 <ferror@GLIBC_2.2.5>
  402daf:	85 c0                	test   %eax,%eax
  402db1:	0f 84 8b 00 00 00    	je     402e42 <notify_generate_submission+0x189>
  402db7:	ff 15 eb 30 00 00    	call   *0x30eb(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  402dbd:	8b 00                	mov    (%rax),%eax
  402dbf:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  402dc6:	00 
  402dc7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402dce:	00 00 
  402dd0:	0f 85 fe 01 00 00    	jne    402fd4 <notify_generate_submission+0x31b>
  402dd6:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  402ddd:	5b                   	pop    %rbx
  402dde:	5d                   	pop    %rbp
  402ddf:	41 5c                	pop    %r12
  402de1:	c3                   	ret    
  402de2:	44 89 e1             	mov    %r12d,%ecx
  402de5:	48 8d 15 1a 15 00 00 	lea    0x151a(%rip),%rdx        # 404306 <is_checker+0x16>
  402dec:	be 01 00 00 00       	mov    $0x1,%esi
  402df1:	48 89 df             	mov    %rbx,%rdi
  402df4:	b8 00 00 00 00       	mov    $0x0,%eax
  402df9:	ff 15 d9 31 00 00    	call   *0x31d9(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402dff:	e9 10 ff ff ff       	jmp    402d14 <notify_generate_submission+0x5b>
  402e04:	48 89 d9             	mov    %rbx,%rcx
  402e07:	ba 04 00 00 00       	mov    $0x4,%edx
  402e0c:	be 01 00 00 00       	mov    $0x1,%esi
  402e11:	48 8d 3d 00 15 00 00 	lea    0x1500(%rip),%rdi        # 404318 <is_checker+0x28>
  402e18:	ff 15 b2 31 00 00    	call   *0x31b2(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  402e1e:	e9 62 ff ff ff       	jmp    402d85 <notify_generate_submission+0xcc>
  402e23:	48 89 d9             	mov    %rbx,%rcx
  402e26:	ba 04 00 00 00       	mov    $0x4,%edx
  402e2b:	be 01 00 00 00       	mov    $0x1,%esi
  402e30:	48 8d 3d e6 14 00 00 	lea    0x14e6(%rip),%rdi        # 40431d <is_checker+0x2d>
  402e37:	ff 15 93 31 00 00    	call   *0x3193(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  402e3d:	e9 43 ff ff ff       	jmp    402d85 <notify_generate_submission+0xcc>
  402e42:	48 89 df             	mov    %rbx,%rdi
  402e45:	ff 15 2d 31 00 00    	call   *0x312d(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  402e4b:	85 c0                	test   %eax,%eax
  402e4d:	0f 85 64 ff ff ff    	jne    402db7 <notify_generate_submission+0xfe>
  402e53:	48 89 da             	mov    %rbx,%rdx
  402e56:	48 8d 35 e8 14 00 00 	lea    0x14e8(%rip),%rsi        # 404345 <is_checker+0x55>
  402e5d:	bf 00 00 00 00       	mov    $0x0,%edi
  402e62:	ff 15 b0 30 00 00    	call   *0x30b0(%rip)        # 405f18 <freopen@GLIBC_2.2.5>
  402e68:	48 85 c0             	test   %rax,%rax
  402e6b:	0f 84 46 ff ff ff    	je     402db7 <notify_generate_submission+0xfe>
  402e71:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402e76:	ff 15 14 30 00 00    	call   *0x3014(%rip)        # 405e90 <posix_spawn_file_actions_init@GLIBC_2.2.5>
  402e7c:	85 c0                	test   %eax,%eax
  402e7e:	0f 85 3b ff ff ff    	jne    402dbf <notify_generate_submission+0x106>
  402e84:	48 89 df             	mov    %rbx,%rdi
  402e87:	ff 15 d3 30 00 00    	call   *0x30d3(%rip)        # 405f60 <fileno@GLIBC_2.2.5>
  402e8d:	89 c6                	mov    %eax,%esi
  402e8f:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402e94:	ba 01 00 00 00       	mov    $0x1,%edx
  402e99:	ff 15 41 31 00 00    	call   *0x3141(%rip)        # 405fe0 <posix_spawn_file_actions_adddup2@GLIBC_2.2.5>
  402e9f:	85 c0                	test   %eax,%eax
  402ea1:	0f 85 18 ff ff ff    	jne    402dbf <notify_generate_submission+0x106>
  402ea7:	48 8d 35 9a 14 00 00 	lea    0x149a(%rip),%rsi        # 404348 <is_checker+0x58>
  402eae:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  402eb3:	48 8d 05 96 14 00 00 	lea    0x1496(%rip),%rax        # 404350 <is_checker+0x60>
  402eba:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ebf:	48 8b 05 6a 31 00 00 	mov    0x316a(%rip),%rax        # 406030 <course_and_lab>
  402ec6:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  402ecb:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402ed2:	00 00 
  402ed4:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  402ed9:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402ede:	4c 8b 0d 7b 31 00 00 	mov    0x317b(%rip),%r9        # 406060 <__environ@GLIBC_2.2.5>
  402ee5:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402eea:	b9 00 00 00 00       	mov    $0x0,%ecx
  402eef:	ff 15 8b 30 00 00    	call   *0x308b(%rip)        # 405f80 <posix_spawnp@GLIBC_2.15>
  402ef5:	85 c0                	test   %eax,%eax
  402ef7:	0f 85 c2 fe ff ff    	jne    402dbf <notify_generate_submission+0x106>
  402efd:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402f02:	ff 15 d0 2f 00 00    	call   *0x2fd0(%rip)        # 405ed8 <posix_spawn_file_actions_destroy@GLIBC_2.2.5>
  402f08:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  402f0d:	ba 00 00 00 00       	mov    $0x0,%edx
  402f12:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  402f16:	ff 15 84 30 00 00    	call   *0x3084(%rip)        # 405fa0 <waitpid@GLIBC_2.2.5>
  402f1c:	83 f8 ff             	cmp    $0xffffffff,%eax
  402f1f:	74 41                	je     402f62 <notify_generate_submission+0x2a9>
  402f21:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  402f25:	89 cf                	mov    %ecx,%edi
  402f27:	83 e7 7f             	and    $0x7f,%edi
  402f2a:	75 43                	jne    402f6f <notify_generate_submission+0x2b6>
  402f2c:	0f b6 c5             	movzbl %ch,%eax
  402f2f:	f6 c5 ff             	test   $0xff,%ch
  402f32:	0f 84 87 fe ff ff    	je     402dbf <notify_generate_submission+0x106>
  402f38:	89 c1                	mov    %eax,%ecx
  402f3a:	48 8d 15 16 14 00 00 	lea    0x1416(%rip),%rdx        # 404357 <is_checker+0x67>
  402f41:	be 01 00 00 00       	mov    $0x1,%esi
  402f46:	48 8b 3d 53 31 00 00 	mov    0x3153(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402f4d:	b8 00 00 00 00       	mov    $0x0,%eax
  402f52:	ff 15 80 30 00 00    	call   *0x3080(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402f58:	b8 46 00 00 00       	mov    $0x46,%eax
  402f5d:	e9 5d fe ff ff       	jmp    402dbf <notify_generate_submission+0x106>
  402f62:	ff 15 40 2f 00 00    	call   *0x2f40(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  402f68:	8b 00                	mov    (%rax),%eax
  402f6a:	e9 50 fe ff ff       	jmp    402dbf <notify_generate_submission+0x106>
  402f6f:	89 c8                	mov    %ecx,%eax
  402f71:	83 e0 7f             	and    $0x7f,%eax
  402f74:	83 c0 01             	add    $0x1,%eax
  402f77:	3c 01                	cmp    $0x1,%al
  402f79:	7e 31                	jle    402fac <notify_generate_submission+0x2f3>
  402f7b:	ff 15 07 30 00 00    	call   *0x3007(%rip)        # 405f88 <strsignal@GLIBC_2.2.5>
  402f81:	48 89 c1             	mov    %rax,%rcx
  402f84:	48 8d 15 e5 13 00 00 	lea    0x13e5(%rip),%rdx        # 404370 <is_checker+0x80>
  402f8b:	be 01 00 00 00       	mov    $0x1,%esi
  402f90:	48 8b 3d 09 31 00 00 	mov    0x3109(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402f97:	b8 00 00 00 00       	mov    $0x0,%eax
  402f9c:	ff 15 36 30 00 00    	call   *0x3036(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402fa2:	b8 46 00 00 00       	mov    $0x46,%eax
  402fa7:	e9 13 fe ff ff       	jmp    402dbf <notify_generate_submission+0x106>
  402fac:	48 8d 15 d1 13 00 00 	lea    0x13d1(%rip),%rdx        # 404384 <is_checker+0x94>
  402fb3:	be 01 00 00 00       	mov    $0x1,%esi
  402fb8:	48 8b 3d e1 30 00 00 	mov    0x30e1(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  402fbf:	b8 00 00 00 00       	mov    $0x0,%eax
  402fc4:	ff 15 0e 30 00 00    	call   *0x300e(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  402fca:	b8 46 00 00 00       	mov    $0x46,%eax
  402fcf:	e9 eb fd ff ff       	jmp    402dbf <notify_generate_submission+0x106>
  402fd4:	ff 15 0e 2f 00 00    	call   *0x2f0e(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000402fda <notify_pass>:
  402fda:	53                   	push   %rbx
  402fdb:	48 83 ec 20          	sub    $0x20,%rsp
  402fdf:	89 fb                	mov    %edi,%ebx
  402fe1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402fe8:	00 00 
  402fea:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402fef:	31 c0                	xor    %eax,%eax
  402ff1:	48 8d 3d 20 14 00 00 	lea    0x1420(%rip),%rdi        # 404418 <is_checker+0x128>
  402ff8:	ff 15 ba 2e 00 00    	call   *0x2eba(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  402ffe:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403005:	00 
  403006:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40300d:	00 00 
  40300f:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%rsp)
  403016:	00 
  403017:	89 5c 24 14          	mov    %ebx,0x14(%rsp)
  40301b:	48 89 e2             	mov    %rsp,%rdx
  40301e:	48 8d 35 94 fc ff ff 	lea    -0x36c(%rip),%rsi        # 402cb9 <notify_generate_submission>
  403025:	48 8b 3d 04 30 00 00 	mov    0x3004(%rip),%rdi        # 406030 <course_and_lab>
  40302c:	67 e8 d3 07 00 00    	addr32 call 403805 <autolab_submit_stream>
  403032:	85 c0                	test   %eax,%eax
  403034:	74 34                	je     40306a <notify_pass+0x90>
  403036:	89 c7                	mov    %eax,%edi
  403038:	ff 15 aa 2f 00 00    	call   *0x2faa(%rip)        # 405fe8 <strerror@GLIBC_2.2.5>
  40303e:	48 89 c1             	mov    %rax,%rcx
  403041:	48 8d 15 10 14 00 00 	lea    0x1410(%rip),%rdx        # 404458 <is_checker+0x168>
  403048:	be 01 00 00 00       	mov    $0x1,%esi
  40304d:	48 8b 3d 4c 30 00 00 	mov    0x304c(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  403054:	b8 00 00 00 00       	mov    $0x0,%eax
  403059:	ff 15 79 2f 00 00    	call   *0x2f79(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  40305f:	bf 01 00 00 00       	mov    $0x1,%edi
  403064:	ff 15 5e 2f 00 00    	call   *0x2f5e(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  40306a:	bf 00 00 00 00       	mov    $0x0,%edi
  40306f:	ff 15 53 2f 00 00    	call   *0x2f53(%rip)        # 405fc8 <exit@GLIBC_2.2.5>

0000000000403075 <notify_fail>:
  403075:	41 54                	push   %r12
  403077:	55                   	push   %rbp
  403078:	53                   	push   %rbx
  403079:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  403080:	89 fd                	mov    %edi,%ebp
  403082:	48 89 f3             	mov    %rsi,%rbx
  403085:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  40308a:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
  40308f:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  403094:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  403099:	84 c0                	test   %al,%al
  40309b:	74 3d                	je     4030da <notify_fail+0x65>
  40309d:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
  4030a2:	0f 29 8c 24 80 00 00 	movaps %xmm1,0x80(%rsp)
  4030a9:	00 
  4030aa:	0f 29 94 24 90 00 00 	movaps %xmm2,0x90(%rsp)
  4030b1:	00 
  4030b2:	0f 29 9c 24 a0 00 00 	movaps %xmm3,0xa0(%rsp)
  4030b9:	00 
  4030ba:	0f 29 a4 24 b0 00 00 	movaps %xmm4,0xb0(%rsp)
  4030c1:	00 
  4030c2:	0f 29 ac 24 c0 00 00 	movaps %xmm5,0xc0(%rsp)
  4030c9:	00 
  4030ca:	0f 29 b4 24 d0 00 00 	movaps %xmm6,0xd0(%rsp)
  4030d1:	00 
  4030d2:	0f 29 bc 24 e0 00 00 	movaps %xmm7,0xe0(%rsp)
  4030d9:	00 
  4030da:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4030e1:	00 00 
  4030e3:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4030e8:	31 c0                	xor    %eax,%eax
  4030ea:	c7 44 24 20 10 00 00 	movl   $0x10,0x20(%rsp)
  4030f1:	00 
  4030f2:	c7 44 24 24 30 00 00 	movl   $0x30,0x24(%rsp)
  4030f9:	00 
  4030fa:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  403101:	00 
  403102:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  403107:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40310c:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  403111:	48 8b 0d 28 2f 00 00 	mov    0x2f28(%rip),%rcx        # 406040 <stdout@GLIBC_2.2.5>
  403118:	ba 06 00 00 00       	mov    $0x6,%edx
  40311d:	be 01 00 00 00       	mov    $0x1,%esi
  403122:	48 8d 3d f9 11 00 00 	lea    0x11f9(%rip),%rdi        # 404322 <is_checker+0x32>
  403129:	ff 15 a1 2e 00 00    	call   *0x2ea1(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  40312f:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  403134:	4c 89 e1             	mov    %r12,%rcx
  403137:	48 89 da             	mov    %rbx,%rdx
  40313a:	be 01 00 00 00       	mov    $0x1,%esi
  40313f:	48 8b 3d fa 2e 00 00 	mov    0x2efa(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  403146:	ff 15 4c 2d 00 00    	call   *0x2d4c(%rip)        # 405e98 <__vfprintf_chk@GLIBC_2.3.4>
  40314c:	48 8d 3d 2d 13 00 00 	lea    0x132d(%rip),%rdi        # 404480 <is_checker+0x190>
  403153:	ff 15 5f 2d 00 00    	call   *0x2d5f(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  403159:	c7 44 24 20 10 00 00 	movl   $0x10,0x20(%rsp)
  403160:	00 
  403161:	c7 44 24 24 30 00 00 	movl   $0x30,0x24(%rsp)
  403168:	00 
  403169:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  403170:	00 
  403171:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  403176:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40317b:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  403180:	48 89 1c 24          	mov    %rbx,(%rsp)
  403184:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  403189:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  403190:	00 
  403191:	89 6c 24 14          	mov    %ebp,0x14(%rsp)
  403195:	48 89 e2             	mov    %rsp,%rdx
  403198:	48 8d 35 1a fb ff ff 	lea    -0x4e6(%rip),%rsi        # 402cb9 <notify_generate_submission>
  40319f:	48 8b 3d 8a 2e 00 00 	mov    0x2e8a(%rip),%rdi        # 406030 <course_and_lab>
  4031a6:	67 e8 59 06 00 00    	addr32 call 403805 <autolab_submit_stream>
  4031ac:	85 c0                	test   %eax,%eax
  4031ae:	74 34                	je     4031e4 <notify_fail+0x16f>
  4031b0:	89 c7                	mov    %eax,%edi
  4031b2:	ff 15 30 2e 00 00    	call   *0x2e30(%rip)        # 405fe8 <strerror@GLIBC_2.2.5>
  4031b8:	48 89 c1             	mov    %rax,%rcx
  4031bb:	48 8d 15 96 12 00 00 	lea    0x1296(%rip),%rdx        # 404458 <is_checker+0x168>
  4031c2:	be 01 00 00 00       	mov    $0x1,%esi
  4031c7:	48 8b 3d d2 2e 00 00 	mov    0x2ed2(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  4031ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4031d3:	ff 15 ff 2d 00 00    	call   *0x2dff(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  4031d9:	bf 01 00 00 00       	mov    $0x1,%edi
  4031de:	ff 15 e4 2d 00 00    	call   *0x2de4(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  4031e4:	bf 01 00 00 00       	mov    $0x1,%edi
  4031e9:	ff 15 d9 2d 00 00    	call   *0x2dd9(%rip)        # 405fc8 <exit@GLIBC_2.2.5>

00000000004031ef <validate_inner>:
  4031ef:	50                   	push   %rax
  4031f0:	58                   	pop    %rax
  4031f1:	48 83 ec 08          	sub    $0x8,%rsp
  4031f5:	85 d2                	test   %edx,%edx
  4031f7:	75 20                	jne    403219 <validate_inner+0x2a>
  4031f9:	85 f6                	test   %esi,%esi
  4031fb:	7e 2d                	jle    40322a <validate_inner+0x3b>
  4031fd:	39 fe                	cmp    %edi,%esi
  4031ff:	74 3a                	je     40323b <validate_inner+0x4c>
  403201:	41 89 f0             	mov    %esi,%r8d
  403204:	89 f1                	mov    %esi,%ecx
  403206:	89 fa                	mov    %edi,%edx
  403208:	48 8d 35 c9 12 00 00 	lea    0x12c9(%rip),%rsi        # 4044d8 <is_checker+0x1e8>
  40320f:	b8 00 00 00 00       	mov    $0x0,%eax
  403214:	e8 5c fe ff ff       	call   403075 <notify_fail>
  403219:	48 8d 35 90 12 00 00 	lea    0x1290(%rip),%rsi        # 4044b0 <is_checker+0x1c0>
  403220:	b8 00 00 00 00       	mov    $0x0,%eax
  403225:	e8 4b fe ff ff       	call   403075 <notify_fail>
  40322a:	48 8d 35 6f 11 00 00 	lea    0x116f(%rip),%rsi        # 4043a0 <is_checker+0xb0>
  403231:	b8 00 00 00 00       	mov    $0x0,%eax
  403236:	e8 3a fe ff ff       	call   403075 <notify_fail>
  40323b:	e8 9a fd ff ff       	call   402fda <notify_pass>

0000000000403240 <sighandler>:
  403240:	50                   	push   %rax
  403241:	58                   	pop    %rax
  403242:	48 83 ec 08          	sub    $0x8,%rsp
  403246:	8d 47 fc             	lea    -0x4(%rdi),%eax
  403249:	83 f8 0a             	cmp    $0xa,%eax
  40324c:	77 37                	ja     403285 <sighandler+0x45>
  40324e:	89 c0                	mov    %eax,%eax
  403250:	48 8d 15 b1 13 00 00 	lea    0x13b1(%rip),%rdx        # 404608 <is_checker+0x318>
  403257:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40325b:	48 01 d0             	add    %rdx,%rax
  40325e:	ff e0                	jmp    *%rax
  403260:	48 8d 15 a1 12 00 00 	lea    0x12a1(%rip),%rdx        # 404508 <is_checker+0x218>
  403267:	eb 42                	jmp    4032ab <sighandler+0x6b>
  403269:	8b 15 b9 2d 00 00    	mov    0x2db9(%rip),%edx        # 406028 <checker_timeout>
  40326f:	48 8d 35 32 13 00 00 	lea    0x1332(%rip),%rsi        # 4045a8 <is_checker+0x2b8>
  403276:	bf 00 00 00 00       	mov    $0x0,%edi
  40327b:	b8 00 00 00 00       	mov    $0x0,%eax
  403280:	e8 f0 fd ff ff       	call   403075 <notify_fail>
  403285:	ff 15 fd 2c 00 00    	call   *0x2cfd(%rip)        # 405f88 <strsignal@GLIBC_2.2.5>
  40328b:	48 89 c2             	mov    %rax,%rdx
  40328e:	48 8d 35 4b 13 00 00 	lea    0x134b(%rip),%rsi        # 4045e0 <is_checker+0x2f0>
  403295:	bf 00 00 00 00       	mov    $0x0,%edi
  40329a:	b8 00 00 00 00       	mov    $0x0,%eax
  40329f:	e8 d1 fd ff ff       	call   403075 <notify_fail>
  4032a4:	48 8d 15 a5 12 00 00 	lea    0x12a5(%rip),%rdx        # 404550 <is_checker+0x260>
  4032ab:	48 8d 35 08 11 00 00 	lea    0x1108(%rip),%rsi        # 4043ba <is_checker+0xca>
  4032b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4032b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4032bc:	e8 b4 fd ff ff       	call   403075 <notify_fail>
  4032c1:	48 8d 15 b8 12 00 00 	lea    0x12b8(%rip),%rdx        # 404580 <is_checker+0x290>
  4032c8:	eb e1                	jmp    4032ab <sighandler+0x6b>
  4032ca:	48 8d 15 57 12 00 00 	lea    0x1257(%rip),%rdx        # 404528 <is_checker+0x238>
  4032d1:	eb d8                	jmp    4032ab <sighandler+0x6b>

00000000004032d3 <launch_in_altstack>:
  4032d3:	55                   	push   %rbp
  4032d4:	48 89 e5             	mov    %rsp,%rbp
  4032d7:	48 83 ec 10          	sub    $0x10,%rsp
  4032db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4032e2:	00 00 
  4032e4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4032e8:	31 c0                	xor    %eax,%eax
  4032ea:	48 8b 05 df 2d 00 00 	mov    0x2ddf(%rip),%rax        # 4060d0 <launch_stack_offset>
  4032f1:	48 83 c0 17          	add    $0x17,%rax
  4032f5:	48 89 c1             	mov    %rax,%rcx
  4032f8:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4032fc:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  403302:	48 89 e2             	mov    %rsp,%rdx
  403305:	48 29 c2             	sub    %rax,%rdx
  403308:	48 39 d4             	cmp    %rdx,%rsp
  40330b:	74 12                	je     40331f <launch_in_altstack+0x4c>
  40330d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  403314:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  40331b:	00 00 
  40331d:	eb e9                	jmp    403308 <launch_in_altstack+0x35>
  40331f:	48 89 c8             	mov    %rcx,%rax
  403322:	25 ff 0f 00 00       	and    $0xfff,%eax
  403327:	48 29 c4             	sub    %rax,%rsp
  40332a:	48 85 c0             	test   %rax,%rax
  40332d:	74 06                	je     403335 <launch_in_altstack+0x62>
  40332f:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  403335:	48 8d 44 24 0f       	lea    0xf(%rsp),%rax
  40333a:	48 a9 f0 ff ff ff    	test   $0xfffffffffffffff0,%rax
  403340:	74 27                	je     403369 <launch_in_altstack+0x96>
  403342:	48 8b 05 07 2d 00 00 	mov    0x2d07(%rip),%rax        # 406050 <stdin@GLIBC_2.2.5>
  403349:	48 39 05 60 2d 00 00 	cmp    %rax,0x2d60(%rip)        # 4060b0 <global_infile>
  403350:	74 2f                	je     403381 <launch_in_altstack+0xae>
  403352:	c7 05 68 2d 00 00 00 	movl   $0x0,0x2d68(%rip)        # 4060c4 <vlevel>
  403359:	00 00 00 
  40335c:	48 8b 3d 4d 2d 00 00 	mov    0x2d4d(%rip),%rdi        # 4060b0 <global_infile>
  403363:	67 e8 1c f9 ff ff    	addr32 call 402c85 <test>
  403369:	48 8d 3d c4 12 00 00 	lea    0x12c4(%rip),%rdi        # 404634 <is_checker+0x344>
  403370:	ff 15 3a 2c 00 00    	call   *0x2c3a(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  403376:	bf 01 00 00 00       	mov    $0x1,%edi
  40337b:	ff 15 47 2c 00 00    	call   *0x2c47(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  403381:	48 8b 0d b8 2c 00 00 	mov    0x2cb8(%rip),%rcx        # 406040 <stdout@GLIBC_2.2.5>
  403388:	ba 0d 00 00 00       	mov    $0xd,%edx
  40338d:	be 01 00 00 00       	mov    $0x1,%esi
  403392:	48 8d 3d a2 12 00 00 	lea    0x12a2(%rip),%rdi        # 40463b <is_checker+0x34b>
  403399:	ff 15 31 2c 00 00    	call   *0x2c31(%rip)        # 405fd0 <fwrite@GLIBC_2.2.5>
  40339f:	48 8b 3d 9a 2c 00 00 	mov    0x2c9a(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  4033a6:	ff 15 cc 2b 00 00    	call   *0x2bcc(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  4033ac:	eb a4                	jmp    403352 <launch_in_altstack+0x7f>

00000000004033ae <process_line>:
  4033ae:	41 54                	push   %r12
  4033b0:	55                   	push   %rbp
  4033b1:	53                   	push   %rbx
  4033b2:	48 89 fd             	mov    %rdi,%rbp
  4033b5:	48 89 f3             	mov    %rsi,%rbx
  4033b8:	4c 8d 64 76 04       	lea    0x4(%rsi,%rsi,2),%r12
  4033bd:	4c 89 e7             	mov    %r12,%rdi
  4033c0:	ff 15 aa 2b 00 00    	call   *0x2baa(%rip)        # 405f70 <malloc@GLIBC_2.2.5>
  4033c6:	48 89 c7             	mov    %rax,%rdi
  4033c9:	48 89 05 e8 2c 00 00 	mov    %rax,0x2ce8(%rip)        # 4060b8 <gets_buf>
  4033d0:	4c 89 e2             	mov    %r12,%rdx
  4033d3:	be 00 00 00 00       	mov    $0x0,%esi
  4033d8:	ff 15 32 2b 00 00    	call   *0x2b32(%rip)        # 405f10 <memset@GLIBC_2.2.5>
  4033de:	48 83 3d d2 2c 00 00 	cmpq   $0x0,0x2cd2(%rip)        # 4060b8 <gets_buf>
  4033e5:	00 
  4033e6:	74 0c                	je     4033f4 <process_line+0x46>
  4033e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4033ed:	b9 00 00 00 00       	mov    $0x0,%ecx
  4033f2:	eb 65                	jmp    403459 <process_line+0xab>
  4033f4:	48 8d 3d 4e 12 00 00 	lea    0x124e(%rip),%rdi        # 404649 <is_checker+0x359>
  4033fb:	ff 15 af 2b 00 00    	call   *0x2baf(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  403401:	bf 01 00 00 00       	mov    $0x1,%edi
  403406:	ff 15 bc 2b 00 00    	call   *0x2bbc(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  40340c:	0f b6 54 0d 00       	movzbl 0x0(%rbp,%rcx,1),%edx
  403411:	89 d6                	mov    %edx,%esi
  403413:	40 c0 ee 04          	shr    $0x4,%sil
  403417:	49 89 c0             	mov    %rax,%r8
  40341a:	4c 03 05 97 2c 00 00 	add    0x2c97(%rip),%r8        # 4060b8 <gets_buf>
  403421:	48 8d 3d b8 12 00 00 	lea    0x12b8(%rip),%rdi        # 4046e0 <hex_digit.0>
  403428:	83 e6 0f             	and    $0xf,%esi
  40342b:	0f b6 34 37          	movzbl (%rdi,%rsi,1),%esi
  40342f:	41 88 30             	mov    %sil,(%r8)
  403432:	83 e2 0f             	and    $0xf,%edx
  403435:	0f b6 34 17          	movzbl (%rdi,%rdx,1),%esi
  403439:	48 8b 15 78 2c 00 00 	mov    0x2c78(%rip),%rdx        # 4060b8 <gets_buf>
  403440:	40 88 74 02 01       	mov    %sil,0x1(%rdx,%rax,1)
  403445:	48 8b 15 6c 2c 00 00 	mov    0x2c6c(%rip),%rdx        # 4060b8 <gets_buf>
  40344c:	c6 44 02 02 20       	movb   $0x20,0x2(%rdx,%rax,1)
  403451:	48 83 c1 01          	add    $0x1,%rcx
  403455:	48 83 c0 03          	add    $0x3,%rax
  403459:	48 39 d9             	cmp    %rbx,%rcx
  40345c:	72 ae                	jb     40340c <process_line+0x5e>
  40345e:	48 03 05 53 2c 00 00 	add    0x2c53(%rip),%rax        # 4060b8 <gets_buf>
  403465:	c6 00 00             	movb   $0x0,(%rax)
  403468:	48 8b 3d 49 2c 00 00 	mov    0x2c49(%rip),%rdi        # 4060b8 <gets_buf>
  40346f:	ff 15 43 2a 00 00    	call   *0x2a43(%rip)        # 405eb8 <puts@GLIBC_2.2.5>
  403475:	48 8b 3d c4 2b 00 00 	mov    0x2bc4(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  40347c:	ff 15 f6 2a 00 00    	call   *0x2af6(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  403482:	5b                   	pop    %rbx
  403483:	5d                   	pop    %rbp
  403484:	41 5c                	pop    %r12
  403486:	c3                   	ret    

0000000000403487 <launch>:
  403487:	55                   	push   %rbp
  403488:	53                   	push   %rbx
  403489:	48 81 ec b8 07 00 00 	sub    $0x7b8,%rsp
  403490:	89 fb                	mov    %edi,%ebx
  403492:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  403497:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40349e:	00 00 
  4034a0:	48 89 84 24 a8 07 00 	mov    %rax,0x7a8(%rsp)
  4034a7:	00 
  4034a8:	31 c0                	xor    %eax,%eax
  4034aa:	85 ff                	test   %edi,%edi
  4034ac:	74 7c                	je     40352a <launch+0xa3>
  4034ae:	48 8b 2d 6b 2b 00 00 	mov    0x2b6b(%rip),%rbp        # 406020 <stable_stack_addr>
  4034b5:	85 db                	test   %ebx,%ebx
  4034b7:	74 78                	je     403531 <launch+0xaa>
  4034b9:	b9 22 00 10 00       	mov    $0x100022,%ecx
  4034be:	85 db                	test   %ebx,%ebx
  4034c0:	74 76                	je     403538 <launch+0xb1>
  4034c2:	ba 07 00 00 00       	mov    $0x7,%edx
  4034c7:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4034cd:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  4034d3:	48 8b 35 3e 2b 00 00 	mov    0x2b3e(%rip),%rsi        # 406018 <stack_size>
  4034da:	48 89 ef             	mov    %rbp,%rdi
  4034dd:	ff 15 15 2a 00 00    	call   *0x2a15(%rip)        # 405ef8 <mmap@GLIBC_2.2.5>
  4034e3:	48 89 04 24          	mov    %rax,(%rsp)
  4034e7:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4034eb:	74 52                	je     40353f <launch+0xb8>
  4034ed:	85 db                	test   %ebx,%ebx
  4034ef:	74 66                	je     403557 <launch+0xd0>
  4034f1:	48 8b 0d 28 2b 00 00 	mov    0x2b28(%rip),%rcx        # 406020 <stable_stack_addr>
  4034f8:	48 39 e9             	cmp    %rbp,%rcx
  4034fb:	74 5a                	je     403557 <launch+0xd0>
  4034fd:	4c 8b 04 24          	mov    (%rsp),%r8
  403501:	48 8d 15 80 11 00 00 	lea    0x1180(%rip),%rdx        # 404688 <is_checker+0x398>
  403508:	be 01 00 00 00       	mov    $0x1,%esi
  40350d:	48 8b 3d 8c 2b 00 00 	mov    0x2b8c(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  403514:	b8 00 00 00 00       	mov    $0x0,%eax
  403519:	ff 15 b9 2a 00 00    	call   *0x2ab9(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  40351f:	bf 01 00 00 00       	mov    $0x1,%edi
  403524:	ff 15 9e 2a 00 00    	call   *0x2a9e(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  40352a:	bd 00 00 00 00       	mov    $0x0,%ebp
  40352f:	eb 84                	jmp    4034b5 <launch+0x2e>
  403531:	b9 22 00 00 00       	mov    $0x22,%ecx
  403536:	eb 86                	jmp    4034be <launch+0x37>
  403538:	ba 03 00 00 00       	mov    $0x3,%edx
  40353d:	eb 88                	jmp    4034c7 <launch+0x40>
  40353f:	48 8d 3d 22 11 00 00 	lea    0x1122(%rip),%rdi        # 404668 <is_checker+0x378>
  403546:	ff 15 64 2a 00 00    	call   *0x2a64(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  40354c:	bf 01 00 00 00       	mov    $0x1,%edi
  403551:	ff 15 71 2a 00 00    	call   *0x2a71(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  403557:	48 8b 15 ba 2a 00 00 	mov    0x2aba(%rip),%rdx        # 406018 <stack_size>
  40355e:	be f4 00 00 00       	mov    $0xf4,%esi
  403563:	48 8b 3c 24          	mov    (%rsp),%rdi
  403567:	ff 15 a3 29 00 00    	call   *0x29a3(%rip)        # 405f10 <memset@GLIBC_2.2.5>
  40356d:	48 8d bc 24 e0 03 00 	lea    0x3e0(%rsp),%rdi
  403574:	00 
  403575:	ff 15 75 2a 00 00    	call   *0x2a75(%rip)        # 405ff0 <getcontext@GLIBC_2.2.5>
  40357b:	85 c0                	test   %eax,%eax
  40357d:	74 18                	je     403597 <launch+0x110>
  40357f:	48 8d 3d ca 10 00 00 	lea    0x10ca(%rip),%rdi        # 404650 <is_checker+0x360>
  403586:	ff 15 24 2a 00 00    	call   *0x2a24(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  40358c:	bf 01 00 00 00       	mov    $0x1,%edi
  403591:	ff 15 31 2a 00 00    	call   *0x2a31(%rip)        # 405fc8 <exit@GLIBC_2.2.5>
  403597:	48 8b 04 24          	mov    (%rsp),%rax
  40359b:	48 89 84 24 f0 03 00 	mov    %rax,0x3f0(%rsp)
  4035a2:	00 
  4035a3:	c7 84 24 f8 03 00 00 	movl   $0x0,0x3f8(%rsp)
  4035aa:	00 00 00 00 
  4035ae:	48 8b 05 63 2a 00 00 	mov    0x2a63(%rip),%rax        # 406018 <stack_size>
  4035b5:	48 89 84 24 00 04 00 	mov    %rax,0x400(%rsp)
  4035bc:	00 
  4035bd:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  4035c2:	48 89 9c 24 e8 03 00 	mov    %rbx,0x3e8(%rsp)
  4035c9:	00 
  4035ca:	48 8d ac 24 e0 03 00 	lea    0x3e0(%rsp),%rbp
  4035d1:	00 
  4035d2:	ba 00 00 00 00       	mov    $0x0,%edx
  4035d7:	48 8d 35 f5 fc ff ff 	lea    -0x30b(%rip),%rsi        # 4032d3 <launch_in_altstack>
  4035de:	48 89 ef             	mov    %rbp,%rdi
  4035e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4035e6:	ff 15 64 29 00 00    	call   *0x2964(%rip)        # 405f50 <makecontext@GLIBC_2.2.5>
  4035ec:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4035f1:	48 89 05 d8 2a 00 00 	mov    %rax,0x2ad8(%rip)        # 4060d0 <launch_stack_offset>
  4035f8:	48 89 ee             	mov    %rbp,%rsi
  4035fb:	48 89 df             	mov    %rbx,%rdi
  4035fe:	ff 15 fc 28 00 00    	call   *0x28fc(%rip)        # 405f00 <swapcontext@GLIBC_2.2.5>
  403604:	85 c0                	test   %eax,%eax
  403606:	74 0d                	je     403615 <launch+0x18e>
  403608:	48 8d 3d 4c 10 00 00 	lea    0x104c(%rip),%rdi        # 40465b <is_checker+0x36b>
  40360f:	ff 15 9b 29 00 00    	call   *0x299b(%rip)        # 405fb0 <perror@GLIBC_2.2.5>
  403615:	48 8d 35 9c 10 00 00 	lea    0x109c(%rip),%rsi        # 4046b8 <is_checker+0x3c8>
  40361c:	bf 00 00 00 00       	mov    $0x0,%edi
  403621:	b8 00 00 00 00       	mov    $0x0,%eax
  403626:	67 e8 49 fa ff ff    	addr32 call 403075 <notify_fail>

000000000040362c <check>:
  40362c:	89 f8                	mov    %edi,%eax
  40362e:	c1 e8 1c             	shr    $0x1c,%eax
  403631:	74 1d                	je     403650 <check+0x24>
  403633:	b9 00 00 00 00       	mov    $0x0,%ecx
  403638:	83 f9 1f             	cmp    $0x1f,%ecx
  40363b:	7f 0d                	jg     40364a <check+0x1e>
  40363d:	89 f8                	mov    %edi,%eax
  40363f:	d3 e8                	shr    %cl,%eax
  403641:	3c 0a                	cmp    $0xa,%al
  403643:	74 11                	je     403656 <check+0x2a>
  403645:	83 c1 08             	add    $0x8,%ecx
  403648:	eb ee                	jmp    403638 <check+0xc>
  40364a:	b8 01 00 00 00       	mov    $0x1,%eax
  40364f:	c3                   	ret    
  403650:	b8 00 00 00 00       	mov    $0x0,%eax
  403655:	c3                   	ret    
  403656:	b8 00 00 00 00       	mov    $0x0,%eax
  40365b:	c3                   	ret    

000000000040365c <gencookie>:
  40365c:	53                   	push   %rbx
  40365d:	83 c7 01             	add    $0x1,%edi
  403660:	ff 15 4a 28 00 00    	call   *0x284a(%rip)        # 405eb0 <srandom@GLIBC_2.2.5>
  403666:	ff 15 fc 28 00 00    	call   *0x28fc(%rip)        # 405f68 <random@GLIBC_2.2.5>
  40366c:	89 c3                	mov    %eax,%ebx
  40366e:	89 c7                	mov    %eax,%edi
  403670:	e8 b7 ff ff ff       	call   40362c <check>
  403675:	85 c0                	test   %eax,%eax
  403677:	74 ed                	je     403666 <gencookie+0xa>
  403679:	89 d8                	mov    %ebx,%eax
  40367b:	5b                   	pop    %rbx
  40367c:	c3                   	ret    

000000000040367d <autolab_submit_file>:
  40367d:	53                   	push   %rbx
  40367e:	48 83 ec 58          	sub    $0x58,%rsp
  403682:	49 89 f8             	mov    %rdi,%r8
  403685:	49 89 f1             	mov    %rsi,%r9
  403688:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40368f:	00 00 
  403691:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  403696:	31 c0                	xor    %eax,%eax
  403698:	48 8d 1d a9 0c 00 00 	lea    0xca9(%rip),%rbx        # 404348 <is_checker+0x58>
  40369f:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  4036a4:	48 8d 0d 45 10 00 00 	lea    0x1045(%rip),%rcx        # 4046f0 <hex_digit.0+0x10>
  4036ab:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4036b0:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  4036b5:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  4036ba:	48 8d 05 36 10 00 00 	lea    0x1036(%rip),%rax        # 4046f7 <hex_digit.0+0x17>
  4036c1:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4036c6:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  4036cd:	00 00 
  4036cf:	50                   	push   %rax
  4036d0:	48 89 da             	mov    %rbx,%rdx
  4036d3:	48 8d 35 20 10 00 00 	lea    0x1020(%rip),%rsi        # 4046fa <hex_digit.0+0x1a>
  4036da:	bf 01 00 00 00       	mov    $0x1,%edi
  4036df:	b8 00 00 00 00       	mov    $0x0,%eax
  4036e4:	ff 15 ae 28 00 00    	call   *0x28ae(%rip)        # 405f98 <__printf_chk@GLIBC_2.3.4>
  4036ea:	48 8b 3d 4f 29 00 00 	mov    0x294f(%rip),%rdi        # 406040 <stdout@GLIBC_2.2.5>
  4036f1:	ff 15 81 28 00 00    	call   *0x2881(%rip)        # 405f78 <fflush@GLIBC_2.2.5>
  4036f7:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  4036fc:	4c 8b 0d 5d 29 00 00 	mov    0x295d(%rip),%r9        # 406060 <__environ@GLIBC_2.2.5>
  403703:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  403708:	b9 00 00 00 00       	mov    $0x0,%ecx
  40370d:	ba 00 00 00 00       	mov    $0x0,%edx
  403712:	48 89 de             	mov    %rbx,%rsi
  403715:	ff 15 65 28 00 00    	call   *0x2865(%rip)        # 405f80 <posix_spawnp@GLIBC_2.15>
  40371b:	48 83 c4 10          	add    $0x10,%rsp
  40371f:	85 c0                	test   %eax,%eax
  403721:	74 1a                	je     40373d <autolab_submit_file+0xc0>
  403723:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  403728:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40372f:	00 00 
  403731:	0f 85 c8 00 00 00    	jne    4037ff <autolab_submit_file+0x182>
  403737:	48 83 c4 50          	add    $0x50,%rsp
  40373b:	5b                   	pop    %rbx
  40373c:	c3                   	ret    
  40373d:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  403742:	ba 00 00 00 00       	mov    $0x0,%edx
  403747:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  40374b:	ff 15 4f 28 00 00    	call   *0x284f(%rip)        # 405fa0 <waitpid@GLIBC_2.2.5>
  403751:	83 f8 ff             	cmp    $0xffffffff,%eax
  403754:	74 3a                	je     403790 <autolab_submit_file+0x113>
  403756:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  40375a:	89 cf                	mov    %ecx,%edi
  40375c:	83 e7 7f             	and    $0x7f,%edi
  40375f:	75 39                	jne    40379a <autolab_submit_file+0x11d>
  403761:	0f b6 c5             	movzbl %ch,%eax
  403764:	f6 c5 ff             	test   $0xff,%ch
  403767:	74 ba                	je     403723 <autolab_submit_file+0xa6>
  403769:	89 c1                	mov    %eax,%ecx
  40376b:	48 8d 15 a2 0f 00 00 	lea    0xfa2(%rip),%rdx        # 404714 <hex_digit.0+0x34>
  403772:	be 01 00 00 00       	mov    $0x1,%esi
  403777:	48 8b 3d 22 29 00 00 	mov    0x2922(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  40377e:	b8 00 00 00 00       	mov    $0x0,%eax
  403783:	ff 15 4f 28 00 00    	call   *0x284f(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  403789:	b8 46 00 00 00       	mov    $0x46,%eax
  40378e:	eb 93                	jmp    403723 <autolab_submit_file+0xa6>
  403790:	ff 15 12 27 00 00    	call   *0x2712(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  403796:	8b 00                	mov    (%rax),%eax
  403798:	eb 89                	jmp    403723 <autolab_submit_file+0xa6>
  40379a:	89 c8                	mov    %ecx,%eax
  40379c:	83 e0 7f             	and    $0x7f,%eax
  40379f:	83 c0 01             	add    $0x1,%eax
  4037a2:	3c 01                	cmp    $0x1,%al
  4037a4:	7e 31                	jle    4037d7 <autolab_submit_file+0x15a>
  4037a6:	ff 15 dc 27 00 00    	call   *0x27dc(%rip)        # 405f88 <strsignal@GLIBC_2.2.5>
  4037ac:	48 89 c1             	mov    %rax,%rcx
  4037af:	48 8d 15 77 0f 00 00 	lea    0xf77(%rip),%rdx        # 40472d <hex_digit.0+0x4d>
  4037b6:	be 01 00 00 00       	mov    $0x1,%esi
  4037bb:	48 8b 3d de 28 00 00 	mov    0x28de(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  4037c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4037c7:	ff 15 0b 28 00 00    	call   *0x280b(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  4037cd:	b8 46 00 00 00       	mov    $0x46,%eax
  4037d2:	e9 4c ff ff ff       	jmp    403723 <autolab_submit_file+0xa6>
  4037d7:	48 8d 15 63 0f 00 00 	lea    0xf63(%rip),%rdx        # 404741 <hex_digit.0+0x61>
  4037de:	be 01 00 00 00       	mov    $0x1,%esi
  4037e3:	48 8b 3d b6 28 00 00 	mov    0x28b6(%rip),%rdi        # 4060a0 <stderr@GLIBC_2.2.5>
  4037ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4037ef:	ff 15 e3 27 00 00    	call   *0x27e3(%rip)        # 405fd8 <__fprintf_chk@GLIBC_2.3.4>
  4037f5:	b8 46 00 00 00       	mov    $0x46,%eax
  4037fa:	e9 24 ff ff ff       	jmp    403723 <autolab_submit_file+0xa6>
  4037ff:	ff 15 e3 26 00 00    	call   *0x26e3(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000403805 <autolab_submit_stream>:
  403805:	41 56                	push   %r14
  403807:	41 55                	push   %r13
  403809:	41 54                	push   %r12
  40380b:	55                   	push   %rbp
  40380c:	53                   	push   %rbx
  40380d:	48 83 ec 20          	sub    $0x20,%rsp
  403811:	49 89 fd             	mov    %rdi,%r13
  403814:	48 89 f3             	mov    %rsi,%rbx
  403817:	49 89 d6             	mov    %rdx,%r14
  40381a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403821:	00 00 
  403823:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403828:	31 c0                	xor    %eax,%eax
  40382a:	48 b8 2e 61 73 75 62 	movabs $0x585858627573612e,%rax
  403831:	58 58 58 
  403834:	48 89 44 24 0c       	mov    %rax,0xc(%rsp)
  403839:	c7 44 24 14 58 58 58 	movl   $0x585858,0x14(%rsp)
  403840:	00 
  403841:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  403846:	be 00 00 08 00       	mov    $0x80000,%esi
  40384b:	ff 15 b7 26 00 00    	call   *0x26b7(%rip)        # 405f08 <mkostemp@GLIBC_2.7>
  403851:	83 f8 ff             	cmp    $0xffffffff,%eax
  403854:	74 3e                	je     403894 <autolab_submit_stream+0x8f>
  403856:	89 c5                	mov    %eax,%ebp
  403858:	48 8d 35 fe 0e 00 00 	lea    0xefe(%rip),%rsi        # 40475d <hex_digit.0+0x7d>
  40385f:	89 c7                	mov    %eax,%edi
  403861:	ff 15 29 27 00 00    	call   *0x2729(%rip)        # 405f90 <fdopen@GLIBC_2.2.5>
  403867:	49 89 c4             	mov    %rax,%r12
  40386a:	48 85 c0             	test   %rax,%rax
  40386d:	74 4c                	je     4038bb <autolab_submit_stream+0xb6>
  40386f:	4c 89 f6             	mov    %r14,%rsi
  403872:	48 89 c7             	mov    %rax,%rdi
  403875:	ff d3                	call   *%rbx
  403877:	89 c3                	mov    %eax,%ebx
  403879:	85 c0                	test   %eax,%eax
  40387b:	75 50                	jne    4038cd <autolab_submit_stream+0xc8>
  40387d:	4c 89 e7             	mov    %r12,%rdi
  403880:	ff 15 4a 26 00 00    	call   *0x264a(%rip)        # 405ed0 <fclose@GLIBC_2.2.5>
  403886:	85 c0                	test   %eax,%eax
  403888:	74 4e                	je     4038d8 <autolab_submit_stream+0xd3>
  40388a:	ff 15 18 26 00 00    	call   *0x2618(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  403890:	8b 18                	mov    (%rax),%ebx
  403892:	eb 08                	jmp    40389c <autolab_submit_stream+0x97>
  403894:	ff 15 0e 26 00 00    	call   *0x260e(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  40389a:	8b 18                	mov    (%rax),%ebx
  40389c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4038a1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4038a8:	00 00 
  4038aa:	75 3d                	jne    4038e9 <autolab_submit_stream+0xe4>
  4038ac:	89 d8                	mov    %ebx,%eax
  4038ae:	48 83 c4 20          	add    $0x20,%rsp
  4038b2:	5b                   	pop    %rbx
  4038b3:	5d                   	pop    %rbp
  4038b4:	41 5c                	pop    %r12
  4038b6:	41 5d                	pop    %r13
  4038b8:	41 5e                	pop    %r14
  4038ba:	c3                   	ret    
  4038bb:	ff 15 e7 25 00 00    	call   *0x25e7(%rip)        # 405ea8 <__errno_location@GLIBC_2.2.5>
  4038c1:	8b 18                	mov    (%rax),%ebx
  4038c3:	89 ef                	mov    %ebp,%edi
  4038c5:	ff 15 5d 26 00 00    	call   *0x265d(%rip)        # 405f28 <close@GLIBC_2.2.5>
  4038cb:	eb cf                	jmp    40389c <autolab_submit_stream+0x97>
  4038cd:	4c 89 e7             	mov    %r12,%rdi
  4038d0:	ff 15 fa 25 00 00    	call   *0x25fa(%rip)        # 405ed0 <fclose@GLIBC_2.2.5>
  4038d6:	eb c4                	jmp    40389c <autolab_submit_stream+0x97>
  4038d8:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  4038dd:	4c 89 ef             	mov    %r13,%rdi
  4038e0:	e8 98 fd ff ff       	call   40367d <autolab_submit_file>
  4038e5:	89 c3                	mov    %eax,%ebx
  4038e7:	eb b3                	jmp    40389c <autolab_submit_stream+0x97>
  4038e9:	ff 15 f9 25 00 00    	call   *0x25f9(%rip)        # 405ee8 <__stack_chk_fail@GLIBC_2.4>

Disassembly of section .fini:

00000000004038f0 <_fini>:
  4038f0:	f3 0f 1e fa          	endbr64 
  4038f4:	48 83 ec 08          	sub    $0x8,%rsp
  4038f8:	48 83 c4 08          	add    $0x8,%rsp
  4038fc:	c3                   	ret    
