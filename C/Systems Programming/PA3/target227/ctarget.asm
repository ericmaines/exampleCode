
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000000dc8 <_init>:
 dc8:	48 83 ec 08          	sub    $0x8,%rsp
 dcc:	48 8b 05 15 42 20 00 	mov    0x204215(%rip),%rax        # 204fe8 <__gmon_start__>
 dd3:	48 85 c0             	test   %rax,%rax
 dd6:	74 02                	je     dda <_init+0x12>
 dd8:	ff d0                	callq  *%rax
 dda:	48 83 c4 08          	add    $0x8,%rsp
 dde:	c3                   	retq   

Disassembly of section .plt:

0000000000000de0 <.plt>:
     de0:	ff 35 da 40 20 00    	pushq  0x2040da(%rip)        # 204ec0 <_GLOBAL_OFFSET_TABLE_+0x8>
     de6:	ff 25 dc 40 20 00    	jmpq   *0x2040dc(%rip)        # 204ec8 <_GLOBAL_OFFSET_TABLE_+0x10>
     dec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000df0 <strcasecmp@plt>:
     df0:	ff 25 da 40 20 00    	jmpq   *0x2040da(%rip)        # 204ed0 <strcasecmp@GLIBC_2.2.5>
     df6:	68 00 00 00 00       	pushq  $0x0
     dfb:	e9 e0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e00 <__errno_location@plt>:
     e00:	ff 25 d2 40 20 00    	jmpq   *0x2040d2(%rip)        # 204ed8 <__errno_location@GLIBC_2.2.5>
     e06:	68 01 00 00 00       	pushq  $0x1
     e0b:	e9 d0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e10 <srandom@plt>:
     e10:	ff 25 ca 40 20 00    	jmpq   *0x2040ca(%rip)        # 204ee0 <srandom@GLIBC_2.2.5>
     e16:	68 02 00 00 00       	pushq  $0x2
     e1b:	e9 c0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e20 <strncmp@plt>:
     e20:	ff 25 c2 40 20 00    	jmpq   *0x2040c2(%rip)        # 204ee8 <strncmp@GLIBC_2.2.5>
     e26:	68 03 00 00 00       	pushq  $0x3
     e2b:	e9 b0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e30 <strcpy@plt>:
     e30:	ff 25 ba 40 20 00    	jmpq   *0x2040ba(%rip)        # 204ef0 <strcpy@GLIBC_2.2.5>
     e36:	68 04 00 00 00       	pushq  $0x4
     e3b:	e9 a0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e40 <puts@plt>:
     e40:	ff 25 b2 40 20 00    	jmpq   *0x2040b2(%rip)        # 204ef8 <puts@GLIBC_2.2.5>
     e46:	68 05 00 00 00       	pushq  $0x5
     e4b:	e9 90 ff ff ff       	jmpq   de0 <.plt>

0000000000000e50 <write@plt>:
     e50:	ff 25 aa 40 20 00    	jmpq   *0x2040aa(%rip)        # 204f00 <write@GLIBC_2.2.5>
     e56:	68 06 00 00 00       	pushq  $0x6
     e5b:	e9 80 ff ff ff       	jmpq   de0 <.plt>

0000000000000e60 <__stack_chk_fail@plt>:
     e60:	ff 25 a2 40 20 00    	jmpq   *0x2040a2(%rip)        # 204f08 <__stack_chk_fail@GLIBC_2.4>
     e66:	68 07 00 00 00       	pushq  $0x7
     e6b:	e9 70 ff ff ff       	jmpq   de0 <.plt>

0000000000000e70 <mmap@plt>:
     e70:	ff 25 9a 40 20 00    	jmpq   *0x20409a(%rip)        # 204f10 <mmap@GLIBC_2.2.5>
     e76:	68 08 00 00 00       	pushq  $0x8
     e7b:	e9 60 ff ff ff       	jmpq   de0 <.plt>

0000000000000e80 <memset@plt>:
     e80:	ff 25 92 40 20 00    	jmpq   *0x204092(%rip)        # 204f18 <memset@GLIBC_2.2.5>
     e86:	68 09 00 00 00       	pushq  $0x9
     e8b:	e9 50 ff ff ff       	jmpq   de0 <.plt>

0000000000000e90 <alarm@plt>:
     e90:	ff 25 8a 40 20 00    	jmpq   *0x20408a(%rip)        # 204f20 <alarm@GLIBC_2.2.5>
     e96:	68 0a 00 00 00       	pushq  $0xa
     e9b:	e9 40 ff ff ff       	jmpq   de0 <.plt>

0000000000000ea0 <close@plt>:
     ea0:	ff 25 82 40 20 00    	jmpq   *0x204082(%rip)        # 204f28 <close@GLIBC_2.2.5>
     ea6:	68 0b 00 00 00       	pushq  $0xb
     eab:	e9 30 ff ff ff       	jmpq   de0 <.plt>

0000000000000eb0 <read@plt>:
     eb0:	ff 25 7a 40 20 00    	jmpq   *0x20407a(%rip)        # 204f30 <read@GLIBC_2.2.5>
     eb6:	68 0c 00 00 00       	pushq  $0xc
     ebb:	e9 20 ff ff ff       	jmpq   de0 <.plt>

0000000000000ec0 <signal@plt>:
     ec0:	ff 25 72 40 20 00    	jmpq   *0x204072(%rip)        # 204f38 <signal@GLIBC_2.2.5>
     ec6:	68 0d 00 00 00       	pushq  $0xd
     ecb:	e9 10 ff ff ff       	jmpq   de0 <.plt>

0000000000000ed0 <gethostbyname@plt>:
     ed0:	ff 25 6a 40 20 00    	jmpq   *0x20406a(%rip)        # 204f40 <gethostbyname@GLIBC_2.2.5>
     ed6:	68 0e 00 00 00       	pushq  $0xe
     edb:	e9 00 ff ff ff       	jmpq   de0 <.plt>

0000000000000ee0 <__memmove_chk@plt>:
     ee0:	ff 25 62 40 20 00    	jmpq   *0x204062(%rip)        # 204f48 <__memmove_chk@GLIBC_2.3.4>
     ee6:	68 0f 00 00 00       	pushq  $0xf
     eeb:	e9 f0 fe ff ff       	jmpq   de0 <.plt>

0000000000000ef0 <strtol@plt>:
     ef0:	ff 25 5a 40 20 00    	jmpq   *0x20405a(%rip)        # 204f50 <strtol@GLIBC_2.2.5>
     ef6:	68 10 00 00 00       	pushq  $0x10
     efb:	e9 e0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f00 <memcpy@plt>:
     f00:	ff 25 52 40 20 00    	jmpq   *0x204052(%rip)        # 204f58 <memcpy@GLIBC_2.14>
     f06:	68 11 00 00 00       	pushq  $0x11
     f0b:	e9 d0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f10 <time@plt>:
     f10:	ff 25 4a 40 20 00    	jmpq   *0x20404a(%rip)        # 204f60 <time@GLIBC_2.2.5>
     f16:	68 12 00 00 00       	pushq  $0x12
     f1b:	e9 c0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f20 <random@plt>:
     f20:	ff 25 42 40 20 00    	jmpq   *0x204042(%rip)        # 204f68 <random@GLIBC_2.2.5>
     f26:	68 13 00 00 00       	pushq  $0x13
     f2b:	e9 b0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f30 <_IO_getc@plt>:
     f30:	ff 25 3a 40 20 00    	jmpq   *0x20403a(%rip)        # 204f70 <_IO_getc@GLIBC_2.2.5>
     f36:	68 14 00 00 00       	pushq  $0x14
     f3b:	e9 a0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f40 <__isoc99_sscanf@plt>:
     f40:	ff 25 32 40 20 00    	jmpq   *0x204032(%rip)        # 204f78 <__isoc99_sscanf@GLIBC_2.7>
     f46:	68 15 00 00 00       	pushq  $0x15
     f4b:	e9 90 fe ff ff       	jmpq   de0 <.plt>

0000000000000f50 <munmap@plt>:
     f50:	ff 25 2a 40 20 00    	jmpq   *0x20402a(%rip)        # 204f80 <munmap@GLIBC_2.2.5>
     f56:	68 16 00 00 00       	pushq  $0x16
     f5b:	e9 80 fe ff ff       	jmpq   de0 <.plt>

0000000000000f60 <__printf_chk@plt>:
     f60:	ff 25 22 40 20 00    	jmpq   *0x204022(%rip)        # 204f88 <__printf_chk@GLIBC_2.3.4>
     f66:	68 17 00 00 00       	pushq  $0x17
     f6b:	e9 70 fe ff ff       	jmpq   de0 <.plt>

0000000000000f70 <fopen@plt>:
     f70:	ff 25 1a 40 20 00    	jmpq   *0x20401a(%rip)        # 204f90 <fopen@GLIBC_2.2.5>
     f76:	68 18 00 00 00       	pushq  $0x18
     f7b:	e9 60 fe ff ff       	jmpq   de0 <.plt>

0000000000000f80 <getopt@plt>:
     f80:	ff 25 12 40 20 00    	jmpq   *0x204012(%rip)        # 204f98 <getopt@GLIBC_2.2.5>
     f86:	68 19 00 00 00       	pushq  $0x19
     f8b:	e9 50 fe ff ff       	jmpq   de0 <.plt>

0000000000000f90 <strtoul@plt>:
     f90:	ff 25 0a 40 20 00    	jmpq   *0x20400a(%rip)        # 204fa0 <strtoul@GLIBC_2.2.5>
     f96:	68 1a 00 00 00       	pushq  $0x1a
     f9b:	e9 40 fe ff ff       	jmpq   de0 <.plt>

0000000000000fa0 <gethostname@plt>:
     fa0:	ff 25 02 40 20 00    	jmpq   *0x204002(%rip)        # 204fa8 <gethostname@GLIBC_2.2.5>
     fa6:	68 1b 00 00 00       	pushq  $0x1b
     fab:	e9 30 fe ff ff       	jmpq   de0 <.plt>

0000000000000fb0 <exit@plt>:
     fb0:	ff 25 fa 3f 20 00    	jmpq   *0x203ffa(%rip)        # 204fb0 <exit@GLIBC_2.2.5>
     fb6:	68 1c 00 00 00       	pushq  $0x1c
     fbb:	e9 20 fe ff ff       	jmpq   de0 <.plt>

0000000000000fc0 <connect@plt>:
     fc0:	ff 25 f2 3f 20 00    	jmpq   *0x203ff2(%rip)        # 204fb8 <connect@GLIBC_2.2.5>
     fc6:	68 1d 00 00 00       	pushq  $0x1d
     fcb:	e9 10 fe ff ff       	jmpq   de0 <.plt>

0000000000000fd0 <__fprintf_chk@plt>:
     fd0:	ff 25 ea 3f 20 00    	jmpq   *0x203fea(%rip)        # 204fc0 <__fprintf_chk@GLIBC_2.3.4>
     fd6:	68 1e 00 00 00       	pushq  $0x1e
     fdb:	e9 00 fe ff ff       	jmpq   de0 <.plt>

0000000000000fe0 <__sprintf_chk@plt>:
     fe0:	ff 25 e2 3f 20 00    	jmpq   *0x203fe2(%rip)        # 204fc8 <__sprintf_chk@GLIBC_2.3.4>
     fe6:	68 1f 00 00 00       	pushq  $0x1f
     feb:	e9 f0 fd ff ff       	jmpq   de0 <.plt>

0000000000000ff0 <socket@plt>:
     ff0:	ff 25 da 3f 20 00    	jmpq   *0x203fda(%rip)        # 204fd0 <socket@GLIBC_2.2.5>
     ff6:	68 20 00 00 00       	pushq  $0x20
     ffb:	e9 e0 fd ff ff       	jmpq   de0 <.plt>

Disassembly of section .plt.got:

