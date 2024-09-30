
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 31 4f 00 00 	mov    0x4f31(%rip),%rax        # 406f40 <__gmon_start__@Base>
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
  40203f:	ff 15 5b 4e 00 00    	call   *0x4e5b(%rip)        # 406ea0 <__libc_start_main@GLIBC_2.34>
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
  402060:	b8 38 70 40 00       	mov    $0x407038,%eax
  402065:	48 3d 38 70 40 00    	cmp    $0x407038,%rax
  40206b:	74 13                	je     402080 <deregister_tm_clones+0x20>
  40206d:	b8 00 00 00 00       	mov    $0x0,%eax
  402072:	48 85 c0             	test   %rax,%rax
  402075:	74 09                	je     402080 <deregister_tm_clones+0x20>
  402077:	bf 38 70 40 00       	mov    $0x407038,%edi
  40207c:	ff e0                	jmp    *%rax
  40207e:	66 90                	xchg   %ax,%ax
  402080:	c3                   	ret    
  402081:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  402088:	00 00 00 00 
  40208c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402090 <register_tm_clones>:
  402090:	be 38 70 40 00       	mov    $0x407038,%esi
  402095:	48 81 ee 38 70 40 00 	sub    $0x407038,%rsi
  40209c:	48 89 f0             	mov    %rsi,%rax
  40209f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4020a3:	48 c1 f8 03          	sar    $0x3,%rax
  4020a7:	48 01 c6             	add    %rax,%rsi
  4020aa:	48 d1 fe             	sar    %rsi
  4020ad:	74 11                	je     4020c0 <register_tm_clones+0x30>
  4020af:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b4:	48 85 c0             	test   %rax,%rax
  4020b7:	74 07                	je     4020c0 <register_tm_clones+0x30>
  4020b9:	bf 38 70 40 00       	mov    $0x407038,%edi
  4020be:	ff e0                	jmp    *%rax
  4020c0:	c3                   	ret    
  4020c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4020c8:	00 00 00 00 
  4020cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004020d0 <__do_global_dtors_aux>:
  4020d0:	f3 0f 1e fa          	endbr64 
  4020d4:	80 3d cd 4f 00 00 00 	cmpb   $0x0,0x4fcd(%rip)        # 4070a8 <completed.0>
  4020db:	75 13                	jne    4020f0 <__do_global_dtors_aux+0x20>
  4020dd:	55                   	push   %rbp
  4020de:	48 89 e5             	mov    %rsp,%rbp
  4020e1:	e8 7a ff ff ff       	call   402060 <deregister_tm_clones>
  4020e6:	c6 05 bb 4f 00 00 01 	movb   $0x1,0x4fbb(%rip)        # 4070a8 <completed.0>
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
  40210e:	89 3d b4 4f 00 00    	mov    %edi,0x4fb4(%rip)        # 4070c8 <check_level>
  402114:	8b 1d b6 20 00 00    	mov    0x20b6(%rip),%ebx        # 4041d0 <target_id>
  40211a:	89 df                	mov    %ebx,%edi
  40211c:	67 e8 5a 16 00 00    	addr32 call 40377c <gencookie>
  402122:	89 05 98 4f 00 00    	mov    %eax,0x4f98(%rip)        # 4070c0 <cookie>
  402128:	8d 7b 01             	lea    0x1(%rbx),%edi
  40212b:	ff 15 7f 4d 00 00    	call   *0x4d7f(%rip)        # 406eb0 <srandom@GLIBC_2.2.5>
  402131:	ff 15 31 4e 00 00    	call   *0x4e31(%rip)        # 406f68 <random@GLIBC_2.2.5>
  402137:	89 c7                	mov    %eax,%edi
  402139:	67 e8 7f 03 00 00    	addr32 call 4024be <scramble>
  40213f:	89 c3                	mov    %eax,%ebx
  402141:	bf 00 00 00 00       	mov    $0x0,%edi
  402146:	ff 15 0c 4e 00 00    	call   *0x4e0c(%rip)        # 406f58 <time@GLIBC_2.2.5>
  40214c:	89 c7                	mov    %eax,%edi
  40214e:	ff 15 5c 4d 00 00    	call   *0x4d5c(%rip)        # 406eb0 <srandom@GLIBC_2.2.5>
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
  402172:	ff 15 f0 4d 00 00    	call   *0x4df0(%rip)        # 406f68 <random@GLIBC_2.2.5>
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
  40219d:	ff 15 f5 4d 00 00    	call   *0x4df5(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  4021a3:	48 8d 35 86 1e 00 00 	lea    0x1e86(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
  4021aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4021af:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b4:	ff 15 de 4d 00 00    	call   *0x4dde(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  4021ba:	48 8d 35 58 1f 00 00 	lea    0x1f58(%rip),%rsi        # 404119 <_IO_stdin_used+0x119>
  4021c1:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021cb:	ff 15 c7 4d 00 00    	call   *0x4dc7(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  4021d1:	48 8d 35 5c 1f 00 00 	lea    0x1f5c(%rip),%rsi        # 404134 <_IO_stdin_used+0x134>
  4021d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e2:	ff 15 b0 4d 00 00    	call   *0x4db0(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  4021e8:	48 8d 35 69 1e 00 00 	lea    0x1e69(%rip),%rsi        # 404058 <_IO_stdin_used+0x58>
  4021ef:	bf 01 00 00 00       	mov    $0x1,%edi
  4021f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f9:	ff 15 99 4d 00 00    	call   *0x4d99(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  4021ff:	bf 00 00 00 00       	mov    $0x0,%edi
  402204:	ff 15 be 4d 00 00    	call   *0x4dbe(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  40220a:	48 8d 35 6f 1e 00 00 	lea    0x1e6f(%rip),%rsi        # 404080 <_IO_stdin_used+0x80>
  402211:	bf 01 00 00 00       	mov    $0x1,%edi
  402216:	b8 00 00 00 00       	mov    $0x0,%eax
  40221b:	ff 15 77 4d 00 00    	call   *0x4d77(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  402221:	48 8d 35 78 1e 00 00 	lea    0x1e78(%rip),%rsi        # 4040a0 <_IO_stdin_used+0xa0>
  402228:	bf 01 00 00 00       	mov    $0x1,%edi
  40222d:	b8 00 00 00 00       	mov    $0x0,%eax
  402232:	ff 15 60 4d 00 00    	call   *0x4d60(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  402238:	48 8d 35 89 1e 00 00 	lea    0x1e89(%rip),%rsi        # 4040c8 <_IO_stdin_used+0xc8>
  40223f:	bf 01 00 00 00       	mov    $0x1,%edi
  402244:	b8 00 00 00 00       	mov    $0x0,%eax
  402249:	ff 15 49 4d 00 00    	call   *0x4d49(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  40224f:	48 8d 35 fb 1e 00 00 	lea    0x1efb(%rip),%rsi        # 404151 <_IO_stdin_used+0x151>
  402256:	bf 01 00 00 00       	mov    $0x1,%edi
  40225b:	b8 00 00 00 00       	mov    $0x0,%eax
  402260:	ff 15 32 4d 00 00    	call   *0x4d32(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
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
  4022a3:	48 8b 05 a6 4d 00 00 	mov    0x4da6(%rip),%rax        # 407050 <stdin@GLIBC_2.2.5>
  4022aa:	48 89 05 ff 4d 00 00 	mov    %rax,0x4dff(%rip)        # 4070b0 <global_infile>
  4022b1:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4022b7:	e9 ad 00 00 00       	jmp    402369 <main+0x101>
  4022bc:	4c 8d 25 b0 1e 00 00 	lea    0x1eb0(%rip),%r12        # 404173 <_IO_stdin_used+0x173>
  4022c3:	eb de                	jmp    4022a3 <main+0x3b>
  4022c5:	48 8b 3b             	mov    (%rbx),%rdi
  4022c8:	e8 ad fe ff ff       	call   40217a <usage>
  4022cd:	48 8d 35 a4 1e 00 00 	lea    0x1ea4(%rip),%rsi        # 404178 <_IO_stdin_used+0x178>
  4022d4:	48 8b 3d a5 4d 00 00 	mov    0x4da5(%rip),%rdi        # 407080 <optarg@GLIBC_2.2.5>
  4022db:	ff 15 c7 4c 00 00    	call   *0x4cc7(%rip)        # 406fa8 <fopen@GLIBC_2.2.5>
  4022e1:	48 89 05 c8 4d 00 00 	mov    %rax,0x4dc8(%rip)        # 4070b0 <global_infile>
  4022e8:	48 85 c0             	test   %rax,%rax
  4022eb:	75 7c                	jne    402369 <main+0x101>
  4022ed:	ff 15 b5 4b 00 00    	call   *0x4bb5(%rip)        # 406ea8 <__errno_location@GLIBC_2.2.5>
  4022f3:	8b 38                	mov    (%rax),%edi
  4022f5:	ff 15 ed 4c 00 00    	call   *0x4ced(%rip)        # 406fe8 <strerror@GLIBC_2.2.5>
  4022fb:	49 89 c0             	mov    %rax,%r8
  4022fe:	48 8b 0d 7b 4d 00 00 	mov    0x4d7b(%rip),%rcx        # 407080 <optarg@GLIBC_2.2.5>
  402305:	48 8d 15 ec 1d 00 00 	lea    0x1dec(%rip),%rdx        # 4040f8 <_IO_stdin_used+0xf8>
  40230c:	be 01 00 00 00       	mov    $0x1,%esi
  402311:	48 8b 3d 88 4d 00 00 	mov    0x4d88(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  402318:	b8 00 00 00 00       	mov    $0x0,%eax
  40231d:	ff 15 b5 4c 00 00    	call   *0x4cb5(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
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
  402359:	48 8b 3d 20 4d 00 00 	mov    0x4d20(%rip),%rdi        # 407080 <optarg@GLIBC_2.2.5>
  402360:	ff 15 e2 4b 00 00    	call   *0x4be2(%rip)        # 406f48 <strtol@GLIBC_2.2.5>
  402366:	41 89 c5             	mov    %eax,%r13d
  402369:	4c 89 e2             	mov    %r12,%rdx
  40236c:	48 89 de             	mov    %rbx,%rsi
  40236f:	89 ef                	mov    %ebp,%edi
  402371:	ff 15 41 4c 00 00    	call   *0x4c41(%rip)        # 406fb8 <getopt@GLIBC_2.2.5>
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
  402398:	c6 05 71 4c 00 00 00 	movb   $0x0,0x4c71(%rip)        # 407010 <notify>
  40239f:	eb c8                	jmp    402369 <main+0x101>
  4023a1:	ba 0a 00 00 00       	mov    $0xa,%edx
  4023a6:	be 00 00 00 00       	mov    $0x0,%esi
  4023ab:	48 8b 3d ce 4c 00 00 	mov    0x4cce(%rip),%rdi        # 407080 <optarg@GLIBC_2.2.5>
  4023b2:	ff 15 08 4c 00 00    	call   *0x4c08(%rip)        # 406fc0 <strtoul@GLIBC_2.2.5>
  4023b8:	89 05 6a 4c 00 00    	mov    %eax,0x4c6a(%rip)        # 407028 <checker_timeout>
  4023be:	eb a9                	jmp    402369 <main+0x101>
  4023c0:	89 ca                	mov    %ecx,%edx
  4023c2:	48 8d 35 b1 1d 00 00 	lea    0x1db1(%rip),%rsi        # 40417a <_IO_stdin_used+0x17a>
  4023c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d3:	ff 15 bf 4b 00 00    	call   *0x4bbf(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  4023d9:	48 8b 3b             	mov    (%rbx),%rdi
  4023dc:	e8 99 fd ff ff       	call   40217a <usage>
  4023e1:	c7 84 24 88 00 00 00 	movl   $0xc0000000,0x88(%rsp)
  4023e8:	00 00 00 c0 
  4023ec:	48 c7 c0 60 33 40 00 	mov    $0x403360,%rax
  4023f3:	48 89 04 24          	mov    %rax,(%rsp)
  4023f7:	48 89 e3             	mov    %rsp,%rbx
  4023fa:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4023ff:	ff 15 33 4b 00 00    	call   *0x4b33(%rip)        # 406f38 <sigemptyset@GLIBC_2.2.5>
  402405:	ba 00 00 00 00       	mov    $0x0,%edx
  40240a:	48 89 de             	mov    %rbx,%rsi
  40240d:	bf 0b 00 00 00       	mov    $0xb,%edi
  402412:	ff 15 b0 4a 00 00    	call   *0x4ab0(%rip)        # 406ec8 <sigaction@GLIBC_2.2.5>
  402418:	ba 00 00 00 00       	mov    $0x0,%edx
  40241d:	48 89 de             	mov    %rbx,%rsi
  402420:	bf 07 00 00 00       	mov    $0x7,%edi
  402425:	ff 15 9d 4a 00 00    	call   *0x4a9d(%rip)        # 406ec8 <sigaction@GLIBC_2.2.5>
  40242b:	ba 00 00 00 00       	mov    $0x0,%edx
  402430:	48 89 de             	mov    %rbx,%rsi
  402433:	bf 04 00 00 00       	mov    $0x4,%edi
  402438:	ff 15 8a 4a 00 00    	call   *0x4a8a(%rip)        # 406ec8 <sigaction@GLIBC_2.2.5>
  40243e:	ba 00 00 00 00       	mov    $0x0,%edx
  402443:	48 89 de             	mov    %rbx,%rsi
  402446:	bf 08 00 00 00       	mov    $0x8,%edi
  40244b:	ff 15 77 4a 00 00    	call   *0x4a77(%rip)        # 406ec8 <sigaction@GLIBC_2.2.5>
  402451:	ba 00 00 00 00       	mov    $0x0,%edx
  402456:	48 89 de             	mov    %rbx,%rsi
  402459:	bf 0e 00 00 00       	mov    $0xe,%edi
  40245e:	ff 15 64 4a 00 00    	call   *0x4a64(%rip)        # 406ec8 <sigaction@GLIBC_2.2.5>
  402464:	0f b6 1d 6a 1d 00 00 	movzbl 0x1d6a(%rip),%ebx        # 4041d5 <randomize_stack>
  40246b:	0f b6 f3             	movzbl %bl,%esi
  40246e:	44 89 ef             	mov    %r13d,%edi
  402471:	e8 90 fc ff ff       	call   402106 <initialize_target>
  402476:	48 89 c5             	mov    %rax,%rbp
  402479:	8b 15 41 4c 00 00    	mov    0x4c41(%rip),%edx        # 4070c0 <cookie>
  40247f:	48 8d 35 07 1d 00 00 	lea    0x1d07(%rip),%rsi        # 40418d <_IO_stdin_used+0x18d>
  402486:	bf 01 00 00 00       	mov    $0x1,%edi
  40248b:	b8 00 00 00 00       	mov    $0x0,%eax
  402490:	ff 15 02 4b 00 00    	call   *0x4b02(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  402496:	45 84 f6             	test   %r14b,%r14b
  402499:	75 0f                	jne    4024aa <main+0x242>
  40249b:	83 f3 01             	xor    $0x1,%ebx
  40249e:	0f b6 fb             	movzbl %bl,%edi
  4024a1:	48 89 ee             	mov    %rbp,%rsi
  4024a4:	67 e8 fd 10 00 00    	addr32 call 4035a7 <launch>
  4024aa:	8b 3d 78 4b 00 00    	mov    0x4b78(%rip),%edi        # 407028 <checker_timeout>
  4024b0:	ff 15 6a 4a 00 00    	call   *0x4a6a(%rip)        # 406f20 <alarm@GLIBC_2.2.5>
  4024b6:	eb e3                	jmp    40249b <main+0x233>
  4024b8:	ff 15 2a 4a 00 00    	call   *0x4a2a(%rip)        # 406ee8 <__stack_chk_fail@GLIBC_2.4>

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
  402a11:	ff 15 d1 44 00 00    	call   *0x44d1(%rip)        # 406ee8 <__stack_chk_fail@GLIBC_2.4>

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
  402a2e:	ff 15 c4 45 00 00    	call   *0x45c4(%rip)        # 406ff8 <getc@GLIBC_2.2.5>
  402a34:	83 f8 ff             	cmp    $0xffffffff,%eax
  402a37:	74 05                	je     402a3e <read_and_process_line+0x27>
  402a39:	83 f8 0a             	cmp    $0xa,%eax
  402a3c:	75 e7                	jne    402a25 <read_and_process_line+0xe>
  402a3e:	48 89 e7             	mov    %rsp,%rdi
  402a41:	48 89 de             	mov    %rbx,%rsi
  402a44:	48 29 fe             	sub    %rdi,%rsi
  402a47:	67 e8 81 0a 00 00    	addr32 call 4034ce <process_line>
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
  402a7a:	ff 15 40 45 00 00    	call   *0x4540(%rip)        # 406fc0 <strtoul@GLIBC_2.2.5>
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
  402ac6:	ff 15 1c 44 00 00    	call   *0x441c(%rip)        # 406ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000402acc <report_touch3>:
  402acc:	53                   	push   %rbx
  402acd:	48 89 fa             	mov    %rdi,%rdx
  402ad0:	48 89 f3             	mov    %rsi,%rbx
  402ad3:	48 8d 35 10 17 00 00 	lea    0x1710(%rip),%rsi        # 4041ea <randomize_stack+0x15>
  402ada:	bf 01 00 00 00       	mov    $0x1,%edi
  402adf:	b8 00 00 00 00       	mov    $0x0,%eax
  402ae4:	ff 15 ae 44 00 00    	call   *0x44ae(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  402aea:	eb 1f                	jmp    402b0b <report_touch3+0x3f>
  402aec:	40 0f b6 d7          	movzbl %dil,%edx
  402af0:	48 8d 35 0b 17 00 00 	lea    0x170b(%rip),%rsi        # 404202 <randomize_stack+0x2d>
  402af7:	bf 01 00 00 00       	mov    $0x1,%edi
  402afc:	b8 00 00 00 00       	mov    $0x0,%eax
  402b01:	ff 15 91 44 00 00    	call   *0x4491(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
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
  402b2a:	48 8b 35 0f 45 00 00 	mov    0x450f(%rip),%rsi        # 407040 <stdout@GLIBC_2.2.5>
  402b31:	ff 15 f9 43 00 00    	call   *0x43f9(%rip)        # 406f30 <putc@GLIBC_2.2.5>
  402b37:	eb ce                	jmp    402b07 <report_touch3+0x3b>
  402b39:	48 8b 35 00 45 00 00 	mov    0x4500(%rip),%rsi        # 407040 <stdout@GLIBC_2.2.5>
  402b40:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b45:	ff 15 e5 43 00 00    	call   *0x43e5(%rip)        # 406f30 <putc@GLIBC_2.2.5>
  402b4b:	48 8b 35 ee 44 00 00 	mov    0x44ee(%rip),%rsi        # 407040 <stdout@GLIBC_2.2.5>
  402b52:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b57:	ff 15 d3 43 00 00    	call   *0x43d3(%rip)        # 406f30 <putc@GLIBC_2.2.5>
  402b5d:	eb a8                	jmp    402b07 <report_touch3+0x3b>
  402b5f:	48 8b 35 da 44 00 00 	mov    0x44da(%rip),%rsi        # 407040 <stdout@GLIBC_2.2.5>
  402b66:	bf 5c 00 00 00       	mov    $0x5c,%edi
  402b6b:	ff 15 bf 43 00 00    	call   *0x43bf(%rip)        # 406f30 <putc@GLIBC_2.2.5>
  402b71:	48 8b 35 c8 44 00 00 	mov    0x44c8(%rip),%rsi        # 407040 <stdout@GLIBC_2.2.5>
  402b78:	bf 22 00 00 00       	mov    $0x22,%edi
  402b7d:	ff 15 ad 43 00 00    	call   *0x43ad(%rip)        # 406f30 <putc@GLIBC_2.2.5>
  402b83:	eb 82                	jmp    402b07 <report_touch3+0x3b>
  402b85:	48 8d 3d 7d 16 00 00 	lea    0x167d(%rip),%rdi        # 404209 <randomize_stack+0x34>
  402b8c:	ff 15 26 43 00 00    	call   *0x4326(%rip)        # 406eb8 <puts@GLIBC_2.2.5>
  402b92:	5b                   	pop    %rbx
  402b93:	c3                   	ret    

0000000000402b94 <touch1>:
  402b94:	55                   	push   %rbp
  402b95:	48 89 e5             	mov    %rsp,%rbp
  402b98:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402b9c:	c7 05 1e 45 00 00 01 	movl   $0x1,0x451e(%rip)        # 4070c4 <vlevel>
  402ba3:	00 00 00 
  402ba6:	48 8d 35 5f 16 00 00 	lea    0x165f(%rip),%rsi        # 40420c <randomize_stack+0x37>
  402bad:	bf 01 00 00 00       	mov    $0x1,%edi
  402bb2:	b8 00 00 00 00       	mov    $0x0,%eax
  402bb7:	ff 15 db 43 00 00    	call   *0x43db(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  402bbd:	bf 01 00 00 00       	mov    $0x1,%edi
  402bc2:	67 e8 00 02 00 00    	addr32 call 402dc8 <validate>

0000000000402bc8 <touch2>:
  402bc8:	55                   	push   %rbp
  402bc9:	48 89 e5             	mov    %rsp,%rbp
  402bcc:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402bd0:	89 fa                	mov    %edi,%edx
  402bd2:	c7 05 e8 44 00 00 02 	movl   $0x2,0x44e8(%rip)        # 4070c4 <vlevel>
  402bd9:	00 00 00 
  402bdc:	39 3d de 44 00 00    	cmp    %edi,0x44de(%rip)        # 4070c0 <cookie>
  402be2:	74 17                	je     402bfb <touch2+0x33>
  402be4:	48 8d 35 7d 16 00 00 	lea    0x167d(%rip),%rsi        # 404268 <randomize_stack+0x93>
  402beb:	bf 02 00 00 00       	mov    $0x2,%edi
  402bf0:	b8 00 00 00 00       	mov    $0x0,%eax
  402bf5:	67 e8 9a 05 00 00    	addr32 call 403195 <notify_fail>
  402bfb:	48 8d 35 3e 16 00 00 	lea    0x163e(%rip),%rsi        # 404240 <randomize_stack+0x6b>
  402c02:	bf 01 00 00 00       	mov    $0x1,%edi
  402c07:	b8 00 00 00 00       	mov    $0x0,%eax
  402c0c:	ff 15 86 43 00 00    	call   *0x4386(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  402c12:	bf 02 00 00 00       	mov    $0x2,%edi
  402c17:	67 e8 ab 01 00 00    	addr32 call 402dc8 <validate>

0000000000402c1d <touch3>:
  402c1d:	55                   	push   %rbp
  402c1e:	48 89 e5             	mov    %rsp,%rbp
  402c21:	53                   	push   %rbx
  402c22:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402c26:	48 89 fb             	mov    %rdi,%rbx
  402c29:	c7 05 91 44 00 00 03 	movl   $0x3,0x4491(%rip)        # 4070c4 <vlevel>
  402c30:	00 00 00 
  402c33:	48 89 fe             	mov    %rdi,%rsi
  402c36:	8b 3d 84 44 00 00    	mov    0x4484(%rip),%edi        # 4070c0 <cookie>
  402c3c:	e8 13 fe ff ff       	call   402a54 <hexmatch>
  402c41:	85 c0                	test   %eax,%eax
  402c43:	74 1a                	je     402c5f <touch3+0x42>
  402c45:	48 89 de             	mov    %rbx,%rsi
  402c48:	48 8d 3d db 15 00 00 	lea    0x15db(%rip),%rdi        # 40422a <randomize_stack+0x55>
  402c4f:	e8 78 fe ff ff       	call   402acc <report_touch3>
  402c54:	bf 03 00 00 00       	mov    $0x3,%edi
  402c59:	67 e8 69 01 00 00    	addr32 call 402dc8 <validate>
  402c5f:	48 89 de             	mov    %rbx,%rsi
  402c62:	48 8d 3d c9 15 00 00 	lea    0x15c9(%rip),%rdi        # 404232 <randomize_stack+0x5d>
  402c69:	e8 5e fe ff ff       	call   402acc <report_touch3>
  402c6e:	48 8d 35 1b 16 00 00 	lea    0x161b(%rip),%rsi        # 404290 <randomize_stack+0xbb>
  402c75:	bf 03 00 00 00       	mov    $0x3,%edi
  402c7a:	b8 00 00 00 00       	mov    $0x0,%eax
  402c7f:	67 e8 10 05 00 00    	addr32 call 403195 <notify_fail>

0000000000402c85 <test>:
  402c85:	50                   	push   %rax
  402c86:	58                   	pop    %rax
  402c87:	48 83 ec 08          	sub    $0x8,%rsp
  402c8b:	67 e8 86 fd ff ff    	addr32 call 402a17 <read_and_process_line>
  402c91:	48 8d 35 20 16 00 00 	lea    0x1620(%rip),%rsi        # 4042b8 <randomize_stack+0xe3>
  402c98:	bf 00 00 00 00       	mov    $0x0,%edi
  402c9d:	b8 00 00 00 00       	mov    $0x0,%eax
  402ca2:	67 e8 ed 04 00 00    	addr32 call 403195 <notify_fail>

0000000000402ca8 <start_farm>:
  402ca8:	b8 01 00 00 00       	mov    $0x1,%eax
  402cad:	c3                   	ret    

0000000000402cae <getval_343>:
  402cae:	b8 78 90 90 c3       	mov    $0xc3909078,%eax
  402cb3:	c3                   	ret    

0000000000402cb4 <getval_440>:
  402cb4:	b8 58 92 90 90       	mov    $0x90909258,%eax
  402cb9:	c3                   	ret    

0000000000402cba <getval_262>:
  402cba:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  402cbf:	c3                   	ret    

0000000000402cc0 <getval_180>:
  402cc0:	b8 48 8d c7 c3       	mov    $0xc3c78d48,%eax
  402cc5:	c3                   	ret    

0000000000402cc6 <setval_104>:
  402cc6:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  402ccc:	c3                   	ret    

0000000000402ccd <getval_297>:
  402ccd:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  402cd2:	c3                   	ret    

0000000000402cd3 <setval_392>:
  402cd3:	c7 07 48 89 c7 c1    	movl   $0xc1c78948,(%rdi)
  402cd9:	c3                   	ret    

0000000000402cda <setval_110>:
  402cda:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  402ce0:	c3                   	ret    

0000000000402ce1 <mid_farm>:
  402ce1:	b8 01 00 00 00       	mov    $0x1,%eax
  402ce6:	c3                   	ret    

0000000000402ce7 <add_xy>:
  402ce7:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  402ceb:	c3                   	ret    

0000000000402cec <addval_410>:
  402cec:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  402cf2:	c3                   	ret    

0000000000402cf3 <addval_228>:
  402cf3:	8d 87 c9 c2 90 c3    	lea    -0x3c6f3d37(%rdi),%eax
  402cf9:	c3                   	ret    

0000000000402cfa <getval_115>:
  402cfa:	b8 89 d1 a4 c0       	mov    $0xc0a4d189,%eax
  402cff:	c3                   	ret    

0000000000402d00 <getval_442>:
  402d00:	b8 89 ce 94 c3       	mov    $0xc394ce89,%eax
  402d05:	c3                   	ret    

0000000000402d06 <addval_140>:
  402d06:	8d 87 09 d1 20 c9    	lea    -0x36df2ef7(%rdi),%eax
  402d0c:	c3                   	ret    

0000000000402d0d <setval_295>:
  402d0d:	c7 07 89 d1 94 c9    	movl   $0xc994d189,(%rdi)
  402d13:	c3                   	ret    

0000000000402d14 <setval_237>:
  402d14:	c7 07 08 89 e0 90    	movl   $0x90e08908,(%rdi)
  402d1a:	c3                   	ret    

0000000000402d1b <setval_102>:
  402d1b:	c7 07 89 ce 84 db    	movl   $0xdb84ce89,(%rdi)
  402d21:	c3                   	ret    

0000000000402d22 <addval_389>:
  402d22:	8d 87 89 c2 38 d2    	lea    -0x2dc73d77(%rdi),%eax
  402d28:	c3                   	ret    

0000000000402d29 <getval_448>:
  402d29:	b8 48 8b e0 c3       	mov    $0xc3e08b48,%eax
  402d2e:	c3                   	ret    

0000000000402d2f <setval_216>:
  402d2f:	c7 07 89 c2 78 c9    	movl   $0xc978c289,(%rdi)
  402d35:	c3                   	ret    

0000000000402d36 <getval_445>:
  402d36:	b8 8b c2 90 c3       	mov    $0xc390c28b,%eax
  402d3b:	c3                   	ret    

0000000000402d3c <addval_223>:
  402d3c:	8d 87 a9 d1 08 db    	lea    -0x24f72e57(%rdi),%eax
  402d42:	c3                   	ret    

0000000000402d43 <getval_464>:
  402d43:	b8 81 d1 90 90       	mov    $0x9090d181,%eax
  402d48:	c3                   	ret    

0000000000402d49 <getval_467>:
  402d49:	b8 88 ce 38 c9       	mov    $0xc938ce88,%eax
  402d4e:	c3                   	ret    

0000000000402d4f <addval_101>:
  402d4f:	8d 87 60 89 d1 c3    	lea    -0x3c2e76a0(%rdi),%eax
  402d55:	c3                   	ret    

0000000000402d56 <setval_155>:
  402d56:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi)
  402d5c:	c3                   	ret    

0000000000402d5d <getval_248>:
  402d5d:	b8 dd 89 d1 94       	mov    $0x94d189dd,%eax
  402d62:	c3                   	ret    

0000000000402d63 <getval_336>:
  402d63:	b8 89 c2 48 c9       	mov    $0xc948c289,%eax
  402d68:	c3                   	ret    

0000000000402d69 <addval_107>:
  402d69:	8d 87 89 c2 91 c3    	lea    -0x3c6e3d77(%rdi),%eax
  402d6f:	c3                   	ret    

0000000000402d70 <getval_376>:
  402d70:	b8 4a 89 e0 c3       	mov    $0xc3e0894a,%eax
  402d75:	c3                   	ret    

0000000000402d76 <setval_286>:
  402d76:	c7 07 89 c2 84 db    	movl   $0xdb84c289,(%rdi)
  402d7c:	c3                   	ret    

0000000000402d7d <setval_351>:
  402d7d:	c7 07 8b c2 20 db    	movl   $0xdb20c28b,(%rdi)
  402d83:	c3                   	ret    

0000000000402d84 <setval_112>:
  402d84:	c7 07 8d ce 84 c9    	movl   $0xc984ce8d,(%rdi)
  402d8a:	c3                   	ret    

0000000000402d8b <setval_272>:
  402d8b:	c7 07 89 ce a4 c0    	movl   $0xc0a4ce89,(%rdi)
  402d91:	c3                   	ret    

0000000000402d92 <setval_465>:
  402d92:	c7 07 c1 89 d1 c3    	movl   $0xc3d189c1,(%rdi)
  402d98:	c3                   	ret    

0000000000402d99 <setval_409>:
  402d99:	c7 07 fc 48 81 e0    	movl   $0xe08148fc,(%rdi)
  402d9f:	c3                   	ret    

0000000000402da0 <addval_324>:
  402da0:	8d 87 89 ce 20 c9    	lea    -0x36df3177(%rdi),%eax
  402da6:	c3                   	ret    

0000000000402da7 <addval_281>:
  402da7:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  402dad:	c3                   	ret    

0000000000402dae <getval_408>:
  402dae:	b8 89 ce 48 c0       	mov    $0xc048ce89,%eax
  402db3:	c3                   	ret    

0000000000402db4 <setval_388>:
  402db4:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  402dba:	c3                   	ret    

0000000000402dbb <getval_125>:
  402dbb:	b8 c9 ce 20 c0       	mov    $0xc020cec9,%eax
  402dc0:	c3                   	ret    

0000000000402dc1 <end_farm>:
  402dc1:	b8 01 00 00 00       	mov    $0x1,%eax
  402dc6:	c3                   	ret    
  402dc7:	90                   	nop

0000000000402dc8 <validate>:
  402dc8:	8b 35 f6 42 00 00    	mov    0x42f6(%rip),%esi        # 4070c4 <vlevel>
  402dce:	8b 15 f4 42 00 00    	mov    0x42f4(%rip),%edx        # 4070c8 <check_level>
  402dd4:	e9 36 05 00 00       	jmp    40330f <validate_inner>

0000000000402dd9 <notify_generate_submission>:
  402dd9:	41 54                	push   %r12
  402ddb:	55                   	push   %rbp
  402ddc:	53                   	push   %rbx
  402ddd:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  402de4:	48 89 fb             	mov    %rdi,%rbx
  402de7:	48 89 f5             	mov    %rsi,%rbp
  402dea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402df1:	00 00 
  402df3:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402dfa:	00 
  402dfb:	31 c0                	xor    %eax,%eax
  402dfd:	ff 15 ed 40 00 00    	call   *0x40ed(%rip)        # 406ef0 <getuid@GLIBC_2.2.5>
  402e03:	41 89 c4             	mov    %eax,%r12d
  402e06:	89 c7                	mov    %eax,%edi
  402e08:	ff 15 d2 40 00 00    	call   *0x40d2(%rip)        # 406ee0 <getpwuid@GLIBC_2.2.5>
  402e0e:	48 85 c0             	test   %rax,%rax
  402e11:	0f 84 eb 00 00 00    	je     402f02 <notify_generate_submission+0x129>
  402e17:	48 8b 08             	mov    (%rax),%rcx
  402e1a:	48 8d 15 d3 14 00 00 	lea    0x14d3(%rip),%rdx        # 4042f4 <is_checker+0x4>
  402e21:	be 01 00 00 00       	mov    $0x1,%esi
  402e26:	48 89 df             	mov    %rbx,%rdi
  402e29:	b8 00 00 00 00       	mov    $0x0,%eax
  402e2e:	ff 15 a4 41 00 00    	call   *0x41a4(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  402e34:	44 8b 4d 14          	mov    0x14(%rbp),%r9d
  402e38:	44 0f be 05 94 13 00 	movsbl 0x1394(%rip),%r8d        # 4041d4 <target_prefix>
  402e3f:	00 
  402e40:	8b 0d 8a 13 00 00    	mov    0x138a(%rip),%ecx        # 4041d0 <target_id>
  402e46:	48 8d 15 8b 15 00 00 	lea    0x158b(%rip),%rdx        # 4043d8 <is_checker+0xe8>
  402e4d:	be 01 00 00 00       	mov    $0x1,%esi
  402e52:	48 89 df             	mov    %rbx,%rdi
  402e55:	b8 00 00 00 00       	mov    $0x0,%eax
  402e5a:	ff 15 78 41 00 00    	call   *0x4178(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  402e60:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
  402e64:	0f 85 ba 00 00 00    	jne    402f24 <notify_generate_submission+0x14b>
  402e6a:	48 83 7d 00 00       	cmpq   $0x0,0x0(%rbp)
  402e6f:	0f 84 ce 00 00 00    	je     402f43 <notify_generate_submission+0x16a>
  402e75:	48 89 d9             	mov    %rbx,%rcx
  402e78:	ba 06 00 00 00       	mov    $0x6,%edx
  402e7d:	be 01 00 00 00       	mov    $0x1,%esi
  402e82:	48 8d 3d 99 14 00 00 	lea    0x1499(%rip),%rdi        # 404322 <is_checker+0x32>
  402e89:	ff 15 41 41 00 00    	call   *0x4141(%rip)        # 406fd0 <fwrite@GLIBC_2.2.5>
  402e8f:	48 8b 4d 08          	mov    0x8(%rbp),%rcx
  402e93:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  402e97:	be 01 00 00 00       	mov    $0x1,%esi
  402e9c:	48 89 df             	mov    %rbx,%rdi
  402e9f:	ff 15 f3 3f 00 00    	call   *0x3ff3(%rip)        # 406e98 <__vfprintf_chk@GLIBC_2.3.4>
  402ea5:	48 8b 0d 0c 42 00 00 	mov    0x420c(%rip),%rcx        # 4070b8 <gets_buf>
  402eac:	48 8d 15 76 14 00 00 	lea    0x1476(%rip),%rdx        # 404329 <is_checker+0x39>
  402eb3:	be 01 00 00 00       	mov    $0x1,%esi
  402eb8:	48 89 df             	mov    %rbx,%rdi
  402ebb:	b8 00 00 00 00       	mov    $0x0,%eax
  402ec0:	ff 15 12 41 00 00    	call   *0x4112(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  402ec6:	48 89 df             	mov    %rbx,%rdi
  402ec9:	ff 15 f1 3f 00 00    	call   *0x3ff1(%rip)        # 406ec0 <ferror@GLIBC_2.2.5>
  402ecf:	85 c0                	test   %eax,%eax
  402ed1:	0f 84 8b 00 00 00    	je     402f62 <notify_generate_submission+0x189>
  402ed7:	ff 15 cb 3f 00 00    	call   *0x3fcb(%rip)        # 406ea8 <__errno_location@GLIBC_2.2.5>
  402edd:	8b 00                	mov    (%rax),%eax
  402edf:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  402ee6:	00 
  402ee7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402eee:	00 00 
  402ef0:	0f 85 fe 01 00 00    	jne    4030f4 <notify_generate_submission+0x31b>
  402ef6:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  402efd:	5b                   	pop    %rbx
  402efe:	5d                   	pop    %rbp
  402eff:	41 5c                	pop    %r12
  402f01:	c3                   	ret    
  402f02:	44 89 e1             	mov    %r12d,%ecx
  402f05:	48 8d 15 fa 13 00 00 	lea    0x13fa(%rip),%rdx        # 404306 <is_checker+0x16>
  402f0c:	be 01 00 00 00       	mov    $0x1,%esi
  402f11:	48 89 df             	mov    %rbx,%rdi
  402f14:	b8 00 00 00 00       	mov    $0x0,%eax
  402f19:	ff 15 b9 40 00 00    	call   *0x40b9(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  402f1f:	e9 10 ff ff ff       	jmp    402e34 <notify_generate_submission+0x5b>
  402f24:	48 89 d9             	mov    %rbx,%rcx
  402f27:	ba 04 00 00 00       	mov    $0x4,%edx
  402f2c:	be 01 00 00 00       	mov    $0x1,%esi
  402f31:	48 8d 3d e0 13 00 00 	lea    0x13e0(%rip),%rdi        # 404318 <is_checker+0x28>
  402f38:	ff 15 92 40 00 00    	call   *0x4092(%rip)        # 406fd0 <fwrite@GLIBC_2.2.5>
  402f3e:	e9 62 ff ff ff       	jmp    402ea5 <notify_generate_submission+0xcc>
  402f43:	48 89 d9             	mov    %rbx,%rcx
  402f46:	ba 04 00 00 00       	mov    $0x4,%edx
  402f4b:	be 01 00 00 00       	mov    $0x1,%esi
  402f50:	48 8d 3d c6 13 00 00 	lea    0x13c6(%rip),%rdi        # 40431d <is_checker+0x2d>
  402f57:	ff 15 73 40 00 00    	call   *0x4073(%rip)        # 406fd0 <fwrite@GLIBC_2.2.5>
  402f5d:	e9 43 ff ff ff       	jmp    402ea5 <notify_generate_submission+0xcc>
  402f62:	48 89 df             	mov    %rbx,%rdi
  402f65:	ff 15 0d 40 00 00    	call   *0x400d(%rip)        # 406f78 <fflush@GLIBC_2.2.5>
  402f6b:	85 c0                	test   %eax,%eax
  402f6d:	0f 85 64 ff ff ff    	jne    402ed7 <notify_generate_submission+0xfe>
  402f73:	48 89 da             	mov    %rbx,%rdx
  402f76:	48 8d 35 c8 13 00 00 	lea    0x13c8(%rip),%rsi        # 404345 <is_checker+0x55>
  402f7d:	bf 00 00 00 00       	mov    $0x0,%edi
  402f82:	ff 15 90 3f 00 00    	call   *0x3f90(%rip)        # 406f18 <freopen@GLIBC_2.2.5>
  402f88:	48 85 c0             	test   %rax,%rax
  402f8b:	0f 84 46 ff ff ff    	je     402ed7 <notify_generate_submission+0xfe>
  402f91:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402f96:	ff 15 f4 3e 00 00    	call   *0x3ef4(%rip)        # 406e90 <posix_spawn_file_actions_init@GLIBC_2.2.5>
  402f9c:	85 c0                	test   %eax,%eax
  402f9e:	0f 85 3b ff ff ff    	jne    402edf <notify_generate_submission+0x106>
  402fa4:	48 89 df             	mov    %rbx,%rdi
  402fa7:	ff 15 b3 3f 00 00    	call   *0x3fb3(%rip)        # 406f60 <fileno@GLIBC_2.2.5>
  402fad:	89 c6                	mov    %eax,%esi
  402faf:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402fb4:	ba 01 00 00 00       	mov    $0x1,%edx
  402fb9:	ff 15 21 40 00 00    	call   *0x4021(%rip)        # 406fe0 <posix_spawn_file_actions_adddup2@GLIBC_2.2.5>
  402fbf:	85 c0                	test   %eax,%eax
  402fc1:	0f 85 18 ff ff ff    	jne    402edf <notify_generate_submission+0x106>
  402fc7:	48 8d 35 7a 13 00 00 	lea    0x137a(%rip),%rsi        # 404348 <is_checker+0x58>
  402fce:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
  402fd3:	48 8d 05 76 13 00 00 	lea    0x1376(%rip),%rax        # 404350 <is_checker+0x60>
  402fda:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402fdf:	48 8b 05 4a 40 00 00 	mov    0x404a(%rip),%rax        # 407030 <course_and_lab>
  402fe6:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  402feb:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402ff2:	00 00 
  402ff4:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  402ff9:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402ffe:	4c 8b 0d 5b 40 00 00 	mov    0x405b(%rip),%r9        # 407060 <__environ@GLIBC_2.2.5>
  403005:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  40300a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40300f:	ff 15 6b 3f 00 00    	call   *0x3f6b(%rip)        # 406f80 <posix_spawnp@GLIBC_2.15>
  403015:	85 c0                	test   %eax,%eax
  403017:	0f 85 c2 fe ff ff    	jne    402edf <notify_generate_submission+0x106>
  40301d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  403022:	ff 15 b0 3e 00 00    	call   *0x3eb0(%rip)        # 406ed8 <posix_spawn_file_actions_destroy@GLIBC_2.2.5>
  403028:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  40302d:	ba 00 00 00 00       	mov    $0x0,%edx
  403032:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  403036:	ff 15 64 3f 00 00    	call   *0x3f64(%rip)        # 406fa0 <waitpid@GLIBC_2.2.5>
  40303c:	83 f8 ff             	cmp    $0xffffffff,%eax
  40303f:	74 41                	je     403082 <notify_generate_submission+0x2a9>
  403041:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  403045:	89 cf                	mov    %ecx,%edi
  403047:	83 e7 7f             	and    $0x7f,%edi
  40304a:	75 43                	jne    40308f <notify_generate_submission+0x2b6>
  40304c:	0f b6 c5             	movzbl %ch,%eax
  40304f:	f6 c5 ff             	test   $0xff,%ch
  403052:	0f 84 87 fe ff ff    	je     402edf <notify_generate_submission+0x106>
  403058:	89 c1                	mov    %eax,%ecx
  40305a:	48 8d 15 f6 12 00 00 	lea    0x12f6(%rip),%rdx        # 404357 <is_checker+0x67>
  403061:	be 01 00 00 00       	mov    $0x1,%esi
  403066:	48 8b 3d 33 40 00 00 	mov    0x4033(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  40306d:	b8 00 00 00 00       	mov    $0x0,%eax
  403072:	ff 15 60 3f 00 00    	call   *0x3f60(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  403078:	b8 46 00 00 00       	mov    $0x46,%eax
  40307d:	e9 5d fe ff ff       	jmp    402edf <notify_generate_submission+0x106>
  403082:	ff 15 20 3e 00 00    	call   *0x3e20(%rip)        # 406ea8 <__errno_location@GLIBC_2.2.5>
  403088:	8b 00                	mov    (%rax),%eax
  40308a:	e9 50 fe ff ff       	jmp    402edf <notify_generate_submission+0x106>
  40308f:	89 c8                	mov    %ecx,%eax
  403091:	83 e0 7f             	and    $0x7f,%eax
  403094:	83 c0 01             	add    $0x1,%eax
  403097:	3c 01                	cmp    $0x1,%al
  403099:	7e 31                	jle    4030cc <notify_generate_submission+0x2f3>
  40309b:	ff 15 e7 3e 00 00    	call   *0x3ee7(%rip)        # 406f88 <strsignal@GLIBC_2.2.5>
  4030a1:	48 89 c1             	mov    %rax,%rcx
  4030a4:	48 8d 15 c5 12 00 00 	lea    0x12c5(%rip),%rdx        # 404370 <is_checker+0x80>
  4030ab:	be 01 00 00 00       	mov    $0x1,%esi
  4030b0:	48 8b 3d e9 3f 00 00 	mov    0x3fe9(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  4030b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4030bc:	ff 15 16 3f 00 00    	call   *0x3f16(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  4030c2:	b8 46 00 00 00       	mov    $0x46,%eax
  4030c7:	e9 13 fe ff ff       	jmp    402edf <notify_generate_submission+0x106>
  4030cc:	48 8d 15 b1 12 00 00 	lea    0x12b1(%rip),%rdx        # 404384 <is_checker+0x94>
  4030d3:	be 01 00 00 00       	mov    $0x1,%esi
  4030d8:	48 8b 3d c1 3f 00 00 	mov    0x3fc1(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  4030df:	b8 00 00 00 00       	mov    $0x0,%eax
  4030e4:	ff 15 ee 3e 00 00    	call   *0x3eee(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  4030ea:	b8 46 00 00 00       	mov    $0x46,%eax
  4030ef:	e9 eb fd ff ff       	jmp    402edf <notify_generate_submission+0x106>
  4030f4:	ff 15 ee 3d 00 00    	call   *0x3dee(%rip)        # 406ee8 <__stack_chk_fail@GLIBC_2.4>

00000000004030fa <notify_pass>:
  4030fa:	53                   	push   %rbx
  4030fb:	48 83 ec 20          	sub    $0x20,%rsp
  4030ff:	89 fb                	mov    %edi,%ebx
  403101:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403108:	00 00 
  40310a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40310f:	31 c0                	xor    %eax,%eax
  403111:	48 8d 3d 00 13 00 00 	lea    0x1300(%rip),%rdi        # 404418 <is_checker+0x128>
  403118:	ff 15 9a 3d 00 00    	call   *0x3d9a(%rip)        # 406eb8 <puts@GLIBC_2.2.5>
  40311e:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403125:	00 
  403126:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40312d:	00 00 
  40312f:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%rsp)
  403136:	00 
  403137:	89 5c 24 14          	mov    %ebx,0x14(%rsp)
  40313b:	48 89 e2             	mov    %rsp,%rdx
  40313e:	48 8d 35 94 fc ff ff 	lea    -0x36c(%rip),%rsi        # 402dd9 <notify_generate_submission>
  403145:	48 8b 3d e4 3e 00 00 	mov    0x3ee4(%rip),%rdi        # 407030 <course_and_lab>
  40314c:	67 e8 d3 07 00 00    	addr32 call 403925 <autolab_submit_stream>
  403152:	85 c0                	test   %eax,%eax
  403154:	74 34                	je     40318a <notify_pass+0x90>
  403156:	89 c7                	mov    %eax,%edi
  403158:	ff 15 8a 3e 00 00    	call   *0x3e8a(%rip)        # 406fe8 <strerror@GLIBC_2.2.5>
  40315e:	48 89 c1             	mov    %rax,%rcx
  403161:	48 8d 15 f0 12 00 00 	lea    0x12f0(%rip),%rdx        # 404458 <is_checker+0x168>
  403168:	be 01 00 00 00       	mov    $0x1,%esi
  40316d:	48 8b 3d 2c 3f 00 00 	mov    0x3f2c(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  403174:	b8 00 00 00 00       	mov    $0x0,%eax
  403179:	ff 15 59 3e 00 00    	call   *0x3e59(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  40317f:	bf 01 00 00 00       	mov    $0x1,%edi
  403184:	ff 15 3e 3e 00 00    	call   *0x3e3e(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  40318a:	bf 00 00 00 00       	mov    $0x0,%edi
  40318f:	ff 15 33 3e 00 00    	call   *0x3e33(%rip)        # 406fc8 <exit@GLIBC_2.2.5>

0000000000403195 <notify_fail>:
  403195:	41 54                	push   %r12
  403197:	55                   	push   %rbp
  403198:	53                   	push   %rbx
  403199:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  4031a0:	89 fd                	mov    %edi,%ebp
  4031a2:	48 89 f3             	mov    %rsi,%rbx
  4031a5:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
  4031aa:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
  4031af:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  4031b4:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  4031b9:	84 c0                	test   %al,%al
  4031bb:	74 3d                	je     4031fa <notify_fail+0x65>
  4031bd:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
  4031c2:	0f 29 8c 24 80 00 00 	movaps %xmm1,0x80(%rsp)
  4031c9:	00 
  4031ca:	0f 29 94 24 90 00 00 	movaps %xmm2,0x90(%rsp)
  4031d1:	00 
  4031d2:	0f 29 9c 24 a0 00 00 	movaps %xmm3,0xa0(%rsp)
  4031d9:	00 
  4031da:	0f 29 a4 24 b0 00 00 	movaps %xmm4,0xb0(%rsp)
  4031e1:	00 
  4031e2:	0f 29 ac 24 c0 00 00 	movaps %xmm5,0xc0(%rsp)
  4031e9:	00 
  4031ea:	0f 29 b4 24 d0 00 00 	movaps %xmm6,0xd0(%rsp)
  4031f1:	00 
  4031f2:	0f 29 bc 24 e0 00 00 	movaps %xmm7,0xe0(%rsp)
  4031f9:	00 
  4031fa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403201:	00 00 
  403203:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  403208:	31 c0                	xor    %eax,%eax
  40320a:	c7 44 24 20 10 00 00 	movl   $0x10,0x20(%rsp)
  403211:	00 
  403212:	c7 44 24 24 30 00 00 	movl   $0x30,0x24(%rsp)
  403219:	00 
  40321a:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  403221:	00 
  403222:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  403227:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40322c:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  403231:	48 8b 0d 08 3e 00 00 	mov    0x3e08(%rip),%rcx        # 407040 <stdout@GLIBC_2.2.5>
  403238:	ba 06 00 00 00       	mov    $0x6,%edx
  40323d:	be 01 00 00 00       	mov    $0x1,%esi
  403242:	48 8d 3d d9 10 00 00 	lea    0x10d9(%rip),%rdi        # 404322 <is_checker+0x32>
  403249:	ff 15 81 3d 00 00    	call   *0x3d81(%rip)        # 406fd0 <fwrite@GLIBC_2.2.5>
  40324f:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  403254:	4c 89 e1             	mov    %r12,%rcx
  403257:	48 89 da             	mov    %rbx,%rdx
  40325a:	be 01 00 00 00       	mov    $0x1,%esi
  40325f:	48 8b 3d da 3d 00 00 	mov    0x3dda(%rip),%rdi        # 407040 <stdout@GLIBC_2.2.5>
  403266:	ff 15 2c 3c 00 00    	call   *0x3c2c(%rip)        # 406e98 <__vfprintf_chk@GLIBC_2.3.4>
  40326c:	48 8d 3d 0d 12 00 00 	lea    0x120d(%rip),%rdi        # 404480 <is_checker+0x190>
  403273:	ff 15 3f 3c 00 00    	call   *0x3c3f(%rip)        # 406eb8 <puts@GLIBC_2.2.5>
  403279:	c7 44 24 20 10 00 00 	movl   $0x10,0x20(%rsp)
  403280:	00 
  403281:	c7 44 24 24 30 00 00 	movl   $0x30,0x24(%rsp)
  403288:	00 
  403289:	48 8d 84 24 10 01 00 	lea    0x110(%rsp),%rax
  403290:	00 
  403291:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  403296:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
  40329b:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4032a0:	48 89 1c 24          	mov    %rbx,(%rsp)
  4032a4:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  4032a9:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  4032b0:	00 
  4032b1:	89 6c 24 14          	mov    %ebp,0x14(%rsp)
  4032b5:	48 89 e2             	mov    %rsp,%rdx
  4032b8:	48 8d 35 1a fb ff ff 	lea    -0x4e6(%rip),%rsi        # 402dd9 <notify_generate_submission>
  4032bf:	48 8b 3d 6a 3d 00 00 	mov    0x3d6a(%rip),%rdi        # 407030 <course_and_lab>
  4032c6:	67 e8 59 06 00 00    	addr32 call 403925 <autolab_submit_stream>
  4032cc:	85 c0                	test   %eax,%eax
  4032ce:	74 34                	je     403304 <notify_fail+0x16f>
  4032d0:	89 c7                	mov    %eax,%edi
  4032d2:	ff 15 10 3d 00 00    	call   *0x3d10(%rip)        # 406fe8 <strerror@GLIBC_2.2.5>
  4032d8:	48 89 c1             	mov    %rax,%rcx
  4032db:	48 8d 15 76 11 00 00 	lea    0x1176(%rip),%rdx        # 404458 <is_checker+0x168>
  4032e2:	be 01 00 00 00       	mov    $0x1,%esi
  4032e7:	48 8b 3d b2 3d 00 00 	mov    0x3db2(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  4032ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4032f3:	ff 15 df 3c 00 00    	call   *0x3cdf(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  4032f9:	bf 01 00 00 00       	mov    $0x1,%edi
  4032fe:	ff 15 c4 3c 00 00    	call   *0x3cc4(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  403304:	bf 01 00 00 00       	mov    $0x1,%edi
  403309:	ff 15 b9 3c 00 00    	call   *0x3cb9(%rip)        # 406fc8 <exit@GLIBC_2.2.5>

000000000040330f <validate_inner>:
  40330f:	50                   	push   %rax
  403310:	58                   	pop    %rax
  403311:	48 83 ec 08          	sub    $0x8,%rsp
  403315:	85 d2                	test   %edx,%edx
  403317:	75 20                	jne    403339 <validate_inner+0x2a>
  403319:	85 f6                	test   %esi,%esi
  40331b:	7e 2d                	jle    40334a <validate_inner+0x3b>
  40331d:	39 fe                	cmp    %edi,%esi
  40331f:	74 3a                	je     40335b <validate_inner+0x4c>
  403321:	41 89 f0             	mov    %esi,%r8d
  403324:	89 f1                	mov    %esi,%ecx
  403326:	89 fa                	mov    %edi,%edx
  403328:	48 8d 35 a9 11 00 00 	lea    0x11a9(%rip),%rsi        # 4044d8 <is_checker+0x1e8>
  40332f:	b8 00 00 00 00       	mov    $0x0,%eax
  403334:	e8 5c fe ff ff       	call   403195 <notify_fail>
  403339:	48 8d 35 70 11 00 00 	lea    0x1170(%rip),%rsi        # 4044b0 <is_checker+0x1c0>
  403340:	b8 00 00 00 00       	mov    $0x0,%eax
  403345:	e8 4b fe ff ff       	call   403195 <notify_fail>
  40334a:	48 8d 35 4f 10 00 00 	lea    0x104f(%rip),%rsi        # 4043a0 <is_checker+0xb0>
  403351:	b8 00 00 00 00       	mov    $0x0,%eax
  403356:	e8 3a fe ff ff       	call   403195 <notify_fail>
  40335b:	e8 9a fd ff ff       	call   4030fa <notify_pass>

0000000000403360 <sighandler>:
  403360:	50                   	push   %rax
  403361:	58                   	pop    %rax
  403362:	48 83 ec 08          	sub    $0x8,%rsp
  403366:	8d 47 fc             	lea    -0x4(%rdi),%eax
  403369:	83 f8 0a             	cmp    $0xa,%eax
  40336c:	77 37                	ja     4033a5 <sighandler+0x45>
  40336e:	89 c0                	mov    %eax,%eax
  403370:	48 8d 15 91 12 00 00 	lea    0x1291(%rip),%rdx        # 404608 <is_checker+0x318>
  403377:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40337b:	48 01 d0             	add    %rdx,%rax
  40337e:	ff e0                	jmp    *%rax
  403380:	48 8d 15 81 11 00 00 	lea    0x1181(%rip),%rdx        # 404508 <is_checker+0x218>
  403387:	eb 42                	jmp    4033cb <sighandler+0x6b>
  403389:	8b 15 99 3c 00 00    	mov    0x3c99(%rip),%edx        # 407028 <checker_timeout>
  40338f:	48 8d 35 12 12 00 00 	lea    0x1212(%rip),%rsi        # 4045a8 <is_checker+0x2b8>
  403396:	bf 00 00 00 00       	mov    $0x0,%edi
  40339b:	b8 00 00 00 00       	mov    $0x0,%eax
  4033a0:	e8 f0 fd ff ff       	call   403195 <notify_fail>
  4033a5:	ff 15 dd 3b 00 00    	call   *0x3bdd(%rip)        # 406f88 <strsignal@GLIBC_2.2.5>
  4033ab:	48 89 c2             	mov    %rax,%rdx
  4033ae:	48 8d 35 2b 12 00 00 	lea    0x122b(%rip),%rsi        # 4045e0 <is_checker+0x2f0>
  4033b5:	bf 00 00 00 00       	mov    $0x0,%edi
  4033ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4033bf:	e8 d1 fd ff ff       	call   403195 <notify_fail>
  4033c4:	48 8d 15 85 11 00 00 	lea    0x1185(%rip),%rdx        # 404550 <is_checker+0x260>
  4033cb:	48 8d 35 e8 0f 00 00 	lea    0xfe8(%rip),%rsi        # 4043ba <is_checker+0xca>
  4033d2:	bf 00 00 00 00       	mov    $0x0,%edi
  4033d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4033dc:	e8 b4 fd ff ff       	call   403195 <notify_fail>
  4033e1:	48 8d 15 98 11 00 00 	lea    0x1198(%rip),%rdx        # 404580 <is_checker+0x290>
  4033e8:	eb e1                	jmp    4033cb <sighandler+0x6b>
  4033ea:	48 8d 15 37 11 00 00 	lea    0x1137(%rip),%rdx        # 404528 <is_checker+0x238>
  4033f1:	eb d8                	jmp    4033cb <sighandler+0x6b>

00000000004033f3 <launch_in_altstack>:
  4033f3:	55                   	push   %rbp
  4033f4:	48 89 e5             	mov    %rsp,%rbp
  4033f7:	48 83 ec 10          	sub    $0x10,%rsp
  4033fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403402:	00 00 
  403404:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  403408:	31 c0                	xor    %eax,%eax
  40340a:	48 8b 05 bf 3c 00 00 	mov    0x3cbf(%rip),%rax        # 4070d0 <launch_stack_offset>
  403411:	48 83 c0 17          	add    $0x17,%rax
  403415:	48 89 c1             	mov    %rax,%rcx
  403418:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40341c:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  403422:	48 89 e2             	mov    %rsp,%rdx
  403425:	48 29 c2             	sub    %rax,%rdx
  403428:	48 39 d4             	cmp    %rdx,%rsp
  40342b:	74 12                	je     40343f <launch_in_altstack+0x4c>
  40342d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  403434:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  40343b:	00 00 
  40343d:	eb e9                	jmp    403428 <launch_in_altstack+0x35>
  40343f:	48 89 c8             	mov    %rcx,%rax
  403442:	25 ff 0f 00 00       	and    $0xfff,%eax
  403447:	48 29 c4             	sub    %rax,%rsp
  40344a:	48 85 c0             	test   %rax,%rax
  40344d:	74 06                	je     403455 <launch_in_altstack+0x62>
  40344f:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  403455:	48 8d 44 24 0f       	lea    0xf(%rsp),%rax
  40345a:	48 a9 f0 ff ff ff    	test   $0xfffffffffffffff0,%rax
  403460:	74 27                	je     403489 <launch_in_altstack+0x96>
  403462:	48 8b 05 e7 3b 00 00 	mov    0x3be7(%rip),%rax        # 407050 <stdin@GLIBC_2.2.5>
  403469:	48 39 05 40 3c 00 00 	cmp    %rax,0x3c40(%rip)        # 4070b0 <global_infile>
  403470:	74 2f                	je     4034a1 <launch_in_altstack+0xae>
  403472:	c7 05 48 3c 00 00 00 	movl   $0x0,0x3c48(%rip)        # 4070c4 <vlevel>
  403479:	00 00 00 
  40347c:	48 8b 3d 2d 3c 00 00 	mov    0x3c2d(%rip),%rdi        # 4070b0 <global_infile>
  403483:	67 e8 fc f7 ff ff    	addr32 call 402c85 <test>
  403489:	48 8d 3d a4 11 00 00 	lea    0x11a4(%rip),%rdi        # 404634 <is_checker+0x344>
  403490:	ff 15 1a 3b 00 00    	call   *0x3b1a(%rip)        # 406fb0 <perror@GLIBC_2.2.5>
  403496:	bf 01 00 00 00       	mov    $0x1,%edi
  40349b:	ff 15 27 3b 00 00    	call   *0x3b27(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  4034a1:	48 8b 0d 98 3b 00 00 	mov    0x3b98(%rip),%rcx        # 407040 <stdout@GLIBC_2.2.5>
  4034a8:	ba 0d 00 00 00       	mov    $0xd,%edx
  4034ad:	be 01 00 00 00       	mov    $0x1,%esi
  4034b2:	48 8d 3d 82 11 00 00 	lea    0x1182(%rip),%rdi        # 40463b <is_checker+0x34b>
  4034b9:	ff 15 11 3b 00 00    	call   *0x3b11(%rip)        # 406fd0 <fwrite@GLIBC_2.2.5>
  4034bf:	48 8b 3d 7a 3b 00 00 	mov    0x3b7a(%rip),%rdi        # 407040 <stdout@GLIBC_2.2.5>
  4034c6:	ff 15 ac 3a 00 00    	call   *0x3aac(%rip)        # 406f78 <fflush@GLIBC_2.2.5>
  4034cc:	eb a4                	jmp    403472 <launch_in_altstack+0x7f>

00000000004034ce <process_line>:
  4034ce:	41 54                	push   %r12
  4034d0:	55                   	push   %rbp
  4034d1:	53                   	push   %rbx
  4034d2:	48 89 fd             	mov    %rdi,%rbp
  4034d5:	48 89 f3             	mov    %rsi,%rbx
  4034d8:	4c 8d 64 76 04       	lea    0x4(%rsi,%rsi,2),%r12
  4034dd:	4c 89 e7             	mov    %r12,%rdi
  4034e0:	ff 15 8a 3a 00 00    	call   *0x3a8a(%rip)        # 406f70 <malloc@GLIBC_2.2.5>
  4034e6:	48 89 c7             	mov    %rax,%rdi
  4034e9:	48 89 05 c8 3b 00 00 	mov    %rax,0x3bc8(%rip)        # 4070b8 <gets_buf>
  4034f0:	4c 89 e2             	mov    %r12,%rdx
  4034f3:	be 00 00 00 00       	mov    $0x0,%esi
  4034f8:	ff 15 12 3a 00 00    	call   *0x3a12(%rip)        # 406f10 <memset@GLIBC_2.2.5>
  4034fe:	48 83 3d b2 3b 00 00 	cmpq   $0x0,0x3bb2(%rip)        # 4070b8 <gets_buf>
  403505:	00 
  403506:	74 0c                	je     403514 <process_line+0x46>
  403508:	b8 00 00 00 00       	mov    $0x0,%eax
  40350d:	b9 00 00 00 00       	mov    $0x0,%ecx
  403512:	eb 65                	jmp    403579 <process_line+0xab>
  403514:	48 8d 3d 2e 11 00 00 	lea    0x112e(%rip),%rdi        # 404649 <is_checker+0x359>
  40351b:	ff 15 8f 3a 00 00    	call   *0x3a8f(%rip)        # 406fb0 <perror@GLIBC_2.2.5>
  403521:	bf 01 00 00 00       	mov    $0x1,%edi
  403526:	ff 15 9c 3a 00 00    	call   *0x3a9c(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  40352c:	0f b6 54 0d 00       	movzbl 0x0(%rbp,%rcx,1),%edx
  403531:	89 d6                	mov    %edx,%esi
  403533:	40 c0 ee 04          	shr    $0x4,%sil
  403537:	49 89 c0             	mov    %rax,%r8
  40353a:	4c 03 05 77 3b 00 00 	add    0x3b77(%rip),%r8        # 4070b8 <gets_buf>
  403541:	48 8d 3d 98 11 00 00 	lea    0x1198(%rip),%rdi        # 4046e0 <hex_digit.0>
  403548:	83 e6 0f             	and    $0xf,%esi
  40354b:	0f b6 34 37          	movzbl (%rdi,%rsi,1),%esi
  40354f:	41 88 30             	mov    %sil,(%r8)
  403552:	83 e2 0f             	and    $0xf,%edx
  403555:	0f b6 34 17          	movzbl (%rdi,%rdx,1),%esi
  403559:	48 8b 15 58 3b 00 00 	mov    0x3b58(%rip),%rdx        # 4070b8 <gets_buf>
  403560:	40 88 74 02 01       	mov    %sil,0x1(%rdx,%rax,1)
  403565:	48 8b 15 4c 3b 00 00 	mov    0x3b4c(%rip),%rdx        # 4070b8 <gets_buf>
  40356c:	c6 44 02 02 20       	movb   $0x20,0x2(%rdx,%rax,1)
  403571:	48 83 c1 01          	add    $0x1,%rcx
  403575:	48 83 c0 03          	add    $0x3,%rax
  403579:	48 39 d9             	cmp    %rbx,%rcx
  40357c:	72 ae                	jb     40352c <process_line+0x5e>
  40357e:	48 03 05 33 3b 00 00 	add    0x3b33(%rip),%rax        # 4070b8 <gets_buf>
  403585:	c6 00 00             	movb   $0x0,(%rax)
  403588:	48 8b 3d 29 3b 00 00 	mov    0x3b29(%rip),%rdi        # 4070b8 <gets_buf>
  40358f:	ff 15 23 39 00 00    	call   *0x3923(%rip)        # 406eb8 <puts@GLIBC_2.2.5>
  403595:	48 8b 3d a4 3a 00 00 	mov    0x3aa4(%rip),%rdi        # 407040 <stdout@GLIBC_2.2.5>
  40359c:	ff 15 d6 39 00 00    	call   *0x39d6(%rip)        # 406f78 <fflush@GLIBC_2.2.5>
  4035a2:	5b                   	pop    %rbx
  4035a3:	5d                   	pop    %rbp
  4035a4:	41 5c                	pop    %r12
  4035a6:	c3                   	ret    

00000000004035a7 <launch>:
  4035a7:	55                   	push   %rbp
  4035a8:	53                   	push   %rbx
  4035a9:	48 81 ec b8 07 00 00 	sub    $0x7b8,%rsp
  4035b0:	89 fb                	mov    %edi,%ebx
  4035b2:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  4035b7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4035be:	00 00 
  4035c0:	48 89 84 24 a8 07 00 	mov    %rax,0x7a8(%rsp)
  4035c7:	00 
  4035c8:	31 c0                	xor    %eax,%eax
  4035ca:	85 ff                	test   %edi,%edi
  4035cc:	74 7c                	je     40364a <launch+0xa3>
  4035ce:	48 8b 2d 4b 3a 00 00 	mov    0x3a4b(%rip),%rbp        # 407020 <stable_stack_addr>
  4035d5:	85 db                	test   %ebx,%ebx
  4035d7:	74 78                	je     403651 <launch+0xaa>
  4035d9:	b9 22 00 10 00       	mov    $0x100022,%ecx
  4035de:	85 db                	test   %ebx,%ebx
  4035e0:	74 76                	je     403658 <launch+0xb1>
  4035e2:	ba 07 00 00 00       	mov    $0x7,%edx
  4035e7:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4035ed:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  4035f3:	48 8b 35 1e 3a 00 00 	mov    0x3a1e(%rip),%rsi        # 407018 <stack_size>
  4035fa:	48 89 ef             	mov    %rbp,%rdi
  4035fd:	ff 15 f5 38 00 00    	call   *0x38f5(%rip)        # 406ef8 <mmap@GLIBC_2.2.5>
  403603:	48 89 04 24          	mov    %rax,(%rsp)
  403607:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40360b:	74 52                	je     40365f <launch+0xb8>
  40360d:	85 db                	test   %ebx,%ebx
  40360f:	74 66                	je     403677 <launch+0xd0>
  403611:	48 8b 0d 08 3a 00 00 	mov    0x3a08(%rip),%rcx        # 407020 <stable_stack_addr>
  403618:	48 39 e9             	cmp    %rbp,%rcx
  40361b:	74 5a                	je     403677 <launch+0xd0>
  40361d:	4c 8b 04 24          	mov    (%rsp),%r8
  403621:	48 8d 15 60 10 00 00 	lea    0x1060(%rip),%rdx        # 404688 <is_checker+0x398>
  403628:	be 01 00 00 00       	mov    $0x1,%esi
  40362d:	48 8b 3d 6c 3a 00 00 	mov    0x3a6c(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  403634:	b8 00 00 00 00       	mov    $0x0,%eax
  403639:	ff 15 99 39 00 00    	call   *0x3999(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  40363f:	bf 01 00 00 00       	mov    $0x1,%edi
  403644:	ff 15 7e 39 00 00    	call   *0x397e(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  40364a:	bd 00 00 00 00       	mov    $0x0,%ebp
  40364f:	eb 84                	jmp    4035d5 <launch+0x2e>
  403651:	b9 22 00 00 00       	mov    $0x22,%ecx
  403656:	eb 86                	jmp    4035de <launch+0x37>
  403658:	ba 03 00 00 00       	mov    $0x3,%edx
  40365d:	eb 88                	jmp    4035e7 <launch+0x40>
  40365f:	48 8d 3d 02 10 00 00 	lea    0x1002(%rip),%rdi        # 404668 <is_checker+0x378>
  403666:	ff 15 44 39 00 00    	call   *0x3944(%rip)        # 406fb0 <perror@GLIBC_2.2.5>
  40366c:	bf 01 00 00 00       	mov    $0x1,%edi
  403671:	ff 15 51 39 00 00    	call   *0x3951(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  403677:	48 8b 15 9a 39 00 00 	mov    0x399a(%rip),%rdx        # 407018 <stack_size>
  40367e:	be f4 00 00 00       	mov    $0xf4,%esi
  403683:	48 8b 3c 24          	mov    (%rsp),%rdi
  403687:	ff 15 83 38 00 00    	call   *0x3883(%rip)        # 406f10 <memset@GLIBC_2.2.5>
  40368d:	48 8d bc 24 e0 03 00 	lea    0x3e0(%rsp),%rdi
  403694:	00 
  403695:	ff 15 55 39 00 00    	call   *0x3955(%rip)        # 406ff0 <getcontext@GLIBC_2.2.5>
  40369b:	85 c0                	test   %eax,%eax
  40369d:	74 18                	je     4036b7 <launch+0x110>
  40369f:	48 8d 3d aa 0f 00 00 	lea    0xfaa(%rip),%rdi        # 404650 <is_checker+0x360>
  4036a6:	ff 15 04 39 00 00    	call   *0x3904(%rip)        # 406fb0 <perror@GLIBC_2.2.5>
  4036ac:	bf 01 00 00 00       	mov    $0x1,%edi
  4036b1:	ff 15 11 39 00 00    	call   *0x3911(%rip)        # 406fc8 <exit@GLIBC_2.2.5>
  4036b7:	48 8b 04 24          	mov    (%rsp),%rax
  4036bb:	48 89 84 24 f0 03 00 	mov    %rax,0x3f0(%rsp)
  4036c2:	00 
  4036c3:	c7 84 24 f8 03 00 00 	movl   $0x0,0x3f8(%rsp)
  4036ca:	00 00 00 00 
  4036ce:	48 8b 05 43 39 00 00 	mov    0x3943(%rip),%rax        # 407018 <stack_size>
  4036d5:	48 89 84 24 00 04 00 	mov    %rax,0x400(%rsp)
  4036dc:	00 
  4036dd:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  4036e2:	48 89 9c 24 e8 03 00 	mov    %rbx,0x3e8(%rsp)
  4036e9:	00 
  4036ea:	48 8d ac 24 e0 03 00 	lea    0x3e0(%rsp),%rbp
  4036f1:	00 
  4036f2:	ba 00 00 00 00       	mov    $0x0,%edx
  4036f7:	48 8d 35 f5 fc ff ff 	lea    -0x30b(%rip),%rsi        # 4033f3 <launch_in_altstack>
  4036fe:	48 89 ef             	mov    %rbp,%rdi
  403701:	b8 00 00 00 00       	mov    $0x0,%eax
  403706:	ff 15 44 38 00 00    	call   *0x3844(%rip)        # 406f50 <makecontext@GLIBC_2.2.5>
  40370c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  403711:	48 89 05 b8 39 00 00 	mov    %rax,0x39b8(%rip)        # 4070d0 <launch_stack_offset>
  403718:	48 89 ee             	mov    %rbp,%rsi
  40371b:	48 89 df             	mov    %rbx,%rdi
  40371e:	ff 15 dc 37 00 00    	call   *0x37dc(%rip)        # 406f00 <swapcontext@GLIBC_2.2.5>
  403724:	85 c0                	test   %eax,%eax
  403726:	74 0d                	je     403735 <launch+0x18e>
  403728:	48 8d 3d 2c 0f 00 00 	lea    0xf2c(%rip),%rdi        # 40465b <is_checker+0x36b>
  40372f:	ff 15 7b 38 00 00    	call   *0x387b(%rip)        # 406fb0 <perror@GLIBC_2.2.5>
  403735:	48 8d 35 7c 0f 00 00 	lea    0xf7c(%rip),%rsi        # 4046b8 <is_checker+0x3c8>
  40373c:	bf 00 00 00 00       	mov    $0x0,%edi
  403741:	b8 00 00 00 00       	mov    $0x0,%eax
  403746:	67 e8 49 fa ff ff    	addr32 call 403195 <notify_fail>

000000000040374c <check>:
  40374c:	89 f8                	mov    %edi,%eax
  40374e:	c1 e8 1c             	shr    $0x1c,%eax
  403751:	74 1d                	je     403770 <check+0x24>
  403753:	b9 00 00 00 00       	mov    $0x0,%ecx
  403758:	83 f9 1f             	cmp    $0x1f,%ecx
  40375b:	7f 0d                	jg     40376a <check+0x1e>
  40375d:	89 f8                	mov    %edi,%eax
  40375f:	d3 e8                	shr    %cl,%eax
  403761:	3c 0a                	cmp    $0xa,%al
  403763:	74 11                	je     403776 <check+0x2a>
  403765:	83 c1 08             	add    $0x8,%ecx
  403768:	eb ee                	jmp    403758 <check+0xc>
  40376a:	b8 01 00 00 00       	mov    $0x1,%eax
  40376f:	c3                   	ret    
  403770:	b8 00 00 00 00       	mov    $0x0,%eax
  403775:	c3                   	ret    
  403776:	b8 00 00 00 00       	mov    $0x0,%eax
  40377b:	c3                   	ret    

000000000040377c <gencookie>:
  40377c:	53                   	push   %rbx
  40377d:	83 c7 01             	add    $0x1,%edi
  403780:	ff 15 2a 37 00 00    	call   *0x372a(%rip)        # 406eb0 <srandom@GLIBC_2.2.5>
  403786:	ff 15 dc 37 00 00    	call   *0x37dc(%rip)        # 406f68 <random@GLIBC_2.2.5>
  40378c:	89 c3                	mov    %eax,%ebx
  40378e:	89 c7                	mov    %eax,%edi
  403790:	e8 b7 ff ff ff       	call   40374c <check>
  403795:	85 c0                	test   %eax,%eax
  403797:	74 ed                	je     403786 <gencookie+0xa>
  403799:	89 d8                	mov    %ebx,%eax
  40379b:	5b                   	pop    %rbx
  40379c:	c3                   	ret    

000000000040379d <autolab_submit_file>:
  40379d:	53                   	push   %rbx
  40379e:	48 83 ec 58          	sub    $0x58,%rsp
  4037a2:	49 89 f8             	mov    %rdi,%r8
  4037a5:	49 89 f1             	mov    %rsi,%r9
  4037a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4037af:	00 00 
  4037b1:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  4037b6:	31 c0                	xor    %eax,%eax
  4037b8:	48 8d 1d 89 0b 00 00 	lea    0xb89(%rip),%rbx        # 404348 <is_checker+0x58>
  4037bf:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  4037c4:	48 8d 0d 25 0f 00 00 	lea    0xf25(%rip),%rcx        # 4046f0 <hex_digit.0+0x10>
  4037cb:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4037d0:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  4037d5:	48 89 74 24 30       	mov    %rsi,0x30(%rsp)
  4037da:	48 8d 05 16 0f 00 00 	lea    0xf16(%rip),%rax        # 4046f7 <hex_digit.0+0x17>
  4037e1:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  4037e6:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  4037ed:	00 00 
  4037ef:	50                   	push   %rax
  4037f0:	48 89 da             	mov    %rbx,%rdx
  4037f3:	48 8d 35 00 0f 00 00 	lea    0xf00(%rip),%rsi        # 4046fa <hex_digit.0+0x1a>
  4037fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4037ff:	b8 00 00 00 00       	mov    $0x0,%eax
  403804:	ff 15 8e 37 00 00    	call   *0x378e(%rip)        # 406f98 <__printf_chk@GLIBC_2.3.4>
  40380a:	48 8b 3d 2f 38 00 00 	mov    0x382f(%rip),%rdi        # 407040 <stdout@GLIBC_2.2.5>
  403811:	ff 15 61 37 00 00    	call   *0x3761(%rip)        # 406f78 <fflush@GLIBC_2.2.5>
  403817:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  40381c:	4c 8b 0d 3d 38 00 00 	mov    0x383d(%rip),%r9        # 407060 <__environ@GLIBC_2.2.5>
  403823:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  403828:	b9 00 00 00 00       	mov    $0x0,%ecx
  40382d:	ba 00 00 00 00       	mov    $0x0,%edx
  403832:	48 89 de             	mov    %rbx,%rsi
  403835:	ff 15 45 37 00 00    	call   *0x3745(%rip)        # 406f80 <posix_spawnp@GLIBC_2.15>
  40383b:	48 83 c4 10          	add    $0x10,%rsp
  40383f:	85 c0                	test   %eax,%eax
  403841:	74 1a                	je     40385d <autolab_submit_file+0xc0>
  403843:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  403848:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40384f:	00 00 
  403851:	0f 85 c8 00 00 00    	jne    40391f <autolab_submit_file+0x182>
  403857:	48 83 c4 50          	add    $0x50,%rsp
  40385b:	5b                   	pop    %rbx
  40385c:	c3                   	ret    
  40385d:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  403862:	ba 00 00 00 00       	mov    $0x0,%edx
  403867:	8b 7c 24 08          	mov    0x8(%rsp),%edi
  40386b:	ff 15 2f 37 00 00    	call   *0x372f(%rip)        # 406fa0 <waitpid@GLIBC_2.2.5>
  403871:	83 f8 ff             	cmp    $0xffffffff,%eax
  403874:	74 3a                	je     4038b0 <autolab_submit_file+0x113>
  403876:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  40387a:	89 cf                	mov    %ecx,%edi
  40387c:	83 e7 7f             	and    $0x7f,%edi
  40387f:	75 39                	jne    4038ba <autolab_submit_file+0x11d>
  403881:	0f b6 c5             	movzbl %ch,%eax
  403884:	f6 c5 ff             	test   $0xff,%ch
  403887:	74 ba                	je     403843 <autolab_submit_file+0xa6>
  403889:	89 c1                	mov    %eax,%ecx
  40388b:	48 8d 15 82 0e 00 00 	lea    0xe82(%rip),%rdx        # 404714 <hex_digit.0+0x34>
  403892:	be 01 00 00 00       	mov    $0x1,%esi
  403897:	48 8b 3d 02 38 00 00 	mov    0x3802(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  40389e:	b8 00 00 00 00       	mov    $0x0,%eax
  4038a3:	ff 15 2f 37 00 00    	call   *0x372f(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  4038a9:	b8 46 00 00 00       	mov    $0x46,%eax
  4038ae:	eb 93                	jmp    403843 <autolab_submit_file+0xa6>
  4038b0:	ff 15 f2 35 00 00    	call   *0x35f2(%rip)        # 406ea8 <__errno_location@GLIBC_2.2.5>
  4038b6:	8b 00                	mov    (%rax),%eax
  4038b8:	eb 89                	jmp    403843 <autolab_submit_file+0xa6>
  4038ba:	89 c8                	mov    %ecx,%eax
  4038bc:	83 e0 7f             	and    $0x7f,%eax
  4038bf:	83 c0 01             	add    $0x1,%eax
  4038c2:	3c 01                	cmp    $0x1,%al
  4038c4:	7e 31                	jle    4038f7 <autolab_submit_file+0x15a>
  4038c6:	ff 15 bc 36 00 00    	call   *0x36bc(%rip)        # 406f88 <strsignal@GLIBC_2.2.5>
  4038cc:	48 89 c1             	mov    %rax,%rcx
  4038cf:	48 8d 15 57 0e 00 00 	lea    0xe57(%rip),%rdx        # 40472d <hex_digit.0+0x4d>
  4038d6:	be 01 00 00 00       	mov    $0x1,%esi
  4038db:	48 8b 3d be 37 00 00 	mov    0x37be(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  4038e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4038e7:	ff 15 eb 36 00 00    	call   *0x36eb(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  4038ed:	b8 46 00 00 00       	mov    $0x46,%eax
  4038f2:	e9 4c ff ff ff       	jmp    403843 <autolab_submit_file+0xa6>
  4038f7:	48 8d 15 43 0e 00 00 	lea    0xe43(%rip),%rdx        # 404741 <hex_digit.0+0x61>
  4038fe:	be 01 00 00 00       	mov    $0x1,%esi
  403903:	48 8b 3d 96 37 00 00 	mov    0x3796(%rip),%rdi        # 4070a0 <stderr@GLIBC_2.2.5>
  40390a:	b8 00 00 00 00       	mov    $0x0,%eax
  40390f:	ff 15 c3 36 00 00    	call   *0x36c3(%rip)        # 406fd8 <__fprintf_chk@GLIBC_2.3.4>
  403915:	b8 46 00 00 00       	mov    $0x46,%eax
  40391a:	e9 24 ff ff ff       	jmp    403843 <autolab_submit_file+0xa6>
  40391f:	ff 15 c3 35 00 00    	call   *0x35c3(%rip)        # 406ee8 <__stack_chk_fail@GLIBC_2.4>

0000000000403925 <autolab_submit_stream>:
  403925:	41 56                	push   %r14
  403927:	41 55                	push   %r13
  403929:	41 54                	push   %r12
  40392b:	55                   	push   %rbp
  40392c:	53                   	push   %rbx
  40392d:	48 83 ec 20          	sub    $0x20,%rsp
  403931:	49 89 fd             	mov    %rdi,%r13
  403934:	48 89 f3             	mov    %rsi,%rbx
  403937:	49 89 d6             	mov    %rdx,%r14
  40393a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403941:	00 00 
  403943:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403948:	31 c0                	xor    %eax,%eax
  40394a:	48 b8 2e 61 73 75 62 	movabs $0x585858627573612e,%rax
  403951:	58 58 58 
  403954:	48 89 44 24 0c       	mov    %rax,0xc(%rsp)
  403959:	c7 44 24 14 58 58 58 	movl   $0x585858,0x14(%rsp)
  403960:	00 
  403961:	48 8d 7c 24 0c       	lea    0xc(%rsp),%rdi
  403966:	be 00 00 08 00       	mov    $0x80000,%esi
  40396b:	ff 15 97 35 00 00    	call   *0x3597(%rip)        # 406f08 <mkostemp@GLIBC_2.7>
  403971:	83 f8 ff             	cmp    $0xffffffff,%eax
  403974:	74 3e                	je     4039b4 <autolab_submit_stream+0x8f>
  403976:	89 c5                	mov    %eax,%ebp
  403978:	48 8d 35 de 0d 00 00 	lea    0xdde(%rip),%rsi        # 40475d <hex_digit.0+0x7d>
  40397f:	89 c7                	mov    %eax,%edi
  403981:	ff 15 09 36 00 00    	call   *0x3609(%rip)        # 406f90 <fdopen@GLIBC_2.2.5>
  403987:	49 89 c4             	mov    %rax,%r12
  40398a:	48 85 c0             	test   %rax,%rax
  40398d:	74 4c                	je     4039db <autolab_submit_stream+0xb6>
  40398f:	4c 89 f6             	mov    %r14,%rsi
  403992:	48 89 c7             	mov    %rax,%rdi
  403995:	ff d3                	call   *%rbx
  403997:	89 c3                	mov    %eax,%ebx
  403999:	85 c0                	test   %eax,%eax
  40399b:	75 50                	jne    4039ed <autolab_submit_stream+0xc8>
  40399d:	4c 89 e7             	mov    %r12,%rdi
  4039a0:	ff 15 2a 35 00 00    	call   *0x352a(%rip)        # 406ed0 <fclose@GLIBC_2.2.5>
  4039a6:	85 c0                	test   %eax,%eax
  4039a8:	74 4e                	je     4039f8 <autolab_submit_stream+0xd3>
  4039aa:	ff 15 f8 34 00 00    	call   *0x34f8(%rip)        # 406ea8 <__errno_location@GLIBC_2.2.5>
  4039b0:	8b 18                	mov    (%rax),%ebx
  4039b2:	eb 08                	jmp    4039bc <autolab_submit_stream+0x97>
  4039b4:	ff 15 ee 34 00 00    	call   *0x34ee(%rip)        # 406ea8 <__errno_location@GLIBC_2.2.5>
  4039ba:	8b 18                	mov    (%rax),%ebx
  4039bc:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4039c1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4039c8:	00 00 
  4039ca:	75 3d                	jne    403a09 <autolab_submit_stream+0xe4>
  4039cc:	89 d8                	mov    %ebx,%eax
  4039ce:	48 83 c4 20          	add    $0x20,%rsp
  4039d2:	5b                   	pop    %rbx
  4039d3:	5d                   	pop    %rbp
  4039d4:	41 5c                	pop    %r12
  4039d6:	41 5d                	pop    %r13
  4039d8:	41 5e                	pop    %r14
  4039da:	c3                   	ret    
  4039db:	ff 15 c7 34 00 00    	call   *0x34c7(%rip)        # 406ea8 <__errno_location@GLIBC_2.2.5>
  4039e1:	8b 18                	mov    (%rax),%ebx
  4039e3:	89 ef                	mov    %ebp,%edi
  4039e5:	ff 15 3d 35 00 00    	call   *0x353d(%rip)        # 406f28 <close@GLIBC_2.2.5>
  4039eb:	eb cf                	jmp    4039bc <autolab_submit_stream+0x97>
  4039ed:	4c 89 e7             	mov    %r12,%rdi
  4039f0:	ff 15 da 34 00 00    	call   *0x34da(%rip)        # 406ed0 <fclose@GLIBC_2.2.5>
  4039f6:	eb c4                	jmp    4039bc <autolab_submit_stream+0x97>
  4039f8:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  4039fd:	4c 89 ef             	mov    %r13,%rdi
  403a00:	e8 98 fd ff ff       	call   40379d <autolab_submit_file>
  403a05:	89 c3                	mov    %eax,%ebx
  403a07:	eb b3                	jmp    4039bc <autolab_submit_stream+0x97>
  403a09:	ff 15 d9 34 00 00    	call   *0x34d9(%rip)        # 406ee8 <__stack_chk_fail@GLIBC_2.4>

Disassembly of section .fini:

0000000000403a10 <_fini>:
  403a10:	f3 0f 1e fa          	endbr64 
  403a14:	48 83 ec 08          	sub    $0x8,%rsp
  403a18:	48 83 c4 08          	add    $0x8,%rsp
  403a1c:	c3                   	ret    