0000000000001000 <__cxa_finalize@plt>:
    1000:	ff 25 f2 3f 20 00    	jmpq   *0x203ff2(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    1006:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001010 <_start>:
    1010:	31 ed                	xor    %ebp,%ebp
    1012:	49 89 d1             	mov    %rdx,%r9
    1015:	5e                   	pop    %rsi
    1016:	48 89 e2             	mov    %rsp,%rdx
    1019:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    101d:	50                   	push   %rax
    101e:	54                   	push   %rsp
    101f:	4c 8d 05 0a 20 00 00 	lea    0x200a(%rip),%r8        # 3030 <__libc_csu_fini>
    1026:	48 8d 0d 93 1f 00 00 	lea    0x1f93(%rip),%rcx        # 2fc0 <__libc_csu_init>
    102d:	48 8d 3d 20 03 00 00 	lea    0x320(%rip),%rdi        # 1354 <main>
    1034:	ff 15 a6 3f 20 00    	callq  *0x203fa6(%rip)        # 204fe0 <__libc_start_main@GLIBC_2.2.5>
    103a:	f4                   	hlt    
    103b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001040 <deregister_tm_clones>:
    1040:	48 8d 3d 29 43 20 00 	lea    0x204329(%rip),%rdi        # 205370 <__TMC_END__>
    1047:	55                   	push   %rbp
    1048:	48 8d 05 21 43 20 00 	lea    0x204321(%rip),%rax        # 205370 <__TMC_END__>
    104f:	48 39 f8             	cmp    %rdi,%rax
    1052:	48 89 e5             	mov    %rsp,%rbp
    1055:	74 19                	je     1070 <deregister_tm_clones+0x30>
    1057:	48 8b 05 7a 3f 20 00 	mov    0x203f7a(%rip),%rax        # 204fd8 <_ITM_deregisterTMCloneTable>
    105e:	48 85 c0             	test   %rax,%rax
    1061:	74 0d                	je     1070 <deregister_tm_clones+0x30>
    1063:	5d                   	pop    %rbp
    1064:	ff e0                	jmpq   *%rax
    1066:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    106d:	00 00 00 
    1070:	5d                   	pop    %rbp
    1071:	c3                   	retq   
    1072:	0f 1f 40 00          	nopl   0x0(%rax)
    1076:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    107d:	00 00 00 

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d e9 42 20 00 	lea    0x2042e9(%rip),%rdi        # 205370 <__TMC_END__>
    1087:	48 8d 35 e2 42 20 00 	lea    0x2042e2(%rip),%rsi        # 205370 <__TMC_END__>
    108e:	55                   	push   %rbp
    108f:	48 29 fe             	sub    %rdi,%rsi
    1092:	48 89 e5             	mov    %rsp,%rbp
    1095:	48 c1 fe 03          	sar    $0x3,%rsi
    1099:	48 89 f0             	mov    %rsi,%rax
    109c:	48 c1 e8 3f          	shr    $0x3f,%rax
    10a0:	48 01 c6             	add    %rax,%rsi
    10a3:	48 d1 fe             	sar    %rsi
    10a6:	74 18                	je     10c0 <register_tm_clones+0x40>
    10a8:	48 8b 05 41 3f 20 00 	mov    0x203f41(%rip),%rax        # 204ff0 <_ITM_registerTMCloneTable>
    10af:	48 85 c0             	test   %rax,%rax
    10b2:	74 0c                	je     10c0 <register_tm_clones+0x40>
    10b4:	5d                   	pop    %rbp
    10b5:	ff e0                	jmpq   *%rax
    10b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    10be:	00 00 
    10c0:	5d                   	pop    %rbp
    10c1:	c3                   	retq   
    10c2:	0f 1f 40 00          	nopl   0x0(%rax)
    10c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10cd:	00 00 00 

00000000000010d0 <__do_global_dtors_aux>:
    10d0:	80 3d d1 42 20 00 00 	cmpb   $0x0,0x2042d1(%rip)        # 2053a8 <completed.7697>
    10d7:	75 2f                	jne    1108 <__do_global_dtors_aux+0x38>
    10d9:	48 83 3d 17 3f 20 00 	cmpq   $0x0,0x203f17(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e0:	00 
    10e1:	55                   	push   %rbp
    10e2:	48 89 e5             	mov    %rsp,%rbp
    10e5:	74 0c                	je     10f3 <__do_global_dtors_aux+0x23>
    10e7:	48 8b 3d 1a 3f 20 00 	mov    0x203f1a(%rip),%rdi        # 205008 <__dso_handle>
    10ee:	e8 0d ff ff ff       	callq  1000 <__cxa_finalize@plt>
    10f3:	e8 48 ff ff ff       	callq  1040 <deregister_tm_clones>
    10f8:	c6 05 a9 42 20 00 01 	movb   $0x1,0x2042a9(%rip)        # 2053a8 <completed.7697>
    10ff:	5d                   	pop    %rbp
    1100:	c3                   	retq   
    1101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1108:	f3 c3                	repz retq 
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <frame_dummy>:
    1110:	55                   	push   %rbp
    1111:	48 89 e5             	mov    %rsp,%rbp
    1114:	5d                   	pop    %rbp
    1115:	e9 66 ff ff ff       	jmpq   1080 <register_tm_clones>

000000000000111a <usage>:
    111a:	48 83 ec 08          	sub    $0x8,%rsp
    111e:	48 89 fa             	mov    %rdi,%rdx
    1121:	83 3d c0 42 20 00 00 	cmpl   $0x0,0x2042c0(%rip)        # 2053e8 <is_checker>
    1128:	74 50                	je     117a <usage+0x60>
    112a:	48 8d 35 17 1f 00 00 	lea    0x1f17(%rip),%rsi        # 3048 <_IO_stdin_used+0x8>
    1131:	bf 01 00 00 00       	mov    $0x1,%edi
    1136:	b8 00 00 00 00       	mov    $0x0,%eax
    113b:	e8 20 fe ff ff       	callq  f60 <__printf_chk@plt>
    1140:	48 8d 3d 39 1f 00 00 	lea    0x1f39(%rip),%rdi        # 3080 <_IO_stdin_used+0x40>
    1147:	e8 f4 fc ff ff       	callq  e40 <puts@plt>
    114c:	48 8d 3d a5 20 00 00 	lea    0x20a5(%rip),%rdi        # 31f8 <_IO_stdin_used+0x1b8>
    1153:	e8 e8 fc ff ff       	callq  e40 <puts@plt>
    1158:	48 8d 3d 49 1f 00 00 	lea    0x1f49(%rip),%rdi        # 30a8 <_IO_stdin_used+0x68>
    115f:	e8 dc fc ff ff       	callq  e40 <puts@plt>
    1164:	48 8d 3d a7 20 00 00 	lea    0x20a7(%rip),%rdi        # 3212 <_IO_stdin_used+0x1d2>
    116b:	e8 d0 fc ff ff       	callq  e40 <puts@plt>
    1170:	bf 00 00 00 00       	mov    $0x0,%edi
    1175:	e8 36 fe ff ff       	callq  fb0 <exit@plt>
    117a:	48 8d 35 ad 20 00 00 	lea    0x20ad(%rip),%rsi        # 322e <_IO_stdin_used+0x1ee>
    1181:	bf 01 00 00 00       	mov    $0x1,%edi
    1186:	b8 00 00 00 00       	mov    $0x0,%eax
    118b:	e8 d0 fd ff ff       	callq  f60 <__printf_chk@plt>
    1190:	48 8d 3d 39 1f 00 00 	lea    0x1f39(%rip),%rdi        # 30d0 <_IO_stdin_used+0x90>
    1197:	e8 a4 fc ff ff       	callq  e40 <puts@plt>
    119c:	48 8d 3d 55 1f 00 00 	lea    0x1f55(%rip),%rdi        # 30f8 <_IO_stdin_used+0xb8>
    11a3:	e8 98 fc ff ff       	callq  e40 <puts@plt>
    11a8:	48 8d 3d 9d 20 00 00 	lea    0x209d(%rip),%rdi        # 324c <_IO_stdin_used+0x20c>
    11af:	e8 8c fc ff ff       	callq  e40 <puts@plt>
    11b4:	eb ba                	jmp    1170 <usage+0x56>

00000000000011b6 <initialize_target>:
    11b6:	55                   	push   %rbp
    11b7:	53                   	push   %rbx
    11b8:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
    11bf:	89 f5                	mov    %esi,%ebp
    11c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11c8:	00 00 
    11ca:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
    11d1:	00 
    11d2:	31 c0                	xor    %eax,%eax
    11d4:	89 3d fe 41 20 00    	mov    %edi,0x2041fe(%rip)        # 2053d8 <check_level>
    11da:	8b 3d 30 3e 20 00    	mov    0x203e30(%rip),%edi        # 205010 <target_id>
    11e0:	e8 ad 1d 00 00       	callq  2f92 <gencookie>
    11e5:	89 05 f9 41 20 00    	mov    %eax,0x2041f9(%rip)        # 2053e4 <cookie>
    11eb:	89 c7                	mov    %eax,%edi
    11ed:	e8 a0 1d 00 00       	callq  2f92 <gencookie>
    11f2:	89 05 e8 41 20 00    	mov    %eax,0x2041e8(%rip)        # 2053e0 <authkey>
    11f8:	8b 05 12 3e 20 00    	mov    0x203e12(%rip),%eax        # 205010 <target_id>
    11fe:	8d 78 01             	lea    0x1(%rax),%edi
    1201:	e8 0a fc ff ff       	callq  e10 <srandom@plt>
    1206:	e8 15 fd ff ff       	callq  f20 <random@plt>
    120b:	89 c7                	mov    %eax,%edi
    120d:	e8 2d 03 00 00       	callq  153f <scramble>
    1212:	89 c3                	mov    %eax,%ebx
    1214:	85 ed                	test   %ebp,%ebp
    1216:	75 54                	jne    126c <initialize_target+0xb6>
    1218:	b8 00 00 00 00       	mov    $0x0,%eax
    121d:	01 d8                	add    %ebx,%eax
    121f:	0f b7 c0             	movzwl %ax,%eax
    1222:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
    1229:	89 c0                	mov    %eax,%eax
    122b:	48 89 05 2e 41 20 00 	mov    %rax,0x20412e(%rip)        # 205360 <buf_offset>
    1232:	c6 05 cf 4d 20 00 63 	movb   $0x63,0x204dcf(%rip)        # 206008 <target_prefix>
    1239:	83 3d 28 41 20 00 00 	cmpl   $0x0,0x204128(%rip)        # 205368 <notify>
    1240:	74 09                	je     124b <initialize_target+0x95>
    1242:	83 3d 9f 41 20 00 00 	cmpl   $0x0,0x20419f(%rip)        # 2053e8 <is_checker>
    1249:	74 39                	je     1284 <initialize_target+0xce>
    124b:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
    1252:	00 
    1253:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    125a:	00 00 
    125c:	0f 85 ed 00 00 00    	jne    134f <initialize_target+0x199>
    1262:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
    1269:	5b                   	pop    %rbx
    126a:	5d                   	pop    %rbp
    126b:	c3                   	retq   
    126c:	bf 00 00 00 00       	mov    $0x0,%edi
    1271:	e8 9a fc ff ff       	callq  f10 <time@plt>
    1276:	89 c7                	mov    %eax,%edi
    1278:	e8 93 fb ff ff       	callq  e10 <srandom@plt>
    127d:	e8 9e fc ff ff       	callq  f20 <random@plt>
    1282:	eb 99                	jmp    121d <initialize_target+0x67>
    1284:	48 89 e7             	mov    %rsp,%rdi
    1287:	be 00 01 00 00       	mov    $0x100,%esi
    128c:	e8 0f fd ff ff       	callq  fa0 <gethostname@plt>
    1291:	89 c5                	mov    %eax,%ebp
    1293:	85 c0                	test   %eax,%eax
    1295:	75 26                	jne    12bd <initialize_target+0x107>
    1297:	89 c3                	mov    %eax,%ebx
    1299:	48 63 c3             	movslq %ebx,%rax
    129c:	48 8d 15 9d 3d 20 00 	lea    0x203d9d(%rip),%rdx        # 205040 <host_table>
    12a3:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    12a7:	48 85 ff             	test   %rdi,%rdi
    12aa:	74 2c                	je     12d8 <initialize_target+0x122>
    12ac:	48 89 e6             	mov    %rsp,%rsi
    12af:	e8 3c fb ff ff       	callq  df0 <strcasecmp@plt>
    12b4:	85 c0                	test   %eax,%eax
    12b6:	74 1b                	je     12d3 <initialize_target+0x11d>
    12b8:	83 c3 01             	add    $0x1,%ebx
    12bb:	eb dc                	jmp    1299 <initialize_target+0xe3>
    12bd:	48 8d 3d 64 1e 00 00 	lea    0x1e64(%rip),%rdi        # 3128 <_IO_stdin_used+0xe8>
    12c4:	e8 77 fb ff ff       	callq  e40 <puts@plt>
    12c9:	bf 08 00 00 00       	mov    $0x8,%edi
    12ce:	e8 dd fc ff ff       	callq  fb0 <exit@plt>
    12d3:	bd 01 00 00 00       	mov    $0x1,%ebp
    12d8:	48 89 e7             	mov    %rsp,%rdi
    12db:	48 8b 35 3e 3d 20 00 	mov    0x203d3e(%rip),%rsi        # 205020 <user_id>
    12e2:	e8 09 fb ff ff       	callq  df0 <strcasecmp@plt>
    12e7:	85 c0                	test   %eax,%eax
    12e9:	74 04                	je     12ef <initialize_target+0x139>
    12eb:	85 ed                	test   %ebp,%ebp
    12ed:	74 3d                	je     132c <initialize_target+0x176>
    12ef:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    12f6:	00 
    12f7:	e8 c6 19 00 00       	callq  2cc2 <init_driver>
    12fc:	85 c0                	test   %eax,%eax
    12fe:	0f 89 47 ff ff ff    	jns    124b <initialize_target+0x95>
    1304:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
    130b:	00 
    130c:	48 8d 35 8d 1e 00 00 	lea    0x1e8d(%rip),%rsi        # 31a0 <_IO_stdin_used+0x160>
    1313:	bf 01 00 00 00       	mov    $0x1,%edi
    1318:	b8 00 00 00 00       	mov    $0x0,%eax
    131d:	e8 3e fc ff ff       	callq  f60 <__printf_chk@plt>
    1322:	bf 08 00 00 00       	mov    $0x8,%edi
    1327:	e8 84 fc ff ff       	callq  fb0 <exit@plt>
    132c:	48 89 e2             	mov    %rsp,%rdx
    132f:	48 8d 35 2a 1e 00 00 	lea    0x1e2a(%rip),%rsi        # 3160 <_IO_stdin_used+0x120>
    1336:	bf 01 00 00 00       	mov    $0x1,%edi
    133b:	b8 00 00 00 00       	mov    $0x0,%eax
    1340:	e8 1b fc ff ff       	callq  f60 <__printf_chk@plt>
    1345:	bf 08 00 00 00       	mov    $0x8,%edi
    134a:	e8 61 fc ff ff       	callq  fb0 <exit@plt>
    134f:	e8 0c fb ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000001354 <main>:
    1354:	41 56                	push   %r14
    1356:	41 55                	push   %r13
    1358:	41 54                	push   %r12
    135a:	55                   	push   %rbp
    135b:	53                   	push   %rbx
    135c:	41 89 fc             	mov    %edi,%r12d
    135f:	48 89 f3             	mov    %rsi,%rbx
    1362:	48 8d 35 60 0c 00 00 	lea    0xc60(%rip),%rsi        # 1fc9 <seghandler>
    1369:	bf 0b 00 00 00       	mov    $0xb,%edi
    136e:	e8 4d fb ff ff       	callq  ec0 <signal@plt>
    1373:	48 8d 35 fb 0b 00 00 	lea    0xbfb(%rip),%rsi        # 1f75 <bushandler>
    137a:	bf 07 00 00 00       	mov    $0x7,%edi
    137f:	e8 3c fb ff ff       	callq  ec0 <signal@plt>
    1384:	48 8d 35 92 0c 00 00 	lea    0xc92(%rip),%rsi        # 201d <illegalhandler>
    138b:	bf 04 00 00 00       	mov    $0x4,%edi
    1390:	e8 2b fb ff ff       	callq  ec0 <signal@plt>
    1395:	83 3d 4c 40 20 00 00 	cmpl   $0x0,0x20404c(%rip)        # 2053e8 <is_checker>
    139c:	75 26                	jne    13c4 <main+0x70>
    139e:	48 8d 2d c0 1e 00 00 	lea    0x1ec0(%rip),%rbp        # 3265 <_IO_stdin_used+0x225>
    13a5:	48 8b 05 d4 3f 20 00 	mov    0x203fd4(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    13ac:	48 89 05 1d 40 20 00 	mov    %rax,0x20401d(%rip)        # 2053d0 <infile>
    13b3:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    13b9:	41 be 00 00 00 00    	mov    $0x0,%r14d
    13bf:	e9 8d 00 00 00       	jmpq   1451 <main+0xfd>
    13c4:	48 8d 35 a6 0c 00 00 	lea    0xca6(%rip),%rsi        # 2071 <sigalrmhandler>
    13cb:	bf 0e 00 00 00       	mov    $0xe,%edi
    13d0:	e8 eb fa ff ff       	callq  ec0 <signal@plt>
    13d5:	bf 05 00 00 00       	mov    $0x5,%edi
    13da:	e8 b1 fa ff ff       	callq  e90 <alarm@plt>
    13df:	48 8d 2d 84 1e 00 00 	lea    0x1e84(%rip),%rbp        # 326a <_IO_stdin_used+0x22a>
    13e6:	eb bd                	jmp    13a5 <main+0x51>
    13e8:	48 8b 3b             	mov    (%rbx),%rdi
    13eb:	e8 2a fd ff ff       	callq  111a <usage>
    13f0:	48 8d 35 d6 20 00 00 	lea    0x20d6(%rip),%rsi        # 34cd <_IO_stdin_used+0x48d>
    13f7:	48 8b 3d 8a 3f 20 00 	mov    0x203f8a(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    13fe:	e8 6d fb ff ff       	callq  f70 <fopen@plt>
    1403:	48 89 05 c6 3f 20 00 	mov    %rax,0x203fc6(%rip)        # 2053d0 <infile>
    140a:	48 85 c0             	test   %rax,%rax
    140d:	75 42                	jne    1451 <main+0xfd>
    140f:	48 8b 0d 72 3f 20 00 	mov    0x203f72(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    1416:	48 8d 15 55 1e 00 00 	lea    0x1e55(%rip),%rdx        # 3272 <_IO_stdin_used+0x232>
    141d:	be 01 00 00 00       	mov    $0x1,%esi
    1422:	48 8b 3d 77 3f 20 00 	mov    0x203f77(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    1429:	e8 a2 fb ff ff       	callq  fd0 <__fprintf_chk@plt>
    142e:	b8 01 00 00 00       	mov    $0x1,%eax
    1433:	e9 d9 00 00 00       	jmpq   1511 <main+0x1bd>
    1438:	ba 10 00 00 00       	mov    $0x10,%edx
    143d:	be 00 00 00 00       	mov    $0x0,%esi
    1442:	48 8b 3d 3f 3f 20 00 	mov    0x203f3f(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    1449:	e8 42 fb ff ff       	callq  f90 <strtoul@plt>
    144e:	41 89 c6             	mov    %eax,%r14d
    1451:	48 89 ea             	mov    %rbp,%rdx
    1454:	48 89 de             	mov    %rbx,%rsi
    1457:	44 89 e7             	mov    %r12d,%edi
    145a:	e8 21 fb ff ff       	callq  f80 <getopt@plt>
    145f:	3c ff                	cmp    $0xff,%al
    1461:	74 62                	je     14c5 <main+0x171>
    1463:	0f be d0             	movsbl %al,%edx
    1466:	83 e8 61             	sub    $0x61,%eax
    1469:	3c 10                	cmp    $0x10,%al
    146b:	77 3a                	ja     14a7 <main+0x153>
    146d:	0f b6 c0             	movzbl %al,%eax
    1470:	48 8d 0d 39 1e 00 00 	lea    0x1e39(%rip),%rcx        # 32b0 <_IO_stdin_used+0x270>
    1477:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    147b:	48 01 c8             	add    %rcx,%rax
    147e:	ff e0                	jmpq   *%rax
    1480:	ba 0a 00 00 00       	mov    $0xa,%edx
    1485:	be 00 00 00 00       	mov    $0x0,%esi
    148a:	48 8b 3d f7 3e 20 00 	mov    0x203ef7(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    1491:	e8 5a fa ff ff       	callq  ef0 <strtol@plt>
    1496:	41 89 c5             	mov    %eax,%r13d
    1499:	eb b6                	jmp    1451 <main+0xfd>
    149b:	c7 05 c3 3e 20 00 00 	movl   $0x0,0x203ec3(%rip)        # 205368 <notify>
    14a2:	00 00 00 
    14a5:	eb aa                	jmp    1451 <main+0xfd>
    14a7:	48 8d 35 e1 1d 00 00 	lea    0x1de1(%rip),%rsi        # 328f <_IO_stdin_used+0x24f>
    14ae:	bf 01 00 00 00       	mov    $0x1,%edi
    14b3:	b8 00 00 00 00       	mov    $0x0,%eax
    14b8:	e8 a3 fa ff ff       	callq  f60 <__printf_chk@plt>
    14bd:	48 8b 3b             	mov    (%rbx),%rdi
    14c0:	e8 55 fc ff ff       	callq  111a <usage>
    14c5:	be 00 00 00 00       	mov    $0x0,%esi
    14ca:	44 89 ef             	mov    %r13d,%edi
    14cd:	e8 e4 fc ff ff       	callq  11b6 <initialize_target>
    14d2:	83 3d 0f 3f 20 00 00 	cmpl   $0x0,0x203f0f(%rip)        # 2053e8 <is_checker>
    14d9:	74 09                	je     14e4 <main+0x190>
    14db:	44 39 35 fe 3e 20 00 	cmp    %r14d,0x203efe(%rip)        # 2053e0 <authkey>
    14e2:	75 36                	jne    151a <main+0x1c6>
    14e4:	8b 15 fa 3e 20 00    	mov    0x203efa(%rip),%edx        # 2053e4 <cookie>
    14ea:	48 8d 35 b1 1d 00 00 	lea    0x1db1(%rip),%rsi        # 32a2 <_IO_stdin_used+0x262>
    14f1:	bf 01 00 00 00       	mov    $0x1,%edi
    14f6:	b8 00 00 00 00       	mov    $0x0,%eax
    14fb:	e8 60 fa ff ff       	callq  f60 <__printf_chk@plt>
    1500:	48 8b 3d 59 3e 20 00 	mov    0x203e59(%rip),%rdi        # 205360 <buf_offset>
    1507:	e8 71 0c 00 00       	callq  217d <stable_launch>
    150c:	b8 00 00 00 00       	mov    $0x0,%eax
    1511:	5b                   	pop    %rbx
    1512:	5d                   	pop    %rbp
    1513:	41 5c                	pop    %r12
    1515:	41 5d                	pop    %r13
    1517:	41 5e                	pop    %r14
    1519:	c3                   	retq   
    151a:	44 89 f2             	mov    %r14d,%edx
    151d:	48 8d 35 a4 1c 00 00 	lea    0x1ca4(%rip),%rsi        # 31c8 <_IO_stdin_used+0x188>
    1524:	bf 01 00 00 00       	mov    $0x1,%edi
    1529:	b8 00 00 00 00       	mov    $0x0,%eax
    152e:	e8 2d fa ff ff       	callq  f60 <__printf_chk@plt>
    1533:	b8 00 00 00 00       	mov    $0x0,%eax
    1538:	e8 98 06 00 00       	callq  1bd5 <check_fail>
    153d:	eb a5                	jmp    14e4 <main+0x190>

000000000000153f <scramble>:
    153f:	48 83 ec 38          	sub    $0x38,%rsp
    1543:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    154a:	00 00 
    154c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1551:	31 c0                	xor    %eax,%eax
    1553:	eb 10                	jmp    1565 <scramble+0x26>
    1555:	69 d0 e7 4d 00 00    	imul   $0x4de7,%eax,%edx
    155b:	01 fa                	add    %edi,%edx
    155d:	89 c1                	mov    %eax,%ecx
    155f:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    1562:	83 c0 01             	add    $0x1,%eax
    1565:	83 f8 09             	cmp    $0x9,%eax
    1568:	76 eb                	jbe    1555 <scramble+0x16>
    156a:	8b 44 24 20          	mov    0x20(%rsp),%eax
    156e:	69 c0 0b 1d 00 00    	imul   $0x1d0b,%eax,%eax
    1574:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1578:	8b 44 24 08          	mov    0x8(%rsp),%eax
    157c:	69 c0 d6 41 00 00    	imul   $0x41d6,%eax,%eax
    1582:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1586:	8b 04 24             	mov    (%rsp),%eax
    1589:	69 c0 9b 87 00 00    	imul   $0x879b,%eax,%eax
    158f:	89 04 24             	mov    %eax,(%rsp)
    1592:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1596:	69 c0 e5 8a 00 00    	imul   $0x8ae5,%eax,%eax
    159c:	89 44 24 18          	mov    %eax,0x18(%rsp)
    15a0:	8b 44 24 10          	mov    0x10(%rsp),%eax
    15a4:	69 c0 18 a7 00 00    	imul   $0xa718,%eax,%eax
    15aa:	89 44 24 10          	mov    %eax,0x10(%rsp)
    15ae:	8b 44 24 08          	mov    0x8(%rsp),%eax
    15b2:	69 c0 a4 e7 00 00    	imul   $0xe7a4,%eax,%eax
    15b8:	89 44 24 08          	mov    %eax,0x8(%rsp)
    15bc:	8b 44 24 04          	mov    0x4(%rsp),%eax
    15c0:	69 c0 98 f3 00 00    	imul   $0xf398,%eax,%eax
    15c6:	89 44 24 04          	mov    %eax,0x4(%rsp)
    15ca:	8b 44 24 10          	mov    0x10(%rsp),%eax
    15ce:	69 c0 0b 70 00 00    	imul   $0x700b,%eax,%eax
    15d4:	89 44 24 10          	mov    %eax,0x10(%rsp)
    15d8:	8b 44 24 04          	mov    0x4(%rsp),%eax
    15dc:	69 c0 61 3e 00 00    	imul   $0x3e61,%eax,%eax
    15e2:	89 44 24 04          	mov    %eax,0x4(%rsp)
    15e6:	8b 44 24 10          	mov    0x10(%rsp),%eax
    15ea:	69 c0 11 26 00 00    	imul   $0x2611,%eax,%eax
    15f0:	89 44 24 10          	mov    %eax,0x10(%rsp)
    15f4:	8b 44 24 10          	mov    0x10(%rsp),%eax
    15f8:	69 c0 3b e5 00 00    	imul   $0xe53b,%eax,%eax
    15fe:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1602:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1606:	69 c0 3b 26 00 00    	imul   $0x263b,%eax,%eax
    160c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1610:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1614:	69 c0 8b 03 00 00    	imul   $0x38b,%eax,%eax
    161a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    161e:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1622:	69 c0 d5 b3 00 00    	imul   $0xb3d5,%eax,%eax
    1628:	89 44 24 24          	mov    %eax,0x24(%rsp)
    162c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1630:	69 c0 6f f3 00 00    	imul   $0xf36f,%eax,%eax
    1636:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    163a:	8b 44 24 20          	mov    0x20(%rsp),%eax
    163e:	69 c0 31 19 00 00    	imul   $0x1931,%eax,%eax
    1644:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1648:	8b 44 24 04          	mov    0x4(%rsp),%eax
    164c:	69 c0 f7 fa 00 00    	imul   $0xfaf7,%eax,%eax
    1652:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1656:	8b 44 24 20          	mov    0x20(%rsp),%eax
    165a:	69 c0 3f 8b 00 00    	imul   $0x8b3f,%eax,%eax
    1660:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1664:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1668:	69 c0 68 86 00 00    	imul   $0x8668,%eax,%eax
    166e:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1672:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1676:	69 c0 c6 e2 00 00    	imul   $0xe2c6,%eax,%eax
    167c:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1680:	8b 04 24             	mov    (%rsp),%eax
    1683:	69 c0 7f bd 00 00    	imul   $0xbd7f,%eax,%eax
    1689:	89 04 24             	mov    %eax,(%rsp)
    168c:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1690:	69 c0 ae 98 00 00    	imul   $0x98ae,%eax,%eax
    1696:	89 44 24 14          	mov    %eax,0x14(%rsp)
    169a:	8b 44 24 04          	mov    0x4(%rsp),%eax
    169e:	69 c0 2e 6b 00 00    	imul   $0x6b2e,%eax,%eax
    16a4:	89 44 24 04          	mov    %eax,0x4(%rsp)
    16a8:	8b 44 24 04          	mov    0x4(%rsp),%eax
    16ac:	69 c0 6d 0f 00 00    	imul   $0xf6d,%eax,%eax
    16b2:	89 44 24 04          	mov    %eax,0x4(%rsp)
    16b6:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16ba:	69 c0 68 c5 00 00    	imul   $0xc568,%eax,%eax
    16c0:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16c4:	8b 04 24             	mov    (%rsp),%eax
    16c7:	69 c0 b7 93 00 00    	imul   $0x93b7,%eax,%eax
    16cd:	89 04 24             	mov    %eax,(%rsp)
    16d0:	8b 44 24 20          	mov    0x20(%rsp),%eax
    16d4:	69 c0 b8 37 00 00    	imul   $0x37b8,%eax,%eax
    16da:	89 44 24 20          	mov    %eax,0x20(%rsp)
    16de:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16e2:	69 c0 45 f6 00 00    	imul   $0xf645,%eax,%eax
    16e8:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16ec:	8b 44 24 18          	mov    0x18(%rsp),%eax
    16f0:	69 c0 66 8b 00 00    	imul   $0x8b66,%eax,%eax
    16f6:	89 44 24 18          	mov    %eax,0x18(%rsp)
    16fa:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    16fe:	69 c0 8d 06 00 00    	imul   $0x68d,%eax,%eax
    1704:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1708:	8b 44 24 18          	mov    0x18(%rsp),%eax
    170c:	69 c0 65 6d 00 00    	imul   $0x6d65,%eax,%eax
    1712:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1716:	8b 44 24 10          	mov    0x10(%rsp),%eax
    171a:	69 c0 50 8f 00 00    	imul   $0x8f50,%eax,%eax
    1720:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1724:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1728:	69 c0 c6 7a 00 00    	imul   $0x7ac6,%eax,%eax
    172e:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1732:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1736:	69 c0 ee ea 00 00    	imul   $0xeaee,%eax,%eax
    173c:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1740:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1744:	69 c0 b3 30 00 00    	imul   $0x30b3,%eax,%eax
    174a:	89 44 24 08          	mov    %eax,0x8(%rsp)
    174e:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1752:	69 c0 ae 2e 00 00    	imul   $0x2eae,%eax,%eax
    1758:	89 44 24 20          	mov    %eax,0x20(%rsp)
    175c:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1760:	69 c0 1f 98 00 00    	imul   $0x981f,%eax,%eax
    1766:	89 44 24 08          	mov    %eax,0x8(%rsp)
    176a:	8b 44 24 14          	mov    0x14(%rsp),%eax
    176e:	69 c0 49 9f 00 00    	imul   $0x9f49,%eax,%eax
    1774:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1778:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    177c:	69 c0 16 d0 00 00    	imul   $0xd016,%eax,%eax
    1782:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1786:	8b 04 24             	mov    (%rsp),%eax
    1789:	69 c0 dc ac 00 00    	imul   $0xacdc,%eax,%eax
    178f:	89 04 24             	mov    %eax,(%rsp)
    1792:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1796:	69 c0 35 e4 00 00    	imul   $0xe435,%eax,%eax
    179c:	89 44 24 14          	mov    %eax,0x14(%rsp)
    17a0:	8b 44 24 20          	mov    0x20(%rsp),%eax
    17a4:	69 c0 22 40 00 00    	imul   $0x4022,%eax,%eax
    17aa:	89 44 24 20          	mov    %eax,0x20(%rsp)
    17ae:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    17b2:	69 c0 86 fa 00 00    	imul   $0xfa86,%eax,%eax
    17b8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    17bc:	8b 44 24 20          	mov    0x20(%rsp),%eax
    17c0:	69 c0 32 57 00 00    	imul   $0x5732,%eax,%eax
    17c6:	89 44 24 20          	mov    %eax,0x20(%rsp)
    17ca:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    17ce:	69 c0 81 e0 00 00    	imul   $0xe081,%eax,%eax
    17d4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    17d8:	8b 04 24             	mov    (%rsp),%eax
    17db:	69 c0 c1 04 00 00    	imul   $0x4c1,%eax,%eax
    17e1:	89 04 24             	mov    %eax,(%rsp)
    17e4:	8b 44 24 14          	mov    0x14(%rsp),%eax
    17e8:	69 c0 7e 7d 00 00    	imul   $0x7d7e,%eax,%eax
    17ee:	89 44 24 14          	mov    %eax,0x14(%rsp)
    17f2:	8b 04 24             	mov    (%rsp),%eax
    17f5:	69 c0 42 b6 00 00    	imul   $0xb642,%eax,%eax
    17fb:	89 04 24             	mov    %eax,(%rsp)
    17fe:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1802:	69 c0 a0 ae 00 00    	imul   $0xaea0,%eax,%eax
    1808:	89 44 24 08          	mov    %eax,0x8(%rsp)
    180c:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1810:	69 c0 72 f9 00 00    	imul   $0xf972,%eax,%eax
    1816:	89 44 24 20          	mov    %eax,0x20(%rsp)
    181a:	8b 04 24             	mov    (%rsp),%eax
    181d:	69 c0 e5 6e 00 00    	imul   $0x6ee5,%eax,%eax
    1823:	89 04 24             	mov    %eax,(%rsp)
    1826:	8b 44 24 20          	mov    0x20(%rsp),%eax
    182a:	69 c0 86 cd 00 00    	imul   $0xcd86,%eax,%eax
    1830:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1834:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1838:	69 c0 7c ef 00 00    	imul   $0xef7c,%eax,%eax
    183e:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1842:	8b 04 24             	mov    (%rsp),%eax
    1845:	69 c0 51 0a 00 00    	imul   $0xa51,%eax,%eax
    184b:	89 04 24             	mov    %eax,(%rsp)
    184e:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1852:	69 c0 87 1b 00 00    	imul   $0x1b87,%eax,%eax
    1858:	89 44 24 14          	mov    %eax,0x14(%rsp)
    185c:	8b 04 24             	mov    (%rsp),%eax
    185f:	69 c0 11 55 00 00    	imul   $0x5511,%eax,%eax
    1865:	89 04 24             	mov    %eax,(%rsp)
    1868:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    186c:	69 c0 c0 f7 00 00    	imul   $0xf7c0,%eax,%eax
    1872:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1876:	8b 44 24 18          	mov    0x18(%rsp),%eax
    187a:	69 c0 aa 1b 00 00    	imul   $0x1baa,%eax,%eax
    1880:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1884:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1888:	69 c0 9b cb 00 00    	imul   $0xcb9b,%eax,%eax
    188e:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1892:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1896:	69 c0 32 78 00 00    	imul   $0x7832,%eax,%eax
    189c:	89 44 24 20          	mov    %eax,0x20(%rsp)
    18a0:	8b 44 24 10          	mov    0x10(%rsp),%eax
    18a4:	69 c0 9c d0 00 00    	imul   $0xd09c,%eax,%eax
    18aa:	89 44 24 10          	mov    %eax,0x10(%rsp)
    18ae:	8b 44 24 18          	mov    0x18(%rsp),%eax
    18b2:	69 c0 03 fa 00 00    	imul   $0xfa03,%eax,%eax
    18b8:	89 44 24 18          	mov    %eax,0x18(%rsp)
    18bc:	8b 44 24 24          	mov    0x24(%rsp),%eax
    18c0:	69 c0 05 11 00 00    	imul   $0x1105,%eax,%eax
    18c6:	89 44 24 24          	mov    %eax,0x24(%rsp)
    18ca:	8b 04 24             	mov    (%rsp),%eax
    18cd:	69 c0 5e 46 00 00    	imul   $0x465e,%eax,%eax
    18d3:	89 04 24             	mov    %eax,(%rsp)
    18d6:	8b 44 24 08          	mov    0x8(%rsp),%eax
    18da:	69 c0 76 51 00 00    	imul   $0x5176,%eax,%eax
    18e0:	89 44 24 08          	mov    %eax,0x8(%rsp)
    18e4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    18e8:	69 c0 fa 9e 00 00    	imul   $0x9efa,%eax,%eax
    18ee:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    18f2:	8b 44 24 18          	mov    0x18(%rsp),%eax
    18f6:	69 c0 f0 67 00 00    	imul   $0x67f0,%eax,%eax
    18fc:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1900:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1904:	69 c0 5f c7 00 00    	imul   $0xc75f,%eax,%eax
    190a:	89 44 24 20          	mov    %eax,0x20(%rsp)
    190e:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1912:	69 c0 50 d9 00 00    	imul   $0xd950,%eax,%eax
    1918:	89 44 24 10          	mov    %eax,0x10(%rsp)
    191c:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1920:	69 c0 ff 16 00 00    	imul   $0x16ff,%eax,%eax
    1926:	89 44 24 04          	mov    %eax,0x4(%rsp)
    192a:	8b 44 24 08          	mov    0x8(%rsp),%eax
    192e:	69 c0 dd 88 00 00    	imul   $0x88dd,%eax,%eax
    1934:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1938:	ba 00 00 00 00       	mov    $0x0,%edx
    193d:	b8 00 00 00 00       	mov    $0x0,%eax
    1942:	eb 0a                	jmp    194e <scramble+0x40f>
    1944:	89 d1                	mov    %edx,%ecx
    1946:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
    1949:	01 c8                	add    %ecx,%eax
    194b:	83 c2 01             	add    $0x1,%edx
    194e:	83 fa 09             	cmp    $0x9,%edx
    1951:	76 f1                	jbe    1944 <scramble+0x405>
    1953:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    1958:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    195f:	00 00 
    1961:	75 05                	jne    1968 <scramble+0x429>
    1963:	48 83 c4 38          	add    $0x38,%rsp
    1967:	c3                   	retq   
    1968:	e8 f3 f4 ff ff       	callq  e60 <__stack_chk_fail@plt>

000000000000196d <getbuf>:
    196d:	48 83 ec 38          	sub    $0x38,%rsp
    1971:	48 89 e7             	mov    %rsp,%rdi
    1974:	e8 94 02 00 00       	callq  1c0d <Gets>
    1979:	b8 01 00 00 00       	mov    $0x1,%eax
    197e:	48 83 c4 38          	add    $0x38,%rsp
    1982:	c3                   	retq   

0000000000001983 <touch1>:
    1983:	48 83 ec 08          	sub    $0x8,%rsp
    1987:	c7 05 4b 3a 20 00 01 	movl   $0x1,0x203a4b(%rip)        # 2053dc <vlevel>
    198e:	00 00 00 
    1991:	48 8d 3d 88 19 00 00 	lea    0x1988(%rip),%rdi        # 3320 <_IO_stdin_used+0x2e0>
    1998:	e8 a3 f4 ff ff       	callq  e40 <puts@plt>
    199d:	bf 01 00 00 00       	mov    $0x1,%edi
    19a2:	e8 d6 04 00 00       	callq  1e7d <validate>
    19a7:	bf 00 00 00 00       	mov    $0x0,%edi
    19ac:	e8 ff f5 ff ff       	callq  fb0 <exit@plt>

00000000000019b1 <touch2>:
    19b1:	48 83 ec 08          	sub    $0x8,%rsp
    19b5:	89 fa                	mov    %edi,%edx
    19b7:	c7 05 1b 3a 20 00 02 	movl   $0x2,0x203a1b(%rip)        # 2053dc <vlevel>
    19be:	00 00 00 
    19c1:	39 3d 1d 3a 20 00    	cmp    %edi,0x203a1d(%rip)        # 2053e4 <cookie>
    19c7:	74 2a                	je     19f3 <touch2+0x42>
    19c9:	48 8d 35 a0 19 00 00 	lea    0x19a0(%rip),%rsi        # 3370 <_IO_stdin_used+0x330>
    19d0:	bf 01 00 00 00       	mov    $0x1,%edi
    19d5:	b8 00 00 00 00       	mov    $0x0,%eax
    19da:	e8 81 f5 ff ff       	callq  f60 <__printf_chk@plt>
    19df:	bf 02 00 00 00       	mov    $0x2,%edi
    19e4:	e8 64 05 00 00       	callq  1f4d <fail>
    19e9:	bf 00 00 00 00       	mov    $0x0,%edi
    19ee:	e8 bd f5 ff ff       	callq  fb0 <exit@plt>
    19f3:	48 8d 35 4e 19 00 00 	lea    0x194e(%rip),%rsi        # 3348 <_IO_stdin_used+0x308>
    19fa:	bf 01 00 00 00       	mov    $0x1,%edi
    19ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1a04:	e8 57 f5 ff ff       	callq  f60 <__printf_chk@plt>
    1a09:	bf 02 00 00 00       	mov    $0x2,%edi
    1a0e:	e8 6a 04 00 00       	callq  1e7d <validate>
    1a13:	eb d4                	jmp    19e9 <touch2+0x38>

0000000000001a15 <hexmatch>:
    1a15:	41 54                	push   %r12
    1a17:	55                   	push   %rbp
    1a18:	53                   	push   %rbx
    1a19:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    1a1d:	89 fd                	mov    %edi,%ebp
    1a1f:	48 89 f3             	mov    %rsi,%rbx
    1a22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a29:	00 00 
    1a2b:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    1a30:	31 c0                	xor    %eax,%eax
    1a32:	e8 e9 f4 ff ff       	callq  f20 <random@plt>
    1a37:	48 89 c1             	mov    %rax,%rcx
    1a3a:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
    1a41:	0a d7 a3 
    1a44:	48 f7 ea             	imul   %rdx
    1a47:	48 01 ca             	add    %rcx,%rdx
    1a4a:	48 c1 fa 06          	sar    $0x6,%rdx
    1a4e:	48 89 c8             	mov    %rcx,%rax
    1a51:	48 c1 f8 3f          	sar    $0x3f,%rax
    1a55:	48 29 c2             	sub    %rax,%rdx
    1a58:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    1a5c:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1a60:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
    1a67:	00 
    1a68:	48 29 c1             	sub    %rax,%rcx
    1a6b:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
    1a6f:	41 89 e8             	mov    %ebp,%r8d
    1a72:	48 8d 0d c4 18 00 00 	lea    0x18c4(%rip),%rcx        # 333d <_IO_stdin_used+0x2fd>
    1a79:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    1a80:	be 01 00 00 00       	mov    $0x1,%esi
    1a85:	4c 89 e7             	mov    %r12,%rdi
    1a88:	b8 00 00 00 00       	mov    $0x0,%eax
    1a8d:	e8 4e f5 ff ff       	callq  fe0 <__sprintf_chk@plt>
    1a92:	ba 09 00 00 00       	mov    $0x9,%edx
    1a97:	4c 89 e6             	mov    %r12,%rsi
    1a9a:	48 89 df             	mov    %rbx,%rdi
    1a9d:	e8 7e f3 ff ff       	callq  e20 <strncmp@plt>
    1aa2:	85 c0                	test   %eax,%eax
    1aa4:	0f 94 c0             	sete   %al
    1aa7:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
    1aac:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    1ab3:	00 00 
    1ab5:	75 0c                	jne    1ac3 <hexmatch+0xae>
    1ab7:	0f b6 c0             	movzbl %al,%eax
    1aba:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    1abe:	5b                   	pop    %rbx
    1abf:	5d                   	pop    %rbp
    1ac0:	41 5c                	pop    %r12
    1ac2:	c3                   	retq   
    1ac3:	e8 98 f3 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000001ac8 <touch3>:
    1ac8:	53                   	push   %rbx
    1ac9:	48 89 fb             	mov    %rdi,%rbx
    1acc:	c7 05 06 39 20 00 03 	movl   $0x3,0x203906(%rip)        # 2053dc <vlevel>
    1ad3:	00 00 00 
    1ad6:	48 89 fe             	mov    %rdi,%rsi
    1ad9:	8b 3d 05 39 20 00    	mov    0x203905(%rip),%edi        # 2053e4 <cookie>
    1adf:	e8 31 ff ff ff       	callq  1a15 <hexmatch>
    1ae4:	85 c0                	test   %eax,%eax
    1ae6:	74 2d                	je     1b15 <touch3+0x4d>
    1ae8:	48 89 da             	mov    %rbx,%rdx
    1aeb:	48 8d 35 a6 18 00 00 	lea    0x18a6(%rip),%rsi        # 3398 <_IO_stdin_used+0x358>
    1af2:	bf 01 00 00 00       	mov    $0x1,%edi
    1af7:	b8 00 00 00 00       	mov    $0x0,%eax
    1afc:	e8 5f f4 ff ff       	callq  f60 <__printf_chk@plt>
    1b01:	bf 03 00 00 00       	mov    $0x3,%edi
    1b06:	e8 72 03 00 00       	callq  1e7d <validate>
    1b0b:	bf 00 00 00 00       	mov    $0x0,%edi
    1b10:	e8 9b f4 ff ff       	callq  fb0 <exit@plt>
    1b15:	48 89 da             	mov    %rbx,%rdx
    1b18:	48 8d 35 a1 18 00 00 	lea    0x18a1(%rip),%rsi        # 33c0 <_IO_stdin_used+0x380>
    1b1f:	bf 01 00 00 00       	mov    $0x1,%edi
    1b24:	b8 00 00 00 00       	mov    $0x0,%eax
    1b29:	e8 32 f4 ff ff       	callq  f60 <__printf_chk@plt>
    1b2e:	bf 03 00 00 00       	mov    $0x3,%edi
    1b33:	e8 15 04 00 00       	callq  1f4d <fail>
    1b38:	eb d1                	jmp    1b0b <touch3+0x43>

0000000000001b3a <test>:
    1b3a:	48 83 ec 08          	sub    $0x8,%rsp
    1b3e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b43:	e8 25 fe ff ff       	callq  196d <getbuf>
    1b48:	89 c2                	mov    %eax,%edx
    1b4a:	48 8d 35 97 18 00 00 	lea    0x1897(%rip),%rsi        # 33e8 <_IO_stdin_used+0x3a8>
    1b51:	bf 01 00 00 00       	mov    $0x1,%edi
    1b56:	b8 00 00 00 00       	mov    $0x0,%eax
    1b5b:	e8 00 f4 ff ff       	callq  f60 <__printf_chk@plt>
    1b60:	48 83 c4 08          	add    $0x8,%rsp
    1b64:	c3                   	retq   

0000000000001b65 <save_char>:
    1b65:	8b 05 99 44 20 00    	mov    0x204499(%rip),%eax        # 206004 <gets_cnt>
    1b6b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    1b70:	7f 4a                	jg     1bbc <save_char+0x57>
    1b72:	89 f9                	mov    %edi,%ecx
    1b74:	c0 e9 04             	shr    $0x4,%cl
    1b77:	8d 14 40             	lea    (%rax,%rax,2),%edx
    1b7a:	4c 8d 05 8f 1b 00 00 	lea    0x1b8f(%rip),%r8        # 3710 <trans_char>
    1b81:	83 e1 0f             	and    $0xf,%ecx
    1b84:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
    1b89:	48 8d 0d 70 38 20 00 	lea    0x203870(%rip),%rcx        # 205400 <gets_buf>
    1b90:	48 63 f2             	movslq %edx,%rsi
    1b93:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
    1b97:	8d 72 01             	lea    0x1(%rdx),%esi
    1b9a:	83 e7 0f             	and    $0xf,%edi
    1b9d:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
    1ba2:	48 63 f6             	movslq %esi,%rsi
    1ba5:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
    1ba9:	83 c2 02             	add    $0x2,%edx
    1bac:	48 63 d2             	movslq %edx,%rdx
    1baf:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
    1bb3:	83 c0 01             	add    $0x1,%eax
    1bb6:	89 05 48 44 20 00    	mov    %eax,0x204448(%rip)        # 206004 <gets_cnt>
    1bbc:	f3 c3                	repz retq 

0000000000001bbe <save_term>:
    1bbe:	8b 05 40 44 20 00    	mov    0x204440(%rip),%eax        # 206004 <gets_cnt>
    1bc4:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1bc7:	48 98                	cltq   
    1bc9:	48 8d 15 30 38 20 00 	lea    0x203830(%rip),%rdx        # 205400 <gets_buf>
    1bd0:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1bd4:	c3                   	retq   

0000000000001bd5 <check_fail>:
    1bd5:	48 83 ec 08          	sub    $0x8,%rsp
    1bd9:	0f be 15 28 44 20 00 	movsbl 0x204428(%rip),%edx        # 206008 <target_prefix>
    1be0:	4c 8d 05 19 38 20 00 	lea    0x203819(%rip),%r8        # 205400 <gets_buf>
    1be7:	8b 0d eb 37 20 00    	mov    0x2037eb(%rip),%ecx        # 2053d8 <check_level>
    1bed:	48 8d 35 17 18 00 00 	lea    0x1817(%rip),%rsi        # 340b <_IO_stdin_used+0x3cb>
    1bf4:	bf 01 00 00 00       	mov    $0x1,%edi
    1bf9:	b8 00 00 00 00       	mov    $0x0,%eax
    1bfe:	e8 5d f3 ff ff       	callq  f60 <__printf_chk@plt>
    1c03:	bf 01 00 00 00       	mov    $0x1,%edi
    1c08:	e8 a3 f3 ff ff       	callq  fb0 <exit@plt>

0000000000001c0d <Gets>:
    1c0d:	41 54                	push   %r12
    1c0f:	55                   	push   %rbp
    1c10:	53                   	push   %rbx
    1c11:	49 89 fc             	mov    %rdi,%r12
    1c14:	c7 05 e6 43 20 00 00 	movl   $0x0,0x2043e6(%rip)        # 206004 <gets_cnt>
    1c1b:	00 00 00 
    1c1e:	48 89 fb             	mov    %rdi,%rbx
    1c21:	eb 11                	jmp    1c34 <Gets+0x27>
    1c23:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
    1c27:	88 03                	mov    %al,(%rbx)
    1c29:	0f b6 f8             	movzbl %al,%edi
    1c2c:	e8 34 ff ff ff       	callq  1b65 <save_char>
    1c31:	48 89 eb             	mov    %rbp,%rbx
    1c34:	48 8b 3d 95 37 20 00 	mov    0x203795(%rip),%rdi        # 2053d0 <infile>
    1c3b:	e8 f0 f2 ff ff       	callq  f30 <_IO_getc@plt>
    1c40:	83 f8 ff             	cmp    $0xffffffff,%eax
    1c43:	74 05                	je     1c4a <Gets+0x3d>
    1c45:	83 f8 0a             	cmp    $0xa,%eax
    1c48:	75 d9                	jne    1c23 <Gets+0x16>
    1c4a:	c6 03 00             	movb   $0x0,(%rbx)
    1c4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1c52:	e8 67 ff ff ff       	callq  1bbe <save_term>
    1c57:	4c 89 e0             	mov    %r12,%rax
    1c5a:	5b                   	pop    %rbx
    1c5b:	5d                   	pop    %rbp
    1c5c:	41 5c                	pop    %r12
    1c5e:	c3                   	retq   

0000000000001c5f <notify_server>:
    1c5f:	55                   	push   %rbp
    1c60:	53                   	push   %rbx
    1c61:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1c68:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c6f:	00 00 
    1c71:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1c78:	00 
    1c79:	31 c0                	xor    %eax,%eax
    1c7b:	83 3d 66 37 20 00 00 	cmpl   $0x0,0x203766(%rip)        # 2053e8 <is_checker>
    1c82:	0f 85 d2 00 00 00    	jne    1d5a <notify_server+0xfb>
    1c88:	89 fb                	mov    %edi,%ebx
    1c8a:	8b 05 74 43 20 00    	mov    0x204374(%rip),%eax        # 206004 <gets_cnt>
    1c90:	83 c0 64             	add    $0x64,%eax
    1c93:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1c98:	0f 8f dd 00 00 00    	jg     1d7b <notify_server+0x11c>
    1c9e:	0f be 05 63 43 20 00 	movsbl 0x204363(%rip),%eax        # 206008 <target_prefix>
    1ca5:	83 3d bc 36 20 00 00 	cmpl   $0x0,0x2036bc(%rip)        # 205368 <notify>
    1cac:	0f 84 e9 00 00 00    	je     1d9b <notify_server+0x13c>
    1cb2:	8b 15 28 37 20 00    	mov    0x203728(%rip),%edx        # 2053e0 <authkey>
    1cb8:	85 db                	test   %ebx,%ebx
    1cba:	0f 84 e5 00 00 00    	je     1da5 <notify_server+0x146>
    1cc0:	48 8d 2d 5a 17 00 00 	lea    0x175a(%rip),%rbp        # 3421 <_IO_stdin_used+0x3e1>
    1cc7:	48 89 e7             	mov    %rsp,%rdi
    1cca:	48 8d 0d 2f 37 20 00 	lea    0x20372f(%rip),%rcx        # 205400 <gets_buf>
    1cd1:	51                   	push   %rcx
    1cd2:	56                   	push   %rsi
    1cd3:	50                   	push   %rax
    1cd4:	52                   	push   %rdx
    1cd5:	49 89 e9             	mov    %rbp,%r9
    1cd8:	44 8b 05 31 33 20 00 	mov    0x203331(%rip),%r8d        # 205010 <target_id>
    1cdf:	48 8d 0d 45 17 00 00 	lea    0x1745(%rip),%rcx        # 342b <_IO_stdin_used+0x3eb>
    1ce6:	ba 00 20 00 00       	mov    $0x2000,%edx
    1ceb:	be 01 00 00 00       	mov    $0x1,%esi
    1cf0:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf5:	e8 e6 f2 ff ff       	callq  fe0 <__sprintf_chk@plt>
    1cfa:	48 83 c4 20          	add    $0x20,%rsp
    1cfe:	83 3d 63 36 20 00 00 	cmpl   $0x0,0x203663(%rip)        # 205368 <notify>
    1d05:	0f 84 df 00 00 00    	je     1dea <notify_server+0x18b>
    1d0b:	85 db                	test   %ebx,%ebx
    1d0d:	0f 84 c6 00 00 00    	je     1dd9 <notify_server+0x17a>
    1d13:	48 89 e1             	mov    %rsp,%rcx
    1d16:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1d1d:	00 
    1d1e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1d24:	48 8b 15 fd 32 20 00 	mov    0x2032fd(%rip),%rdx        # 205028 <lab>
    1d2b:	48 8b 35 fe 32 20 00 	mov    0x2032fe(%rip),%rsi        # 205030 <course>
    1d32:	48 8b 3d e7 32 20 00 	mov    0x2032e7(%rip),%rdi        # 205020 <user_id>
    1d39:	e8 af 11 00 00       	callq  2eed <driver_post>
    1d3e:	85 c0                	test   %eax,%eax
    1d40:	78 6f                	js     1db1 <notify_server+0x152>
    1d42:	48 8d 3d 27 18 00 00 	lea    0x1827(%rip),%rdi        # 3570 <_IO_stdin_used+0x530>
    1d49:	e8 f2 f0 ff ff       	callq  e40 <puts@plt>
    1d4e:	48 8d 3d fe 16 00 00 	lea    0x16fe(%rip),%rdi        # 3453 <_IO_stdin_used+0x413>
    1d55:	e8 e6 f0 ff ff       	callq  e40 <puts@plt>
    1d5a:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1d61:	00 
    1d62:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d69:	00 00 
    1d6b:	0f 85 07 01 00 00    	jne    1e78 <notify_server+0x219>
    1d71:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1d78:	5b                   	pop    %rbx
    1d79:	5d                   	pop    %rbp
    1d7a:	c3                   	retq   
    1d7b:	48 8d 35 be 17 00 00 	lea    0x17be(%rip),%rsi        # 3540 <_IO_stdin_used+0x500>
    1d82:	bf 01 00 00 00       	mov    $0x1,%edi
    1d87:	b8 00 00 00 00       	mov    $0x0,%eax
    1d8c:	e8 cf f1 ff ff       	callq  f60 <__printf_chk@plt>
    1d91:	bf 01 00 00 00       	mov    $0x1,%edi
    1d96:	e8 15 f2 ff ff       	callq  fb0 <exit@plt>
    1d9b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1da0:	e9 13 ff ff ff       	jmpq   1cb8 <notify_server+0x59>
    1da5:	48 8d 2d 7a 16 00 00 	lea    0x167a(%rip),%rbp        # 3426 <_IO_stdin_used+0x3e6>
    1dac:	e9 16 ff ff ff       	jmpq   1cc7 <notify_server+0x68>
    1db1:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
    1db8:	00 
    1db9:	48 8d 35 87 16 00 00 	lea    0x1687(%rip),%rsi        # 3447 <_IO_stdin_used+0x407>
    1dc0:	bf 01 00 00 00       	mov    $0x1,%edi
    1dc5:	b8 00 00 00 00       	mov    $0x0,%eax
    1dca:	e8 91 f1 ff ff       	callq  f60 <__printf_chk@plt>
    1dcf:	bf 01 00 00 00       	mov    $0x1,%edi
    1dd4:	e8 d7 f1 ff ff       	callq  fb0 <exit@plt>
    1dd9:	48 8d 3d 7d 16 00 00 	lea    0x167d(%rip),%rdi        # 345d <_IO_stdin_used+0x41d>
    1de0:	e8 5b f0 ff ff       	callq  e40 <puts@plt>
    1de5:	e9 70 ff ff ff       	jmpq   1d5a <notify_server+0xfb>
    1dea:	48 89 ea             	mov    %rbp,%rdx
    1ded:	48 8d 35 b4 17 00 00 	lea    0x17b4(%rip),%rsi        # 35a8 <_IO_stdin_used+0x568>
    1df4:	bf 01 00 00 00       	mov    $0x1,%edi
    1df9:	b8 00 00 00 00       	mov    $0x0,%eax
    1dfe:	e8 5d f1 ff ff       	callq  f60 <__printf_chk@plt>
    1e03:	48 8b 15 16 32 20 00 	mov    0x203216(%rip),%rdx        # 205020 <user_id>
    1e0a:	48 8d 35 53 16 00 00 	lea    0x1653(%rip),%rsi        # 3464 <_IO_stdin_used+0x424>
    1e11:	bf 01 00 00 00       	mov    $0x1,%edi
    1e16:	b8 00 00 00 00       	mov    $0x0,%eax
    1e1b:	e8 40 f1 ff ff       	callq  f60 <__printf_chk@plt>
    1e20:	48 8b 15 09 32 20 00 	mov    0x203209(%rip),%rdx        # 205030 <course>
    1e27:	48 8d 35 43 16 00 00 	lea    0x1643(%rip),%rsi        # 3471 <_IO_stdin_used+0x431>
    1e2e:	bf 01 00 00 00       	mov    $0x1,%edi
    1e33:	b8 00 00 00 00       	mov    $0x0,%eax
    1e38:	e8 23 f1 ff ff       	callq  f60 <__printf_chk@plt>
    1e3d:	48 8b 15 e4 31 20 00 	mov    0x2031e4(%rip),%rdx        # 205028 <lab>
    1e44:	48 8d 35 32 16 00 00 	lea    0x1632(%rip),%rsi        # 347d <_IO_stdin_used+0x43d>
    1e4b:	bf 01 00 00 00       	mov    $0x1,%edi
    1e50:	b8 00 00 00 00       	mov    $0x0,%eax
    1e55:	e8 06 f1 ff ff       	callq  f60 <__printf_chk@plt>
    1e5a:	48 89 e2             	mov    %rsp,%rdx
    1e5d:	48 8d 35 22 16 00 00 	lea    0x1622(%rip),%rsi        # 3486 <_IO_stdin_used+0x446>
    1e64:	bf 01 00 00 00       	mov    $0x1,%edi
    1e69:	b8 00 00 00 00       	mov    $0x0,%eax
    1e6e:	e8 ed f0 ff ff       	callq  f60 <__printf_chk@plt>
    1e73:	e9 e2 fe ff ff       	jmpq   1d5a <notify_server+0xfb>
    1e78:	e8 e3 ef ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000001e7d <validate>:
    1e7d:	53                   	push   %rbx
    1e7e:	89 fb                	mov    %edi,%ebx
    1e80:	83 3d 61 35 20 00 00 	cmpl   $0x0,0x203561(%rip)        # 2053e8 <is_checker>
    1e87:	74 72                	je     1efb <validate+0x7e>
    1e89:	39 3d 4d 35 20 00    	cmp    %edi,0x20354d(%rip)        # 2053dc <vlevel>
    1e8f:	75 32                	jne    1ec3 <validate+0x46>
    1e91:	8b 15 41 35 20 00    	mov    0x203541(%rip),%edx        # 2053d8 <check_level>
    1e97:	39 fa                	cmp    %edi,%edx
    1e99:	75 3e                	jne    1ed9 <validate+0x5c>
    1e9b:	0f be 15 66 41 20 00 	movsbl 0x204166(%rip),%edx        # 206008 <target_prefix>
    1ea2:	4c 8d 05 57 35 20 00 	lea    0x203557(%rip),%r8        # 205400 <gets_buf>
    1ea9:	89 f9                	mov    %edi,%ecx
    1eab:	48 8d 35 fe 15 00 00 	lea    0x15fe(%rip),%rsi        # 34b0 <_IO_stdin_used+0x470>
    1eb2:	bf 01 00 00 00       	mov    $0x1,%edi
    1eb7:	b8 00 00 00 00       	mov    $0x0,%eax
    1ebc:	e8 9f f0 ff ff       	callq  f60 <__printf_chk@plt>
    1ec1:	5b                   	pop    %rbx
    1ec2:	c3                   	retq   
    1ec3:	48 8d 3d c8 15 00 00 	lea    0x15c8(%rip),%rdi        # 3492 <_IO_stdin_used+0x452>
    1eca:	e8 71 ef ff ff       	callq  e40 <puts@plt>
    1ecf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ed4:	e8 fc fc ff ff       	callq  1bd5 <check_fail>
    1ed9:	89 f9                	mov    %edi,%ecx
    1edb:	48 8d 35 ee 16 00 00 	lea    0x16ee(%rip),%rsi        # 35d0 <_IO_stdin_used+0x590>
    1ee2:	bf 01 00 00 00       	mov    $0x1,%edi
    1ee7:	b8 00 00 00 00       	mov    $0x0,%eax
    1eec:	e8 6f f0 ff ff       	callq  f60 <__printf_chk@plt>
    1ef1:	b8 00 00 00 00       	mov    $0x0,%eax
    1ef6:	e8 da fc ff ff       	callq  1bd5 <check_fail>
    1efb:	39 3d db 34 20 00    	cmp    %edi,0x2034db(%rip)        # 2053dc <vlevel>
    1f01:	74 1a                	je     1f1d <validate+0xa0>
    1f03:	48 8d 3d 88 15 00 00 	lea    0x1588(%rip),%rdi        # 3492 <_IO_stdin_used+0x452>
    1f0a:	e8 31 ef ff ff       	callq  e40 <puts@plt>
    1f0f:	89 de                	mov    %ebx,%esi
    1f11:	bf 00 00 00 00       	mov    $0x0,%edi
    1f16:	e8 44 fd ff ff       	callq  1c5f <notify_server>
    1f1b:	eb a4                	jmp    1ec1 <validate+0x44>
    1f1d:	0f be 0d e4 40 20 00 	movsbl 0x2040e4(%rip),%ecx        # 206008 <target_prefix>
    1f24:	89 fa                	mov    %edi,%edx
    1f26:	48 8d 35 cb 16 00 00 	lea    0x16cb(%rip),%rsi        # 35f8 <_IO_stdin_used+0x5b8>
    1f2d:	bf 01 00 00 00       	mov    $0x1,%edi
    1f32:	b8 00 00 00 00       	mov    $0x0,%eax
    1f37:	e8 24 f0 ff ff       	callq  f60 <__printf_chk@plt>
    1f3c:	89 de                	mov    %ebx,%esi
    1f3e:	bf 01 00 00 00       	mov    $0x1,%edi
    1f43:	e8 17 fd ff ff       	callq  1c5f <notify_server>
    1f48:	e9 74 ff ff ff       	jmpq   1ec1 <validate+0x44>

0000000000001f4d <fail>:
    1f4d:	48 83 ec 08          	sub    $0x8,%rsp
    1f51:	83 3d 90 34 20 00 00 	cmpl   $0x0,0x203490(%rip)        # 2053e8 <is_checker>
    1f58:	75 11                	jne    1f6b <fail+0x1e>
    1f5a:	89 fe                	mov    %edi,%esi
    1f5c:	bf 00 00 00 00       	mov    $0x0,%edi
    1f61:	e8 f9 fc ff ff       	callq  1c5f <notify_server>
    1f66:	48 83 c4 08          	add    $0x8,%rsp
    1f6a:	c3                   	retq   
    1f6b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f70:	e8 60 fc ff ff       	callq  1bd5 <check_fail>

0000000000001f75 <bushandler>:
    1f75:	48 83 ec 08          	sub    $0x8,%rsp
    1f79:	83 3d 68 34 20 00 00 	cmpl   $0x0,0x203468(%rip)        # 2053e8 <is_checker>
    1f80:	74 16                	je     1f98 <bushandler+0x23>
    1f82:	48 8d 3d 3c 15 00 00 	lea    0x153c(%rip),%rdi        # 34c5 <_IO_stdin_used+0x485>
    1f89:	e8 b2 ee ff ff       	callq  e40 <puts@plt>
    1f8e:	b8 00 00 00 00       	mov    $0x0,%eax
    1f93:	e8 3d fc ff ff       	callq  1bd5 <check_fail>
    1f98:	48 8d 3d 91 16 00 00 	lea    0x1691(%rip),%rdi        # 3630 <_IO_stdin_used+0x5f0>
    1f9f:	e8 9c ee ff ff       	callq  e40 <puts@plt>
    1fa4:	48 8d 3d 24 15 00 00 	lea    0x1524(%rip),%rdi        # 34cf <_IO_stdin_used+0x48f>
    1fab:	e8 90 ee ff ff       	callq  e40 <puts@plt>
    1fb0:	be 00 00 00 00       	mov    $0x0,%esi
    1fb5:	bf 00 00 00 00       	mov    $0x0,%edi
    1fba:	e8 a0 fc ff ff       	callq  1c5f <notify_server>
    1fbf:	bf 01 00 00 00       	mov    $0x1,%edi
    1fc4:	e8 e7 ef ff ff       	callq  fb0 <exit@plt>

0000000000001fc9 <seghandler>:
    1fc9:	48 83 ec 08          	sub    $0x8,%rsp
    1fcd:	83 3d 14 34 20 00 00 	cmpl   $0x0,0x203414(%rip)        # 2053e8 <is_checker>
    1fd4:	74 16                	je     1fec <seghandler+0x23>
    1fd6:	48 8d 3d 08 15 00 00 	lea    0x1508(%rip),%rdi        # 34e5 <_IO_stdin_used+0x4a5>
    1fdd:	e8 5e ee ff ff       	callq  e40 <puts@plt>
    1fe2:	b8 00 00 00 00       	mov    $0x0,%eax
    1fe7:	e8 e9 fb ff ff       	callq  1bd5 <check_fail>
    1fec:	48 8d 3d 5d 16 00 00 	lea    0x165d(%rip),%rdi        # 3650 <_IO_stdin_used+0x610>
    1ff3:	e8 48 ee ff ff       	callq  e40 <puts@plt>
    1ff8:	48 8d 3d d0 14 00 00 	lea    0x14d0(%rip),%rdi        # 34cf <_IO_stdin_used+0x48f>
    1fff:	e8 3c ee ff ff       	callq  e40 <puts@plt>
    2004:	be 00 00 00 00       	mov    $0x0,%esi
    2009:	bf 00 00 00 00       	mov    $0x0,%edi
    200e:	e8 4c fc ff ff       	callq  1c5f <notify_server>
    2013:	bf 01 00 00 00       	mov    $0x1,%edi
    2018:	e8 93 ef ff ff       	callq  fb0 <exit@plt>

000000000000201d <illegalhandler>:
    201d:	48 83 ec 08          	sub    $0x8,%rsp
    2021:	83 3d c0 33 20 00 00 	cmpl   $0x0,0x2033c0(%rip)        # 2053e8 <is_checker>
    2028:	74 16                	je     2040 <illegalhandler+0x23>
    202a:	48 8d 3d c7 14 00 00 	lea    0x14c7(%rip),%rdi        # 34f8 <_IO_stdin_used+0x4b8>
    2031:	e8 0a ee ff ff       	callq  e40 <puts@plt>
    2036:	b8 00 00 00 00       	mov    $0x0,%eax
    203b:	e8 95 fb ff ff       	callq  1bd5 <check_fail>
    2040:	48 8d 3d 31 16 00 00 	lea    0x1631(%rip),%rdi        # 3678 <_IO_stdin_used+0x638>
    2047:	e8 f4 ed ff ff       	callq  e40 <puts@plt>
    204c:	48 8d 3d 7c 14 00 00 	lea    0x147c(%rip),%rdi        # 34cf <_IO_stdin_used+0x48f>
    2053:	e8 e8 ed ff ff       	callq  e40 <puts@plt>
    2058:	be 00 00 00 00       	mov    $0x0,%esi
    205d:	bf 00 00 00 00       	mov    $0x0,%edi
    2062:	e8 f8 fb ff ff       	callq  1c5f <notify_server>
    2067:	bf 01 00 00 00       	mov    $0x1,%edi
    206c:	e8 3f ef ff ff       	callq  fb0 <exit@plt>

0000000000002071 <sigalrmhandler>:
    2071:	48 83 ec 08          	sub    $0x8,%rsp
    2075:	83 3d 6c 33 20 00 00 	cmpl   $0x0,0x20336c(%rip)        # 2053e8 <is_checker>
    207c:	74 16                	je     2094 <sigalrmhandler+0x23>
    207e:	48 8d 3d 87 14 00 00 	lea    0x1487(%rip),%rdi        # 350c <_IO_stdin_used+0x4cc>
    2085:	e8 b6 ed ff ff       	callq  e40 <puts@plt>
    208a:	b8 00 00 00 00       	mov    $0x0,%eax
    208f:	e8 41 fb ff ff       	callq  1bd5 <check_fail>
    2094:	ba 05 00 00 00       	mov    $0x5,%edx
    2099:	48 8d 35 08 16 00 00 	lea    0x1608(%rip),%rsi        # 36a8 <_IO_stdin_used+0x668>
    20a0:	bf 01 00 00 00       	mov    $0x1,%edi
    20a5:	b8 00 00 00 00       	mov    $0x0,%eax
    20aa:	e8 b1 ee ff ff       	callq  f60 <__printf_chk@plt>
    20af:	be 00 00 00 00       	mov    $0x0,%esi
    20b4:	bf 00 00 00 00       	mov    $0x0,%edi
    20b9:	e8 a1 fb ff ff       	callq  1c5f <notify_server>
    20be:	bf 01 00 00 00       	mov    $0x1,%edi
    20c3:	e8 e8 ee ff ff       	callq  fb0 <exit@plt>

00000000000020c8 <launch>:
    20c8:	55                   	push   %rbp
    20c9:	48 89 e5             	mov    %rsp,%rbp
    20cc:	48 83 ec 10          	sub    $0x10,%rsp
    20d0:	48 89 fa             	mov    %rdi,%rdx
    20d3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20da:	00 00 
    20dc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    20e0:	31 c0                	xor    %eax,%eax
    20e2:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
    20e6:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    20ea:	48 29 c4             	sub    %rax,%rsp
    20ed:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
    20f2:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    20f6:	be f4 00 00 00       	mov    $0xf4,%esi
    20fb:	e8 80 ed ff ff       	callq  e80 <memset@plt>
    2100:	48 8b 05 79 32 20 00 	mov    0x203279(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    2107:	48 39 05 c2 32 20 00 	cmp    %rax,0x2032c2(%rip)        # 2053d0 <infile>
    210e:	74 3a                	je     214a <launch+0x82>
    2110:	c7 05 c2 32 20 00 00 	movl   $0x0,0x2032c2(%rip)        # 2053dc <vlevel>
    2117:	00 00 00 
    211a:	b8 00 00 00 00       	mov    $0x0,%eax
    211f:	e8 16 fa ff ff       	callq  1b3a <test>
    2124:	83 3d bd 32 20 00 00 	cmpl   $0x0,0x2032bd(%rip)        # 2053e8 <is_checker>
    212b:	75 35                	jne    2162 <launch+0x9a>
    212d:	48 8d 3d f8 13 00 00 	lea    0x13f8(%rip),%rdi        # 352c <_IO_stdin_used+0x4ec>
    2134:	e8 07 ed ff ff       	callq  e40 <puts@plt>
    2139:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    213d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2144:	00 00 
    2146:	75 30                	jne    2178 <launch+0xb0>
    2148:	c9                   	leaveq 
    2149:	c3                   	retq   
    214a:	48 8d 35 c3 13 00 00 	lea    0x13c3(%rip),%rsi        # 3514 <_IO_stdin_used+0x4d4>
    2151:	bf 01 00 00 00       	mov    $0x1,%edi
    2156:	b8 00 00 00 00       	mov    $0x0,%eax
    215b:	e8 00 ee ff ff       	callq  f60 <__printf_chk@plt>
    2160:	eb ae                	jmp    2110 <launch+0x48>
    2162:	48 8d 3d b8 13 00 00 	lea    0x13b8(%rip),%rdi        # 3521 <_IO_stdin_used+0x4e1>
    2169:	e8 d2 ec ff ff       	callq  e40 <puts@plt>
    216e:	b8 00 00 00 00       	mov    $0x0,%eax
    2173:	e8 5d fa ff ff       	callq  1bd5 <check_fail>
    2178:	e8 e3 ec ff ff       	callq  e60 <__stack_chk_fail@plt>

000000000000217d <stable_launch>:
    217d:	53                   	push   %rbx
    217e:	48 89 3d 43 32 20 00 	mov    %rdi,0x203243(%rip)        # 2053c8 <global_offset>
    2185:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    218b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2191:	b9 32 01 00 00       	mov    $0x132,%ecx
    2196:	ba 07 00 00 00       	mov    $0x7,%edx
    219b:	be 00 00 10 00       	mov    $0x100000,%esi
    21a0:	bf 00 60 58 55       	mov    $0x55586000,%edi
    21a5:	e8 c6 ec ff ff       	callq  e70 <mmap@plt>
    21aa:	48 89 c3             	mov    %rax,%rbx
    21ad:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
    21b3:	75 43                	jne    21f8 <stable_launch+0x7b>
    21b5:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
    21bc:	48 89 15 4d 3e 20 00 	mov    %rdx,0x203e4d(%rip)        # 206010 <stack_top>
    21c3:	48 89 e0             	mov    %rsp,%rax
    21c6:	48 89 d4             	mov    %rdx,%rsp
    21c9:	48 89 c2             	mov    %rax,%rdx
    21cc:	48 89 15 ed 31 20 00 	mov    %rdx,0x2031ed(%rip)        # 2053c0 <global_save_stack>
    21d3:	48 8b 3d ee 31 20 00 	mov    0x2031ee(%rip),%rdi        # 2053c8 <global_offset>
    21da:	e8 e9 fe ff ff       	callq  20c8 <launch>
    21df:	48 8b 05 da 31 20 00 	mov    0x2031da(%rip),%rax        # 2053c0 <global_save_stack>
    21e6:	48 89 c4             	mov    %rax,%rsp
    21e9:	be 00 00 10 00       	mov    $0x100000,%esi
    21ee:	48 89 df             	mov    %rbx,%rdi
    21f1:	e8 5a ed ff ff       	callq  f50 <munmap@plt>
    21f6:	5b                   	pop    %rbx
    21f7:	c3                   	retq   
    21f8:	be 00 00 10 00       	mov    $0x100000,%esi
    21fd:	48 89 c7             	mov    %rax,%rdi
    2200:	e8 4b ed ff ff       	callq  f50 <munmap@plt>
    2205:	b9 00 60 58 55       	mov    $0x55586000,%ecx
    220a:	48 8d 15 cf 14 00 00 	lea    0x14cf(%rip),%rdx        # 36e0 <_IO_stdin_used+0x6a0>
    2211:	be 01 00 00 00       	mov    $0x1,%esi
    2216:	48 8b 3d 83 31 20 00 	mov    0x203183(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    221d:	b8 00 00 00 00       	mov    $0x0,%eax
    2222:	e8 a9 ed ff ff       	callq  fd0 <__fprintf_chk@plt>
    2227:	bf 01 00 00 00       	mov    $0x1,%edi
    222c:	e8 7f ed ff ff       	callq  fb0 <exit@plt>

0000000000002231 <rio_readinitb>:
    2231:	89 37                	mov    %esi,(%rdi)
    2233:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    223a:	48 8d 47 10          	lea    0x10(%rdi),%rax
    223e:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2242:	c3                   	retq   

0000000000002243 <sigalrm_handler>:
    2243:	48 83 ec 08          	sub    $0x8,%rsp
    2247:	b9 00 00 00 00       	mov    $0x0,%ecx
    224c:	48 8d 15 cd 14 00 00 	lea    0x14cd(%rip),%rdx        # 3720 <trans_char+0x10>
    2253:	be 01 00 00 00       	mov    $0x1,%esi
    2258:	48 8b 3d 41 31 20 00 	mov    0x203141(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    225f:	b8 00 00 00 00       	mov    $0x0,%eax
    2264:	e8 67 ed ff ff       	callq  fd0 <__fprintf_chk@plt>
    2269:	bf 01 00 00 00       	mov    $0x1,%edi
    226e:	e8 3d ed ff ff       	callq  fb0 <exit@plt>

0000000000002273 <rio_writen>:
    2273:	41 55                	push   %r13
    2275:	41 54                	push   %r12
    2277:	55                   	push   %rbp
    2278:	53                   	push   %rbx
    2279:	48 83 ec 08          	sub    $0x8,%rsp
    227d:	41 89 fc             	mov    %edi,%r12d
    2280:	48 89 f5             	mov    %rsi,%rbp
    2283:	49 89 d5             	mov    %rdx,%r13
    2286:	48 89 d3             	mov    %rdx,%rbx
    2289:	eb 06                	jmp    2291 <rio_writen+0x1e>
    228b:	48 29 c3             	sub    %rax,%rbx
    228e:	48 01 c5             	add    %rax,%rbp
    2291:	48 85 db             	test   %rbx,%rbx
    2294:	74 24                	je     22ba <rio_writen+0x47>
    2296:	48 89 da             	mov    %rbx,%rdx
    2299:	48 89 ee             	mov    %rbp,%rsi
    229c:	44 89 e7             	mov    %r12d,%edi
    229f:	e8 ac eb ff ff       	callq  e50 <write@plt>
    22a4:	48 85 c0             	test   %rax,%rax
    22a7:	7f e2                	jg     228b <rio_writen+0x18>
    22a9:	e8 52 eb ff ff       	callq  e00 <__errno_location@plt>
    22ae:	83 38 04             	cmpl   $0x4,(%rax)
    22b1:	75 15                	jne    22c8 <rio_writen+0x55>
    22b3:	b8 00 00 00 00       	mov    $0x0,%eax
    22b8:	eb d1                	jmp    228b <rio_writen+0x18>
    22ba:	4c 89 e8             	mov    %r13,%rax
    22bd:	48 83 c4 08          	add    $0x8,%rsp
    22c1:	5b                   	pop    %rbx
    22c2:	5d                   	pop    %rbp
    22c3:	41 5c                	pop    %r12
    22c5:	41 5d                	pop    %r13
    22c7:	c3                   	retq   
    22c8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    22cf:	eb ec                	jmp    22bd <rio_writen+0x4a>

00000000000022d1 <rio_read>:
    22d1:	41 55                	push   %r13
    22d3:	41 54                	push   %r12
    22d5:	55                   	push   %rbp
    22d6:	53                   	push   %rbx
    22d7:	48 83 ec 08          	sub    $0x8,%rsp
    22db:	48 89 fb             	mov    %rdi,%rbx
    22de:	49 89 f5             	mov    %rsi,%r13
    22e1:	49 89 d4             	mov    %rdx,%r12
    22e4:	eb 0a                	jmp    22f0 <rio_read+0x1f>
    22e6:	e8 15 eb ff ff       	callq  e00 <__errno_location@plt>
    22eb:	83 38 04             	cmpl   $0x4,(%rax)
    22ee:	75 5c                	jne    234c <rio_read+0x7b>
    22f0:	8b 6b 04             	mov    0x4(%rbx),%ebp
    22f3:	85 ed                	test   %ebp,%ebp
    22f5:	7f 24                	jg     231b <rio_read+0x4a>
    22f7:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    22fb:	8b 3b                	mov    (%rbx),%edi
    22fd:	ba 00 20 00 00       	mov    $0x2000,%edx
    2302:	48 89 ee             	mov    %rbp,%rsi
    2305:	e8 a6 eb ff ff       	callq  eb0 <read@plt>
    230a:	89 43 04             	mov    %eax,0x4(%rbx)
    230d:	85 c0                	test   %eax,%eax
    230f:	78 d5                	js     22e6 <rio_read+0x15>
    2311:	85 c0                	test   %eax,%eax
    2313:	74 40                	je     2355 <rio_read+0x84>
    2315:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2319:	eb d5                	jmp    22f0 <rio_read+0x1f>
    231b:	89 e8                	mov    %ebp,%eax
    231d:	4c 39 e0             	cmp    %r12,%rax
    2320:	72 03                	jb     2325 <rio_read+0x54>
    2322:	44 89 e5             	mov    %r12d,%ebp
    2325:	4c 63 e5             	movslq %ebp,%r12
    2328:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    232c:	4c 89 e2             	mov    %r12,%rdx
    232f:	4c 89 ef             	mov    %r13,%rdi
    2332:	e8 c9 eb ff ff       	callq  f00 <memcpy@plt>
    2337:	4c 01 63 08          	add    %r12,0x8(%rbx)
    233b:	29 6b 04             	sub    %ebp,0x4(%rbx)
    233e:	4c 89 e0             	mov    %r12,%rax
    2341:	48 83 c4 08          	add    $0x8,%rsp
    2345:	5b                   	pop    %rbx
    2346:	5d                   	pop    %rbp
    2347:	41 5c                	pop    %r12
    2349:	41 5d                	pop    %r13
    234b:	c3                   	retq   
    234c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2353:	eb ec                	jmp    2341 <rio_read+0x70>
    2355:	b8 00 00 00 00       	mov    $0x0,%eax
    235a:	eb e5                	jmp    2341 <rio_read+0x70>

000000000000235c <rio_readlineb>:
    235c:	41 55                	push   %r13
    235e:	41 54                	push   %r12
    2360:	55                   	push   %rbp
    2361:	53                   	push   %rbx
    2362:	48 83 ec 18          	sub    $0x18,%rsp
    2366:	49 89 fd             	mov    %rdi,%r13
    2369:	48 89 f5             	mov    %rsi,%rbp
    236c:	49 89 d4             	mov    %rdx,%r12
    236f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2376:	00 00 
    2378:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    237d:	31 c0                	xor    %eax,%eax
    237f:	bb 01 00 00 00       	mov    $0x1,%ebx
    2384:	4c 39 e3             	cmp    %r12,%rbx
    2387:	73 47                	jae    23d0 <rio_readlineb+0x74>
    2389:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    238e:	ba 01 00 00 00       	mov    $0x1,%edx
    2393:	4c 89 ef             	mov    %r13,%rdi
    2396:	e8 36 ff ff ff       	callq  22d1 <rio_read>
    239b:	83 f8 01             	cmp    $0x1,%eax
    239e:	75 1c                	jne    23bc <rio_readlineb+0x60>
    23a0:	48 8d 45 01          	lea    0x1(%rbp),%rax
    23a4:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    23a9:	88 55 00             	mov    %dl,0x0(%rbp)
    23ac:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    23b1:	74 1a                	je     23cd <rio_readlineb+0x71>
    23b3:	48 83 c3 01          	add    $0x1,%rbx
    23b7:	48 89 c5             	mov    %rax,%rbp
    23ba:	eb c8                	jmp    2384 <rio_readlineb+0x28>
    23bc:	85 c0                	test   %eax,%eax
    23be:	75 32                	jne    23f2 <rio_readlineb+0x96>
    23c0:	48 83 fb 01          	cmp    $0x1,%rbx
    23c4:	75 0a                	jne    23d0 <rio_readlineb+0x74>
    23c6:	b8 00 00 00 00       	mov    $0x0,%eax
    23cb:	eb 0a                	jmp    23d7 <rio_readlineb+0x7b>
    23cd:	48 89 c5             	mov    %rax,%rbp
    23d0:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    23d4:	48 89 d8             	mov    %rbx,%rax
    23d7:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    23dc:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    23e3:	00 00 
    23e5:	75 14                	jne    23fb <rio_readlineb+0x9f>
    23e7:	48 83 c4 18          	add    $0x18,%rsp
    23eb:	5b                   	pop    %rbx
    23ec:	5d                   	pop    %rbp
    23ed:	41 5c                	pop    %r12
    23ef:	41 5d                	pop    %r13
    23f1:	c3                   	retq   
    23f2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    23f9:	eb dc                	jmp    23d7 <rio_readlineb+0x7b>
    23fb:	e8 60 ea ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002400 <urlencode>:
    2400:	41 54                	push   %r12
    2402:	55                   	push   %rbp
    2403:	53                   	push   %rbx
    2404:	48 83 ec 10          	sub    $0x10,%rsp
    2408:	48 89 fb             	mov    %rdi,%rbx
    240b:	48 89 f5             	mov    %rsi,%rbp
    240e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2415:	00 00 
    2417:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    241c:	31 c0                	xor    %eax,%eax
    241e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2425:	f2 ae                	repnz scas %es:(%rdi),%al
    2427:	48 89 ce             	mov    %rcx,%rsi
    242a:	48 f7 d6             	not    %rsi
    242d:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2430:	eb 0f                	jmp    2441 <urlencode+0x41>
    2432:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2436:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    243a:	48 83 c3 01          	add    $0x1,%rbx
    243e:	44 89 e0             	mov    %r12d,%eax
    2441:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2445:	85 c0                	test   %eax,%eax
    2447:	0f 84 a8 00 00 00    	je     24f5 <urlencode+0xf5>
    244d:	44 0f b6 03          	movzbl (%rbx),%r8d
    2451:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2455:	0f 94 c2             	sete   %dl
    2458:	41 80 f8 2d          	cmp    $0x2d,%r8b
    245c:	0f 94 c0             	sete   %al
    245f:	08 c2                	or     %al,%dl
    2461:	75 cf                	jne    2432 <urlencode+0x32>
    2463:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2467:	74 c9                	je     2432 <urlencode+0x32>
    2469:	41 80 f8 5f          	cmp    $0x5f,%r8b
    246d:	74 c3                	je     2432 <urlencode+0x32>
    246f:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    2473:	3c 09                	cmp    $0x9,%al
    2475:	76 bb                	jbe    2432 <urlencode+0x32>
    2477:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    247b:	3c 19                	cmp    $0x19,%al
    247d:	76 b3                	jbe    2432 <urlencode+0x32>
    247f:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    2483:	3c 19                	cmp    $0x19,%al
    2485:	76 ab                	jbe    2432 <urlencode+0x32>
    2487:	41 80 f8 20          	cmp    $0x20,%r8b
    248b:	74 56                	je     24e3 <urlencode+0xe3>
    248d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2491:	3c 5f                	cmp    $0x5f,%al
    2493:	0f 96 c2             	setbe  %dl
    2496:	41 80 f8 09          	cmp    $0x9,%r8b
    249a:	0f 94 c0             	sete   %al
    249d:	08 c2                	or     %al,%dl
    249f:	74 4f                	je     24f0 <urlencode+0xf0>
    24a1:	48 89 e7             	mov    %rsp,%rdi
    24a4:	45 0f b6 c0          	movzbl %r8b,%r8d
    24a8:	48 8d 0d 09 13 00 00 	lea    0x1309(%rip),%rcx        # 37b8 <trans_char+0xa8>
    24af:	ba 08 00 00 00       	mov    $0x8,%edx
    24b4:	be 01 00 00 00       	mov    $0x1,%esi
    24b9:	b8 00 00 00 00       	mov    $0x0,%eax
    24be:	e8 1d eb ff ff       	callq  fe0 <__sprintf_chk@plt>
    24c3:	0f b6 04 24          	movzbl (%rsp),%eax
    24c7:	88 45 00             	mov    %al,0x0(%rbp)
    24ca:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    24cf:	88 45 01             	mov    %al,0x1(%rbp)
    24d2:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    24d7:	88 45 02             	mov    %al,0x2(%rbp)
    24da:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    24de:	e9 57 ff ff ff       	jmpq   243a <urlencode+0x3a>
    24e3:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    24e7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    24eb:	e9 4a ff ff ff       	jmpq   243a <urlencode+0x3a>
    24f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24f5:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    24fa:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2501:	00 00 
    2503:	75 09                	jne    250e <urlencode+0x10e>
    2505:	48 83 c4 10          	add    $0x10,%rsp
    2509:	5b                   	pop    %rbx
    250a:	5d                   	pop    %rbp
    250b:	41 5c                	pop    %r12
    250d:	c3                   	retq   
    250e:	e8 4d e9 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002513 <submitr>:
    2513:	41 57                	push   %r15
    2515:	41 56                	push   %r14
    2517:	41 55                	push   %r13
    2519:	41 54                	push   %r12
    251b:	55                   	push   %rbp
    251c:	53                   	push   %rbx
    251d:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    2524:	49 89 fd             	mov    %rdi,%r13
    2527:	89 74 24 14          	mov    %esi,0x14(%rsp)
    252b:	49 89 d7             	mov    %rdx,%r15
    252e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    2533:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    2538:	4d 89 ce             	mov    %r9,%r14
    253b:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    2542:	00 
    2543:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    254a:	00 00 
    254c:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    2553:	00 
    2554:	31 c0                	xor    %eax,%eax
    2556:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    255d:	00 
    255e:	ba 00 00 00 00       	mov    $0x0,%edx
    2563:	be 01 00 00 00       	mov    $0x1,%esi
    2568:	bf 02 00 00 00       	mov    $0x2,%edi
    256d:	e8 7e ea ff ff       	callq  ff0 <socket@plt>
    2572:	85 c0                	test   %eax,%eax
    2574:	0f 88 a9 02 00 00    	js     2823 <submitr+0x310>
    257a:	89 c3                	mov    %eax,%ebx
    257c:	4c 89 ef             	mov    %r13,%rdi
    257f:	e8 4c e9 ff ff       	callq  ed0 <gethostbyname@plt>
    2584:	48 85 c0             	test   %rax,%rax
    2587:	0f 84 e2 02 00 00    	je     286f <submitr+0x35c>
    258d:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    2592:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    2599:	00 00 
    259b:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    25a2:	00 
    25a3:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    25aa:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    25b1:	48 63 50 14          	movslq 0x14(%rax),%rdx
    25b5:	48 8b 40 18          	mov    0x18(%rax),%rax
    25b9:	48 8b 30             	mov    (%rax),%rsi
    25bc:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    25c1:	b9 0c 00 00 00       	mov    $0xc,%ecx
    25c6:	e8 15 e9 ff ff       	callq  ee0 <__memmove_chk@plt>
    25cb:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
    25d0:	66 c1 c8 08          	ror    $0x8,%ax
    25d4:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    25d9:	ba 10 00 00 00       	mov    $0x10,%edx
    25de:	4c 89 e6             	mov    %r12,%rsi
    25e1:	89 df                	mov    %ebx,%edi
    25e3:	e8 d8 e9 ff ff       	callq  fc0 <connect@plt>
    25e8:	85 c0                	test   %eax,%eax
    25ea:	0f 88 e7 02 00 00    	js     28d7 <submitr+0x3c4>
    25f0:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    25f7:	b8 00 00 00 00       	mov    $0x0,%eax
    25fc:	48 89 f1             	mov    %rsi,%rcx
    25ff:	4c 89 f7             	mov    %r14,%rdi
    2602:	f2 ae                	repnz scas %es:(%rdi),%al
    2604:	48 89 ca             	mov    %rcx,%rdx
    2607:	48 f7 d2             	not    %rdx
    260a:	48 89 f1             	mov    %rsi,%rcx
    260d:	4c 89 ff             	mov    %r15,%rdi
    2610:	f2 ae                	repnz scas %es:(%rdi),%al
    2612:	48 f7 d1             	not    %rcx
    2615:	49 89 c8             	mov    %rcx,%r8
    2618:	48 89 f1             	mov    %rsi,%rcx
    261b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2620:	f2 ae                	repnz scas %es:(%rdi),%al
    2622:	48 f7 d1             	not    %rcx
    2625:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    262a:	48 89 f1             	mov    %rsi,%rcx
    262d:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2632:	f2 ae                	repnz scas %es:(%rdi),%al
    2634:	48 89 c8             	mov    %rcx,%rax
    2637:	48 f7 d0             	not    %rax
    263a:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    263f:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    2644:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    264b:	00 
    264c:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2652:	0f 87 d9 02 00 00    	ja     2931 <submitr+0x41e>
    2658:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    265f:	00 
    2660:	b9 00 04 00 00       	mov    $0x400,%ecx
    2665:	b8 00 00 00 00       	mov    $0x0,%eax
    266a:	48 89 f7             	mov    %rsi,%rdi
    266d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2670:	4c 89 f7             	mov    %r14,%rdi
    2673:	e8 88 fd ff ff       	callq  2400 <urlencode>
    2678:	85 c0                	test   %eax,%eax
    267a:	0f 88 24 03 00 00    	js     29a4 <submitr+0x491>
    2680:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    2687:	00 
    2688:	41 55                	push   %r13
    268a:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    2691:	00 
    2692:	50                   	push   %rax
    2693:	4d 89 f9             	mov    %r15,%r9
    2696:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    269b:	48 8d 0d a6 10 00 00 	lea    0x10a6(%rip),%rcx        # 3748 <trans_char+0x38>
    26a2:	ba 00 20 00 00       	mov    $0x2000,%edx
    26a7:	be 01 00 00 00       	mov    $0x1,%esi
    26ac:	4c 89 e7             	mov    %r12,%rdi
    26af:	b8 00 00 00 00       	mov    $0x0,%eax
    26b4:	e8 27 e9 ff ff       	callq  fe0 <__sprintf_chk@plt>
    26b9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    26c0:	b8 00 00 00 00       	mov    $0x0,%eax
    26c5:	4c 89 e7             	mov    %r12,%rdi
    26c8:	f2 ae                	repnz scas %es:(%rdi),%al
    26ca:	48 89 ca             	mov    %rcx,%rdx
    26cd:	48 f7 d2             	not    %rdx
    26d0:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    26d4:	4c 89 e6             	mov    %r12,%rsi
    26d7:	89 df                	mov    %ebx,%edi
    26d9:	e8 95 fb ff ff       	callq  2273 <rio_writen>
    26de:	48 83 c4 10          	add    $0x10,%rsp
    26e2:	48 85 c0             	test   %rax,%rax
    26e5:	0f 88 44 03 00 00    	js     2a2f <submitr+0x51c>
    26eb:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    26f0:	89 de                	mov    %ebx,%esi
    26f2:	4c 89 e7             	mov    %r12,%rdi
    26f5:	e8 37 fb ff ff       	callq  2231 <rio_readinitb>
    26fa:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2701:	00 
    2702:	ba 00 20 00 00       	mov    $0x2000,%edx
    2707:	4c 89 e7             	mov    %r12,%rdi
    270a:	e8 4d fc ff ff       	callq  235c <rio_readlineb>
    270f:	48 85 c0             	test   %rax,%rax
    2712:	0f 8e 86 03 00 00    	jle    2a9e <submitr+0x58b>
    2718:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    271d:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2724:	00 
    2725:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    272c:	00 
    272d:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2734:	00 
    2735:	48 8d 35 83 10 00 00 	lea    0x1083(%rip),%rsi        # 37bf <trans_char+0xaf>
    273c:	b8 00 00 00 00       	mov    $0x0,%eax
    2741:	e8 fa e7 ff ff       	callq  f40 <__isoc99_sscanf@plt>
    2746:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    274d:	00 
    274e:	b9 03 00 00 00       	mov    $0x3,%ecx
    2753:	48 8d 3d 7c 10 00 00 	lea    0x107c(%rip),%rdi        # 37d6 <trans_char+0xc6>
    275a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    275c:	0f 97 c0             	seta   %al
    275f:	1c 00                	sbb    $0x0,%al
    2761:	84 c0                	test   %al,%al
    2763:	0f 84 b3 03 00 00    	je     2b1c <submitr+0x609>
    2769:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2770:	00 
    2771:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2776:	ba 00 20 00 00       	mov    $0x2000,%edx
    277b:	e8 dc fb ff ff       	callq  235c <rio_readlineb>
    2780:	48 85 c0             	test   %rax,%rax
    2783:	7f c1                	jg     2746 <submitr+0x233>
    2785:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    278c:	3a 20 43 
    278f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2796:	20 75 6e 
    2799:	48 89 45 00          	mov    %rax,0x0(%rbp)
    279d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    27a1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27a8:	74 6f 20 
    27ab:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    27b2:	68 65 61 
    27b5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    27b9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    27bd:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    27c4:	66 72 6f 
    27c7:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
    27ce:	20 72 65 
    27d1:	48 89 45 20          	mov    %rax,0x20(%rbp)
    27d5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    27d9:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
    27e0:	73 65 72 
    27e3:	48 89 45 30          	mov    %rax,0x30(%rbp)
    27e7:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
    27ee:	89 df                	mov    %ebx,%edi
    27f0:	e8 ab e6 ff ff       	callq  ea0 <close@plt>
    27f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27fa:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    2801:	00 
    2802:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2809:	00 00 
    280b:	0f 85 7e 04 00 00    	jne    2c8f <submitr+0x77c>
    2811:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2818:	5b                   	pop    %rbx
    2819:	5d                   	pop    %rbp
    281a:	41 5c                	pop    %r12
    281c:	41 5d                	pop    %r13
    281e:	41 5e                	pop    %r14
    2820:	41 5f                	pop    %r15
    2822:	c3                   	retq   
    2823:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    282a:	3a 20 43 
    282d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2834:	20 75 6e 
    2837:	48 89 45 00          	mov    %rax,0x0(%rbp)
    283b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    283f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2846:	74 6f 20 
    2849:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2850:	65 20 73 
    2853:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2857:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    285b:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2862:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2868:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    286d:	eb 8b                	jmp    27fa <submitr+0x2e7>
    286f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2876:	3a 20 44 
    2879:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2880:	20 75 6e 
    2883:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2887:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    288b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2892:	74 6f 20 
    2895:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    289c:	76 65 20 
    289f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28a3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28a7:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    28ae:	72 20 61 
    28b1:	48 89 45 20          	mov    %rax,0x20(%rbp)
    28b5:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    28bc:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    28c2:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    28c6:	89 df                	mov    %ebx,%edi
    28c8:	e8 d3 e5 ff ff       	callq  ea0 <close@plt>
    28cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28d2:	e9 23 ff ff ff       	jmpq   27fa <submitr+0x2e7>
    28d7:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    28de:	3a 20 55 
    28e1:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    28e8:	20 74 6f 
    28eb:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28ef:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28f3:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    28fa:	65 63 74 
    28fd:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2904:	68 65 20 
    2907:	48 89 45 10          	mov    %rax,0x10(%rbp)
    290b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    290f:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
    2916:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
    291c:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
    2920:	89 df                	mov    %ebx,%edi
    2922:	e8 79 e5 ff ff       	callq  ea0 <close@plt>
    2927:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    292c:	e9 c9 fe ff ff       	jmpq   27fa <submitr+0x2e7>
    2931:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2938:	3a 20 52 
    293b:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2942:	20 73 74 
    2945:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2949:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    294d:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2954:	74 6f 6f 
    2957:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    295e:	65 2e 20 
    2961:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2965:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2969:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2970:	61 73 65 
    2973:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    297a:	49 54 52 
    297d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2981:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2985:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    298c:	55 46 00 
    298f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2993:	89 df                	mov    %ebx,%edi
    2995:	e8 06 e5 ff ff       	callq  ea0 <close@plt>
    299a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    299f:	e9 56 fe ff ff       	jmpq   27fa <submitr+0x2e7>
    29a4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    29ab:	3a 20 52 
    29ae:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    29b5:	20 73 74 
    29b8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29bc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29c0:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    29c7:	63 6f 6e 
    29ca:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    29d1:	20 61 6e 
    29d4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29d8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29dc:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    29e3:	67 61 6c 
    29e6:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    29ed:	6e 70 72 
    29f0:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29f4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    29f8:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    29ff:	6c 65 20 
    2a02:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2a09:	63 74 65 
    2a0c:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2a10:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2a14:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2a1a:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2a1e:	89 df                	mov    %ebx,%edi
    2a20:	e8 7b e4 ff ff       	callq  ea0 <close@plt>
    2a25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a2a:	e9 cb fd ff ff       	jmpq   27fa <submitr+0x2e7>
    2a2f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a36:	3a 20 43 
    2a39:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a40:	20 75 6e 
    2a43:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a47:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a4b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a52:	74 6f 20 
    2a55:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2a5c:	20 74 6f 
    2a5f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a63:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a67:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
    2a6e:	72 65 73 
    2a71:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
    2a78:	65 72 76 
    2a7b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a7f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a83:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
    2a89:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
    2a8d:	89 df                	mov    %ebx,%edi
    2a8f:	e8 0c e4 ff ff       	callq  ea0 <close@plt>
    2a94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a99:	e9 5c fd ff ff       	jmpq   27fa <submitr+0x2e7>
    2a9e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2aa5:	3a 20 43 
    2aa8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2aaf:	20 75 6e 
    2ab2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ab6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2aba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ac1:	74 6f 20 
    2ac4:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2acb:	66 69 72 
    2ace:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2ad2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ad6:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2add:	61 64 65 
    2ae0:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
    2ae7:	6d 20 72 
    2aea:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2aee:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2af2:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
    2af9:	20 73 65 
    2afc:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b00:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
    2b07:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
    2b0b:	89 df                	mov    %ebx,%edi
    2b0d:	e8 8e e3 ff ff       	callq  ea0 <close@plt>
    2b12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b17:	e9 de fc ff ff       	jmpq   27fa <submitr+0x2e7>
    2b1c:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2b23:	00 
    2b24:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2b29:	ba 00 20 00 00       	mov    $0x2000,%edx
    2b2e:	e8 29 f8 ff ff       	callq  235c <rio_readlineb>
    2b33:	48 85 c0             	test   %rax,%rax
    2b36:	0f 8e 96 00 00 00    	jle    2bd2 <submitr+0x6bf>
    2b3c:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2b41:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2b48:	0f 85 08 01 00 00    	jne    2c56 <submitr+0x743>
    2b4e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2b55:	00 
    2b56:	48 89 ef             	mov    %rbp,%rdi
    2b59:	e8 d2 e2 ff ff       	callq  e30 <strcpy@plt>
    2b5e:	89 df                	mov    %ebx,%edi
    2b60:	e8 3b e3 ff ff       	callq  ea0 <close@plt>
    2b65:	b9 04 00 00 00       	mov    $0x4,%ecx
    2b6a:	48 8d 3d 5f 0c 00 00 	lea    0xc5f(%rip),%rdi        # 37d0 <trans_char+0xc0>
    2b71:	48 89 ee             	mov    %rbp,%rsi
    2b74:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2b76:	0f 97 c0             	seta   %al
    2b79:	1c 00                	sbb    $0x0,%al
    2b7b:	0f be c0             	movsbl %al,%eax
    2b7e:	85 c0                	test   %eax,%eax
    2b80:	0f 84 74 fc ff ff    	je     27fa <submitr+0x2e7>
    2b86:	b9 05 00 00 00       	mov    $0x5,%ecx
    2b8b:	48 8d 3d 42 0c 00 00 	lea    0xc42(%rip),%rdi        # 37d4 <trans_char+0xc4>
    2b92:	48 89 ee             	mov    %rbp,%rsi
    2b95:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2b97:	0f 97 c0             	seta   %al
    2b9a:	1c 00                	sbb    $0x0,%al
    2b9c:	0f be c0             	movsbl %al,%eax
    2b9f:	85 c0                	test   %eax,%eax
    2ba1:	0f 84 53 fc ff ff    	je     27fa <submitr+0x2e7>
    2ba7:	b9 03 00 00 00       	mov    $0x3,%ecx
    2bac:	48 8d 3d 26 0c 00 00 	lea    0xc26(%rip),%rdi        # 37d9 <trans_char+0xc9>
    2bb3:	48 89 ee             	mov    %rbp,%rsi
    2bb6:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2bb8:	0f 97 c0             	seta   %al
    2bbb:	1c 00                	sbb    $0x0,%al
    2bbd:	0f be c0             	movsbl %al,%eax
    2bc0:	85 c0                	test   %eax,%eax
    2bc2:	0f 84 32 fc ff ff    	je     27fa <submitr+0x2e7>
    2bc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bcd:	e9 28 fc ff ff       	jmpq   27fa <submitr+0x2e7>
    2bd2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2bd9:	3a 20 43 
    2bdc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2be3:	20 75 6e 
    2be6:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bea:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bee:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2bf5:	74 6f 20 
    2bf8:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2bff:	73 74 61 
    2c02:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c06:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c0a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2c11:	65 73 73 
    2c14:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2c1b:	72 6f 6d 
    2c1e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c22:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c26:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
    2c2d:	6c 74 20 
    2c30:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c34:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
    2c3b:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
    2c41:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
    2c45:	89 df                	mov    %ebx,%edi
    2c47:	e8 54 e2 ff ff       	callq  ea0 <close@plt>
    2c4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c51:	e9 a4 fb ff ff       	jmpq   27fa <submitr+0x2e7>
    2c56:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2c5d:	00 
    2c5e:	48 8d 0d 23 0b 00 00 	lea    0xb23(%rip),%rcx        # 3788 <trans_char+0x78>
    2c65:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2c6c:	be 01 00 00 00       	mov    $0x1,%esi
    2c71:	48 89 ef             	mov    %rbp,%rdi
    2c74:	b8 00 00 00 00       	mov    $0x0,%eax
    2c79:	e8 62 e3 ff ff       	callq  fe0 <__sprintf_chk@plt>
    2c7e:	89 df                	mov    %ebx,%edi
    2c80:	e8 1b e2 ff ff       	callq  ea0 <close@plt>
    2c85:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c8a:	e9 6b fb ff ff       	jmpq   27fa <submitr+0x2e7>
    2c8f:	e8 cc e1 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002c94 <init_timeout>:
    2c94:	85 ff                	test   %edi,%edi
    2c96:	74 28                	je     2cc0 <init_timeout+0x2c>
    2c98:	53                   	push   %rbx
    2c99:	89 fb                	mov    %edi,%ebx
    2c9b:	85 ff                	test   %edi,%edi
    2c9d:	78 1a                	js     2cb9 <init_timeout+0x25>
    2c9f:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 2243 <sigalrm_handler>
    2ca6:	bf 0e 00 00 00       	mov    $0xe,%edi
    2cab:	e8 10 e2 ff ff       	callq  ec0 <signal@plt>
    2cb0:	89 df                	mov    %ebx,%edi
    2cb2:	e8 d9 e1 ff ff       	callq  e90 <alarm@plt>
    2cb7:	5b                   	pop    %rbx
    2cb8:	c3                   	retq   
    2cb9:	bb 00 00 00 00       	mov    $0x0,%ebx
    2cbe:	eb df                	jmp    2c9f <init_timeout+0xb>
    2cc0:	f3 c3                	repz retq 

0000000000002cc2 <init_driver>:
    2cc2:	41 54                	push   %r12
    2cc4:	55                   	push   %rbp
    2cc5:	53                   	push   %rbx
    2cc6:	48 83 ec 20          	sub    $0x20,%rsp
    2cca:	49 89 fc             	mov    %rdi,%r12
    2ccd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2cd4:	00 00 
    2cd6:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2cdb:	31 c0                	xor    %eax,%eax
    2cdd:	be 01 00 00 00       	mov    $0x1,%esi
    2ce2:	bf 0d 00 00 00       	mov    $0xd,%edi
    2ce7:	e8 d4 e1 ff ff       	callq  ec0 <signal@plt>
    2cec:	be 01 00 00 00       	mov    $0x1,%esi
    2cf1:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2cf6:	e8 c5 e1 ff ff       	callq  ec0 <signal@plt>
    2cfb:	be 01 00 00 00       	mov    $0x1,%esi
    2d00:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2d05:	e8 b6 e1 ff ff       	callq  ec0 <signal@plt>
    2d0a:	ba 00 00 00 00       	mov    $0x0,%edx
    2d0f:	be 01 00 00 00       	mov    $0x1,%esi
    2d14:	bf 02 00 00 00       	mov    $0x2,%edi
    2d19:	e8 d2 e2 ff ff       	callq  ff0 <socket@plt>
    2d1e:	85 c0                	test   %eax,%eax
    2d20:	0f 88 a3 00 00 00    	js     2dc9 <init_driver+0x107>
    2d26:	89 c3                	mov    %eax,%ebx
    2d28:	48 8d 3d df 05 00 00 	lea    0x5df(%rip),%rdi        # 330e <_IO_stdin_used+0x2ce>
    2d2f:	e8 9c e1 ff ff       	callq  ed0 <gethostbyname@plt>
    2d34:	48 85 c0             	test   %rax,%rax
    2d37:	0f 84 df 00 00 00    	je     2e1c <init_driver+0x15a>
    2d3d:	48 89 e5             	mov    %rsp,%rbp
    2d40:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2d47:	00 00 
    2d49:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2d50:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2d56:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2d5c:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2d60:	48 8b 40 18          	mov    0x18(%rax),%rax
    2d64:	48 8b 30             	mov    (%rax),%rsi
    2d67:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2d6b:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2d70:	e8 6b e1 ff ff       	callq  ee0 <__memmove_chk@plt>
    2d75:	66 c7 44 24 02 0a 8e 	movw   $0x8e0a,0x2(%rsp)
    2d7c:	ba 10 00 00 00       	mov    $0x10,%edx
    2d81:	48 89 ee             	mov    %rbp,%rsi
    2d84:	89 df                	mov    %ebx,%edi
    2d86:	e8 35 e2 ff ff       	callq  fc0 <connect@plt>
    2d8b:	85 c0                	test   %eax,%eax
    2d8d:	0f 88 fb 00 00 00    	js     2e8e <init_driver+0x1cc>
    2d93:	89 df                	mov    %ebx,%edi
    2d95:	e8 06 e1 ff ff       	callq  ea0 <close@plt>
    2d9a:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2da1:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2da7:	b8 00 00 00 00       	mov    $0x0,%eax
    2dac:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2db1:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2db8:	00 00 
    2dba:	0f 85 28 01 00 00    	jne    2ee8 <init_driver+0x226>
    2dc0:	48 83 c4 20          	add    $0x20,%rsp
    2dc4:	5b                   	pop    %rbx
    2dc5:	5d                   	pop    %rbp
    2dc6:	41 5c                	pop    %r12
    2dc8:	c3                   	retq   
    2dc9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2dd0:	3a 20 43 
    2dd3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2dda:	20 75 6e 
    2ddd:	49 89 04 24          	mov    %rax,(%r12)
    2de1:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2de6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ded:	74 6f 20 
    2df0:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2df7:	65 20 73 
    2dfa:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2dff:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2e04:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2e0b:	6b 65 
    2e0d:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    2e14:	00 
    2e15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e1a:	eb 90                	jmp    2dac <init_driver+0xea>
    2e1c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2e23:	3a 20 44 
    2e26:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2e2d:	20 75 6e 
    2e30:	49 89 04 24          	mov    %rax,(%r12)
    2e34:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2e39:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e40:	74 6f 20 
    2e43:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2e4a:	76 65 20 
    2e4d:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2e52:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2e57:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2e5e:	72 20 61 
    2e61:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2e66:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2e6d:	72 65 
    2e6f:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2e76:	73 
    2e77:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2e7d:	89 df                	mov    %ebx,%edi
    2e7f:	e8 1c e0 ff ff       	callq  ea0 <close@plt>
    2e84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e89:	e9 1e ff ff ff       	jmpq   2dac <init_driver+0xea>
    2e8e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2e95:	3a 20 55 
    2e98:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2e9f:	20 74 6f 
    2ea2:	49 89 04 24          	mov    %rax,(%r12)
    2ea6:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2eab:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2eb2:	65 63 74 
    2eb5:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    2ebc:	65 72 76 
    2ebf:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2ec4:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2ec9:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    2ed0:	72 
    2ed1:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    2ed7:	89 df                	mov    %ebx,%edi
    2ed9:	e8 c2 df ff ff       	callq  ea0 <close@plt>
    2ede:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ee3:	e9 c4 fe ff ff       	jmpq   2dac <init_driver+0xea>
    2ee8:	e8 73 df ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002eed <driver_post>:
    2eed:	53                   	push   %rbx
    2eee:	4c 89 cb             	mov    %r9,%rbx
    2ef1:	45 85 c0             	test   %r8d,%r8d
    2ef4:	75 18                	jne    2f0e <driver_post+0x21>
    2ef6:	48 85 ff             	test   %rdi,%rdi
    2ef9:	74 05                	je     2f00 <driver_post+0x13>
    2efb:	80 3f 00             	cmpb   $0x0,(%rdi)
    2efe:	75 37                	jne    2f37 <driver_post+0x4a>
    2f00:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2f05:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2f09:	44 89 c0             	mov    %r8d,%eax
    2f0c:	5b                   	pop    %rbx
    2f0d:	c3                   	retq   
    2f0e:	48 89 ca             	mov    %rcx,%rdx
    2f11:	48 8d 35 c4 08 00 00 	lea    0x8c4(%rip),%rsi        # 37dc <trans_char+0xcc>
    2f18:	bf 01 00 00 00       	mov    $0x1,%edi
    2f1d:	b8 00 00 00 00       	mov    $0x0,%eax
    2f22:	e8 39 e0 ff ff       	callq  f60 <__printf_chk@plt>
    2f27:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2f2c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2f30:	b8 00 00 00 00       	mov    $0x0,%eax
    2f35:	eb d5                	jmp    2f0c <driver_post+0x1f>
    2f37:	48 83 ec 08          	sub    $0x8,%rsp
    2f3b:	41 51                	push   %r9
    2f3d:	49 89 c9             	mov    %rcx,%r9
    2f40:	49 89 d0             	mov    %rdx,%r8
    2f43:	48 89 f9             	mov    %rdi,%rcx
    2f46:	48 89 f2             	mov    %rsi,%rdx
    2f49:	be 8e 0a 00 00       	mov    $0xa8e,%esi
    2f4e:	48 8d 3d b9 03 00 00 	lea    0x3b9(%rip),%rdi        # 330e <_IO_stdin_used+0x2ce>
    2f55:	e8 b9 f5 ff ff       	callq  2513 <submitr>
    2f5a:	48 83 c4 10          	add    $0x10,%rsp
    2f5e:	eb ac                	jmp    2f0c <driver_post+0x1f>

0000000000002f60 <check>:
    2f60:	89 f8                	mov    %edi,%eax
    2f62:	c1 e8 1c             	shr    $0x1c,%eax
    2f65:	85 c0                	test   %eax,%eax
    2f67:	74 1d                	je     2f86 <check+0x26>
    2f69:	b9 00 00 00 00       	mov    $0x0,%ecx
    2f6e:	83 f9 1f             	cmp    $0x1f,%ecx
    2f71:	7f 0d                	jg     2f80 <check+0x20>
    2f73:	89 f8                	mov    %edi,%eax
    2f75:	d3 e8                	shr    %cl,%eax
    2f77:	3c 0a                	cmp    $0xa,%al
    2f79:	74 11                	je     2f8c <check+0x2c>
    2f7b:	83 c1 08             	add    $0x8,%ecx
    2f7e:	eb ee                	jmp    2f6e <check+0xe>
    2f80:	b8 01 00 00 00       	mov    $0x1,%eax
    2f85:	c3                   	retq   
    2f86:	b8 00 00 00 00       	mov    $0x0,%eax
    2f8b:	c3                   	retq   
    2f8c:	b8 00 00 00 00       	mov    $0x0,%eax
    2f91:	c3                   	retq   

0000000000002f92 <gencookie>:
    2f92:	53                   	push   %rbx
    2f93:	83 c7 01             	add    $0x1,%edi
    2f96:	e8 75 de ff ff       	callq  e10 <srandom@plt>
    2f9b:	e8 80 df ff ff       	callq  f20 <random@plt>
    2fa0:	89 c3                	mov    %eax,%ebx
    2fa2:	89 c7                	mov    %eax,%edi
    2fa4:	e8 b7 ff ff ff       	callq  2f60 <check>
    2fa9:	85 c0                	test   %eax,%eax
    2fab:	74 ee                	je     2f9b <gencookie+0x9>
    2fad:	89 d8                	mov    %ebx,%eax
    2faf:	5b                   	pop    %rbx
    2fb0:	c3                   	retq   
    2fb1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2fb8:	00 00 00 
    2fbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002fc0 <__libc_csu_init>:
    2fc0:	41 57                	push   %r15
    2fc2:	41 56                	push   %r14
    2fc4:	49 89 d7             	mov    %rdx,%r15
    2fc7:	41 55                	push   %r13
    2fc9:	41 54                	push   %r12
    2fcb:	4c 8d 25 e6 1c 20 00 	lea    0x201ce6(%rip),%r12        # 204cb8 <__frame_dummy_init_array_entry>
    2fd2:	55                   	push   %rbp
    2fd3:	48 8d 2d e6 1c 20 00 	lea    0x201ce6(%rip),%rbp        # 204cc0 <__init_array_end>
    2fda:	53                   	push   %rbx
    2fdb:	41 89 fd             	mov    %edi,%r13d
    2fde:	49 89 f6             	mov    %rsi,%r14
    2fe1:	4c 29 e5             	sub    %r12,%rbp
    2fe4:	48 83 ec 08          	sub    $0x8,%rsp
    2fe8:	48 c1 fd 03          	sar    $0x3,%rbp
    2fec:	e8 d7 dd ff ff       	callq  dc8 <_init>
    2ff1:	48 85 ed             	test   %rbp,%rbp
    2ff4:	74 20                	je     3016 <__libc_csu_init+0x56>
    2ff6:	31 db                	xor    %ebx,%ebx
    2ff8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2fff:	00 
    3000:	4c 89 fa             	mov    %r15,%rdx
    3003:	4c 89 f6             	mov    %r14,%rsi
    3006:	44 89 ef             	mov    %r13d,%edi
    3009:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    300d:	48 83 c3 01          	add    $0x1,%rbx
    3011:	48 39 dd             	cmp    %rbx,%rbp
    3014:	75 ea                	jne    3000 <__libc_csu_init+0x40>
    3016:	48 83 c4 08          	add    $0x8,%rsp
    301a:	5b                   	pop    %rbx
    301b:	5d                   	pop    %rbp
    301c:	41 5c                	pop    %r12
    301e:	41 5d                	pop    %r13
    3020:	41 5e                	pop    %r14
    3022:	41 5f                	pop    %r15
    3024:	c3                   	retq   
    3025:	90                   	nop
    3026:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    302d:	00 00 00 

0000000000003030 <__libc_csu_fini>:
    3030:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000003034 <_fini>:
    3034:	48 83 ec 08          	sub    $0x8,%rsp
    3038:	48 83 c4 08          	add    $0x8,%rsp
    303c:	c3                   	retq   
