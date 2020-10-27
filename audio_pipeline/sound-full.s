	.text
	.file	"llvm-link"
	.file	1 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/concurrence.h"
	.file	2 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h"
	.file	3 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h"
	.file	4 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/postypes.h"
	.file	5 "/usr/include/stdlib.h"
	.file	6 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file	8 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cmath"
	.file	9 "/usr/include/math.h"
	.file	10 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/math.h"
	.file	11 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h"
	.file	12 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h"
	.file	13 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h"
	.file	14 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file	15 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file	16 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar"
	.file	17 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file	18 "/usr/include/wchar.h"
	.file	19 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file	20 "/home/yingj4/llvm-6.0/builtLLVM/lib/clang/6.0.1/include/stddef.h"
	.file	21 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file	22 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file	23 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint"
	.file	24 "/usr/include/stdint.h"
	.file	25 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file	26 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale"
	.file	27 "/usr/include/locale.h"
	.file	28 "/usr/include/ctype.h"
	.file	29 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype"
	.file	30 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib"
	.file	31 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file	32 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio"
	.file	33 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h"
	.file	34 "/usr/include/stdio.h"
	.file	35 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/shared_ptr_base.h"
	.file	36 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/stdlib.h"
	.file	37 "/usr/include/wctype.h"
	.file	38 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwctype"
	.file	39 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.globl	_ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb # -- Begin function _ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb
	.p2align	4, 0x90
	.type	_ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb,@function
_ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb: # @_ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb
.Lfunc_begin0:
	.file	40 "src/sound.cpp"
	.loc	40 5 0                  # src/sound.cpp:5:0
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: Sound:this <- %rdi
	#DEBUG_VALUE: Sound:srcFilename <- [%rsi+0]
	#DEBUG_VALUE: Sound:nOrder <- %edx
	#DEBUG_VALUE: Sound:b3D <- %ecx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
.Ltmp9:
	#DEBUG_VALUE: Sound:nOrder <- %r14d
	#DEBUG_VALUE: Sound:srcFilename <- [%r15+0]
	#DEBUG_VALUE: Sound:this <- %rbx
	.loc	40 6 9 prologue_end     # src/sound.cpp:6:9
	movl	$1065353216, 4132(%rbx) # imm = 0x3F800000
	.loc	40 7 15                 # src/sound.cpp:7:15
	movl	$528, %edi              # imm = 0x210
	callq	_Znwm
.Ltmp10:
	movq	%rax, %rbp
.Ltmp0:
	.loc	40 7 19 is_stmt 0       # src/sound.cpp:7:19
	movl	$8, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
.Ltmp11:
	#DEBUG_VALUE: Sound:srcFilename <- [%rsi+0]
	callq	_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
.Ltmp12:
.Ltmp1:
# %bb.1:
	#DEBUG_VALUE: Sound:this <- %rbx
	#DEBUG_VALUE: Sound:nOrder <- %r14d
	.loc	40 7 13                 # src/sound.cpp:7:13
	movq	%rbp, (%rbx)
	movq	%rsp, %rsi
	.loc	40 12 14 is_stmt 1      # src/sound.cpp:12:14
	movl	$44, %edx
	movq	%rbp, %rdi
	callq	_ZNSi4readEPcl
	.loc	40 15 15                # src/sound.cpp:15:15
	movl	$64, %edi
	callq	_Znwm
	movq	%rax, %rbp
.Ltmp3:
	.loc	40 15 19 is_stmt 0      # src/sound.cpp:15:19
	movq	%rbp, %rdi
	callq	_ZN8CBFormatC1Ev
.Ltmp4:
.Ltmp13:
# %bb.2:
	#DEBUG_VALUE: Sound:this <- %rbx
	#DEBUG_VALUE: Sound:nOrder <- %r14d
	.loc	40 15 13                # src/sound.cpp:15:13
	movq	%rbp, 4104(%rbx)
	.loc	40 16 24 is_stmt 1      # src/sound.cpp:16:24
	movq	(%rbp), %rax
	movl	$1, %edx
	movl	$1024, %ecx             # imm = 0x400
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	*16(%rax)
	.loc	40 17 5                 # src/sound.cpp:17:5
	movq	4104(%rbx), %rdi
	.loc	40 17 14 is_stmt 0      # src/sound.cpp:17:14
	movq	(%rdi), %rax
	callq	*32(%rax)
	.loc	40 20 16 is_stmt 1      # src/sound.cpp:20:16
	movl	$136, %edi
	callq	_Znwm
	movq	%rax, %rbp
.Ltmp6:
	.loc	40 20 20 is_stmt 0      # src/sound.cpp:20:20
	movq	%rbp, %rdi
	callq	_ZN21CAmbisonicEncoderDistC1Ev
.Ltmp7:
.Ltmp14:
# %bb.3:
	#DEBUG_VALUE: Sound:this <- %rbx
	#DEBUG_VALUE: Sound:nOrder <- %r14d
	.loc	40 20 14                # src/sound.cpp:20:14
	movq	%rbp, 4112(%rbx)
	.loc	40 21 21 is_stmt 1      # src/sound.cpp:21:21
	movq	(%rbp), %rax
	movl	$1, %edx
	movl	$48000, %ecx            # imm = 0xBB80
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	*16(%rax)
	.loc	40 22 5                 # src/sound.cpp:22:5
	movq	4112(%rbx), %rdi
	.loc	40 22 15 is_stmt 0      # src/sound.cpp:22:15
	movq	(%rdi), %rax
	callq	*32(%rax)
	.loc	40 23 21 is_stmt 1      # src/sound.cpp:23:21
	movq	$0, 4120(%rbx)
	.loc	40 25 22                # src/sound.cpp:25:22
	movl	$0, 4128(%rbx)
	.loc	40 26 5                 # src/sound.cpp:26:5
	movq	4112(%rbx), %rdi
	.loc	40 26 15 is_stmt 0      # src/sound.cpp:26:15
	movq	(%rdi), %rax
	xorl	%ecx, %ecx
	.loc	40 26 27                # src/sound.cpp:26:27
	movq	%rcx, %xmm0
	.loc	40 26 15                # src/sound.cpp:26:15
	xorps	%xmm1, %xmm1
	callq	*40(%rax)
	.loc	40 27 5 is_stmt 1       # src/sound.cpp:27:5
	movq	4112(%rbx), %rdi
	.loc	40 27 15 is_stmt 0      # src/sound.cpp:27:15
	movq	(%rdi), %rax
	callq	*32(%rax)
.Ltmp15:
	.loc	40 28 1 is_stmt 1       # src/sound.cpp:28:1
	addq	$56, %rsp
	popq	%rbx
.Ltmp16:
	popq	%r14
.Ltmp17:
	popq	%r15
	popq	%rbp
	retq
.Ltmp18:
.LBB0_6:
	#DEBUG_VALUE: Sound:this <- %rbx
	#DEBUG_VALUE: Sound:nOrder <- %r14d
.Ltmp8:
	.loc	40 0 1 is_stmt 0        # src/sound.cpp:0:1
	jmp	.LBB0_7
.Ltmp19:
.LBB0_5:
	#DEBUG_VALUE: Sound:this <- %rbx
	#DEBUG_VALUE: Sound:nOrder <- %r14d
.Ltmp5:
	jmp	.LBB0_7
.Ltmp20:
.LBB0_4:
	#DEBUG_VALUE: Sound:this <- %rbx
	#DEBUG_VALUE: Sound:nOrder <- %r14d
.Ltmp2:
.LBB0_7:
	#DEBUG_VALUE: Sound:this <- %rbx
	#DEBUG_VALUE: Sound:nOrder <- %r14d
	movq	%rax, %rbx
.Ltmp21:
	movq	%rbp, %rdi
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Lfunc_end0:
	.size	_ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb, .Lfunc_end0-_ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb
	.cfi_endproc
	.file	41 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iosfwd"
	.file	42 "./include/sound.h"
	.file	43 "./libspatialaudio/build/Release/include/spatialaudio/AmbisonicCommons.h"
	.file	44 "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/stringfwd.h"
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	93                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	91                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.long	.Ltmp1-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp1           #   Call between .Ltmp1 and .Ltmp3
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Ltmp6-.Ltmp4           #   Call between .Ltmp4 and .Ltmp6
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 6 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    #     jumps to .Ltmp8
	.byte	0                       #   On action: cleanup
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 7 <<
	.long	.Lfunc_end0-.Ltmp7      #   Call between .Ltmp7 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZStorSt12_Ios_IostateS_,"axG",@progbits,_ZStorSt12_Ios_IostateS_,comdat
	.weak	_ZStorSt12_Ios_IostateS_ # -- Begin function _ZStorSt12_Ios_IostateS_
	.p2align	4, 0x90
	.type	_ZStorSt12_Ios_IostateS_,@function
_ZStorSt12_Ios_IostateS_:               # @_ZStorSt12_Ios_IostateS_
.Lfunc_begin1:
	.loc	2 170 0 is_stmt 1       # /usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h:170:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: operator|:__a <- %edi
	#DEBUG_VALUE: operator|:__a <- %edi
	#DEBUG_VALUE: operator|:__b <- %esi
	#DEBUG_VALUE: operator|:__b <- %esi
	.loc	2 170 47 prologue_end   # /usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h:170:47
	orl	%esi, %edi
.Ltmp22:
	.loc	2 170 5 is_stmt 0       # /usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h:170:5
	movl	%edi, %eax
	retq
.Ltmp23:
.Lfunc_end1:
	.size	_ZStorSt12_Ios_IostateS_, .Lfunc_end1-_ZStorSt12_Ios_IostateS_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint # -- Begin function _ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint
	.p2align	4, 0x90
	.type	_ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint,@function
_ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint: # @_ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint
.Lfunc_begin2:
	.loc	40 30 0 is_stmt 1       # src/sound.cpp:30:0
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: setSrcPos:this <- %rdi
	#DEBUG_VALUE: setSrcPos:pos <- %rsi
	movq	%rdi, %rbx
	#DEBUG_VALUE: setSrcPos:pos <- %rsi
.Ltmp24:
	#DEBUG_VALUE: setSrcPos:this <- %rbx
	.loc	40 31 27 prologue_end   # src/sound.cpp:31:27
	movl	(%rsi), %eax
	.loc	40 31 21 is_stmt 0      # src/sound.cpp:31:21
	movl	%eax, 4120(%rbx)
	.loc	40 32 29 is_stmt 1      # src/sound.cpp:32:29
	movl	4(%rsi), %eax
	.loc	40 32 23 is_stmt 0      # src/sound.cpp:32:23
	movl	%eax, 4124(%rbx)
	.loc	40 33 28 is_stmt 1      # src/sound.cpp:33:28
	movl	8(%rsi), %eax
	.loc	40 33 22 is_stmt 0      # src/sound.cpp:33:22
	movl	%eax, 4128(%rbx)
	.loc	40 34 5 is_stmt 1       # src/sound.cpp:34:5
	movq	4112(%rbx), %rdi
	.loc	40 34 15 is_stmt 0      # src/sound.cpp:34:15
	movq	(%rdi), %rax
	.loc	40 34 27                # src/sound.cpp:34:27
	movsd	4120(%rbx), %xmm0       # xmm0 = mem[0],zero
	movss	4128(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	.loc	40 34 15                # src/sound.cpp:34:15
	callq	*40(%rax)
.Ltmp25:
	.loc	40 35 5 is_stmt 1       # src/sound.cpp:35:5
	movq	4112(%rbx), %rdi
	.loc	40 35 15 is_stmt 0      # src/sound.cpp:35:15
	movq	(%rdi), %rax
	popq	%rbx
.Ltmp26:
	jmpq	*32(%rax)               # TAILCALL
.Ltmp27:
.Lfunc_end2:
	.size	_ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint, .Lfunc_end2-_ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf # -- Begin function _ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf
	.p2align	4, 0x90
	.type	_ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf,@function
_ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf:    # @_ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf
.Lfunc_begin3:
	.loc	40 38 0 is_stmt 1       # src/sound.cpp:38:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: setSrcAmp:this <- %rdi
	#DEBUG_VALUE: setSrcAmp:this <- %rdi
	#DEBUG_VALUE: setSrcAmp:ampScale <- %xmm0
	#DEBUG_VALUE: setSrcAmp:ampScale <- %xmm0
	.loc	40 39 9 prologue_end    # src/sound.cpp:39:9
	movss	%xmm0, 4132(%rdi)
	.loc	40 40 1                 # src/sound.cpp:40:1
	retq
.Ltmp28:
.Lfunc_end3:
	.size	_ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf, .Lfunc_end3-_ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _ZN12ILLIXR_AUDIO5Sound13readInBFormatEv
.LCPI4_0:
	.quad	4674736138332667904     # double 32767
	.text
	.globl	_ZN12ILLIXR_AUDIO5Sound13readInBFormatEv
	.p2align	4, 0x90
	.type	_ZN12ILLIXR_AUDIO5Sound13readInBFormatEv,@function
_ZN12ILLIXR_AUDIO5Sound13readInBFormatEv: # @_ZN12ILLIXR_AUDIO5Sound13readInBFormatEv
.Lfunc_begin4:
	.loc	40 43 0                 # src/sound.cpp:43:0
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$2048, %rsp             # imm = 0x800
	.cfi_def_cfa_offset 2064
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: readInBFormat:this <- %rdi
	movq	%rdi, %rbx
.Ltmp29:
	#DEBUG_VALUE: readInBFormat:this <- %rbx
	.loc	40 45 5 prologue_end    # src/sound.cpp:45:5
	movq	(%rbx), %rdi
	movq	%rsp, %rsi
	.loc	40 45 14 is_stmt 0      # src/sound.cpp:45:14
	movl	$2048, %edx             # imm = 0x800
	callq	_ZNSi4readEPcl
	movq	$-2048, %rax            # imm = 0xF800
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
.Ltmp30:
	#DEBUG_VALUE: i <- 0
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: readInBFormat:this <- %rbx
	.loc	40 48 21 is_stmt 1      # src/sound.cpp:48:21
	movss	4132(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	.loc	40 48 28 is_stmt 0      # src/sound.cpp:48:28
	movswl	2048(%rsp,%rax), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ecx, %xmm2
	.loc	40 48 42                # src/sound.cpp:48:42
	divsd	%xmm0, %xmm2
	.loc	40 48 25                # src/sound.cpp:48:25
	mulsd	%xmm1, %xmm2
	.loc	40 48 21                # src/sound.cpp:48:21
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	.loc	40 48 19                # src/sound.cpp:48:19
	movss	%xmm1, 4104(%rbx,%rax,2)
.Ltmp31:
	.loc	40 47 23 is_stmt 1      # src/sound.cpp:47:23
	addq	$2, %rax
.Ltmp32:
	.loc	40 47 5 is_stmt 0       # src/sound.cpp:47:5
	jne	.LBB4_1
.Ltmp33:
# %bb.2:
	#DEBUG_VALUE: readInBFormat:this <- %rbx
	.loc	40 50 43 is_stmt 1      # src/sound.cpp:50:43
	movq	4104(%rbx), %rcx
	.loc	40 50 5 is_stmt 0       # src/sound.cpp:50:5
	movq	4112(%rbx), %rdi
	.loc	40 50 23                # src/sound.cpp:50:23
	leaq	8(%rbx), %rsi
	.loc	40 50 15                # src/sound.cpp:50:15
	movl	$1024, %edx             # imm = 0x400
	callq	_ZN21CAmbisonicEncoderDist7ProcessEPfjP8CBFormat
	.loc	40 51 12 is_stmt 1      # src/sound.cpp:51:12
	movq	4104(%rbx), %rax
	.loc	40 51 5 is_stmt 0       # src/sound.cpp:51:5
	addq	$2048, %rsp             # imm = 0x800
	popq	%rbx
.Ltmp34:
	retq
.Ltmp35:
.Lfunc_end4:
	.size	_ZN12ILLIXR_AUDIO5Sound13readInBFormatEv, .Lfunc_end4-_ZN12ILLIXR_AUDIO5Sound13readInBFormatEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN12ILLIXR_AUDIO5SoundD2Ev # -- Begin function _ZN12ILLIXR_AUDIO5SoundD2Ev
	.p2align	4, 0x90
	.type	_ZN12ILLIXR_AUDIO5SoundD2Ev,@function
_ZN12ILLIXR_AUDIO5SoundD2Ev:            # @_ZN12ILLIXR_AUDIO5SoundD2Ev
.Lfunc_begin5:
	.loc	40 54 0 is_stmt 1       # src/sound.cpp:54:0
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	#DEBUG_VALUE: ~Sound:this <- %rdi
	movq	%rdi, %rbx
.Ltmp39:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	.loc	40 55 5 prologue_end    # src/sound.cpp:55:5
	movq	(%rbx), %rdi
.Ltmp36:
	.loc	40 55 14 is_stmt 0      # src/sound.cpp:55:14
	callq	_ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv
.Ltmp37:
.Ltmp40:
# %bb.1:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	.loc	40 56 12 is_stmt 1      # src/sound.cpp:56:12
	movq	(%rbx), %rdi
	.loc	40 56 5 is_stmt 0       # src/sound.cpp:56:5
	testq	%rdi, %rdi
	je	.LBB5_3
.Ltmp41:
# %bb.2:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	movq	(%rdi), %rax
	callq	*8(%rax)
.Ltmp42:
.LBB5_3:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	.loc	40 57 12 is_stmt 1      # src/sound.cpp:57:12
	movq	4104(%rbx), %rdi
	.loc	40 57 5 is_stmt 0       # src/sound.cpp:57:5
	testq	%rdi, %rdi
	je	.LBB5_5
.Ltmp43:
# %bb.4:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	movq	(%rdi), %rax
	callq	*8(%rax)
.Ltmp44:
.LBB5_5:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	.loc	40 58 12 is_stmt 1      # src/sound.cpp:58:12
	movq	4112(%rbx), %rdi
	.loc	40 58 5 is_stmt 0       # src/sound.cpp:58:5
	testq	%rdi, %rdi
	je	.LBB5_6
.Ltmp45:
# %bb.8:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	movq	(%rdi), %rax
	popq	%rbx
.Ltmp46:
	jmpq	*8(%rax)                # TAILCALL
.Ltmp47:
.LBB5_6:
	#DEBUG_VALUE: ~Sound:this <- %rbx
	.loc	40 59 1 is_stmt 1       # src/sound.cpp:59:1
	popq	%rbx
.Ltmp48:
	retq
.LBB5_7:
.Ltmp49:
	#DEBUG_VALUE: ~Sound:this <- %rbx
.Ltmp38:
	.loc	40 55 14                # src/sound.cpp:55:14
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Ltmp50:
.Lfunc_end5:
	.size	_ZN12ILLIXR_AUDIO5SoundD2Ev, .Lfunc_end5-_ZN12ILLIXR_AUDIO5SoundD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\242\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp36-.Lfunc_begin5   # >> Call Site 1 <<
	.long	.Ltmp37-.Ltmp36         #   Call between .Ltmp36 and .Ltmp37
	.long	.Ltmp38-.Lfunc_begin5   #     jumps to .Ltmp38
	.byte	1                       #   On action: 1
	.long	.Ltmp37-.Lfunc_begin5   # >> Call Site 2 <<
	.long	.Lfunc_end5-.Ltmp37     #   Call between .Ltmp37 and .Lfunc_end5
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_trace_logger.cpp
	.type	_GLOBAL__sub_I_trace_logger.cpp,@function
_GLOBAL__sub_I_trace_logger.cpp:        # @_GLOBAL__sub_I_trace_logger.cpp
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxx_global_var_init
	popq	%rax
	jmp	__cxx_global_var_init.1 # TAILCALL
.Lfunc_end7:
	.size	_GLOBAL__sub_I_trace_logger.cpp, .Lfunc_end7-_GLOBAL__sub_I_trace_logger.cpp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_Z8gz_filesB5cxx11, %edi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev
	movl	$__dtor__Z8gz_filesB5cxx11, %edi
	popq	%rax
	jmp	atexit                  # TAILCALL
.Lfunc_end8:
	.size	__cxx_global_var_init, .Lfunc_end8-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init.1
	.type	__cxx_global_var_init.1,@function
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_Z12labelmap_strB5cxx11, %edi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	movl	$__dtor__Z12labelmap_strB5cxx11, %edi
	popq	%rax
	jmp	atexit                  # TAILCALL
.Lfunc_end9:
	.size	__cxx_global_var_init.1, .Lfunc_end9-__cxx_global_var_init.1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __dtor__Z12labelmap_strB5cxx11
	.type	__dtor__Z12labelmap_strB5cxx11,@function
__dtor__Z12labelmap_strB5cxx11:         # @__dtor__Z12labelmap_strB5cxx11
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:
	movl	$_Z12labelmap_strB5cxx11, %edi
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev # TAILCALL
.Lfunc_end10:
	.size	__dtor__Z12labelmap_strB5cxx11, .Lfunc_end10-__dtor__Z12labelmap_strB5cxx11
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev # TAILCALL
.Lfunc_end11:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev, .Lfunc_end11-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __dtor__Z8gz_filesB5cxx11
	.type	__dtor__Z8gz_filesB5cxx11,@function
__dtor__Z8gz_filesB5cxx11:              # @__dtor__Z8gz_filesB5cxx11
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:
	movl	$_Z8gz_filesB5cxx11, %edi
	jmp	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev # TAILCALL
.Lfunc_end12:
	.size	__dtor__Z8gz_filesB5cxx11, .Lfunc_end12-__dtor__Z8gz_filesB5cxx11
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev # TAILCALL
.Lfunc_end13:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, .Lfunc_end13-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv
.Ltmp51:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
.Ltmp52:
# %bb.1:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev # TAILCALL
.LBB14_2:
.Ltmp53:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev
	movq	%r14, %rdi
	callq	__clang_call_terminate
.Lfunc_end14:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev, .Lfunc_end14-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp51-.Lfunc_begin14  # >> Call Site 1 <<
	.long	.Ltmp52-.Ltmp51         #   Call between .Ltmp51 and .Ltmp52
	.long	.Ltmp53-.Lfunc_begin14  #     jumps to .Ltmp53
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv
.Lfunc_begin15:
	.cfi_startproc
# %bb.0:
	movq	16(%rdi), %rax
	retq
.Lfunc_end15:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv, .Lfunc_end15-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB16_2
	.p2align	4, 0x90
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, %r15
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E
	movq	%r15, %rbx
	testq	%r15, %r15
	jne	.LBB16_1
.LBB16_2:
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end16-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end17:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev, .Lfunc_end17-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
.Lfunc_begin18:
	.cfi_startproc
# %bb.0:
	movq	24(%rdi), %rax
	retq
.Lfunc_end18:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base, .Lfunc_end18-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base
.Lfunc_begin19:
	.cfi_startproc
# %bb.0:
	movq	16(%rdi), %rax
	retq
.Lfunc_end19:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base, .Lfunc_end19-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E
.Lfunc_begin20:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E # TAILCALL
.Lfunc_end20:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E, .Lfunc_end20-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E
.Lfunc_begin21:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_ # TAILCALL
.Lfunc_end21:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E, .Lfunc_end21-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv
.Ltmp54:
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m
.Ltmp55:
# %bb.1:
	popq	%rbx
	retq
.LBB22_2:
.Ltmp56:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end22:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E, .Lfunc_end22-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table22:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp54-.Lfunc_begin22  # >> Call Site 1 <<
	.long	.Ltmp55-.Ltmp54         #   Call between .Ltmp54 and .Ltmp55
	.long	.Ltmp56-.Lfunc_begin22  #     jumps to .Ltmp56
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv
.Lfunc_begin23:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end23:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv, .Lfunc_end23-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m # -- Begin function _ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m,@function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m: # @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m
.Lfunc_begin24:
	.cfi_startproc
# %bb.0:
	jmp	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m # TAILCALL
.Lfunc_end24:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m, .Lfunc_end24-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE10deallocateERSD_PSC_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m
.Lfunc_begin25:
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rdi
	jmp	_ZdlPv                  # TAILCALL
.Lfunc_end25:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m, .Lfunc_end25-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE10deallocateEPSD_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv,"axG",@progbits,_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv,comdat
	.weak	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv # -- Begin function _ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	.p2align	4, 0x90
	.type	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv,@function
_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv: # @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
.Lfunc_begin26:
	.cfi_startproc
# %bb.0:
	addq	$32, %rdi
	jmp	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv # TAILCALL
.Lfunc_end26:
	.size	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv, .Lfunc_end26-_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_ # -- Begin function _ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_,@function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_: # @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_
.Lfunc_begin27:
	.cfi_startproc
# %bb.0:
	jmp	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_ # TAILCALL
.Lfunc_end27:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_, .Lfunc_end27-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE7destroyISB_EEvRSD_PT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_ # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_
.Lfunc_begin28:
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rdi
	jmp	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev # TAILCALL
.Lfunc_end28:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_, .Lfunc_end28-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE7destroyISC_EEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev,"axG",@progbits,_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev,comdat
	.weak	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev # -- Begin function _ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev
	.p2align	4, 0x90
	.type	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev,@function
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev: # @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev
.Lfunc_begin29:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev # TAILCALL
.Lfunc_end29:
	.size	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev, .Lfunc_end29-_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv,@function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv: # @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv
.Lfunc_begin30:
	.cfi_startproc
# %bb.0:
	jmp	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv # TAILCALL
.Lfunc_end30:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv, .Lfunc_end30-_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv,@function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv: # @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv
.Lfunc_begin31:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end31:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv, .Lfunc_end31-_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev
.Lfunc_begin32:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev # TAILCALL
.Lfunc_end32:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev, .Lfunc_end32-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev
.Lfunc_begin33:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev
	movq	%rbx, %rdi
	callq	_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	addq	$8, %rbx
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_ZNSt15_Rb_tree_headerC2Ev # TAILCALL
.Lfunc_end33:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev, .Lfunc_end33-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev # -- Begin function _ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev,@function
_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev: # @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev
.Lfunc_begin34:
	.cfi_startproc
# %bb.0:
	jmp	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev # TAILCALL
.Lfunc_end34:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev, .Lfunc_end34-_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,"axG",@progbits,_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,comdat
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev # -- Begin function _ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,@function
_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev: # @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
.Lfunc_begin35:
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end35:
	.size	_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, .Lfunc_end35-_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15_Rb_tree_headerC2Ev,"axG",@progbits,_ZNSt15_Rb_tree_headerC2Ev,comdat
	.weak	_ZNSt15_Rb_tree_headerC2Ev # -- Begin function _ZNSt15_Rb_tree_headerC2Ev
	.p2align	4, 0x90
	.type	_ZNSt15_Rb_tree_headerC2Ev,@function
_ZNSt15_Rb_tree_headerC2Ev:             # @_ZNSt15_Rb_tree_headerC2Ev
.Lfunc_begin36:
	.cfi_startproc
# %bb.0:
	movl	$0, (%rdi)
	jmp	_ZNSt15_Rb_tree_header8_M_resetEv # TAILCALL
.Lfunc_end36:
	.size	_ZNSt15_Rb_tree_headerC2Ev, .Lfunc_end36-_ZNSt15_Rb_tree_headerC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15_Rb_tree_header8_M_resetEv,"axG",@progbits,_ZNSt15_Rb_tree_header8_M_resetEv,comdat
	.weak	_ZNSt15_Rb_tree_header8_M_resetEv # -- Begin function _ZNSt15_Rb_tree_header8_M_resetEv
	.p2align	4, 0x90
	.type	_ZNSt15_Rb_tree_header8_M_resetEv,@function
_ZNSt15_Rb_tree_header8_M_resetEv:      # @_ZNSt15_Rb_tree_header8_M_resetEv
.Lfunc_begin37:
	.cfi_startproc
# %bb.0:
	movq	$0, 8(%rdi)
	movq	%rdi, 16(%rdi)
	movq	%rdi, 24(%rdi)
	movq	$0, 32(%rdi)
	retq
.Lfunc_end37:
	.size	_ZNSt15_Rb_tree_header8_M_resetEv, .Lfunc_end37-_ZNSt15_Rb_tree_header8_M_resetEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev
.Lfunc_begin38:
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end38:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev, .Lfunc_end38-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z12create_tracePKc     # -- Begin function _Z12create_tracePKc
	.p2align	4, 0x90
	.type	_Z12create_tracePKc,@function
_Z12create_tracePKc:                    # @_Z12create_tracePKc
.Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	jne	.LBB39_4
# %bb.1:
	movl	$88, %edi
	callq	_Znwm
	movq	%rax, %rbx
.Ltmp57:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZN10trace_infoC2EPKc
.Ltmp58:
# %bb.2:
	callq	_ZTW5trace
	movq	%rbx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB39_4:
	movl	$.L.str.3, %edi
	movl	$.L.str.4, %esi
	movl	$10, %edx
	movl	$.L__PRETTY_FUNCTION__._Z12create_tracePKc, %ecx
	callq	__assert_fail
.LBB39_3:
.Ltmp59:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.Lfunc_end39:
	.size	_Z12create_tracePKc, .Lfunc_end39-_Z12create_tracePKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table39:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin39-.Lfunc_begin39 # >> Call Site 1 <<
	.long	.Ltmp57-.Lfunc_begin39  #   Call between .Lfunc_begin39 and .Ltmp57
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp57-.Lfunc_begin39  # >> Call Site 2 <<
	.long	.Ltmp58-.Ltmp57         #   Call between .Ltmp57 and .Ltmp58
	.long	.Ltmp59-.Lfunc_begin39  #     jumps to .Ltmp59
	.byte	0                       #   On action: cleanup
	.long	.Ltmp58-.Lfunc_begin39  # >> Call Site 3 <<
	.long	.Lfunc_end39-.Ltmp58    #   Call between .Ltmp58 and .Lfunc_end39
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.text
	.hidden	_ZTW5trace              # -- Begin function _ZTW5trace
	.weak	_ZTW5trace
	.p2align	4, 0x90
	.type	_ZTW5trace,@function
_ZTW5trace:                             # @_ZTW5trace
.Lfunc_begin40:
	.cfi_startproc
# %bb.0:
	movq	%fs:0, %rax
	leaq	trace@TPOFF(%rax), %rax
	retq
.Lfunc_end40:
	.size	_ZTW5trace, .Lfunc_end40-_ZTW5trace
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10trace_infoC2EPKc,"axG",@progbits,_ZN10trace_infoC2EPKc,comdat
	.weak	_ZN10trace_infoC2EPKc   # -- Begin function _ZN10trace_infoC2EPKc
	.p2align	4, 0x90
	.type	_ZN10trace_infoC2EPKc,@function
_ZN10trace_infoC2EPKc:                  # @_ZN10trace_infoC2EPKc
.Lfunc_begin41:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	callq	_ZNSaIcEC2Ev
.Ltmp60:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_
.Ltmp61:
# %bb.1:
	leaq	8(%rsp), %rdi
	callq	_ZNSaIcED2Ev
	movq	$0, 40(%rbx)
	leaq	48(%rbx), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev
	movl	$1, 80(%rbx)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB41_2:
.Ltmp62:
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	callq	_ZNSaIcED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Lfunc_end41:
	.size	_ZN10trace_infoC2EPKc, .Lfunc_end41-_ZN10trace_infoC2EPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table41:
.Lexception5:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp60-.Lfunc_begin41  # >> Call Site 1 <<
	.long	.Ltmp61-.Ltmp60         #   Call between .Ltmp60 and .Ltmp61
	.long	.Ltmp62-.Lfunc_begin41  #     jumps to .Ltmp62
	.byte	0                       #   On action: cleanup
	.long	.Ltmp61-.Lfunc_begin41  # >> Call Site 2 <<
	.long	.Lfunc_end41-.Ltmp61    #   Call between .Ltmp61 and .Lfunc_end41
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z14write_labelmapv     # -- Begin function _Z14write_labelmapv
	.p2align	4, 0x90
	.type	_Z14write_labelmapv,@function
_Z14write_labelmapv:                    # @_Z14write_labelmapv
.Lfunc_begin42:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %rbx
	movl	$.L.str.5, %esi
	movl	$26, %edx
	movq	%rbx, %rdi
	callq	gzwrite
	movl	$_Z12labelmap_strB5cxx11, %edi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, %r14
	movl	$_Z12labelmap_strB5cxx11, %edi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	gzwrite
	movl	$.L.str.6, %esi
	movl	$25, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gzwrite                 # TAILCALL
.Lfunc_end42:
	.size	_Z14write_labelmapv, .Lfunc_end42-_Z14write_labelmapv
	.cfi_endproc
                                        # -- End function
	.globl	_Z15open_trace_filev    # -- Begin function _Z15open_trace_filev
	.p2align	4, 0x90
	.type	_Z15open_trace_filev,@function
_Z15open_trace_filev:                   # @_Z15open_trace_filev
.Lfunc_begin43:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	$lock, %edi
	callq	pthread_mutex_lock
	callq	_ZTW5trace
	movq	(%rax), %rsi
	movl	$_Z8gz_filesB5cxx11, %edi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_
	movq	%rax, 8(%rsp)
	movl	$_Z8gz_filesB5cxx11, %edi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
	movq	%rax, (%rsp)
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	callq	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	movl	%eax, %ebx
	callq	_ZTW5trace
	movq	(%rax), %rax
	testb	%bl, %bl
	je	.LBB43_2
# %bb.1:
	movl	$_Z8gz_filesB5cxx11, %edi
	movq	%rax, %rsi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
	movq	(%rax), %rbx
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	%rbx, 32(%rax)
	jmp	.LBB43_4
.LBB43_2:
	movq	%rax, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movl	$.L.str.7, %esi
	movq	%rax, %rdi
	callq	gzopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB43_5
# %bb.3:
	callq	_ZTW5trace
	movq	(%rax), %rsi
	movl	$_Z8gz_filesB5cxx11, %edi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
	movq	%rbx, (%rax)
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	%rbx, 32(%rax)
	callq	_Z14write_labelmapv
.LBB43_4:
	movl	$lock, %edi
	callq	pthread_mutex_unlock
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB43_5:
	movl	$.L.str.8, %edi
	callq	perror
	movl	$-1, %edi
	callq	exit
.Lfunc_end43:
	.size	_Z15open_trace_filev, .Lfunc_end43-_Z15open_trace_filev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_
.Lfunc_begin44:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_ # TAILCALL
.Lfunc_end44:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_, .Lfunc_end44-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
.Lfunc_begin45:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv # TAILCALL
.Lfunc_end45:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv, .Lfunc_end45-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_,"axG",@progbits,_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_,comdat
	.weak	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_ # -- Begin function _ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	.p2align	4, 0x90
	.type	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_,@function
_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_: # @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
.Lfunc_begin46:
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	setne	%al
	retq
.Lfunc_end46:
	.size	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_, .Lfunc_end46-_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
.Lfunc_begin47:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_
	movq	%rax, 8(%rsp)
	movq	%rbx, %rdi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
	movq	%rax, 16(%rsp)
	leaq	8(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	testb	%al, %al
	jne	.LBB47_3
# %bb.1:
	movq	%rbx, %rdi
	callq	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv
	leaq	8(%rsp), %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv
	movq	%rsp, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	jne	.LBB47_3
# %bb.2:
	leaq	8(%rsp), %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv
	addq	$32, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB47_3:
	movl	$.L.str.36, %edi
	callq	_ZSt20__throw_out_of_rangePKc
.Lfunc_end47:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_, .Lfunc_end47-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
.Lfunc_begin48:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
	movq	%rax, 32(%rsp)
	leaq	24(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	testb	%al, %al
	jne	.LBB48_2
# %bb.1:
	movq	%rbx, %rdi
	callq	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv
	leaq	24(%rsp), %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB48_3
.LBB48_2:
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E
	leaq	32(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_
	movq	40(%rsp), %rsi
	leaq	8(%rsp), %r8
	movl	$_ZStL19piecewise_construct, %edx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	movq	%rax, 24(%rsp)
.LBB48_3:
	leaq	24(%rsp), %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv
	addq	$32, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end48:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, .Lfunc_end48-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_
.Lfunc_begin49:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_ # TAILCALL
.Lfunc_end49:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_, .Lfunc_end49-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_,"axG",@progbits,_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_,comdat
	.weak	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_ # -- Begin function _ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	.p2align	4, 0x90
	.type	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_,@function
_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_: # @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
.Lfunc_begin50:
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	sete	%al
	retq
.Lfunc_end50:
	.size	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_, .Lfunc_end50-_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv,"axG",@progbits,_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv,comdat
	.weak	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv # -- Begin function _ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv
	.p2align	4, 0x90
	.type	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv,@function
_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv: # @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv
.Lfunc_begin51:
	.cfi_startproc
# %bb.0:
	jmp	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv # TAILCALL
.Lfunc_end51:
	.size	_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv, .Lfunc_end51-_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv # -- Begin function _ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv
	.p2align	4, 0x90
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv,@function
_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv: # @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv
.Lfunc_begin52:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	popq	%rcx
	retq
.Lfunc_end52:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv, .Lfunc_end52-_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEdeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_,"axG",@progbits,_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_,comdat
	.weak	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ # -- Begin function _ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	.p2align	4, 0x90
	.type	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_,@function
_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_: # @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
.Lfunc_begin53:
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	jmp	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ # TAILCALL
.Lfunc_end53:
	.size	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, .Lfunc_end53-_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E # -- Begin function _ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E
	.p2align	4, 0x90
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E,@function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E: # @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E
.Lfunc_begin54:
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	retq
.Lfunc_end54:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E, .Lfunc_end54-_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2ERKSt17_Rb_tree_iteratorISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_,"axG",@progbits,_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_,comdat
	.weak	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_ # -- Begin function _ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_
	.p2align	4, 0x90
	.type	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_,@function
_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_: # @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_
.Lfunc_begin55:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_ # TAILCALL
.Lfunc_end55:
	.size	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_, .Lfunc_end55-_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
.Lfunc_begin56:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rdx, %rdi
	callq	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_
	movq	%rax, %r14
.Ltmp63:
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E
.Ltmp64:
# %bb.1:
.Ltmp65:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	movq	%rax, %rbx
.Ltmp66:
# %bb.2:
	testq	%rdx, %rdx
	je	.LBB56_5
# %bb.3:
.Ltmp67:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E
.Ltmp68:
# %bb.4:
	movq	%rax, 8(%rsp)
	jmp	.LBB56_6
.LBB56_5:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	movq	8(%rsp), %rax
.LBB56_6:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB56_10:
.Ltmp69:
	movq	%rax, %rdi
	callq	__cxa_begin_catch
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E
.Ltmp70:
	callq	__cxa_rethrow
.Ltmp71:
# %bb.11:
.LBB56_7:
.Ltmp72:
	movq	%rax, %rbx
.Ltmp73:
	callq	__cxa_end_catch
.Ltmp74:
# %bb.8:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB56_9:
.Ltmp75:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end56:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, .Lfunc_end56-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table56:
.Lexception6:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\326\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Lfunc_begin56-.Lfunc_begin56 # >> Call Site 1 <<
	.long	.Ltmp63-.Lfunc_begin56  #   Call between .Lfunc_begin56 and .Ltmp63
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp63-.Lfunc_begin56  # >> Call Site 2 <<
	.long	.Ltmp68-.Ltmp63         #   Call between .Ltmp63 and .Ltmp68
	.long	.Ltmp69-.Lfunc_begin56  #     jumps to .Ltmp69
	.byte	1                       #   On action: 1
	.long	.Ltmp68-.Lfunc_begin56  # >> Call Site 3 <<
	.long	.Ltmp70-.Ltmp68         #   Call between .Ltmp68 and .Ltmp70
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp70-.Lfunc_begin56  # >> Call Site 4 <<
	.long	.Ltmp71-.Ltmp70         #   Call between .Ltmp70 and .Ltmp71
	.long	.Ltmp72-.Lfunc_begin56  #     jumps to .Ltmp72
	.byte	0                       #   On action: cleanup
	.long	.Ltmp73-.Lfunc_begin56  # >> Call Site 5 <<
	.long	.Ltmp74-.Ltmp73         #   Call between .Ltmp73 and .Ltmp74
	.long	.Ltmp75-.Lfunc_begin56  #     jumps to .Ltmp75
	.byte	1                       #   On action: 1
	.long	.Ltmp74-.Lfunc_begin56  # >> Call Site 6 <<
	.long	.Lfunc_end56-.Ltmp74    #   Call between .Ltmp74 and .Lfunc_end56
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE # -- Begin function _ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE,@function
_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE: # @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
.Lfunc_begin57:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end57:
	.size	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE, .Lfunc_end57-_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE,"axG",@progbits,_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE,comdat
	.weak	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE # -- Begin function _ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE,@function
_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE: # @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
.Lfunc_begin58:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end58:
	.size	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE, .Lfunc_end58-_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE # -- Begin function _ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE,@function
_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE: # @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
.Lfunc_begin59:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end59:
	.size	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE, .Lfunc_end59-_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin60:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv
	movq	%rax, %r13
	movq	%r12, %rdi
	callq	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r12
	movq	%r15, %rdi
	callq	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%rax, %r8
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	movq	%r13, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end60:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end60-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E
.Lfunc_begin61:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	movq	%rsp, %rdi
	movq	%rax, %rsi
	callq	_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_
	popq	%rcx
	retq
.Lfunc_end61:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E, .Lfunc_end61-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
.Lfunc_begin62:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	%rsi, 40(%rsp)
	leaq	40(%rsp), %rdi
	callq	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv
	movq	%rax, %rbx
	movq	%rbx, 32(%rsp)
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
	cmpq	%rax, %rbx
	je	.LBB62_6
# %bb.1:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB62_9
# %bb.2:
	movq	%rbx, (%rsp)
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv
	cmpq	%rbx, (%rax)
	je	.LBB62_17
# %bb.3:
	movq	%rsp, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv
	movq	(%rax), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB62_15
# %bb.4:
	movq	(%rsp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	je	.LBB62_22
# %bb.5:
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	jmp	.LBB62_14
.LBB62_6:
	movq	%r15, %rdi
	callq	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv
	testq	%rax, %rax
	je	.LBB62_15
# %bb.7:
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv
	movq	(%rax), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB62_15
# %bb.8:
	movq	$0, (%rsp)
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	jmp	.LBB62_19
.LBB62_9:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB62_16
# %bb.10:
	movq	32(%rsp), %rbx
	movq	%rbx, (%rsp)
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv
	cmpq	%rbx, (%rax)
	je	.LBB62_18
# %bb.11:
	movq	%rsp, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv
	movq	(%rax), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB62_15
# %bb.12:
	movq	32(%rsp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	je	.LBB62_23
# %bb.13:
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
.LBB62_14:
	movq	%rsi, %rdx
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	jmp	.LBB62_21
.LBB62_15:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	movq	%rax, 8(%rsp)
	movq	%rdx, 16(%rsp)
	jmp	.LBB62_21
.LBB62_16:
	movq	$0, (%rsp)
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%rsp, %rdx
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	jmp	.LBB62_21
.LBB62_17:
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	jmp	.LBB62_21
.LBB62_18:
	movq	$0, 24(%rsp)
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv
	leaq	8(%rsp), %rdi
	leaq	24(%rsp), %rsi
.LBB62_19:
	movq	%rax, %rdx
.LBB62_20:
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_
.LBB62_21:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB62_22:
	movq	$0, 24(%rsp)
	leaq	8(%rsp), %rdi
	leaq	24(%rsp), %rsi
	movq	%rsp, %rdx
	jmp	.LBB62_20
.LBB62_23:
	movq	$0, 24(%rsp)
	leaq	8(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	32(%rsp), %rdx
	jmp	.LBB62_20
.Lfunc_end62:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end62-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E
.Lfunc_begin63:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movb	$1, %bpl
	testq	%rsi, %rsi
	jne	.LBB63_3
# %bb.1:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
	cmpq	%r15, %rax
	je	.LBB63_3
# %bb.2:
	movq	%r14, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E
	movq	%rax, %rbp
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	movl	%eax, %ebp
.LBB63_3:
	leaq	8(%rbx), %rcx
	movzbl	%bpl, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	addq	$1, 40(%rbx)
	movq	%rsp, %rdi
	movq	%r14, %rsi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	movq	(%rsp), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E, .Lfunc_end63-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base # -- Begin function _ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	.p2align	4, 0x90
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base,@function
_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base: # @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
.Lfunc_begin64:
	.cfi_startproc
# %bb.0:
	movq	%rsi, (%rdi)
	retq
.Lfunc_end64:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base, .Lfunc_end64-_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
.Lfunc_begin65:
	.cfi_startproc
# %bb.0:
	leaq	8(%rdi), %rax
	retq
.Lfunc_end65:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv, .Lfunc_end65-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
.Lfunc_begin66:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E # TAILCALL
.Lfunc_end66:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base, .Lfunc_end66-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv,comdat
	.weak	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv # -- Begin function _ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv
	.p2align	4, 0x90
	.type	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv,@function
_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv: # @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv
.Lfunc_begin67:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rsi
	movq	%rsp, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	movq	(%rsp), %rax
	popq	%rcx
	retq
.Lfunc_end67:
	.size	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv, .Lfunc_end67-_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE13_M_const_castEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv,"axG",@progbits,_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv,comdat
	.weak	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv # -- Begin function _ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv,@function
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv: # @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv
.Lfunc_begin68:
	.cfi_startproc
# %bb.0:
	movq	40(%rdi), %rax
	retq
.Lfunc_end68:
	.size	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv, .Lfunc_end68-_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv
.Lfunc_begin69:
	.cfi_startproc
# %bb.0:
	leaq	32(%rdi), %rax
	retq
.Lfunc_end69:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv, .Lfunc_end69-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_,comdat
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_ # -- Begin function _ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_
	.p2align	4, 0x90
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_,@function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_: # @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_
.Lfunc_begin70:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	movq	%rax, (%rbx)
	movq	%rdx, %rdi
	callq	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, 8(%rbx)
	popq	%rbx
	retq
.Lfunc_end70:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_, .Lfunc_end70-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
.Lfunc_begin71:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv
	movq	%rax, %rbp
	movq	%rbp, 24(%rsp)
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
	movq	%rax, 16(%rsp)
	testq	%rbp, %rbp
	je	.LBB71_1
	.p2align	4, 0x90
.LBB71_2:                               # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	movl	%eax, %r12d
	movq	%rbx, %rdi
	testb	%r12b, %r12b
	je	.LBB71_4
# %bb.3:                                #   in Loop: Header=BB71_2 Depth=1
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base
	jmp	.LBB71_5
	.p2align	4, 0x90
.LBB71_4:                               #   in Loop: Header=BB71_2 Depth=1
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
.LBB71_5:                               #   in Loop: Header=BB71_2 Depth=1
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB71_2
# %bb.6:
	movq	%rbp, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	testb	%r12b, %r12b
	jne	.LBB71_7
	jmp	.LBB71_10
.LBB71_1:
	movq	%rsp, %rdi
	movq	%rax, %rsi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
.LBB71_7:
	movq	%r15, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv
	movq	%rax, 8(%rsp)
	movq	%rsp, %rdi
	leaq	8(%rsp), %rsi
	callq	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	testb	%al, %al
	jne	.LBB71_8
# %bb.9:
	movq	%rsp, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv
.LBB71_10:
	movq	(%rsp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB71_11
.LBB71_8:
	leaq	32(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_
	jmp	.LBB71_12
.LBB71_11:
	movq	$0, 8(%rsp)
	leaq	32(%rsp), %rdi
	movq	%rsp, %rsi
	leaq	8(%rsp), %rdx
	callq	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
.LBB71_12:
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdx
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end71-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv
.Lfunc_begin72:
	.cfi_startproc
# %bb.0:
	leaq	24(%rdi), %rax
	retq
.Lfunc_end72:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv, .Lfunc_end72-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_,comdat
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_ # -- Begin function _ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.p2align	4, 0x90
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_,@function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_: # @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
.Lfunc_begin73:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%r14, %rdi
	callq	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end73:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_, .Lfunc_end73-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv # -- Begin function _ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv
	.p2align	4, 0x90
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv,@function
_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv: # @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv
.Lfunc_begin74:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end74:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv, .Lfunc_end74-_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEmmEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv # -- Begin function _ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv
	.p2align	4, 0x90
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv,@function
_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv: # @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv
.Lfunc_begin75:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	movq	%rax, (%rbx)
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end75:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv, .Lfunc_end75-_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_,comdat
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_ # -- Begin function _ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.p2align	4, 0x90
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_,@function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_: # @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
.Lfunc_begin76:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	(%r14), %rax
	movq	%rax, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end76:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_, .Lfunc_end76-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE # -- Begin function _ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,@function
_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE: # @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
.Lfunc_begin77:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end77:
	.size	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, .Lfunc_end77-_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv
.Lfunc_begin78:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	24(%rdi), %rsi
	movq	%rsp, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	movq	(%rsp), %rax
	popq	%rcx
	retq
.Lfunc_end78:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv, .Lfunc_end78-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_,comdat
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_ # -- Begin function _ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_
	.p2align	4, 0x90
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_,@function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_: # @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_
.Lfunc_begin79:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%r14, %rdi
	callq	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end79:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_, .Lfunc_end79-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEERS1_Lb1EEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE # -- Begin function _ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE,@function
_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE: # @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE
.Lfunc_begin80:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end80:
	.size	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE, .Lfunc_end80-_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEOT_RNSt16remove_referenceISF_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv,"axG",@progbits,_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv,comdat
	.weak	_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv # -- Begin function _ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	.p2align	4, 0x90
	.type	_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv,@function
_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv: # @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
.Lfunc_begin81:
	.cfi_startproc
# %bb.0:
	addq	$32, %rdi
	jmp	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv # TAILCALL
.Lfunc_end81:
	.size	_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv, .Lfunc_end81-_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_,"axG",@progbits,_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_,comdat
	.weak	_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_ # -- Begin function _ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_
	.p2align	4, 0x90
	.type	_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_,@function
_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_: # @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_
.Lfunc_begin82:
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rax
	retq
.Lfunc_end82:
	.size	_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_, .Lfunc_end82-_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEclERKSA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv,comdat
	.weak	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv # -- Begin function _ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv,@function
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv: # @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv
.Lfunc_begin83:
	.cfi_startproc
# %bb.0:
	jmp	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv # TAILCALL
.Lfunc_end83:
	.size	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv, .Lfunc_end83-_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv,comdat
	.weak	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv # -- Begin function _ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv,@function
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv: # @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv
.Lfunc_begin84:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end84:
	.size	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv, .Lfunc_end84-_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv
.Lfunc_begin85:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv
	movl	$1, %esi
	movq	%rax, %rdi
	popq	%rax
	jmp	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m # TAILCALL
.Lfunc_end85:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv, .Lfunc_end85-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin86:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv
	movq	%rax, %r15
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	callq	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
	movq	%rax, %rbp
	movq	%r12, %rdi
	callq	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
.Ltmp76:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movq	%rax, %r8
	callq	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_
.Ltmp77:
# %bb.1:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB86_5:
.Ltmp78:
	movq	%rax, %rdi
	callq	__cxa_begin_catch
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E
.Ltmp79:
	callq	__cxa_rethrow
.Ltmp80:
# %bb.6:
.LBB86_2:
.Ltmp81:
	movq	%rax, %rbx
.Ltmp82:
	callq	__cxa_end_catch
.Ltmp83:
# %bb.3:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB86_4:
.Ltmp84:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end86:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end86-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table86:
.Lexception7:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp76-.Lfunc_begin86  # >> Call Site 1 <<
	.long	.Ltmp77-.Ltmp76         #   Call between .Ltmp76 and .Ltmp77
	.long	.Ltmp78-.Lfunc_begin86  #     jumps to .Ltmp78
	.byte	1                       #   On action: 1
	.long	.Ltmp77-.Lfunc_begin86  # >> Call Site 2 <<
	.long	.Ltmp79-.Ltmp77         #   Call between .Ltmp77 and .Ltmp79
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp79-.Lfunc_begin86  # >> Call Site 3 <<
	.long	.Ltmp80-.Ltmp79         #   Call between .Ltmp79 and .Ltmp80
	.long	.Ltmp81-.Lfunc_begin86  #     jumps to .Ltmp81
	.byte	0                       #   On action: cleanup
	.long	.Ltmp82-.Lfunc_begin86  # >> Call Site 4 <<
	.long	.Ltmp83-.Ltmp82         #   Call between .Ltmp82 and .Ltmp83
	.long	.Ltmp84-.Lfunc_begin86  #     jumps to .Ltmp84
	.byte	1                       #   On action: 1
	.long	.Ltmp83-.Lfunc_begin86  # >> Call Site 5 <<
	.long	.Lfunc_end86-.Ltmp83    #   Call between .Ltmp83 and .Lfunc_end86
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_: # @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_
.Lfunc_begin87:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rdx, %rdi
	callq	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	%rax, %r8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_ # TAILCALL
.Lfunc_end87:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_, .Lfunc_end87-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_
.Lfunc_begin88:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rsi, %r15
	movq	%rdx, %rdi
	callq	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rbx, %rdi
	callq	_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_
	movq	%r14, %rdi
	callq	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end88:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_, .Lfunc_end88-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_,"axG",@progbits,_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_,comdat
	.weak	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ # -- Begin function _ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_
	.p2align	4, 0x90
	.type	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_,@function
_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_: # @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_
.Lfunc_begin89:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ # TAILCALL
.Lfunc_end89:
	.size	_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_, .Lfunc_end89-_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE,"axG",@progbits,_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE,comdat
	.weak	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE # -- Begin function _ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE
	.p2align	4, 0x90
	.type	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE,@function
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE: # @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE
.Lfunc_begin90:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsp, %rdx
	callq	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE
	popq	%rax
	retq
.Lfunc_end90:
	.size	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE, .Lfunc_end90-_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE,"axG",@progbits,_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE,comdat
	.weak	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE # -- Begin function _ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE
	.p2align	4, 0x90
	.type	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE,@function
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE: # @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE
.Lfunc_begin91:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_
	movq	%rax, %rdi
	callq	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_
	movq	$0, 32(%rbx)
	popq	%rbx
	retq
.Lfunc_end91:
	.size	_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE, .Lfunc_end91-_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_,"axG",@progbits,_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_,comdat
	.weak	_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_ # -- Begin function _ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_
	.p2align	4, 0x90
	.type	_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_,@function
_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_: # @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_
.Lfunc_begin92:
	.cfi_startproc
# %bb.0:
	jmp	_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE # TAILCALL
.Lfunc_end92:
	.size	_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_, .Lfunc_end92-_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.weak	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE # -- Begin function _ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE,@function
_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE: # @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
.Lfunc_begin93:
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end93:
	.size	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE, .Lfunc_end93-_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE # -- Begin function _ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE
	.p2align	4, 0x90
	.type	_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE,@function
_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE: # @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE
.Lfunc_begin94:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_ # TAILCALL
.Lfunc_end94:
	.size	_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE, .Lfunc_end94-_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_ # -- Begin function _ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_
	.p2align	4, 0x90
	.type	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_,@function
_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_: # @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_
.Lfunc_begin95:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_ # TAILCALL
.Lfunc_end95:
	.size	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_, .Lfunc_end95-_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_,"axG",@progbits,_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_,comdat
	.weak	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_ # -- Begin function _ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_
	.p2align	4, 0x90
	.type	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_,@function
_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_: # @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_
.Lfunc_begin96:
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	retq
.Lfunc_end96:
	.size	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_, .Lfunc_end96-_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ # -- Begin function _ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_
	.p2align	4, 0x90
	.type	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_,@function
_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_: # @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_
.Lfunc_begin97:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_
	movq	%rax, %rdi
	callq	_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rbx, %rdi
	movq	%rax, %rsi
	popq	%rbx
	jmp	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_ # TAILCALL
.Lfunc_end97:
	.size	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_, .Lfunc_end97-_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_,"axG",@progbits,_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_,comdat
	.weak	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_ # -- Begin function _ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_
	.p2align	4, 0x90
	.type	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_,@function
_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_: # @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_
.Lfunc_begin98:
	.cfi_startproc
# %bb.0:
	movq	%rsi, (%rdi)
	retq
.Lfunc_end98:
	.size	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_, .Lfunc_end98-_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m # -- Begin function _ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m,@function
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m: # @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m
.Lfunc_begin99:
	.cfi_startproc
# %bb.0:
	xorl	%edx, %edx
	jmp	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv # TAILCALL
.Lfunc_end99:
	.size	_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m, .Lfunc_end99-_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEEE8allocateERSD_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv
.Lfunc_begin100:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv
	cmpq	%rbx, %rax
	jb	.LBB100_1
# %bb.2:
	shlq	$3, %rbx
	leaq	(%rbx,%rbx,8), %rdi
	popq	%rbx
	jmp	_Znwm                   # TAILCALL
.LBB100_1:
	callq	_ZSt17__throw_bad_allocv
.Lfunc_end100:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv, .Lfunc_end100-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv
.Lfunc_begin101:
	.cfi_startproc
# %bb.0:
	movabsq	$128102389400760775, %rax # imm = 0x1C71C71C71C71C7
	retq
.Lfunc_end101:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv, .Lfunc_end101-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_ # -- Begin function _ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_
	.p2align	4, 0x90
	.type	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_,@function
_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_: # @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_
.Lfunc_begin102:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_ # TAILCALL
.Lfunc_end102:
	.size	_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_, .Lfunc_end102-_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,"axG",@progbits,_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,comdat
	.weak	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ # -- Begin function _ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.p2align	4, 0x90
	.type	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,@function
_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_: # @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
.Lfunc_begin103:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp85:
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_
.Ltmp86:
# %bb.1:
	shrl	$31, %eax
                                        # kill: def %al killed %al killed %eax
	popq	%rcx
	retq
.LBB103_2:
.Ltmp87:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end103:
	.size	_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, .Lfunc_end103-_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table103:
.Lexception8:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp85-.Lfunc_begin103 # >> Call Site 1 <<
	.long	.Ltmp86-.Ltmp85         #   Call between .Ltmp85 and .Ltmp86
	.long	.Ltmp87-.Lfunc_begin103 #     jumps to .Ltmp87
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv,"axG",@progbits,_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv,comdat
	.weak	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv # -- Begin function _ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv
	.p2align	4, 0x90
	.type	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv,@function
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv: # @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv
.Lfunc_begin104:
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end104:
	.size	_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv, .Lfunc_end104-_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_
.Lfunc_begin105:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_ # TAILCALL
.Lfunc_end105:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_, .Lfunc_end105-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_
.Lfunc_begin106:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%rbx, %rbx
	jne	.LBB106_2
	jmp	.LBB106_6
	.p2align	4, 0x90
.LBB106_3:                              #   in Loop: Header=BB106_2 Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rbx, %r14
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB106_6
.LBB106_2:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB106_3
# %bb.4:                                #   in Loop: Header=BB106_2 Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB106_2
.LBB106_6:
	movq	%rsp, %rdi
	movq	%r14, %rsi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	movq	(%rsp), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end106:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_, .Lfunc_end106-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv
.Lfunc_begin107:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	8(%rdi), %rsi
	movq	%rsp, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEC2EPSt18_Rb_tree_node_base
	movq	(%rsp), %rax
	popq	%rcx
	retq
.Lfunc_end107:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv, .Lfunc_end107-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_
	.p2align	4, 0x90
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_
.Lfunc_begin108:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv
	movq	%rax, 8(%rsp)
	movq	%rsp, %rdi
	leaq	8(%rsp), %rsi
	callq	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	testb	%al, %al
	jne	.LBB108_2
# %bb.1:
	movq	(%rsp), %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_
	testb	%al, %al
	je	.LBB108_3
.LBB108_2:
	movq	%rbx, %rdi
	callq	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv
	jmp	.LBB108_4
.LBB108_3:
	movq	(%rsp), %rax
.LBB108_4:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end108:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, .Lfunc_end108-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	trace_logger_register_labelmap # -- Begin function trace_logger_register_labelmap
	.p2align	4, 0x90
	.type	trace_logger_register_labelmap,@function
trace_logger_register_labelmap:         # @trace_logger_register_labelmap
.Lfunc_begin109:
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movl	$_Z12labelmap_strB5cxx11, %edi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm # TAILCALL
.Lfunc_end109:
	.size	trace_logger_register_labelmap, .Lfunc_end109-trace_logger_register_labelmap
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_init       # -- Begin function trace_logger_init
	.p2align	4, 0x90
	.type	trace_logger_init,@function
trace_logger_init:                      # @trace_logger_init
.Lfunc_begin110:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$lock, %edi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	testl	%eax, %eax
	jne	.LBB110_1
# %bb.2:
	movq	default_trace_name(%rip), %rdi
	callq	_Z12create_tracePKc
	movl	$_Z8fin_mainv, %edi
	popq	%rax
	jmp	atexit                  # TAILCALL
.LBB110_1:
	movl	$.L.str.9, %edi
	callq	perror
	movl	$-1, %edi
	callq	exit
.Lfunc_end110:
	.size	trace_logger_init, .Lfunc_end110-trace_logger_init
	.cfi_endproc
                                        # -- End function
	.globl	_Z8fin_mainv            # -- Begin function _Z8fin_mainv
	.p2align	4, 0x90
	.type	_Z8fin_mainv,@function
_Z8fin_mainv:                           # @_Z8fin_mainv
.Lfunc_begin111:
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB111_2
# %bb.1:
	callq	_Z12fin_toplevelv
.LBB111_2:
	movl	$_Z8gz_filesB5cxx11, %edi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv
	movq	%rax, 16(%rsp)
	movl	$_Z8gz_filesB5cxx11, %edi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	testb	%al, %al
	je	.LBB111_5
# %bb.3:
	leaq	16(%rsp), %rbx
	leaq	8(%rsp), %r14
	.p2align	4, 0x90
.LBB111_4:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv
	movq	32(%rax), %rdi
	callq	gzclose
	movq	%rbx, %rdi
	callq	_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEppEv
	movl	$_Z8gz_filesB5cxx11, %edi
	callq	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv
	movq	%rax, 8(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEESD_
	testb	%al, %al
	jne	.LBB111_4
.LBB111_5:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end111:
	.size	_Z8fin_mainv, .Lfunc_end111-_Z8fin_mainv
	.cfi_endproc
                                        # -- End function
	.globl	_Z12fin_toplevelv       # -- Begin function _Z12fin_toplevelv
	.p2align	4, 0x90
	.type	_Z12fin_toplevelv,@function
_Z12fin_toplevelv:                      # @_Z12fin_toplevelv
.Lfunc_begin112:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	callq	_ZTW5trace
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB112_2
# %bb.1:
	movq	%rbx, %rdi
	callq	_ZN10trace_infoD2Ev
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB112_2:
	callq	_ZTW5trace
	movq	$0, (%rax)
	popq	%rbx
	retq
.Lfunc_end112:
	.size	_Z12fin_toplevelv, .Lfunc_end112-_Z12fin_toplevelv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv
.Lfunc_begin113:
	.cfi_startproc
# %bb.0:
	jmp	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P8gzFile_sESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv # TAILCALL
.Lfunc_end113:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv, .Lfunc_end113-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sSt4lessIS5_ESaISt4pairIKS5_S7_EEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv # -- Begin function _ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv
	.p2align	4, 0x90
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv,@function
_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv: # @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv
.Lfunc_begin114:
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdi
	jmp	_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEE9_M_valptrEv # TAILCALL
.Lfunc_end114:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv, .Lfunc_end114-_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP8gzFile_sEEptEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10trace_infoD2Ev,"axG",@progbits,_ZN10trace_infoD2Ev,comdat
	.weak	_ZN10trace_infoD2Ev     # -- Begin function _ZN10trace_infoD2Ev
	.p2align	4, 0x90
	.type	_ZN10trace_infoD2Ev,@function
_ZN10trace_infoD2Ev:                    # @_ZN10trace_infoD2Ev
.Lfunc_begin115:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	48(%rbx), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev # TAILCALL
.Lfunc_end115:
	.size	_ZN10trace_infoD2Ev, .Lfunc_end115-_ZN10trace_infoD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	llvmtracer_set_trace_name # -- Begin function llvmtracer_set_trace_name
	.p2align	4, 0x90
	.type	llvmtracer_set_trace_name,@function
llvmtracer_set_trace_name:              # @llvmtracer_set_trace_name
.Lfunc_begin116:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB116_1
# %bb.2:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc # TAILCALL
.LBB116_1:
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_Z12create_tracePKc     # TAILCALL
.Lfunc_end116:
	.size	llvmtracer_set_trace_name, .Lfunc_end116-llvmtracer_set_trace_name
	.cfi_endproc
                                        # -- End function
	.globl	_Z10log_or_notbbiPc     # -- Begin function _Z10log_or_notbbiPc
	.p2align	4, 0x90
	.type	_Z10log_or_notbbiPc,@function
_Z10log_or_notbbiPc:                    # @_Z10log_or_notbbiPc
.Lfunc_begin117:
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rcx, %rbx
	testl	%edi, %edi
	je	.LBB117_1
# %bb.2:
	testb	%sil, %sil
	je	.LBB117_3
# %bb.4:
	xorl	%eax, %eax
	cmpl	$1, %edx
	jne	.LBB117_7
# %bb.5:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	addq	$48, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	testq	%rax, %rax
	je	.LBB117_8
# %bb.6:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	addq	$48, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcmp
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB117_9
.LBB117_7:
	popq	%rbx
	retq
.LBB117_1:
	xorb	$1, %sil
	movzbl	%sil, %eax
	popq	%rbx
	retq
.LBB117_3:
	callq	_ZTW5trace
	movq	(%rax), %rax
	movl	80(%rax), %eax
	popq	%rbx
	retq
.LBB117_8:
	movl	$.L.str.10, %edi
	movl	$.L.str.4, %esi
	movl	$132, %edx
	movl	$.L__PRETTY_FUNCTION__._Z10log_or_notbbiPc, %ecx
	callq	__assert_fail
.LBB117_9:
	movl	$.L.str.11, %edi
	movl	$.L.str.4, %esi
	movl	$137, %edx
	movl	$.L__PRETTY_FUNCTION__._Z10log_or_notbbiPc, %ecx
	callq	__assert_fail
.Lfunc_end117:
	.size	_Z10log_or_notbbiPc, .Lfunc_end117-_Z10log_or_notbbiPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z20convert_bytes_to_hexPcPhi # -- Begin function _Z20convert_bytes_to_hexPcPhi
	.p2align	4, 0x90
	.type	_Z20convert_bytes_to_hexPcPhi,@function
_Z20convert_bytes_to_hexPcPhi:          # @_Z20convert_bytes_to_hexPcPhi
.Lfunc_begin118:
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movb	$0, 2(%r14)
	movq	%rsi, %rbx
	movw	$30768, (%r14)          # imm = 0x7830
	addq	$2, %r14
	testl	%edx, %edx
	jle	.LBB118_1
# %bb.3:
	movl	%edx, %r15d
	.p2align	4, 0x90
.LBB118_4:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	sprintf
	cltq
	addq	%r14, %rax
	addq	$1, %rbx
	movq	%rax, %r14
	addq	$-1, %r15
	jne	.LBB118_4
	jmp	.LBB118_2
.LBB118_1:
	movq	%r14, %rax
.LBB118_2:
	movb	$0, (%rax)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end118:
	.size	_Z20convert_bytes_to_hexPcPhi, .Lfunc_end118-_Z20convert_bytes_to_hexPcPhi
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_update_status # -- Begin function trace_logger_update_status
	.p2align	4, 0x90
	.type	trace_logger_update_status,@function
trace_logger_update_status:             # @trace_logger_update_status
.Lfunc_begin119:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %ebx
	movl	%esi, %r15d
	movq	%rdi, %r14
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	jne	.LBB119_3
# %bb.1:
	testb	%bl, %bl
	je	.LBB119_14
# %bb.2:
	movq	default_trace_name(%rip), %rdi
	callq	_Z12create_tracePKc
.LBB119_3:
	callq	_ZTW5trace
	movq	(%rax), %rax
	movl	80(%rax), %ebp
	movzbl	%r12b, %edi
	movzbl	%bl, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	_Z10log_or_notbbiPc
	movl	%eax, %ebx
	callq	_ZTW5trace
	movq	(%rax), %rax
	movl	%ebx, 80(%rax)
	cmpl	$1, %ebp
	je	.LBB119_7
# %bb.4:
	testl	%ebp, %ebp
	jne	.LBB119_10
# %bb.5:
	callq	_ZTW5trace
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	jne	.LBB119_10
# %bb.6:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, %rbx
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movl	$.L.str.14, %edi
	jmp	.LBB119_9
.LBB119_7:
	callq	_ZTW5trace
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	je	.LBB119_10
# %bb.8:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, %rbx
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movl	$.L.str.15, %edi
.LBB119_9:
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
.LBB119_10:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	addq	$48, %rdi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	testq	%rax, %rax
	jne	.LBB119_13
# %bb.11:
	callq	_ZTW5trace
	movq	(%rax), %rax
	cmpl	$0, 80(%rax)
	je	.LBB119_12
.LBB119_13:
	callq	_ZTW5trace
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	jne	.LBB119_14
# %bb.15:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	addq	$48, %rdi
	movl	$.L.str.16, %esi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_Z12fin_toplevelv       # TAILCALL
.LBB119_12:
	callq	_ZTW5trace
	movq	(%rax), %rdi
	addq	$48, %rdi
	movq	%r14, %rsi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc
.LBB119_14:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end119:
	.size	trace_logger_update_status, .Lfunc_end119-trace_logger_update_status
	.cfi_endproc
                                        # -- End function
	.globl	_Z10do_not_logv         # -- Begin function _Z10do_not_logv
	.p2align	4, 0x90
	.type	_Z10do_not_logv,@function
_Z10do_not_logv:                        # @_Z10do_not_logv
.Lfunc_begin120:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB120_1
# %bb.2:
	callq	_ZTW5trace
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	sete	%al
	popq	%rcx
	retq
.LBB120_1:
	movb	$1, %al
	popq	%rcx
	retq
.Lfunc_end120:
	.size	_Z10do_not_logv, .Lfunc_end120-_Z10do_not_logv
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_log_entry  # -- Begin function trace_logger_log_entry
	.p2align	4, 0x90
	.type	trace_logger_log_entry,@function
trace_logger_log_entry:                 # @trace_logger_log_entry
.Lfunc_begin121:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	jne	.LBB121_2
# %bb.1:
	movq	default_trace_name(%rip), %rdi
	callq	_Z12create_tracePKc
.LBB121_2:
	callq	_Z10do_not_logv
	testb	%al, %al
	je	.LBB121_4
# %bb.3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB121_4:
	callq	_Z15open_trace_filev
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %rdi
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.Lfunc_end121:
	.size	trace_logger_log_entry, .Lfunc_end121-trace_logger_log_entry
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_log0       # -- Begin function trace_logger_log0
	.p2align	4, 0x90
	.type	trace_logger_log0,@function
trace_logger_log0:                      # @trace_logger_log0
.Lfunc_begin122:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movl	%edi, %ebp
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB122_3
# %bb.1:
	callq	_Z10do_not_logv
	testb	%al, %al
	jne	.LBB122_3
# %bb.2:
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %r13
	callq	_ZTW5trace
	movq	(%rax), %r10
	movl	$.L.str.18, %esi
	movl	$0, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	%r15, %r9
	pushq	40(%r10)
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	gzprintf
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	callq	_ZTW5trace
	movq	(%rax), %rax
	addq	$1, 40(%rax)
.LBB122_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end122:
	.size	trace_logger_log0, .Lfunc_end122-trace_logger_log0
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_log_int    # -- Begin function trace_logger_log_int
	.p2align	4, 0x90
	.type	trace_logger_log_int,@function
trace_logger_log_int:                   # @trace_logger_log_int
.Lfunc_begin123:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%r8, %r13
	movl	%ecx, %ebx
	movq	%rdx, %r12
	movl	%esi, %r14d
	movl	%edi, %r15d
	movq	80(%rsp), %rbp
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB123_13
# %bb.1:
	callq	_Z10do_not_logv
	testb	%al, %al
	je	.LBB123_2
.LBB123_13:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB123_2:
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %rbp
	cmpl	$24601, %r15d           # imm = 0x6019
	je	.LBB123_6
# %bb.3:
	cmpl	$19134, %r15d           # imm = 0x4ABE
	jne	.LBB123_7
# %bb.4:
	movl	$.L.str.19, %esi
	jmp	.LBB123_5
.LBB123_6:
	movl	$.L.str.20, %esi
.LBB123_5:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	gzprintf
	testl	%ebx, %ebx
	je	.LBB123_10
.LBB123_9:
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB123_12
.LBB123_14:
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.LBB123_7:
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movq	%r12, %r8
	movl	%ebx, %r9d
	callq	gzprintf
	testl	%ebx, %ebx
	jne	.LBB123_9
.LBB123_10:
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB123_14
.LBB123_12:
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.Lfunc_end123:
	.size	trace_logger_log_int, .Lfunc_end123-trace_logger_log_int
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_log_ptr    # -- Begin function trace_logger_log_ptr
	.p2align	4, 0x90
	.type	trace_logger_log_ptr,@function
trace_logger_log_ptr:                   # @trace_logger_log_ptr
.Lfunc_begin124:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%r8, %r13
	movl	%ecx, %ebx
	movq	%rdx, %r12
	movl	%esi, %r14d
	movl	%edi, %r15d
	movq	80(%rsp), %rbp
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB124_13
# %bb.1:
	callq	_Z10do_not_logv
	testb	%al, %al
	je	.LBB124_2
.LBB124_13:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB124_2:
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %rbp
	cmpl	$24601, %r15d           # imm = 0x6019
	je	.LBB124_6
# %bb.3:
	cmpl	$19134, %r15d           # imm = 0x4ABE
	jne	.LBB124_7
# %bb.4:
	movl	$.L.str.26, %esi
	jmp	.LBB124_5
.LBB124_6:
	movl	$.L.str.27, %esi
.LBB124_5:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	gzprintf
	testl	%ebx, %ebx
	je	.LBB124_10
.LBB124_9:
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB124_12
.LBB124_14:
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.LBB124_7:
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movq	%r12, %r8
	movl	%ebx, %r9d
	callq	gzprintf
	testl	%ebx, %ebx
	jne	.LBB124_9
.LBB124_10:
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB124_14
.LBB124_12:
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.Lfunc_end124:
	.size	trace_logger_log_ptr, .Lfunc_end124-trace_logger_log_ptr
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_log_string # -- Begin function trace_logger_log_string
	.p2align	4, 0x90
	.type	trace_logger_log_string,@function
trace_logger_log_string:                # @trace_logger_log_string
.Lfunc_begin125:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%r8, %r13
	movl	%ecx, %ebx
	movq	%rdx, %r12
	movl	%esi, %r14d
	movl	%edi, %r15d
	movq	80(%rsp), %rbp
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB125_13
# %bb.1:
	callq	_Z10do_not_logv
	testb	%al, %al
	je	.LBB125_2
.LBB125_13:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB125_2:
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %rbp
	cmpl	$24601, %r15d           # imm = 0x6019
	je	.LBB125_6
# %bb.3:
	cmpl	$19134, %r15d           # imm = 0x4ABE
	jne	.LBB125_7
# %bb.4:
	movl	$.L.str.29, %esi
	jmp	.LBB125_5
.LBB125_6:
	movl	$.L.str.30, %esi
.LBB125_5:
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	gzprintf
	testl	%ebx, %ebx
	je	.LBB125_10
.LBB125_9:
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB125_12
.LBB125_14:
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.LBB125_7:
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movq	%r12, %r8
	movl	%ebx, %r9d
	callq	gzprintf
	testl	%ebx, %ebx
	jne	.LBB125_9
.LBB125_10:
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB125_14
.LBB125_12:
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.Lfunc_end125:
	.size	trace_logger_log_string, .Lfunc_end125-trace_logger_log_string
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_log_double # -- Begin function trace_logger_log_double
	.p2align	4, 0x90
	.type	trace_logger_log_double,@function
trace_logger_log_double:                # @trace_logger_log_double
.Lfunc_begin126:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%r8d, %ebx
	movq	%rcx, %r13
	movl	%edx, %r12d
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	%esi, %r15d
	movl	%edi, %r14d
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB126_13
# %bb.1:
	callq	_Z10do_not_logv
	testb	%al, %al
	je	.LBB126_2
.LBB126_13:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB126_2:
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %rbx
	cmpl	$24601, %r14d           # imm = 0x6019
	je	.LBB126_6
# %bb.3:
	cmpl	$19134, %r14d           # imm = 0x4ABE
	jne	.LBB126_7
# %bb.4:
	movl	$.L.str.32, %esi
	jmp	.LBB126_5
.LBB126_6:
	movl	$.L.str.33, %esi
.LBB126_5:
	movb	$1, %al
	movq	%rbx, %rdi
	movl	%r15d, %edx
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r12d, %ecx
	callq	gzprintf
	testl	%r12d, %r12d
	je	.LBB126_10
.LBB126_9:
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB126_12
.LBB126_14:
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.LBB126_7:
	movl	$.L.str.34, %esi
	movb	$1, %al
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r12d, %r8d
	callq	gzprintf
	testl	%r12d, %r12d
	jne	.LBB126_9
.LBB126_10:
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gzprintf
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB126_14
.LBB126_12:
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gzprintf                # TAILCALL
.Lfunc_end126:
	.size	trace_logger_log_double, .Lfunc_end126-trace_logger_log_double
	.cfi_endproc
                                        # -- End function
	.globl	trace_logger_log_vector # -- Begin function trace_logger_log_vector
	.p2align	4, 0x90
	.type	trace_logger_log_vector,@function
trace_logger_log_vector:                # @trace_logger_log_vector
.Lfunc_begin127:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, %r15d
	movq	%r8, %rbx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rdx, %r12
	movl	%esi, %r13d
	movl	%edi, %r14d
	callq	_ZTW5trace
	cmpq	$0, (%rax)
	je	.LBB127_15
# %bb.1:
	callq	_Z10do_not_logv
	testb	%al, %al
	jne	.LBB127_15
# %bb.2:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	%r15d, -48(%rbp)        # 4-byte Spill
	movq	%rsp, -64(%rbp)         # 8-byte Spill
	movl	%r13d, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	shrl	$30, %eax
	addl	%r13d, %eax
	sarl	$2, %eax
	addl	$3, %eax
	addq	$15, %rax
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	andq	%rax, %rcx
	movq	%rsp, %r15
	subq	%rcx, %r15
	movq	%r15, %rsp
	shrl	$29, %edx
	addl	%r13d, %edx
	sarl	$3, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_Z20convert_bytes_to_hexPcPhi
	callq	_ZTW5trace
	movq	(%rax), %rax
	movq	32(%rax), %r12
	cmpl	$24601, %r14d           # imm = 0x6019
	je	.LBB127_6
# %bb.3:
	cmpl	$19134, %r14d           # imm = 0x4ABE
	jne	.LBB127_7
# %bb.4:
	movl	$.L.str.29, %esi
	jmp	.LBB127_5
.LBB127_6:
	movl	$.L.str.30, %esi
.LBB127_5:
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %r8d
	callq	gzprintf
	jmp	.LBB127_8
.LBB127_7:
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	movq	%r15, %r8
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %r9d
	callq	gzprintf
.LBB127_8:
	testl	%ebx, %ebx
	movl	-48(%rbp), %ebx         # 4-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	je	.LBB127_10
# %bb.9:
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gzprintf
	testl	%ebx, %ebx
	je	.LBB127_13
.LBB127_12:
	movq	16(%rbp), %rdx
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gzprintf
	jmp	.LBB127_14
.LBB127_10:
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gzprintf
	testl	%ebx, %ebx
	jne	.LBB127_12
.LBB127_13:
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gzprintf
.LBB127_14:
	movq	-64(%rbp), %rsp         # 8-byte Reload
.LBB127_15:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end127:
	.size	trace_logger_log_vector, .Lfunc_end127-trace_logger_log_vector
	.cfi_endproc
                                        # -- End function
	.type	trace,@object           # @trace
	.section	.tbss,"awT",@nobits
	.globl	trace
	.p2align	3
trace:
	.quad	0
	.size	trace, 8

	.type	_Z8gz_filesB5cxx11,@object # @_Z8gz_filesB5cxx11
	.bss
	.globl	_Z8gz_filesB5cxx11
	.p2align	3
_Z8gz_filesB5cxx11:
	.zero	48
	.size	_Z8gz_filesB5cxx11, 48

	.type	lock,@object            # @lock
	.globl	lock
	.p2align	3
lock:
	.zero	40
	.size	lock, 40

	.type	_Z12labelmap_strB5cxx11,@object # @_Z12labelmap_strB5cxx11
	.globl	_Z12labelmap_strB5cxx11
	.p2align	3
_Z12labelmap_strB5cxx11:
	.zero	32
	.size	_Z12labelmap_strB5cxx11, 32

	.type	default_trace_name,@object # @default_trace_name
	.data
	.globl	default_trace_name
	.p2align	3
default_trace_name:
	.quad	.L.str
	.size	default_trace_name, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dynamic_trace.gz"
	.size	.L.str, 17

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_trace_logger.cpp
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"!trace && \"Trace has already been created!\""
	.size	.L.str.3, 44

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/home/yingj4/LLVM-Tracer/profile-func/trace_logger.cpp"
	.size	.L.str.4, 55

	.type	.L__PRETTY_FUNCTION__._Z12create_tracePKc,@object # @__PRETTY_FUNCTION__._Z12create_tracePKc
.L__PRETTY_FUNCTION__._Z12create_tracePKc:
	.asciz	"void create_trace(const char *)"
	.size	.L__PRETTY_FUNCTION__._Z12create_tracePKc, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%%%% LABEL MAP START %%%%\n"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%%%% LABEL MAP END %%%%\n\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"w"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Failed to open logfile \"dynamic_trace\""
	.size	.L.str.8, 39

	.type	_ZStL19piecewise_construct,@object # @_ZStL19piecewise_construct
	.section	.rodata,"a",@progbits
_ZStL19piecewise_construct:
	.zero	1
	.size	_ZStL19piecewise_construct, 1

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"map::at"
	.size	.L.str.36, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Failed to initialize the mutex\n"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"false && \"Returning from within a toplevel function before it was called!\""
	.size	.L.str.10, 75

	.type	.L__PRETTY_FUNCTION__._Z10log_or_notbbiPc,@object # @__PRETTY_FUNCTION__._Z10log_or_notbbiPc
.L__PRETTY_FUNCTION__._Z10log_or_notbbiPc:
	.asciz	"logging_status log_or_not(bool, bool, int, char *)"
	.size	.L__PRETTY_FUNCTION__._Z10log_or_notbbiPc, 51

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"false && \"Cannot call a top level function from within another one!\""
	.size	.L.str.11, 69

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0x"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%02x"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: Stopping logging at inst %ld.\n"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: Starting to log at inst = %ld.\n"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.zero	1
	.size	.L.str.16, 1

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\nentry,%s,%d,\n"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\n0,%d,%s,%s,%s,%d,%ld\n"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"r,%d,%ld,%d"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"f,%d,%ld,%d"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%d,%d,%ld,%d"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	",%s"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	", "
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	",%s,\n"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	",\n"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"r,%d,%#llx,%d"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"f,%d,%#llx,%d"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%d,%d,%#llx,%d"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"r,%d,%s,%d"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"f,%d,%s,%d"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%d,%d,%s,%d"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"r,%d,%f,%d"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"f,%d,%f,%d"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%d,%d,%f,%d"
	.size	.L.str.34, 12

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 6.0.1 "  # string offset=0
.Linfo_string1:
	.asciz	"src/sound.cpp"         # string offset=21
.Linfo_string2:
	.asciz	"/home/yingj4/Desktop/cs598jtfa20/project/audio_pipeline" # string offset=35
.Linfo_string3:
	.asciz	"__gnu_cxx"             # string offset=91
.Linfo_string4:
	.asciz	"_S_single"             # string offset=101
.Linfo_string5:
	.asciz	"_S_mutex"              # string offset=111
.Linfo_string6:
	.asciz	"_S_atomic"             # string offset=120
.Linfo_string7:
	.asciz	"_Lock_policy"          # string offset=130
.Linfo_string8:
	.asciz	"std"                   # string offset=143
.Linfo_string9:
	.asciz	"_S_app"                # string offset=147
.Linfo_string10:
	.asciz	"_S_ate"                # string offset=154
.Linfo_string11:
	.asciz	"_S_bin"                # string offset=161
.Linfo_string12:
	.asciz	"_S_in"                 # string offset=168
.Linfo_string13:
	.asciz	"_S_out"                # string offset=174
.Linfo_string14:
	.asciz	"_S_trunc"              # string offset=181
.Linfo_string15:
	.asciz	"_S_ios_openmode_end"   # string offset=190
.Linfo_string16:
	.asciz	"_S_ios_openmode_max"   # string offset=210
.Linfo_string17:
	.asciz	"_S_ios_openmode_min"   # string offset=230
.Linfo_string18:
	.asciz	"_Ios_Openmode"         # string offset=250
.Linfo_string19:
	.asciz	"_S_goodbit"            # string offset=264
.Linfo_string20:
	.asciz	"_S_badbit"             # string offset=275
.Linfo_string21:
	.asciz	"_S_eofbit"             # string offset=285
.Linfo_string22:
	.asciz	"_S_failbit"            # string offset=295
.Linfo_string23:
	.asciz	"_S_ios_iostate_end"    # string offset=306
.Linfo_string24:
	.asciz	"_S_ios_iostate_max"    # string offset=325
.Linfo_string25:
	.asciz	"_S_ios_iostate_min"    # string offset=344
.Linfo_string26:
	.asciz	"_Ios_Iostate"          # string offset=363
.Linfo_string27:
	.asciz	"char"                  # string offset=376
.Linfo_string28:
	.asciz	"long int"              # string offset=381
.Linfo_string29:
	.asciz	"ptrdiff_t"             # string offset=390
.Linfo_string30:
	.asciz	"streamsize"            # string offset=400
.Linfo_string31:
	.asciz	"int"                   # string offset=411
.Linfo_string32:
	.asciz	"ios_base"              # string offset=415
.Linfo_string33:
	.asciz	"abs"                   # string offset=424
.Linfo_string34:
	.asciz	"acos"                  # string offset=428
.Linfo_string35:
	.asciz	"double"                # string offset=433
.Linfo_string36:
	.asciz	"asin"                  # string offset=440
.Linfo_string37:
	.asciz	"atan"                  # string offset=445
.Linfo_string38:
	.asciz	"atan2"                 # string offset=450
.Linfo_string39:
	.asciz	"ceil"                  # string offset=456
.Linfo_string40:
	.asciz	"cos"                   # string offset=461
.Linfo_string41:
	.asciz	"cosh"                  # string offset=465
.Linfo_string42:
	.asciz	"exp"                   # string offset=470
.Linfo_string43:
	.asciz	"fabs"                  # string offset=474
.Linfo_string44:
	.asciz	"floor"                 # string offset=479
.Linfo_string45:
	.asciz	"fmod"                  # string offset=485
.Linfo_string46:
	.asciz	"frexp"                 # string offset=490
.Linfo_string47:
	.asciz	"ldexp"                 # string offset=496
.Linfo_string48:
	.asciz	"log"                   # string offset=502
.Linfo_string49:
	.asciz	"log10"                 # string offset=506
.Linfo_string50:
	.asciz	"modf"                  # string offset=512
.Linfo_string51:
	.asciz	"pow"                   # string offset=517
.Linfo_string52:
	.asciz	"sin"                   # string offset=521
.Linfo_string53:
	.asciz	"sinh"                  # string offset=525
.Linfo_string54:
	.asciz	"sqrt"                  # string offset=530
.Linfo_string55:
	.asciz	"tan"                   # string offset=535
.Linfo_string56:
	.asciz	"tanh"                  # string offset=539
.Linfo_string57:
	.asciz	"double_t"              # string offset=544
.Linfo_string58:
	.asciz	"float"                 # string offset=553
.Linfo_string59:
	.asciz	"float_t"               # string offset=559
.Linfo_string60:
	.asciz	"acosh"                 # string offset=567
.Linfo_string61:
	.asciz	"acoshf"                # string offset=573
.Linfo_string62:
	.asciz	"acoshl"                # string offset=580
.Linfo_string63:
	.asciz	"long double"           # string offset=587
.Linfo_string64:
	.asciz	"asinh"                 # string offset=599
.Linfo_string65:
	.asciz	"asinhf"                # string offset=605
.Linfo_string66:
	.asciz	"asinhl"                # string offset=612
.Linfo_string67:
	.asciz	"atanh"                 # string offset=619
.Linfo_string68:
	.asciz	"atanhf"                # string offset=625
.Linfo_string69:
	.asciz	"atanhl"                # string offset=632
.Linfo_string70:
	.asciz	"cbrt"                  # string offset=639
.Linfo_string71:
	.asciz	"cbrtf"                 # string offset=644
.Linfo_string72:
	.asciz	"cbrtl"                 # string offset=650
.Linfo_string73:
	.asciz	"copysign"              # string offset=656
.Linfo_string74:
	.asciz	"copysignf"             # string offset=665
.Linfo_string75:
	.asciz	"copysignl"             # string offset=675
.Linfo_string76:
	.asciz	"erf"                   # string offset=685
.Linfo_string77:
	.asciz	"erff"                  # string offset=689
.Linfo_string78:
	.asciz	"erfl"                  # string offset=694
.Linfo_string79:
	.asciz	"erfc"                  # string offset=699
.Linfo_string80:
	.asciz	"erfcf"                 # string offset=704
.Linfo_string81:
	.asciz	"erfcl"                 # string offset=710
.Linfo_string82:
	.asciz	"exp2"                  # string offset=716
.Linfo_string83:
	.asciz	"exp2f"                 # string offset=721
.Linfo_string84:
	.asciz	"exp2l"                 # string offset=727
.Linfo_string85:
	.asciz	"expm1"                 # string offset=733
.Linfo_string86:
	.asciz	"expm1f"                # string offset=739
.Linfo_string87:
	.asciz	"expm1l"                # string offset=746
.Linfo_string88:
	.asciz	"fdim"                  # string offset=753
.Linfo_string89:
	.asciz	"fdimf"                 # string offset=758
.Linfo_string90:
	.asciz	"fdiml"                 # string offset=764
.Linfo_string91:
	.asciz	"fma"                   # string offset=770
.Linfo_string92:
	.asciz	"fmaf"                  # string offset=774
.Linfo_string93:
	.asciz	"fmal"                  # string offset=779
.Linfo_string94:
	.asciz	"fmax"                  # string offset=784
.Linfo_string95:
	.asciz	"fmaxf"                 # string offset=789
.Linfo_string96:
	.asciz	"fmaxl"                 # string offset=795
.Linfo_string97:
	.asciz	"fmin"                  # string offset=801
.Linfo_string98:
	.asciz	"fminf"                 # string offset=806
.Linfo_string99:
	.asciz	"fminl"                 # string offset=812
.Linfo_string100:
	.asciz	"hypot"                 # string offset=818
.Linfo_string101:
	.asciz	"hypotf"                # string offset=824
.Linfo_string102:
	.asciz	"hypotl"                # string offset=831
.Linfo_string103:
	.asciz	"ilogb"                 # string offset=838
.Linfo_string104:
	.asciz	"ilogbf"                # string offset=844
.Linfo_string105:
	.asciz	"ilogbl"                # string offset=851
.Linfo_string106:
	.asciz	"lgamma"                # string offset=858
.Linfo_string107:
	.asciz	"lgammaf"               # string offset=865
.Linfo_string108:
	.asciz	"lgammal"               # string offset=873
.Linfo_string109:
	.asciz	"llrint"                # string offset=881
.Linfo_string110:
	.asciz	"long long int"         # string offset=888
.Linfo_string111:
	.asciz	"llrintf"               # string offset=902
.Linfo_string112:
	.asciz	"llrintl"               # string offset=910
.Linfo_string113:
	.asciz	"llround"               # string offset=918
.Linfo_string114:
	.asciz	"llroundf"              # string offset=926
.Linfo_string115:
	.asciz	"llroundl"              # string offset=935
.Linfo_string116:
	.asciz	"log1p"                 # string offset=944
.Linfo_string117:
	.asciz	"log1pf"                # string offset=950
.Linfo_string118:
	.asciz	"log1pl"                # string offset=957
.Linfo_string119:
	.asciz	"log2"                  # string offset=964
.Linfo_string120:
	.asciz	"log2f"                 # string offset=969
.Linfo_string121:
	.asciz	"log2l"                 # string offset=975
.Linfo_string122:
	.asciz	"logb"                  # string offset=981
.Linfo_string123:
	.asciz	"logbf"                 # string offset=986
.Linfo_string124:
	.asciz	"logbl"                 # string offset=992
.Linfo_string125:
	.asciz	"lrint"                 # string offset=998
.Linfo_string126:
	.asciz	"lrintf"                # string offset=1004
.Linfo_string127:
	.asciz	"lrintl"                # string offset=1011
.Linfo_string128:
	.asciz	"lround"                # string offset=1018
.Linfo_string129:
	.asciz	"lroundf"               # string offset=1025
.Linfo_string130:
	.asciz	"lroundl"               # string offset=1033
.Linfo_string131:
	.asciz	"nan"                   # string offset=1041
.Linfo_string132:
	.asciz	"nanf"                  # string offset=1045
.Linfo_string133:
	.asciz	"nanl"                  # string offset=1050
.Linfo_string134:
	.asciz	"nearbyint"             # string offset=1055
.Linfo_string135:
	.asciz	"nearbyintf"            # string offset=1065
.Linfo_string136:
	.asciz	"nearbyintl"            # string offset=1076
.Linfo_string137:
	.asciz	"nextafter"             # string offset=1087
.Linfo_string138:
	.asciz	"nextafterf"            # string offset=1097
.Linfo_string139:
	.asciz	"nextafterl"            # string offset=1108
.Linfo_string140:
	.asciz	"nexttoward"            # string offset=1119
.Linfo_string141:
	.asciz	"nexttowardf"           # string offset=1130
.Linfo_string142:
	.asciz	"nexttowardl"           # string offset=1142
.Linfo_string143:
	.asciz	"remainder"             # string offset=1154
.Linfo_string144:
	.asciz	"remainderf"            # string offset=1164
.Linfo_string145:
	.asciz	"remainderl"            # string offset=1175
.Linfo_string146:
	.asciz	"remquo"                # string offset=1186
.Linfo_string147:
	.asciz	"remquof"               # string offset=1193
.Linfo_string148:
	.asciz	"remquol"               # string offset=1201
.Linfo_string149:
	.asciz	"rint"                  # string offset=1209
.Linfo_string150:
	.asciz	"rintf"                 # string offset=1214
.Linfo_string151:
	.asciz	"rintl"                 # string offset=1220
.Linfo_string152:
	.asciz	"round"                 # string offset=1226
.Linfo_string153:
	.asciz	"roundf"                # string offset=1232
.Linfo_string154:
	.asciz	"roundl"                # string offset=1239
.Linfo_string155:
	.asciz	"scalbln"               # string offset=1246
.Linfo_string156:
	.asciz	"scalblnf"              # string offset=1254
.Linfo_string157:
	.asciz	"scalblnl"              # string offset=1263
.Linfo_string158:
	.asciz	"scalbn"                # string offset=1272
.Linfo_string159:
	.asciz	"scalbnf"               # string offset=1279
.Linfo_string160:
	.asciz	"scalbnl"               # string offset=1287
.Linfo_string161:
	.asciz	"tgamma"                # string offset=1295
.Linfo_string162:
	.asciz	"tgammaf"               # string offset=1302
.Linfo_string163:
	.asciz	"tgammal"               # string offset=1310
.Linfo_string164:
	.asciz	"trunc"                 # string offset=1318
.Linfo_string165:
	.asciz	"truncf"                # string offset=1324
.Linfo_string166:
	.asciz	"truncl"                # string offset=1331
.Linfo_string167:
	.asciz	"_ZSt3absg"             # string offset=1338
.Linfo_string168:
	.asciz	"__float128"            # string offset=1348
.Linfo_string169:
	.asciz	"_ZSt4modfePe"          # string offset=1359
.Linfo_string170:
	.asciz	"__gnu_debug"           # string offset=1372
.Linfo_string171:
	.asciz	"__debug"               # string offset=1384
.Linfo_string172:
	.asciz	"__exception_ptr"       # string offset=1392
.Linfo_string173:
	.asciz	"_M_exception_object"   # string offset=1408
.Linfo_string174:
	.asciz	"exception_ptr"         # string offset=1428
.Linfo_string175:
	.asciz	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv" # string offset=1442
.Linfo_string176:
	.asciz	"_M_addref"             # string offset=1492
.Linfo_string177:
	.asciz	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv" # string offset=1502
.Linfo_string178:
	.asciz	"_M_release"            # string offset=1554
.Linfo_string179:
	.asciz	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv" # string offset=1565
.Linfo_string180:
	.asciz	"_M_get"                # string offset=1613
.Linfo_string181:
	.asciz	"decltype(nullptr)"     # string offset=1620
.Linfo_string182:
	.asciz	"nullptr_t"             # string offset=1638
.Linfo_string183:
	.asciz	"_ZNSt15__exception_ptr13exception_ptraSERKS0_" # string offset=1648
.Linfo_string184:
	.asciz	"operator="             # string offset=1694
.Linfo_string185:
	.asciz	"_ZNSt15__exception_ptr13exception_ptraSEOS0_" # string offset=1704
.Linfo_string186:
	.asciz	"~exception_ptr"        # string offset=1749
.Linfo_string187:
	.asciz	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_" # string offset=1764
.Linfo_string188:
	.asciz	"swap"                  # string offset=1812
.Linfo_string189:
	.asciz	"_ZNKSt15__exception_ptr13exception_ptrcvbEv" # string offset=1817
.Linfo_string190:
	.asciz	"operator bool"         # string offset=1861
.Linfo_string191:
	.asciz	"bool"                  # string offset=1875
.Linfo_string192:
	.asciz	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv" # string offset=1880
.Linfo_string193:
	.asciz	"__cxa_exception_type"  # string offset=1943
.Linfo_string194:
	.asciz	"type_info"             # string offset=1964
.Linfo_string195:
	.asciz	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE" # string offset=1974
.Linfo_string196:
	.asciz	"rethrow_exception"     # string offset=2034
.Linfo_string197:
	.asciz	"long unsigned int"     # string offset=2052
.Linfo_string198:
	.asciz	"size_t"                # string offset=2070
.Linfo_string199:
	.asciz	"__count"               # string offset=2077
.Linfo_string200:
	.asciz	"__value"               # string offset=2085
.Linfo_string201:
	.asciz	"__wch"                 # string offset=2093
.Linfo_string202:
	.asciz	"unsigned int"          # string offset=2099
.Linfo_string203:
	.asciz	"__wchb"                # string offset=2112
.Linfo_string204:
	.asciz	"sizetype"              # string offset=2119
.Linfo_string205:
	.asciz	"__mbstate_t"           # string offset=2128
.Linfo_string206:
	.asciz	"mbstate_t"             # string offset=2140
.Linfo_string207:
	.asciz	"wint_t"                # string offset=2150
.Linfo_string208:
	.asciz	"btowc"                 # string offset=2157
.Linfo_string209:
	.asciz	"fgetwc"                # string offset=2163
.Linfo_string210:
	.asciz	"_IO_FILE"              # string offset=2170
.Linfo_string211:
	.asciz	"__FILE"                # string offset=2179
.Linfo_string212:
	.asciz	"fgetws"                # string offset=2186
.Linfo_string213:
	.asciz	"wchar_t"               # string offset=2193
.Linfo_string214:
	.asciz	"fputwc"                # string offset=2201
.Linfo_string215:
	.asciz	"fputws"                # string offset=2208
.Linfo_string216:
	.asciz	"fwide"                 # string offset=2215
.Linfo_string217:
	.asciz	"fwprintf"              # string offset=2221
.Linfo_string218:
	.asciz	"__isoc99_fwscanf"      # string offset=2230
.Linfo_string219:
	.asciz	"fwscanf"               # string offset=2247
.Linfo_string220:
	.asciz	"getwc"                 # string offset=2255
.Linfo_string221:
	.asciz	"getwchar"              # string offset=2261
.Linfo_string222:
	.asciz	"mbrlen"                # string offset=2270
.Linfo_string223:
	.asciz	"mbrtowc"               # string offset=2277
.Linfo_string224:
	.asciz	"mbsinit"               # string offset=2285
.Linfo_string225:
	.asciz	"mbsrtowcs"             # string offset=2293
.Linfo_string226:
	.asciz	"putwc"                 # string offset=2303
.Linfo_string227:
	.asciz	"putwchar"              # string offset=2309
.Linfo_string228:
	.asciz	"swprintf"              # string offset=2318
.Linfo_string229:
	.asciz	"__isoc99_swscanf"      # string offset=2327
.Linfo_string230:
	.asciz	"swscanf"               # string offset=2344
.Linfo_string231:
	.asciz	"ungetwc"               # string offset=2352
.Linfo_string232:
	.asciz	"vfwprintf"             # string offset=2360
.Linfo_string233:
	.asciz	"gp_offset"             # string offset=2370
.Linfo_string234:
	.asciz	"fp_offset"             # string offset=2380
.Linfo_string235:
	.asciz	"overflow_arg_area"     # string offset=2390
.Linfo_string236:
	.asciz	"reg_save_area"         # string offset=2408
.Linfo_string237:
	.asciz	"__va_list_tag"         # string offset=2422
.Linfo_string238:
	.asciz	"__isoc99_vfwscanf"     # string offset=2436
.Linfo_string239:
	.asciz	"vfwscanf"              # string offset=2454
.Linfo_string240:
	.asciz	"vswprintf"             # string offset=2463
.Linfo_string241:
	.asciz	"__isoc99_vswscanf"     # string offset=2473
.Linfo_string242:
	.asciz	"vswscanf"              # string offset=2491
.Linfo_string243:
	.asciz	"vwprintf"              # string offset=2500
.Linfo_string244:
	.asciz	"__isoc99_vwscanf"      # string offset=2509
.Linfo_string245:
	.asciz	"vwscanf"               # string offset=2526
.Linfo_string246:
	.asciz	"wcrtomb"               # string offset=2534
.Linfo_string247:
	.asciz	"wcscat"                # string offset=2542
.Linfo_string248:
	.asciz	"wcscmp"                # string offset=2549
.Linfo_string249:
	.asciz	"wcscoll"               # string offset=2556
.Linfo_string250:
	.asciz	"wcscpy"                # string offset=2564
.Linfo_string251:
	.asciz	"wcscspn"               # string offset=2571
.Linfo_string252:
	.asciz	"wcsftime"              # string offset=2579
.Linfo_string253:
	.asciz	"tm"                    # string offset=2588
.Linfo_string254:
	.asciz	"wcslen"                # string offset=2591
.Linfo_string255:
	.asciz	"wcsncat"               # string offset=2598
.Linfo_string256:
	.asciz	"wcsncmp"               # string offset=2606
.Linfo_string257:
	.asciz	"wcsncpy"               # string offset=2614
.Linfo_string258:
	.asciz	"wcsrtombs"             # string offset=2622
.Linfo_string259:
	.asciz	"wcsspn"                # string offset=2632
.Linfo_string260:
	.asciz	"wcstod"                # string offset=2639
.Linfo_string261:
	.asciz	"wcstof"                # string offset=2646
.Linfo_string262:
	.asciz	"wcstok"                # string offset=2653
.Linfo_string263:
	.asciz	"wcstol"                # string offset=2660
.Linfo_string264:
	.asciz	"wcstoul"               # string offset=2667
.Linfo_string265:
	.asciz	"wcsxfrm"               # string offset=2675
.Linfo_string266:
	.asciz	"wctob"                 # string offset=2683
.Linfo_string267:
	.asciz	"wmemcmp"               # string offset=2689
.Linfo_string268:
	.asciz	"wmemcpy"               # string offset=2697
.Linfo_string269:
	.asciz	"wmemmove"              # string offset=2705
.Linfo_string270:
	.asciz	"wmemset"               # string offset=2714
.Linfo_string271:
	.asciz	"wprintf"               # string offset=2722
.Linfo_string272:
	.asciz	"__isoc99_wscanf"       # string offset=2730
.Linfo_string273:
	.asciz	"wscanf"                # string offset=2746
.Linfo_string274:
	.asciz	"wcschr"                # string offset=2753
.Linfo_string275:
	.asciz	"wcspbrk"               # string offset=2760
.Linfo_string276:
	.asciz	"wcsrchr"               # string offset=2768
.Linfo_string277:
	.asciz	"wcsstr"                # string offset=2776
.Linfo_string278:
	.asciz	"wmemchr"               # string offset=2783
.Linfo_string279:
	.asciz	"wcstold"               # string offset=2791
.Linfo_string280:
	.asciz	"wcstoll"               # string offset=2799
.Linfo_string281:
	.asciz	"wcstoull"              # string offset=2807
.Linfo_string282:
	.asciz	"long long unsigned int" # string offset=2816
.Linfo_string283:
	.asciz	"signed char"           # string offset=2839
.Linfo_string284:
	.asciz	"__int8_t"              # string offset=2851
.Linfo_string285:
	.asciz	"int8_t"                # string offset=2860
.Linfo_string286:
	.asciz	"short"                 # string offset=2867
.Linfo_string287:
	.asciz	"__int16_t"             # string offset=2873
.Linfo_string288:
	.asciz	"int16_t"               # string offset=2883
.Linfo_string289:
	.asciz	"__int32_t"             # string offset=2891
.Linfo_string290:
	.asciz	"int32_t"               # string offset=2901
.Linfo_string291:
	.asciz	"__int64_t"             # string offset=2909
.Linfo_string292:
	.asciz	"int64_t"               # string offset=2919
.Linfo_string293:
	.asciz	"int_fast8_t"           # string offset=2927
.Linfo_string294:
	.asciz	"int_fast16_t"          # string offset=2939
.Linfo_string295:
	.asciz	"int_fast32_t"          # string offset=2952
.Linfo_string296:
	.asciz	"int_fast64_t"          # string offset=2965
.Linfo_string297:
	.asciz	"__int_least8_t"        # string offset=2978
.Linfo_string298:
	.asciz	"int_least8_t"          # string offset=2993
.Linfo_string299:
	.asciz	"__int_least16_t"       # string offset=3006
.Linfo_string300:
	.asciz	"int_least16_t"         # string offset=3022
.Linfo_string301:
	.asciz	"__int_least32_t"       # string offset=3036
.Linfo_string302:
	.asciz	"int_least32_t"         # string offset=3052
.Linfo_string303:
	.asciz	"__int_least64_t"       # string offset=3066
.Linfo_string304:
	.asciz	"int_least64_t"         # string offset=3082
.Linfo_string305:
	.asciz	"__intmax_t"            # string offset=3096
.Linfo_string306:
	.asciz	"intmax_t"              # string offset=3107
.Linfo_string307:
	.asciz	"intptr_t"              # string offset=3116
.Linfo_string308:
	.asciz	"unsigned char"         # string offset=3125
.Linfo_string309:
	.asciz	"__uint8_t"             # string offset=3139
.Linfo_string310:
	.asciz	"uint8_t"               # string offset=3149
.Linfo_string311:
	.asciz	"unsigned short"        # string offset=3157
.Linfo_string312:
	.asciz	"__uint16_t"            # string offset=3172
.Linfo_string313:
	.asciz	"uint16_t"              # string offset=3183
.Linfo_string314:
	.asciz	"__uint32_t"            # string offset=3192
.Linfo_string315:
	.asciz	"uint32_t"              # string offset=3203
.Linfo_string316:
	.asciz	"__uint64_t"            # string offset=3212
.Linfo_string317:
	.asciz	"uint64_t"              # string offset=3223
.Linfo_string318:
	.asciz	"uint_fast8_t"          # string offset=3232
.Linfo_string319:
	.asciz	"uint_fast16_t"         # string offset=3245
.Linfo_string320:
	.asciz	"uint_fast32_t"         # string offset=3259
.Linfo_string321:
	.asciz	"uint_fast64_t"         # string offset=3273
.Linfo_string322:
	.asciz	"__uint_least8_t"       # string offset=3287
.Linfo_string323:
	.asciz	"uint_least8_t"         # string offset=3303
.Linfo_string324:
	.asciz	"__uint_least16_t"      # string offset=3317
.Linfo_string325:
	.asciz	"uint_least16_t"        # string offset=3334
.Linfo_string326:
	.asciz	"__uint_least32_t"      # string offset=3349
.Linfo_string327:
	.asciz	"uint_least32_t"        # string offset=3366
.Linfo_string328:
	.asciz	"__uint_least64_t"      # string offset=3381
.Linfo_string329:
	.asciz	"uint_least64_t"        # string offset=3398
.Linfo_string330:
	.asciz	"__uintmax_t"           # string offset=3413
.Linfo_string331:
	.asciz	"uintmax_t"             # string offset=3425
.Linfo_string332:
	.asciz	"uintptr_t"             # string offset=3435
.Linfo_string333:
	.asciz	"lconv"                 # string offset=3445
.Linfo_string334:
	.asciz	"setlocale"             # string offset=3451
.Linfo_string335:
	.asciz	"localeconv"            # string offset=3461
.Linfo_string336:
	.asciz	"isalnum"               # string offset=3472
.Linfo_string337:
	.asciz	"isalpha"               # string offset=3480
.Linfo_string338:
	.asciz	"iscntrl"               # string offset=3488
.Linfo_string339:
	.asciz	"isdigit"               # string offset=3496
.Linfo_string340:
	.asciz	"isgraph"               # string offset=3504
.Linfo_string341:
	.asciz	"islower"               # string offset=3512
.Linfo_string342:
	.asciz	"isprint"               # string offset=3520
.Linfo_string343:
	.asciz	"ispunct"               # string offset=3528
.Linfo_string344:
	.asciz	"isspace"               # string offset=3536
.Linfo_string345:
	.asciz	"isupper"               # string offset=3544
.Linfo_string346:
	.asciz	"isxdigit"              # string offset=3552
.Linfo_string347:
	.asciz	"tolower"               # string offset=3561
.Linfo_string348:
	.asciz	"toupper"               # string offset=3569
.Linfo_string349:
	.asciz	"isblank"               # string offset=3577
.Linfo_string350:
	.asciz	"div_t"                 # string offset=3585
.Linfo_string351:
	.asciz	"quot"                  # string offset=3591
.Linfo_string352:
	.asciz	"rem"                   # string offset=3596
.Linfo_string353:
	.asciz	"ldiv_t"                # string offset=3600
.Linfo_string354:
	.asciz	"abort"                 # string offset=3607
.Linfo_string355:
	.asciz	"atexit"                # string offset=3613
.Linfo_string356:
	.asciz	"at_quick_exit"         # string offset=3620
.Linfo_string357:
	.asciz	"atof"                  # string offset=3634
.Linfo_string358:
	.asciz	"atoi"                  # string offset=3639
.Linfo_string359:
	.asciz	"atol"                  # string offset=3644
.Linfo_string360:
	.asciz	"bsearch"               # string offset=3649
.Linfo_string361:
	.asciz	"__compar_fn_t"         # string offset=3657
.Linfo_string362:
	.asciz	"calloc"                # string offset=3671
.Linfo_string363:
	.asciz	"div"                   # string offset=3678
.Linfo_string364:
	.asciz	"exit"                  # string offset=3682
.Linfo_string365:
	.asciz	"free"                  # string offset=3687
.Linfo_string366:
	.asciz	"getenv"                # string offset=3692
.Linfo_string367:
	.asciz	"labs"                  # string offset=3699
.Linfo_string368:
	.asciz	"ldiv"                  # string offset=3704
.Linfo_string369:
	.asciz	"malloc"                # string offset=3709
.Linfo_string370:
	.asciz	"mblen"                 # string offset=3716
.Linfo_string371:
	.asciz	"mbstowcs"              # string offset=3722
.Linfo_string372:
	.asciz	"mbtowc"                # string offset=3731
.Linfo_string373:
	.asciz	"qsort"                 # string offset=3738
.Linfo_string374:
	.asciz	"quick_exit"            # string offset=3744
.Linfo_string375:
	.asciz	"rand"                  # string offset=3755
.Linfo_string376:
	.asciz	"realloc"               # string offset=3760
.Linfo_string377:
	.asciz	"srand"                 # string offset=3768
.Linfo_string378:
	.asciz	"strtod"                # string offset=3774
.Linfo_string379:
	.asciz	"strtol"                # string offset=3781
.Linfo_string380:
	.asciz	"strtoul"               # string offset=3788
.Linfo_string381:
	.asciz	"system"                # string offset=3796
.Linfo_string382:
	.asciz	"wcstombs"              # string offset=3803
.Linfo_string383:
	.asciz	"wctomb"                # string offset=3812
.Linfo_string384:
	.asciz	"lldiv_t"               # string offset=3819
.Linfo_string385:
	.asciz	"_Exit"                 # string offset=3827
.Linfo_string386:
	.asciz	"llabs"                 # string offset=3833
.Linfo_string387:
	.asciz	"lldiv"                 # string offset=3839
.Linfo_string388:
	.asciz	"atoll"                 # string offset=3845
.Linfo_string389:
	.asciz	"strtoll"               # string offset=3851
.Linfo_string390:
	.asciz	"strtoull"              # string offset=3859
.Linfo_string391:
	.asciz	"strtof"                # string offset=3868
.Linfo_string392:
	.asciz	"strtold"               # string offset=3875
.Linfo_string393:
	.asciz	"_ZN9__gnu_cxx3divExx"  # string offset=3883
.Linfo_string394:
	.asciz	"FILE"                  # string offset=3904
.Linfo_string395:
	.asciz	"_G_fpos_t"             # string offset=3909
.Linfo_string396:
	.asciz	"__fpos_t"              # string offset=3919
.Linfo_string397:
	.asciz	"fpos_t"                # string offset=3928
.Linfo_string398:
	.asciz	"clearerr"              # string offset=3935
.Linfo_string399:
	.asciz	"fclose"                # string offset=3944
.Linfo_string400:
	.asciz	"feof"                  # string offset=3951
.Linfo_string401:
	.asciz	"ferror"                # string offset=3956
.Linfo_string402:
	.asciz	"fflush"                # string offset=3963
.Linfo_string403:
	.asciz	"fgetc"                 # string offset=3970
.Linfo_string404:
	.asciz	"fgetpos"               # string offset=3976
.Linfo_string405:
	.asciz	"fgets"                 # string offset=3984
.Linfo_string406:
	.asciz	"fopen"                 # string offset=3990
.Linfo_string407:
	.asciz	"fprintf"               # string offset=3996
.Linfo_string408:
	.asciz	"fputc"                 # string offset=4004
.Linfo_string409:
	.asciz	"fputs"                 # string offset=4010
.Linfo_string410:
	.asciz	"fread"                 # string offset=4016
.Linfo_string411:
	.asciz	"freopen"               # string offset=4022
.Linfo_string412:
	.asciz	"__isoc99_fscanf"       # string offset=4030
.Linfo_string413:
	.asciz	"fscanf"                # string offset=4046
.Linfo_string414:
	.asciz	"fseek"                 # string offset=4053
.Linfo_string415:
	.asciz	"fsetpos"               # string offset=4059
.Linfo_string416:
	.asciz	"ftell"                 # string offset=4067
.Linfo_string417:
	.asciz	"fwrite"                # string offset=4073
.Linfo_string418:
	.asciz	"getc"                  # string offset=4080
.Linfo_string419:
	.asciz	"getchar"               # string offset=4085
.Linfo_string420:
	.asciz	"perror"                # string offset=4093
.Linfo_string421:
	.asciz	"printf"                # string offset=4100
.Linfo_string422:
	.asciz	"putc"                  # string offset=4107
.Linfo_string423:
	.asciz	"putchar"               # string offset=4112
.Linfo_string424:
	.asciz	"puts"                  # string offset=4120
.Linfo_string425:
	.asciz	"remove"                # string offset=4125
.Linfo_string426:
	.asciz	"rename"                # string offset=4132
.Linfo_string427:
	.asciz	"rewind"                # string offset=4139
.Linfo_string428:
	.asciz	"__isoc99_scanf"        # string offset=4146
.Linfo_string429:
	.asciz	"scanf"                 # string offset=4161
.Linfo_string430:
	.asciz	"setbuf"                # string offset=4167
.Linfo_string431:
	.asciz	"setvbuf"               # string offset=4174
.Linfo_string432:
	.asciz	"sprintf"               # string offset=4182
.Linfo_string433:
	.asciz	"__isoc99_sscanf"       # string offset=4190
.Linfo_string434:
	.asciz	"sscanf"                # string offset=4206
.Linfo_string435:
	.asciz	"tmpfile"               # string offset=4213
.Linfo_string436:
	.asciz	"tmpnam"                # string offset=4221
.Linfo_string437:
	.asciz	"ungetc"                # string offset=4228
.Linfo_string438:
	.asciz	"vfprintf"              # string offset=4235
.Linfo_string439:
	.asciz	"vprintf"               # string offset=4244
.Linfo_string440:
	.asciz	"vsprintf"              # string offset=4252
.Linfo_string441:
	.asciz	"snprintf"              # string offset=4261
.Linfo_string442:
	.asciz	"__isoc99_vfscanf"      # string offset=4270
.Linfo_string443:
	.asciz	"vfscanf"               # string offset=4287
.Linfo_string444:
	.asciz	"__isoc99_vscanf"       # string offset=4295
.Linfo_string445:
	.asciz	"vscanf"                # string offset=4311
.Linfo_string446:
	.asciz	"vsnprintf"             # string offset=4318
.Linfo_string447:
	.asciz	"__isoc99_vsscanf"      # string offset=4328
.Linfo_string448:
	.asciz	"vsscanf"               # string offset=4345
.Linfo_string449:
	.asciz	"__default_lock_policy" # string offset=4353
.Linfo_string450:
	.asciz	"_ZN9__gnu_cxxL21__default_lock_policyE" # string offset=4375
.Linfo_string451:
	.asciz	"wctrans_t"             # string offset=4414
.Linfo_string452:
	.asciz	"wctype_t"              # string offset=4424
.Linfo_string453:
	.asciz	"iswalnum"              # string offset=4433
.Linfo_string454:
	.asciz	"iswalpha"              # string offset=4442
.Linfo_string455:
	.asciz	"iswblank"              # string offset=4451
.Linfo_string456:
	.asciz	"iswcntrl"              # string offset=4460
.Linfo_string457:
	.asciz	"iswctype"              # string offset=4469
.Linfo_string458:
	.asciz	"iswdigit"              # string offset=4478
.Linfo_string459:
	.asciz	"iswgraph"              # string offset=4487
.Linfo_string460:
	.asciz	"iswlower"              # string offset=4496
.Linfo_string461:
	.asciz	"iswprint"              # string offset=4505
.Linfo_string462:
	.asciz	"iswpunct"              # string offset=4514
.Linfo_string463:
	.asciz	"iswspace"              # string offset=4523
.Linfo_string464:
	.asciz	"iswupper"              # string offset=4532
.Linfo_string465:
	.asciz	"iswxdigit"             # string offset=4541
.Linfo_string466:
	.asciz	"towctrans"             # string offset=4551
.Linfo_string467:
	.asciz	"towlower"              # string offset=4561
.Linfo_string468:
	.asciz	"towupper"              # string offset=4570
.Linfo_string469:
	.asciz	"wctrans"               # string offset=4579
.Linfo_string470:
	.asciz	"wctype"                # string offset=4587
.Linfo_string471:
	.asciz	"ILLIXR_AUDIO"          # string offset=4594
.Linfo_string472:
	.asciz	"srcFile"               # string offset=4607
.Linfo_string473:
	.asciz	"basic_fstream<char, std::char_traits<char> >" # string offset=4615
.Linfo_string474:
	.asciz	"fstream"               # string offset=4660
.Linfo_string475:
	.asciz	"sample"                # string offset=4668
.Linfo_string476:
	.asciz	"BFormat"               # string offset=4675
.Linfo_string477:
	.asciz	"CBFormat"              # string offset=4683
.Linfo_string478:
	.asciz	"BEncoder"              # string offset=4692
.Linfo_string479:
	.asciz	"CAmbisonicEncoderDist" # string offset=4701
.Linfo_string480:
	.asciz	"srcPos"                # string offset=4723
.Linfo_string481:
	.asciz	"fAzimuth"              # string offset=4730
.Linfo_string482:
	.asciz	"fElevation"            # string offset=4739
.Linfo_string483:
	.asciz	"fDistance"             # string offset=4750
.Linfo_string484:
	.asciz	"PolarPoint"            # string offset=4760
.Linfo_string485:
	.asciz	"amp"                   # string offset=4771
.Linfo_string486:
	.asciz	"Sound"                 # string offset=4775
.Linfo_string487:
	.asciz	"~Sound"                # string offset=4781
.Linfo_string488:
	.asciz	"__cxx11"               # string offset=4788
.Linfo_string489:
	.asciz	"basic_string<char, std::char_traits<char>, std::allocator<char> >" # string offset=4796
.Linfo_string490:
	.asciz	"string"                # string offset=4862
.Linfo_string491:
	.asciz	"_ZN12ILLIXR_AUDIO5Sound9setSrcPosER10PolarPoint" # string offset=4869
.Linfo_string492:
	.asciz	"setSrcPos"             # string offset=4917
.Linfo_string493:
	.asciz	"_ZN12ILLIXR_AUDIO5Sound9setSrcAmpEf" # string offset=4927
.Linfo_string494:
	.asciz	"setSrcAmp"             # string offset=4963
.Linfo_string495:
	.asciz	"_ZN12ILLIXR_AUDIO5Sound13readInBFormatEv" # string offset=4973
.Linfo_string496:
	.asciz	"readInBFormat"         # string offset=5014
.Linfo_string497:
	.asciz	"_ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb" # string offset=5028
.Linfo_string498:
	.asciz	"_ZStorSt12_Ios_IostateS_" # string offset=5109
.Linfo_string499:
	.asciz	"operator|"             # string offset=5134
.Linfo_string500:
	.asciz	"_ZN12ILLIXR_AUDIO5SoundD2Ev" # string offset=5144
.Linfo_string501:
	.asciz	"temp"                  # string offset=5172
.Linfo_string502:
	.asciz	"this"                  # string offset=5177
.Linfo_string503:
	.asciz	"srcFilename"           # string offset=5182
.Linfo_string504:
	.asciz	"nOrder"                # string offset=5194
.Linfo_string505:
	.asciz	"b3D"                   # string offset=5201
.Linfo_string506:
	.asciz	"ok"                    # string offset=5205
.Linfo_string507:
	.asciz	"__a"                   # string offset=5208
.Linfo_string508:
	.asciz	"__b"                   # string offset=5212
.Linfo_string509:
	.asciz	"pos"                   # string offset=5216
.Linfo_string510:
	.asciz	"ampScale"              # string offset=5220
.Linfo_string511:
	.asciz	"sampleTemp"            # string offset=5229
.Linfo_string512:
	.asciz	"i"                     # string offset=5240
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp9
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp9
	.quad	.Ltmp16
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	.Ltmp18
	.quad	.Ltmp21
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Lfunc_begin0
	.quad	.Ltmp9
	.short	2                       # Loc expr size
	.byte	116                     # DW_OP_breg4
	.byte	0                       # 0
	.quad	.Ltmp9
	.quad	.Ltmp11
	.short	2                       # Loc expr size
	.byte	127                     # DW_OP_breg15
	.byte	0                       # 0
	.quad	.Ltmp11
	.quad	.Ltmp12
	.short	2                       # Loc expr size
	.byte	116                     # DW_OP_breg4
	.byte	0                       # 0
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Lfunc_begin0
	.quad	.Ltmp9
	.short	1                       # Loc expr size
	.byte	81                      # super-register DW_OP_reg1
	.quad	.Ltmp9
	.quad	.Ltmp17
	.short	1                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.quad	.Ltmp18
	.quad	.Lfunc_end0
	.short	1                       # Loc expr size
	.byte	94                      # super-register DW_OP_reg14
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Lfunc_begin0
	.quad	.Ltmp10
	.short	1                       # Loc expr size
	.byte	82                      # super-register DW_OP_reg2
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Lfunc_begin1
	.quad	.Ltmp22
	.short	1                       # Loc expr size
	.byte	85                      # super-register DW_OP_reg5
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Lfunc_begin2
	.quad	.Ltmp24
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp24
	.quad	.Ltmp26
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Lfunc_begin2
	.quad	.Ltmp25
	.short	1                       # Loc expr size
	.byte	84                      # DW_OP_reg4
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Lfunc_begin4
	.quad	.Ltmp29
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp29
	.quad	.Ltmp34
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Ltmp30
	.quad	.Lfunc_end4
	.short	3                       # Loc expr size
	.byte	17                      # DW_OP_consts
	.byte	0                       # 0
	.byte	159                     # DW_OP_stack_value
	.quad	0
	.quad	0
.Ldebug_loc9:
	.quad	.Lfunc_begin5
	.quad	.Ltmp39
	.short	1                       # Loc expr size
	.byte	85                      # DW_OP_reg5
	.quad	.Ltmp39
	.quad	.Ltmp46
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	.Ltmp47
	.quad	.Ltmp48
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	.Ltmp49
	.quad	.Lfunc_end5
	.short	1                       # Loc expr size
	.byte	83                      # DW_OP_reg3
	.quad	0
	.quad	0
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\264B"                 # DW_AT_GNU_pubnames
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	4                       # DW_TAG_enumeration_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	8                       # DW_TAG_imported_declaration
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	8                       # DW_TAG_imported_declaration
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	99                      # DW_AT_explicit
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	99                      # DW_AT_explicit
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.ascii	"\211\001"              # DW_AT_export_symbols
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	31                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	32                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	33                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	34                      # Abbreviation Code
	.byte	58                      # DW_TAG_imported_module
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	35                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	36                      # Abbreviation Code
	.byte	16                      # DW_TAG_reference_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	37                      # Abbreviation Code
	.byte	59                      # DW_TAG_unspecified_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	38                      # Abbreviation Code
	.byte	66                      # DW_TAG_rvalue_reference_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	39                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	40                      # Abbreviation Code
	.byte	23                      # DW_TAG_union_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	41                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	42                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	43                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	44                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	45                      # Abbreviation Code
	.byte	55                      # DW_TAG_restrict_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	46                      # Abbreviation Code
	.byte	24                      # DW_TAG_unspecified_parameters
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	47                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	48                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	49                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	50                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	51                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	0                       # DW_CHILDREN_no
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	52                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	53                      # Abbreviation Code
	.byte	21                      # DW_TAG_subroutine_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	54                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	55                      # Abbreviation Code
	.byte	21                      # DW_TAG_subroutine_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	56                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	57                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	58                      # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	5                       # DW_FORM_data2
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	59                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	60                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	61                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	62                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	100                     # DW_AT_object_pointer
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	71                      # DW_AT_specification
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	63                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	64                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	65                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	66                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	67                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	100                     # DW_AT_object_pointer
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	71                      # DW_AT_specification
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	68                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	69                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	23                      # DW_FORM_sec_offset
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	12114                   # Length of Unit
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x2f4b DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	4                       # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                       # DW_AT_low_pc
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	2                       # Abbrev [2] 0x2a:0xd1 DW_TAG_namespace
	.long	.Linfo_string3          # DW_AT_name
	.byte	3                       # Abbrev [3] 0x2f:0x1b DW_TAG_enumeration_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x37:0x6 DW_TAG_enumerator
	.long	.Linfo_string4          # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x3d:0x6 DW_TAG_enumerator
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x43:0x6 DW_TAG_enumerator
	.long	.Linfo_string6          # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4a:0x7 DW_TAG_imported_declaration
	.byte	13                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	1854                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x51:0x7 DW_TAG_imported_declaration
	.byte	13                      # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	401                     # DW_AT_import
	.byte	5                       # Abbrev [5] 0x58:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.long	7917                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x5f:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.long	7940                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x67:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.long	7968                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x6f:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	9525                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x76:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	9565                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7d:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	210                     # DW_AT_decl_line
	.long	9579                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x84:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	216                     # DW_AT_decl_line
	.long	9597                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8b:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	227                     # DW_AT_decl_line
	.long	9620                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x92:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	228                     # DW_AT_decl_line
	.long	9637                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x99:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	229                     # DW_AT_decl_line
	.long	9664                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa0:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	231                     # DW_AT_decl_line
	.long	9691                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa7:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	232                     # DW_AT_decl_line
	.long	9713                    # DW_AT_import
	.byte	7                       # Abbrev [7] 0xae:0x1a DW_TAG_subprogram
	.long	.Linfo_string393        # DW_AT_linkage_name
	.long	.Linfo_string363        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	213                     # DW_AT_decl_line
	.long	9525                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xbd:0x5 DW_TAG_formal_parameter
	.long	4995                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0xc2:0x5 DW_TAG_formal_parameter
	.long	4995                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0xc8:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	175                     # DW_AT_decl_line
	.long	10680                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcf:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	10709                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd6:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	177                     # DW_AT_decl_line
	.long	10741                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xdd:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	178                     # DW_AT_decl_line
	.long	10768                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xe4:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	179                     # DW_AT_decl_line
	.long	10801                   # DW_AT_import
	.byte	9                       # Abbrev [9] 0xeb:0xf DW_TAG_variable
	.long	.Linfo_string449        # DW_AT_name
	.long	10833                   # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
                                        # DW_AT_declaration
	.long	.Linfo_string450        # DW_AT_linkage_name
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xfb:0xcd9 DW_TAG_namespace
	.long	.Linfo_string8          # DW_AT_name
	.byte	3                       # Abbrev [3] 0x100:0x49 DW_TAG_enumeration_type
	.long	.Linfo_string18         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	111                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x108:0x6 DW_TAG_enumerator
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x10e:0x6 DW_TAG_enumerator
	.long	.Linfo_string10         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x114:0x6 DW_TAG_enumerator
	.long	.Linfo_string11         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x11a:0x6 DW_TAG_enumerator
	.long	.Linfo_string12         # DW_AT_name
	.byte	8                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x120:0x6 DW_TAG_enumerator
	.long	.Linfo_string13         # DW_AT_name
	.byte	16                      # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x126:0x6 DW_TAG_enumerator
	.long	.Linfo_string14         # DW_AT_name
	.byte	32                      # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x12c:0x8 DW_TAG_enumerator
	.long	.Linfo_string15         # DW_AT_name
	.ascii	"\200\200\004"          # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x134:0xa DW_TAG_enumerator
	.long	.Linfo_string16         # DW_AT_name
	.ascii	"\377\377\377\377\007"  # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x13e:0xa DW_TAG_enumerator
	.long	.Linfo_string17         # DW_AT_name
	.ascii	"\200\200\200\200x"     # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x149:0x3d DW_TAG_enumeration_type
	.long	.Linfo_string26         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x151:0x6 DW_TAG_enumerator
	.long	.Linfo_string19         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x157:0x6 DW_TAG_enumerator
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x15d:0x6 DW_TAG_enumerator
	.long	.Linfo_string21         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x163:0x6 DW_TAG_enumerator
	.long	.Linfo_string22         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x169:0x8 DW_TAG_enumerator
	.long	.Linfo_string23         # DW_AT_name
	.ascii	"\200\200\004"          # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x171:0xa DW_TAG_enumerator
	.long	.Linfo_string24         # DW_AT_name
	.ascii	"\377\377\377\377\007"  # DW_AT_const_value
	.byte	4                       # Abbrev [4] 0x17b:0xa DW_TAG_enumerator
	.long	.Linfo_string25         # DW_AT_name
	.ascii	"\200\200\200\200x"     # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x186:0xb DW_TAG_typedef
	.long	401                     # DW_AT_type
	.long	.Linfo_string30         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x191:0xb DW_TAG_typedef
	.long	3552                    # DW_AT_type
	.long	.Linfo_string29         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x19c:0x5 DW_TAG_class_type
	.long	.Linfo_string32         # DW_AT_name
                                        # DW_AT_declaration
	.byte	5                       # Abbrev [5] 0x1a1:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	3566                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1a8:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.long	3584                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1af:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.long	3608                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1b6:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	121                     # DW_AT_decl_line
	.long	3625                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1bd:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	3642                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1c4:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	161                     # DW_AT_decl_line
	.long	3664                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1cb:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.long	3681                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1d2:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	199                     # DW_AT_decl_line
	.long	3698                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1d9:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	218                     # DW_AT_decl_line
	.long	3715                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x1e0:0x7 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.byte	237                     # DW_AT_decl_line
	.long	3732                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x1e7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.long	3749                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x1ef:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	275                     # DW_AT_decl_line
	.long	3766                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x1f7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.long	3788                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x1ff:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	315                     # DW_AT_decl_line
	.long	3815                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x207:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	334                     # DW_AT_decl_line
	.long	3837                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x20f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	353                     # DW_AT_decl_line
	.long	3854                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x217:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	372                     # DW_AT_decl_line
	.long	3871                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x21f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	384                     # DW_AT_decl_line
	.long	3898                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x227:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	421                     # DW_AT_decl_line
	.long	3920                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x22f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	440                     # DW_AT_decl_line
	.long	3937                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x237:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	459                     # DW_AT_decl_line
	.long	3954                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x23f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	478                     # DW_AT_decl_line
	.long	3971                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x247:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	497                     # DW_AT_decl_line
	.long	3988                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x24f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1065                    # DW_AT_decl_line
	.long	4005                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x257:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1066                    # DW_AT_decl_line
	.long	4016                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x25f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1069                    # DW_AT_decl_line
	.long	4034                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x267:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1070                    # DW_AT_decl_line
	.long	4051                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x26f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1071                    # DW_AT_decl_line
	.long	4068                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x277:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1073                    # DW_AT_decl_line
	.long	4092                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x27f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1074                    # DW_AT_decl_line
	.long	4109                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x287:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1075                    # DW_AT_decl_line
	.long	4126                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x28f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1077                    # DW_AT_decl_line
	.long	4143                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x297:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1078                    # DW_AT_decl_line
	.long	4160                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x29f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1079                    # DW_AT_decl_line
	.long	4177                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2a7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1081                    # DW_AT_decl_line
	.long	4194                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2af:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1082                    # DW_AT_decl_line
	.long	4211                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2b7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1083                    # DW_AT_decl_line
	.long	4228                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2bf:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1085                    # DW_AT_decl_line
	.long	4245                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2c7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1086                    # DW_AT_decl_line
	.long	4267                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2cf:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1087                    # DW_AT_decl_line
	.long	4289                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2d7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1089                    # DW_AT_decl_line
	.long	4311                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2df:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1090                    # DW_AT_decl_line
	.long	4328                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2e7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1091                    # DW_AT_decl_line
	.long	4345                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2ef:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1093                    # DW_AT_decl_line
	.long	4362                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2f7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1094                    # DW_AT_decl_line
	.long	4379                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x2ff:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1095                    # DW_AT_decl_line
	.long	4396                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x307:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1097                    # DW_AT_decl_line
	.long	4413                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x30f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1098                    # DW_AT_decl_line
	.long	4430                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x317:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1099                    # DW_AT_decl_line
	.long	4447                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x31f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1101                    # DW_AT_decl_line
	.long	4464                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x327:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1102                    # DW_AT_decl_line
	.long	4481                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x32f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1103                    # DW_AT_decl_line
	.long	4498                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x337:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1105                    # DW_AT_decl_line
	.long	4515                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x33f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1106                    # DW_AT_decl_line
	.long	4538                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x347:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1107                    # DW_AT_decl_line
	.long	4561                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x34f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1109                    # DW_AT_decl_line
	.long	4584                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x357:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1110                    # DW_AT_decl_line
	.long	4612                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x35f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1111                    # DW_AT_decl_line
	.long	4640                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x367:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1113                    # DW_AT_decl_line
	.long	4668                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x36f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1114                    # DW_AT_decl_line
	.long	4691                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x377:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1115                    # DW_AT_decl_line
	.long	4714                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x37f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1117                    # DW_AT_decl_line
	.long	4737                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x387:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1118                    # DW_AT_decl_line
	.long	4760                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x38f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1119                    # DW_AT_decl_line
	.long	4783                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x397:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1121                    # DW_AT_decl_line
	.long	4806                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x39f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1122                    # DW_AT_decl_line
	.long	4828                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3a7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1123                    # DW_AT_decl_line
	.long	4850                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3af:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1125                    # DW_AT_decl_line
	.long	4872                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3b7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1126                    # DW_AT_decl_line
	.long	4890                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3bf:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1127                    # DW_AT_decl_line
	.long	4908                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3c7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1129                    # DW_AT_decl_line
	.long	4926                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3cf:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1130                    # DW_AT_decl_line
	.long	4943                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3d7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1131                    # DW_AT_decl_line
	.long	4960                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3df:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1134                    # DW_AT_decl_line
	.long	4977                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3e7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1135                    # DW_AT_decl_line
	.long	5002                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3ef:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1136                    # DW_AT_decl_line
	.long	5020                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3f7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1138                    # DW_AT_decl_line
	.long	5038                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x3ff:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1139                    # DW_AT_decl_line
	.long	5056                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x407:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1140                    # DW_AT_decl_line
	.long	5074                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x40f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1143                    # DW_AT_decl_line
	.long	5092                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x417:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1144                    # DW_AT_decl_line
	.long	5109                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x41f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1145                    # DW_AT_decl_line
	.long	5126                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x427:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1147                    # DW_AT_decl_line
	.long	5143                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x42f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1148                    # DW_AT_decl_line
	.long	5160                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x437:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1149                    # DW_AT_decl_line
	.long	5177                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x43f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1151                    # DW_AT_decl_line
	.long	5194                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x447:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1152                    # DW_AT_decl_line
	.long	5211                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x44f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1153                    # DW_AT_decl_line
	.long	5228                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x457:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1155                    # DW_AT_decl_line
	.long	5245                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x45f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1156                    # DW_AT_decl_line
	.long	5263                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x467:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1157                    # DW_AT_decl_line
	.long	5281                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x46f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1159                    # DW_AT_decl_line
	.long	5299                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x477:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1160                    # DW_AT_decl_line
	.long	5317                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x47f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1161                    # DW_AT_decl_line
	.long	5335                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x487:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1163                    # DW_AT_decl_line
	.long	5353                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x48f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1164                    # DW_AT_decl_line
	.long	5380                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x497:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1165                    # DW_AT_decl_line
	.long	5397                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x49f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1167                    # DW_AT_decl_line
	.long	5414                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4a7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1168                    # DW_AT_decl_line
	.long	5432                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4af:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1169                    # DW_AT_decl_line
	.long	5450                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4b7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1171                    # DW_AT_decl_line
	.long	5468                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4bf:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1172                    # DW_AT_decl_line
	.long	5491                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4c7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1173                    # DW_AT_decl_line
	.long	5514                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4cf:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1175                    # DW_AT_decl_line
	.long	5537                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4d7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1176                    # DW_AT_decl_line
	.long	5560                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4df:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1177                    # DW_AT_decl_line
	.long	5583                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4e7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1179                    # DW_AT_decl_line
	.long	5606                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4ef:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1180                    # DW_AT_decl_line
	.long	5629                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4f7:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1181                    # DW_AT_decl_line
	.long	5652                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x4ff:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1183                    # DW_AT_decl_line
	.long	5675                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x507:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1184                    # DW_AT_decl_line
	.long	5703                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x50f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1185                    # DW_AT_decl_line
	.long	5731                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x517:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1187                    # DW_AT_decl_line
	.long	5759                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x51f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1188                    # DW_AT_decl_line
	.long	5777                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x527:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1189                    # DW_AT_decl_line
	.long	5795                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x52f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1191                    # DW_AT_decl_line
	.long	5813                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x537:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1192                    # DW_AT_decl_line
	.long	5831                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x53f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1193                    # DW_AT_decl_line
	.long	5849                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x547:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1195                    # DW_AT_decl_line
	.long	5867                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x54f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1196                    # DW_AT_decl_line
	.long	5890                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x557:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1197                    # DW_AT_decl_line
	.long	5913                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x55f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1199                    # DW_AT_decl_line
	.long	5936                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x567:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1200                    # DW_AT_decl_line
	.long	5959                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x56f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1201                    # DW_AT_decl_line
	.long	5982                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x577:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1203                    # DW_AT_decl_line
	.long	6005                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x57f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1204                    # DW_AT_decl_line
	.long	6022                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x587:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1205                    # DW_AT_decl_line
	.long	6039                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x58f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1207                    # DW_AT_decl_line
	.long	6056                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x597:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1208                    # DW_AT_decl_line
	.long	6074                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x59f:0x8 DW_TAG_imported_declaration
	.byte	8                       # DW_AT_decl_file
	.short	1209                    # DW_AT_decl_line
	.long	6092                    # DW_AT_import
	.byte	7                       # Abbrev [7] 0x5a7:0x15 DW_TAG_subprogram
	.long	.Linfo_string167        # DW_AT_linkage_name
	.long	.Linfo_string33         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	6110                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x5b6:0x5 DW_TAG_formal_parameter
	.long	6110                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x5bc:0x1b DW_TAG_subprogram
	.long	.Linfo_string169        # DW_AT_linkage_name
	.long	.Linfo_string50         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	380                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x5cc:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x5d1:0x5 DW_TAG_formal_parameter
	.long	6124                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x5d7:0x5 DW_TAG_namespace
	.long	.Linfo_string171        # DW_AT_name
	.byte	2                       # Abbrev [2] 0x5dc:0x139 DW_TAG_namespace
	.long	.Linfo_string172        # DW_AT_name
	.byte	14                      # Abbrev [14] 0x5e1:0x12c DW_TAG_class_type
	.long	.Linfo_string174        # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	12                      # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x5e9:0xc DW_TAG_member
	.long	.Linfo_string173        # DW_AT_name
	.long	6149                    # DW_AT_type
	.byte	12                      # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	16                      # Abbrev [16] 0x5f5:0x12 DW_TAG_subprogram
	.long	.Linfo_string174        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_explicit
	.byte	17                      # Abbrev [17] 0x5fc:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x601:0x5 DW_TAG_formal_parameter
	.long	6149                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x607:0x11 DW_TAG_subprogram
	.long	.Linfo_string175        # DW_AT_linkage_name
	.long	.Linfo_string176        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                      # Abbrev [17] 0x612:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x618:0x11 DW_TAG_subprogram
	.long	.Linfo_string177        # DW_AT_linkage_name
	.long	.Linfo_string178        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                      # Abbrev [17] 0x623:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x629:0x15 DW_TAG_subprogram
	.long	.Linfo_string179        # DW_AT_linkage_name
	.long	.Linfo_string180        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	88                      # DW_AT_decl_line
	.long	6149                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                      # Abbrev [17] 0x638:0x5 DW_TAG_formal_parameter
	.long	6155                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x63e:0xe DW_TAG_subprogram
	.long	.Linfo_string174        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x646:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x64c:0x13 DW_TAG_subprogram
	.long	.Linfo_string174        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x654:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x659:0x5 DW_TAG_formal_parameter
	.long	6165                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x65f:0x13 DW_TAG_subprogram
	.long	.Linfo_string174        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x667:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x66c:0x5 DW_TAG_formal_parameter
	.long	1813                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x672:0x13 DW_TAG_subprogram
	.long	.Linfo_string174        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x67a:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x67f:0x5 DW_TAG_formal_parameter
	.long	6175                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x685:0x1b DW_TAG_subprogram
	.long	.Linfo_string183        # DW_AT_linkage_name
	.long	.Linfo_string184        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	118                     # DW_AT_decl_line
	.long	6180                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x695:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x69a:0x5 DW_TAG_formal_parameter
	.long	6165                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x6a0:0x1b DW_TAG_subprogram
	.long	.Linfo_string185        # DW_AT_linkage_name
	.long	.Linfo_string184        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	6180                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x6b0:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x6b5:0x5 DW_TAG_formal_parameter
	.long	6175                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x6bb:0xe DW_TAG_subprogram
	.long	.Linfo_string186        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	129                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x6c3:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x6c9:0x17 DW_TAG_subprogram
	.long	.Linfo_string187        # DW_AT_linkage_name
	.long	.Linfo_string188        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x6d5:0x5 DW_TAG_formal_parameter
	.long	6150                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x6da:0x5 DW_TAG_formal_parameter
	.long	6180                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	22                      # Abbrev [22] 0x6e0:0x16 DW_TAG_subprogram
	.long	.Linfo_string189        # DW_AT_linkage_name
	.long	.Linfo_string190        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	6185                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
                                        # DW_AT_explicit
	.byte	17                      # Abbrev [17] 0x6f0:0x5 DW_TAG_formal_parameter
	.long	6155                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x6f6:0x16 DW_TAG_subprogram
	.long	.Linfo_string192        # DW_AT_linkage_name
	.long	.Linfo_string193        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.long	6192                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x706:0x5 DW_TAG_formal_parameter
	.long	6155                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x70d:0x7 DW_TAG_imported_declaration
	.byte	12                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	1837                    # DW_AT_import
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0x715:0xc DW_TAG_typedef
	.long	6170                    # DW_AT_type
	.long	.Linfo_string182        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x721:0x5 DW_TAG_class_type
	.long	.Linfo_string194        # DW_AT_name
                                        # DW_AT_declaration
	.byte	5                       # Abbrev [5] 0x726:0x7 DW_TAG_imported_declaration
	.byte	12                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	1505                    # DW_AT_import
	.byte	24                      # Abbrev [24] 0x72d:0x11 DW_TAG_subprogram
	.long	.Linfo_string195        # DW_AT_linkage_name
	.long	.Linfo_string196        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	8                       # Abbrev [8] 0x738:0x5 DW_TAG_formal_parameter
	.long	1505                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x73e:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string198        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x749:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	6209                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x750:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	6315                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x757:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	6326                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x75e:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	6344                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x765:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	6383                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x76c:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	6433                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x773:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	6456                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x77a:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	148                     # DW_AT_decl_line
	.long	6494                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x781:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.long	6517                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x788:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	150                     # DW_AT_decl_line
	.long	6541                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x78f:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	151                     # DW_AT_decl_line
	.long	6569                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x796:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	152                     # DW_AT_decl_line
	.long	6587                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x79d:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.long	6599                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7a4:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.long	6653                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7ab:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	155                     # DW_AT_decl_line
	.long	6686                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7b2:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	156                     # DW_AT_decl_line
	.long	6714                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7b9:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	157                     # DW_AT_decl_line
	.long	6757                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7c0:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	158                     # DW_AT_decl_line
	.long	6780                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7c7:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.long	6798                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7ce:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.long	6827                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7d5:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	163                     # DW_AT_decl_line
	.long	6855                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7dc:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	164                     # DW_AT_decl_line
	.long	6878                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7e3:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.long	6958                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7ea:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	6990                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7f1:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	172                     # DW_AT_decl_line
	.long	7023                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7f8:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	174                     # DW_AT_decl_line
	.long	7055                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x7ff:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	7078                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x806:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	178                     # DW_AT_decl_line
	.long	7105                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x80d:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	179                     # DW_AT_decl_line
	.long	7138                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x814:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.long	7160                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x81b:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
	.long	7182                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x822:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	182                     # DW_AT_decl_line
	.long	7204                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x829:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	183                     # DW_AT_decl_line
	.long	7226                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x830:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	184                     # DW_AT_decl_line
	.long	7248                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x837:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	185                     # DW_AT_decl_line
	.long	7301                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x83e:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	186                     # DW_AT_decl_line
	.long	7318                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x845:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	7345                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x84c:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.long	7372                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x853:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.long	7399                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x85a:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	190                     # DW_AT_decl_line
	.long	7442                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x861:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	191                     # DW_AT_decl_line
	.long	7464                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x868:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	193                     # DW_AT_decl_line
	.long	7497                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x86f:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	195                     # DW_AT_decl_line
	.long	7520                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x876:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	196                     # DW_AT_decl_line
	.long	7547                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x87d:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	197                     # DW_AT_decl_line
	.long	7575                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x884:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	198                     # DW_AT_decl_line
	.long	7603                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x88b:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	199                     # DW_AT_decl_line
	.long	7630                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x892:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	7648                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x899:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	201                     # DW_AT_decl_line
	.long	7676                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8a0:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	202                     # DW_AT_decl_line
	.long	7704                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8a7:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	203                     # DW_AT_decl_line
	.long	7732                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8ae:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	204                     # DW_AT_decl_line
	.long	7760                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8b5:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	205                     # DW_AT_decl_line
	.long	7779                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8bc:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	7802                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8c3:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	207                     # DW_AT_decl_line
	.long	7824                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8ca:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	208                     # DW_AT_decl_line
	.long	7846                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8d1:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	209                     # DW_AT_decl_line
	.long	7868                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x8d8:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	210                     # DW_AT_decl_line
	.long	7890                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x8df:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	267                     # DW_AT_decl_line
	.long	7917                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x8e7:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.long	7940                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x8ef:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	269                     # DW_AT_decl_line
	.long	7968                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x8f7:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	283                     # DW_AT_decl_line
	.long	7497                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x8ff:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	286                     # DW_AT_decl_line
	.long	6958                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x907:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	289                     # DW_AT_decl_line
	.long	7023                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x90f:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.long	7078                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x917:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.long	7917                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x91f:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	297                     # DW_AT_decl_line
	.long	7940                    # DW_AT_import
	.byte	6                       # Abbrev [6] 0x927:0x8 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.short	298                     # DW_AT_decl_line
	.long	7968                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x92f:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	8003                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x936:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	8032                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x93d:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	8061                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x944:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	8083                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x94b:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	8105                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x952:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	8116                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x959:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	8127                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x960:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	8138                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x967:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	8149                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x96e:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	8171                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x975:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	8193                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x97c:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	8215                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x983:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	8237                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x98a:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.long	8259                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x991:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	8270                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x998:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	8299                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x99f:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	8328                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9a6:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	8350                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9ad:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	8372                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9b4:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	8383                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9bb:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	8394                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9c2:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	8405                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9c9:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	8416                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9d0:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	8438                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9d7:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	8460                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9de:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	8482                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9e5:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	8504                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9ec:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	8526                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9f3:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	8537                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x9fa:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	8542                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa01:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	8564                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa08:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	8580                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa0f:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	8597                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa16:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	8614                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa1d:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	8631                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa24:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	8648                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa2b:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	8665                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa32:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	8682                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa39:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	8699                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa40:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	8716                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa47:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	8733                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa4e:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	8750                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa55:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	8767                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa5c:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	8784                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa63:0x7 DW_TAG_imported_declaration
	.byte	29                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	8801                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa6a:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	8818                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa71:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	8830                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa78:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	8870                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa7f:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	8878                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa86:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	137                     # DW_AT_decl_line
	.long	8902                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa8d:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	8920                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa94:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	8937                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xa9b:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.long	8954                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xaa2:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	8971                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xaa9:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	9048                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xab0:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	9071                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xab7:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	9094                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xabe:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	9108                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xac5:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	148                     # DW_AT_decl_line
	.long	9122                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xacc:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.long	9140                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xad3:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	150                     # DW_AT_decl_line
	.long	9158                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xada:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	151                     # DW_AT_decl_line
	.long	9181                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xae1:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.long	9199                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xae8:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.long	9222                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xaef:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	155                     # DW_AT_decl_line
	.long	9250                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xaf6:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	157                     # DW_AT_decl_line
	.long	9278                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xafd:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.long	9307                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb04:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	163                     # DW_AT_decl_line
	.long	9321                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb0b:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	164                     # DW_AT_decl_line
	.long	9333                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb12:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	165                     # DW_AT_decl_line
	.long	9356                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb19:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.long	9370                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb20:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	167                     # DW_AT_decl_line
	.long	9402                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb27:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	168                     # DW_AT_decl_line
	.long	9429                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb2e:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	9456                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb35:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	171                     # DW_AT_decl_line
	.long	9474                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb3c:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	172                     # DW_AT_decl_line
	.long	9502                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb43:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	240                     # DW_AT_decl_line
	.long	9525                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb4a:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	242                     # DW_AT_decl_line
	.long	9565                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb51:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	244                     # DW_AT_decl_line
	.long	9579                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb58:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.long	174                     # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb5f:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.long	9597                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb66:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	248                     # DW_AT_decl_line
	.long	9620                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb6d:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	249                     # DW_AT_decl_line
	.long	9691                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb74:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	250                     # DW_AT_decl_line
	.long	9637                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb7b:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.long	9664                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb82:0x7 DW_TAG_imported_declaration
	.byte	30                      # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.long	9713                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb89:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	9735                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb90:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	99                      # DW_AT_decl_line
	.long	9746                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb97:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	9773                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xb9e:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.long	9792                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xba5:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	9809                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbac:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	9827                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbb3:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	9845                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbba:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	9862                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbc1:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	107                     # DW_AT_decl_line
	.long	9880                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbc8:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	9918                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbcf:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	109                     # DW_AT_decl_line
	.long	9946                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbd6:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	9968                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbdd:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	111                     # DW_AT_decl_line
	.long	9992                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbe4:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	10015                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbeb:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	113                     # DW_AT_decl_line
	.long	10038                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbf2:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	114                     # DW_AT_decl_line
	.long	10076                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xbf9:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	115                     # DW_AT_decl_line
	.long	10103                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc00:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	116                     # DW_AT_decl_line
	.long	10131                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc07:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	10159                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc0e:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	118                     # DW_AT_decl_line
	.long	10192                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc15:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	119                     # DW_AT_decl_line
	.long	10210                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc1c:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	10248                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc23:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	121                     # DW_AT_decl_line
	.long	10266                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc2a:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.long	10278                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc31:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	10292                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc38:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	10311                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc3f:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	129                     # DW_AT_decl_line
	.long	10334                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc46:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	10352                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc4d:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.long	10370                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc54:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.long	10387                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc5b:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	10409                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc62:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	10423                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc69:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	10446                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc70:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	10465                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc77:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	137                     # DW_AT_decl_line
	.long	10498                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc7e:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	138                     # DW_AT_decl_line
	.long	10522                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc85:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.long	10550                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc8c:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	10561                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc93:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	10578                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xc9a:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	10601                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xca1:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	10629                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xca8:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	10652                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcaf:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	185                     # DW_AT_decl_line
	.long	10680                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcb6:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	186                     # DW_AT_decl_line
	.long	10709                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcbd:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	10741                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcc4:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.long	10768                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xccb:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.long	10801                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcd2:0x7 DW_TAG_imported_declaration
	.byte	35                      # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	47                      # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcd9:0x7 DW_TAG_imported_declaration
	.byte	35                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	235                     # DW_AT_import
	.byte	5                       # Abbrev [5] 0xce0:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	82                      # DW_AT_decl_line
	.long	11062                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xce7:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.long	11083                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcee:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	6315                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcf5:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	11094                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xcfc:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	11111                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd03:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	89                      # DW_AT_decl_line
	.long	11128                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd0a:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	91                      # DW_AT_decl_line
	.long	11145                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd11:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	11162                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd18:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	93                      # DW_AT_decl_line
	.long	11184                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd1f:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.long	11201                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd26:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	11218                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd2d:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
	.long	11235                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd34:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	11252                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd3b:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	11269                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd42:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	99                      # DW_AT_decl_line
	.long	11286                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd49:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	100                     # DW_AT_decl_line
	.long	11303                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd50:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	11320                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd57:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.long	11342                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd5e:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	11359                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd65:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	11376                   # DW_AT_import
	.byte	5                       # Abbrev [5] 0xd6c:0x7 DW_TAG_imported_declaration
	.byte	38                      # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	11393                   # DW_AT_import
	.byte	10                      # Abbrev [10] 0xd73:0xb DW_TAG_typedef
	.long	3454                    # DW_AT_type
	.long	.Linfo_string474        # DW_AT_name
	.byte	41                      # DW_AT_decl_file
	.byte	168                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0xd7e:0x5 DW_TAG_class_type
	.long	.Linfo_string473        # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                      # Abbrev [10] 0xd83:0xb DW_TAG_typedef
	.long	3475                    # DW_AT_type
	.long	.Linfo_string490        # DW_AT_name
	.byte	44                      # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	25                      # Abbrev [25] 0xd8e:0xb DW_TAG_namespace
	.long	.Linfo_string488        # DW_AT_name
                                        # DW_AT_export_symbols
	.byte	11                      # Abbrev [11] 0xd93:0x5 DW_TAG_class_type
	.long	.Linfo_string489        # DW_AT_name
                                        # DW_AT_declaration
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0xd99:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string498        # DW_AT_linkage_name
	.long	.Linfo_string499        # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	329                     # DW_AT_type
                                        # DW_AT_external
	.byte	27                      # Abbrev [27] 0xdb6:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc4            # DW_AT_location
	.long	.Linfo_string507        # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	329                     # DW_AT_type
	.byte	28                      # Abbrev [28] 0xdc5:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	84
	.long	.Linfo_string508        # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	329                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0xdd4:0x5 DW_TAG_pointer_type
	.long	3545                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0xdd9:0x7 DW_TAG_base_type
	.long	.Linfo_string27         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	30                      # Abbrev [30] 0xde0:0x7 DW_TAG_base_type
	.long	.Linfo_string28         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	30                      # Abbrev [30] 0xde7:0x7 DW_TAG_base_type
	.long	.Linfo_string31         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	31                      # Abbrev [31] 0xdee:0x12 DW_TAG_subprogram
	.long	.Linfo_string33         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	840                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xdfa:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe00:0x11 DW_TAG_subprogram
	.long	.Linfo_string34         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe0b:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0xe11:0x7 DW_TAG_base_type
	.long	.Linfo_string35         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	32                      # Abbrev [32] 0xe18:0x11 DW_TAG_subprogram
	.long	.Linfo_string36         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe23:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe29:0x11 DW_TAG_subprogram
	.long	.Linfo_string37         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe34:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe3a:0x16 DW_TAG_subprogram
	.long	.Linfo_string38         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe45:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0xe4a:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe50:0x11 DW_TAG_subprogram
	.long	.Linfo_string39         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	159                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe5b:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe61:0x11 DW_TAG_subprogram
	.long	.Linfo_string40         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe6c:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe72:0x11 DW_TAG_subprogram
	.long	.Linfo_string41         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe7d:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe83:0x11 DW_TAG_subprogram
	.long	.Linfo_string42         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe8e:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xe94:0x11 DW_TAG_subprogram
	.long	.Linfo_string43         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xe9f:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xea5:0x11 DW_TAG_subprogram
	.long	.Linfo_string44         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	165                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xeb0:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xeb6:0x16 DW_TAG_subprogram
	.long	.Linfo_string45         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	168                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xec1:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0xec6:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xecc:0x16 DW_TAG_subprogram
	.long	.Linfo_string46         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xed7:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0xedc:0x5 DW_TAG_formal_parameter
	.long	3810                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0xee2:0x5 DW_TAG_pointer_type
	.long	3559                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0xee7:0x16 DW_TAG_subprogram
	.long	.Linfo_string47         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xef2:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0xef7:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xefd:0x11 DW_TAG_subprogram
	.long	.Linfo_string48         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf08:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xf0e:0x11 DW_TAG_subprogram
	.long	.Linfo_string49         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	107                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf19:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xf1f:0x16 DW_TAG_subprogram
	.long	.Linfo_string50         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf2a:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0xf2f:0x5 DW_TAG_formal_parameter
	.long	3893                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0xf35:0x5 DW_TAG_pointer_type
	.long	3601                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0xf3a:0x16 DW_TAG_subprogram
	.long	.Linfo_string51         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf45:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0xf4a:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xf50:0x11 DW_TAG_subprogram
	.long	.Linfo_string52         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf5b:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xf61:0x11 DW_TAG_subprogram
	.long	.Linfo_string53         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf6c:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xf72:0x11 DW_TAG_subprogram
	.long	.Linfo_string54         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf7d:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xf83:0x11 DW_TAG_subprogram
	.long	.Linfo_string55         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf8e:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xf94:0x11 DW_TAG_subprogram
	.long	.Linfo_string56         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xf9f:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0xfa5:0xb DW_TAG_typedef
	.long	3601                    # DW_AT_type
	.long	.Linfo_string57         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	150                     # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0xfb0:0xb DW_TAG_typedef
	.long	4027                    # DW_AT_type
	.long	.Linfo_string59         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.byte	30                      # Abbrev [30] 0xfbb:0x7 DW_TAG_base_type
	.long	.Linfo_string58         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	32                      # Abbrev [32] 0xfc2:0x11 DW_TAG_subprogram
	.long	.Linfo_string60         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xfcd:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xfd3:0x11 DW_TAG_subprogram
	.long	.Linfo_string61         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xfde:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0xfe4:0x11 DW_TAG_subprogram
	.long	.Linfo_string62         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0xfef:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0xff5:0x7 DW_TAG_base_type
	.long	.Linfo_string63         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	16                      # DW_AT_byte_size
	.byte	32                      # Abbrev [32] 0xffc:0x11 DW_TAG_subprogram
	.long	.Linfo_string64         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1007:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x100d:0x11 DW_TAG_subprogram
	.long	.Linfo_string65         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1018:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x101e:0x11 DW_TAG_subprogram
	.long	.Linfo_string66         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1029:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x102f:0x11 DW_TAG_subprogram
	.long	.Linfo_string67         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	89                      # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x103a:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1040:0x11 DW_TAG_subprogram
	.long	.Linfo_string68         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	89                      # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x104b:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1051:0x11 DW_TAG_subprogram
	.long	.Linfo_string69         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	89                      # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x105c:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1062:0x11 DW_TAG_subprogram
	.long	.Linfo_string70         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	152                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x106d:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1073:0x11 DW_TAG_subprogram
	.long	.Linfo_string71         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	152                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x107e:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1084:0x11 DW_TAG_subprogram
	.long	.Linfo_string72         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	152                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x108f:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1095:0x16 DW_TAG_subprogram
	.long	.Linfo_string73         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	196                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x10a0:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x10a5:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x10ab:0x16 DW_TAG_subprogram
	.long	.Linfo_string74         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	196                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x10b6:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x10bb:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x10c1:0x16 DW_TAG_subprogram
	.long	.Linfo_string75         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	196                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x10cc:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x10d1:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x10d7:0x11 DW_TAG_subprogram
	.long	.Linfo_string76         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	228                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x10e2:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x10e8:0x11 DW_TAG_subprogram
	.long	.Linfo_string77         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	228                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x10f3:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x10f9:0x11 DW_TAG_subprogram
	.long	.Linfo_string78         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	228                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1104:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x110a:0x11 DW_TAG_subprogram
	.long	.Linfo_string79         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	229                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1115:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x111b:0x11 DW_TAG_subprogram
	.long	.Linfo_string80         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	229                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1126:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x112c:0x11 DW_TAG_subprogram
	.long	.Linfo_string81         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	229                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1137:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x113d:0x11 DW_TAG_subprogram
	.long	.Linfo_string82         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1148:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x114e:0x11 DW_TAG_subprogram
	.long	.Linfo_string83         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1159:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x115f:0x11 DW_TAG_subprogram
	.long	.Linfo_string84         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x116a:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1170:0x11 DW_TAG_subprogram
	.long	.Linfo_string85         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	119                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x117b:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1181:0x11 DW_TAG_subprogram
	.long	.Linfo_string86         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	119                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x118c:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1192:0x11 DW_TAG_subprogram
	.long	.Linfo_string87         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	119                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x119d:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x11a3:0x17 DW_TAG_subprogram
	.long	.Linfo_string88         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	326                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x11af:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x11b4:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x11ba:0x17 DW_TAG_subprogram
	.long	.Linfo_string89         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	326                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x11c6:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x11cb:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x11d1:0x17 DW_TAG_subprogram
	.long	.Linfo_string90         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	326                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x11dd:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x11e2:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x11e8:0x1c DW_TAG_subprogram
	.long	.Linfo_string91         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	335                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x11f4:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x11f9:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x11fe:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1204:0x1c DW_TAG_subprogram
	.long	.Linfo_string92         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	335                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1210:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1215:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x121a:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1220:0x1c DW_TAG_subprogram
	.long	.Linfo_string93         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	335                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x122c:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1231:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1236:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x123c:0x17 DW_TAG_subprogram
	.long	.Linfo_string94         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	329                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1248:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x124d:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1253:0x17 DW_TAG_subprogram
	.long	.Linfo_string95         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	329                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x125f:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1264:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x126a:0x17 DW_TAG_subprogram
	.long	.Linfo_string96         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	329                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1276:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x127b:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1281:0x17 DW_TAG_subprogram
	.long	.Linfo_string97         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x128d:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1292:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1298:0x17 DW_TAG_subprogram
	.long	.Linfo_string98         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x12a4:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x12a9:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x12af:0x17 DW_TAG_subprogram
	.long	.Linfo_string99         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x12bb:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x12c0:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x12c6:0x16 DW_TAG_subprogram
	.long	.Linfo_string100        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x12d1:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x12d6:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x12dc:0x16 DW_TAG_subprogram
	.long	.Linfo_string101        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x12e7:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x12ec:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x12f2:0x16 DW_TAG_subprogram
	.long	.Linfo_string102        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x12fd:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1302:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1308:0x12 DW_TAG_subprogram
	.long	.Linfo_string103        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1314:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x131a:0x12 DW_TAG_subprogram
	.long	.Linfo_string104        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1326:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x132c:0x12 DW_TAG_subprogram
	.long	.Linfo_string105        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1338:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x133e:0x11 DW_TAG_subprogram
	.long	.Linfo_string106        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	230                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1349:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x134f:0x11 DW_TAG_subprogram
	.long	.Linfo_string107        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	230                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x135a:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1360:0x11 DW_TAG_subprogram
	.long	.Linfo_string108        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	230                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x136b:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1371:0x12 DW_TAG_subprogram
	.long	.Linfo_string109        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	316                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x137d:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x1383:0x7 DW_TAG_base_type
	.long	.Linfo_string110        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	31                      # Abbrev [31] 0x138a:0x12 DW_TAG_subprogram
	.long	.Linfo_string111        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	316                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1396:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x139c:0x12 DW_TAG_subprogram
	.long	.Linfo_string112        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	316                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x13a8:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x13ae:0x12 DW_TAG_subprogram
	.long	.Linfo_string113        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	322                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x13ba:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x13c0:0x12 DW_TAG_subprogram
	.long	.Linfo_string114        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	322                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x13cc:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x13d2:0x12 DW_TAG_subprogram
	.long	.Linfo_string115        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	322                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x13de:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x13e4:0x11 DW_TAG_subprogram
	.long	.Linfo_string116        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x13ef:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x13f5:0x11 DW_TAG_subprogram
	.long	.Linfo_string117        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1400:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1406:0x11 DW_TAG_subprogram
	.long	.Linfo_string118        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1411:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1417:0x11 DW_TAG_subprogram
	.long	.Linfo_string119        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1422:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1428:0x11 DW_TAG_subprogram
	.long	.Linfo_string120        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1433:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1439:0x11 DW_TAG_subprogram
	.long	.Linfo_string121        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1444:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x144a:0x11 DW_TAG_subprogram
	.long	.Linfo_string122        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1455:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x145b:0x11 DW_TAG_subprogram
	.long	.Linfo_string123        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1466:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x146c:0x11 DW_TAG_subprogram
	.long	.Linfo_string124        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1477:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x147d:0x12 DW_TAG_subprogram
	.long	.Linfo_string125        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	314                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1489:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x148f:0x12 DW_TAG_subprogram
	.long	.Linfo_string126        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	314                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x149b:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x14a1:0x12 DW_TAG_subprogram
	.long	.Linfo_string127        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	314                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x14ad:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x14b3:0x12 DW_TAG_subprogram
	.long	.Linfo_string128        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	320                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x14bf:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x14c5:0x12 DW_TAG_subprogram
	.long	.Linfo_string129        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	320                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x14d1:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x14d7:0x12 DW_TAG_subprogram
	.long	.Linfo_string130        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	320                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x14e3:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x14e9:0x11 DW_TAG_subprogram
	.long	.Linfo_string131        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	201                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x14f4:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x14fa:0x5 DW_TAG_pointer_type
	.long	5375                    # DW_AT_type
	.byte	33                      # Abbrev [33] 0x14ff:0x5 DW_TAG_const_type
	.long	3545                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x1504:0x11 DW_TAG_subprogram
	.long	.Linfo_string132        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	201                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x150f:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1515:0x11 DW_TAG_subprogram
	.long	.Linfo_string133        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	201                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1520:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1526:0x12 DW_TAG_subprogram
	.long	.Linfo_string134        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	294                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1532:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1538:0x12 DW_TAG_subprogram
	.long	.Linfo_string135        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	294                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1544:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x154a:0x12 DW_TAG_subprogram
	.long	.Linfo_string136        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	294                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1556:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x155c:0x17 DW_TAG_subprogram
	.long	.Linfo_string137        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	259                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1568:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x156d:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1573:0x17 DW_TAG_subprogram
	.long	.Linfo_string138        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	259                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x157f:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1584:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x158a:0x17 DW_TAG_subprogram
	.long	.Linfo_string139        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	259                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1596:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x159b:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x15a1:0x17 DW_TAG_subprogram
	.long	.Linfo_string140        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x15ad:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x15b2:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x15b8:0x17 DW_TAG_subprogram
	.long	.Linfo_string141        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x15c4:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x15c9:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x15cf:0x17 DW_TAG_subprogram
	.long	.Linfo_string142        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x15db:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x15e0:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x15e6:0x17 DW_TAG_subprogram
	.long	.Linfo_string143        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x15f2:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x15f7:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x15fd:0x17 DW_TAG_subprogram
	.long	.Linfo_string144        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1609:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x160e:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1614:0x17 DW_TAG_subprogram
	.long	.Linfo_string145        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1620:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1625:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x162b:0x1c DW_TAG_subprogram
	.long	.Linfo_string146        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1637:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x163c:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1641:0x5 DW_TAG_formal_parameter
	.long	3810                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1647:0x1c DW_TAG_subprogram
	.long	.Linfo_string147        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1653:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1658:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x165d:0x5 DW_TAG_formal_parameter
	.long	3810                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1663:0x1c DW_TAG_subprogram
	.long	.Linfo_string148        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x166f:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1674:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1679:0x5 DW_TAG_formal_parameter
	.long	3810                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x167f:0x12 DW_TAG_subprogram
	.long	.Linfo_string149        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x168b:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1691:0x12 DW_TAG_subprogram
	.long	.Linfo_string150        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x169d:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x16a3:0x12 DW_TAG_subprogram
	.long	.Linfo_string151        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x16af:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x16b5:0x12 DW_TAG_subprogram
	.long	.Linfo_string152        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	298                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x16c1:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x16c7:0x12 DW_TAG_subprogram
	.long	.Linfo_string153        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	298                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x16d3:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x16d9:0x12 DW_TAG_subprogram
	.long	.Linfo_string154        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	298                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x16e5:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x16eb:0x17 DW_TAG_subprogram
	.long	.Linfo_string155        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	290                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x16f7:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x16fc:0x5 DW_TAG_formal_parameter
	.long	3552                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1702:0x17 DW_TAG_subprogram
	.long	.Linfo_string156        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	290                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x170e:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1713:0x5 DW_TAG_formal_parameter
	.long	3552                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1719:0x17 DW_TAG_subprogram
	.long	.Linfo_string157        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	290                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1725:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x172a:0x5 DW_TAG_formal_parameter
	.long	3552                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1730:0x17 DW_TAG_subprogram
	.long	.Linfo_string158        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	276                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x173c:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1741:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1747:0x17 DW_TAG_subprogram
	.long	.Linfo_string159        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	276                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1753:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1758:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x175e:0x17 DW_TAG_subprogram
	.long	.Linfo_string160        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	276                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x176a:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x176f:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1775:0x11 DW_TAG_subprogram
	.long	.Linfo_string161        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	235                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1780:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1786:0x11 DW_TAG_subprogram
	.long	.Linfo_string162        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	235                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1791:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1797:0x11 DW_TAG_subprogram
	.long	.Linfo_string163        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	235                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x17a2:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x17a8:0x12 DW_TAG_subprogram
	.long	.Linfo_string164        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x17b4:0x5 DW_TAG_formal_parameter
	.long	3601                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x17ba:0x12 DW_TAG_subprogram
	.long	.Linfo_string165        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x17c6:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x17cc:0x12 DW_TAG_subprogram
	.long	.Linfo_string166        # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x17d8:0x5 DW_TAG_formal_parameter
	.long	4085                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x17de:0x7 DW_TAG_base_type
	.long	.Linfo_string168        # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	16                      # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x17e5:0x7 DW_TAG_imported_declaration
	.byte	10                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	1447                    # DW_AT_import
	.byte	29                      # Abbrev [29] 0x17ec:0x5 DW_TAG_pointer_type
	.long	4085                    # DW_AT_type
	.byte	5                       # Abbrev [5] 0x17f1:0x7 DW_TAG_imported_declaration
	.byte	10                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	1468                    # DW_AT_import
	.byte	2                       # Abbrev [2] 0x17f8:0xd DW_TAG_namespace
	.long	.Linfo_string170        # DW_AT_name
	.byte	34                      # Abbrev [34] 0x17fd:0x7 DW_TAG_imported_module
	.byte	11                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	1495                    # DW_AT_import
	.byte	0                       # End Of Children Mark
	.byte	35                      # Abbrev [35] 0x1805:0x1 DW_TAG_pointer_type
	.byte	29                      # Abbrev [29] 0x1806:0x5 DW_TAG_pointer_type
	.long	1505                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x180b:0x5 DW_TAG_pointer_type
	.long	6160                    # DW_AT_type
	.byte	33                      # Abbrev [33] 0x1810:0x5 DW_TAG_const_type
	.long	1505                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x1815:0x5 DW_TAG_reference_type
	.long	6160                    # DW_AT_type
	.byte	37                      # Abbrev [37] 0x181a:0x5 DW_TAG_unspecified_type
	.long	.Linfo_string181        # DW_AT_name
	.byte	38                      # Abbrev [38] 0x181f:0x5 DW_TAG_rvalue_reference_type
	.long	1505                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x1824:0x5 DW_TAG_reference_type
	.long	1505                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x1829:0x7 DW_TAG_base_type
	.long	.Linfo_string191        # DW_AT_name
	.byte	2                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	29                      # Abbrev [29] 0x1830:0x5 DW_TAG_pointer_type
	.long	6197                    # DW_AT_type
	.byte	33                      # Abbrev [33] 0x1835:0x5 DW_TAG_const_type
	.long	1825                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x183a:0x7 DW_TAG_base_type
	.long	.Linfo_string197        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x1841:0xb DW_TAG_typedef
	.long	6220                    # DW_AT_type
	.long	.Linfo_string206        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x184c:0xb DW_TAG_typedef
	.long	6231                    # DW_AT_type
	.long	.Linfo_string205        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	39                      # Abbrev [39] 0x1857:0x3a DW_TAG_structure_type
	.byte	8                       # DW_AT_byte_size
	.byte	14                      # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x185b:0xc DW_TAG_member
	.long	.Linfo_string199        # DW_AT_name
	.long	3559                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x1867:0xc DW_TAG_member
	.long	.Linfo_string200        # DW_AT_name
	.long	6259                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	40                      # Abbrev [40] 0x1873:0x1d DW_TAG_union_type
	.byte	4                       # DW_AT_byte_size
	.byte	14                      # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x1877:0xc DW_TAG_member
	.long	.Linfo_string201        # DW_AT_name
	.long	6289                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x1883:0xc DW_TAG_member
	.long	.Linfo_string203        # DW_AT_name
	.long	6296                    # DW_AT_type
	.byte	14                      # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x1891:0x7 DW_TAG_base_type
	.long	.Linfo_string202        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	41                      # Abbrev [41] 0x1898:0xc DW_TAG_array_type
	.long	3545                    # DW_AT_type
	.byte	42                      # Abbrev [42] 0x189d:0x6 DW_TAG_subrange_type
	.long	6308                    # DW_AT_type
	.byte	4                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	43                      # Abbrev [43] 0x18a4:0x7 DW_TAG_base_type
	.long	.Linfo_string204        # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	10                      # Abbrev [10] 0x18ab:0xb DW_TAG_typedef
	.long	6289                    # DW_AT_type
	.long	.Linfo_string207        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	31                      # Abbrev [31] 0x18b6:0x12 DW_TAG_subprogram
	.long	.Linfo_string208        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x18c2:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x18c8:0x12 DW_TAG_subprogram
	.long	.Linfo_string209        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	726                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x18d4:0x5 DW_TAG_formal_parameter
	.long	6362                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x18da:0x5 DW_TAG_pointer_type
	.long	6367                    # DW_AT_type
	.byte	10                      # Abbrev [10] 0x18df:0xb DW_TAG_typedef
	.long	6378                    # DW_AT_type
	.long	.Linfo_string211        # DW_AT_name
	.byte	19                      # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	44                      # Abbrev [44] 0x18ea:0x5 DW_TAG_structure_type
	.long	.Linfo_string210        # DW_AT_name
                                        # DW_AT_declaration
	.byte	31                      # Abbrev [31] 0x18ef:0x1c DW_TAG_subprogram
	.long	.Linfo_string212        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	755                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x18fb:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1900:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1905:0x5 DW_TAG_formal_parameter
	.long	6428                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x190b:0x5 DW_TAG_pointer_type
	.long	6416                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x1910:0x7 DW_TAG_base_type
	.long	.Linfo_string213        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	45                      # Abbrev [45] 0x1917:0x5 DW_TAG_restrict_type
	.long	6411                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0x191c:0x5 DW_TAG_restrict_type
	.long	6362                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1921:0x17 DW_TAG_subprogram
	.long	.Linfo_string214        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	740                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x192d:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1932:0x5 DW_TAG_formal_parameter
	.long	6362                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1938:0x17 DW_TAG_subprogram
	.long	.Linfo_string215        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	762                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1944:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1949:0x5 DW_TAG_formal_parameter
	.long	6428                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x194f:0x5 DW_TAG_restrict_type
	.long	6484                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x1954:0x5 DW_TAG_pointer_type
	.long	6489                    # DW_AT_type
	.byte	33                      # Abbrev [33] 0x1959:0x5 DW_TAG_const_type
	.long	6416                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x195e:0x17 DW_TAG_subprogram
	.long	.Linfo_string216        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	573                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x196a:0x5 DW_TAG_formal_parameter
	.long	6362                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x196f:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1975:0x18 DW_TAG_subprogram
	.long	.Linfo_string217        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	580                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1981:0x5 DW_TAG_formal_parameter
	.long	6428                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1986:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x198b:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x198d:0x1c DW_TAG_subprogram
	.long	.Linfo_string218        # DW_AT_linkage_name
	.long	.Linfo_string219        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	640                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x199d:0x5 DW_TAG_formal_parameter
	.long	6428                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x19a2:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x19a7:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x19a9:0x12 DW_TAG_subprogram
	.long	.Linfo_string220        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	727                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x19b5:0x5 DW_TAG_formal_parameter
	.long	6362                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	47                      # Abbrev [47] 0x19bb:0xc DW_TAG_subprogram
	.long	.Linfo_string221        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	733                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                      # Abbrev [31] 0x19c7:0x1c DW_TAG_subprogram
	.long	.Linfo_string222        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x19d3:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x19d8:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x19dd:0x5 DW_TAG_formal_parameter
	.long	6643                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x19e3:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string198        # DW_AT_name
	.byte	20                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	45                      # Abbrev [45] 0x19ee:0x5 DW_TAG_restrict_type
	.long	5370                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0x19f3:0x5 DW_TAG_restrict_type
	.long	6648                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x19f8:0x5 DW_TAG_pointer_type
	.long	6209                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x19fd:0x21 DW_TAG_subprogram
	.long	.Linfo_string223        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1a09:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a0e:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a13:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a18:0x5 DW_TAG_formal_parameter
	.long	6643                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1a1e:0x12 DW_TAG_subprogram
	.long	.Linfo_string224        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1a2a:0x5 DW_TAG_formal_parameter
	.long	6704                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x1a30:0x5 DW_TAG_pointer_type
	.long	6709                    # DW_AT_type
	.byte	33                      # Abbrev [33] 0x1a35:0x5 DW_TAG_const_type
	.long	6209                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1a3a:0x21 DW_TAG_subprogram
	.long	.Linfo_string225        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	337                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1a46:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a4b:0x5 DW_TAG_formal_parameter
	.long	6747                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a50:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a55:0x5 DW_TAG_formal_parameter
	.long	6643                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1a5b:0x5 DW_TAG_restrict_type
	.long	6752                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x1a60:0x5 DW_TAG_pointer_type
	.long	5370                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1a65:0x17 DW_TAG_subprogram
	.long	.Linfo_string226        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	741                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1a71:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a76:0x5 DW_TAG_formal_parameter
	.long	6362                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1a7c:0x12 DW_TAG_subprogram
	.long	.Linfo_string227        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	747                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1a88:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1a8e:0x1d DW_TAG_subprogram
	.long	.Linfo_string228        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	590                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1a9a:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1a9f:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1aa4:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x1aa9:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1aab:0x1c DW_TAG_subprogram
	.long	.Linfo_string229        # DW_AT_linkage_name
	.long	.Linfo_string230        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	647                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1abb:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ac0:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x1ac5:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1ac7:0x17 DW_TAG_subprogram
	.long	.Linfo_string231        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	770                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1ad3:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ad8:0x5 DW_TAG_formal_parameter
	.long	6362                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1ade:0x1c DW_TAG_subprogram
	.long	.Linfo_string232        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	598                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1aea:0x5 DW_TAG_formal_parameter
	.long	6428                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1aef:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1af4:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x1afa:0x5 DW_TAG_pointer_type
	.long	6911                    # DW_AT_type
	.byte	48                      # Abbrev [48] 0x1aff:0x2f DW_TAG_structure_type
	.long	.Linfo_string237        # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	49                      # Abbrev [49] 0x1b05:0xa DW_TAG_member
	.long	.Linfo_string233        # DW_AT_name
	.long	6289                    # DW_AT_type
	.byte	0                       # DW_AT_data_member_location
	.byte	49                      # Abbrev [49] 0x1b0f:0xa DW_TAG_member
	.long	.Linfo_string234        # DW_AT_name
	.long	6289                    # DW_AT_type
	.byte	4                       # DW_AT_data_member_location
	.byte	49                      # Abbrev [49] 0x1b19:0xa DW_TAG_member
	.long	.Linfo_string235        # DW_AT_name
	.long	6149                    # DW_AT_type
	.byte	8                       # DW_AT_data_member_location
	.byte	49                      # Abbrev [49] 0x1b23:0xa DW_TAG_member
	.long	.Linfo_string236        # DW_AT_name
	.long	6149                    # DW_AT_type
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1b2e:0x20 DW_TAG_subprogram
	.long	.Linfo_string238        # DW_AT_linkage_name
	.long	.Linfo_string239        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	693                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1b3e:0x5 DW_TAG_formal_parameter
	.long	6428                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1b43:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1b48:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1b4e:0x21 DW_TAG_subprogram
	.long	.Linfo_string240        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	611                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1b5a:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1b5f:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1b64:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1b69:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1b6f:0x20 DW_TAG_subprogram
	.long	.Linfo_string241        # DW_AT_linkage_name
	.long	.Linfo_string242        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	700                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1b7f:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1b84:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1b89:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1b8f:0x17 DW_TAG_subprogram
	.long	.Linfo_string243        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	606                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1b9b:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ba0:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1ba6:0x1b DW_TAG_subprogram
	.long	.Linfo_string244        # DW_AT_linkage_name
	.long	.Linfo_string245        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	697                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1bb6:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1bbb:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1bc1:0x1c DW_TAG_subprogram
	.long	.Linfo_string246        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	301                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1bcd:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1bd2:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1bd7:0x5 DW_TAG_formal_parameter
	.long	6643                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1bdd:0x5 DW_TAG_restrict_type
	.long	3540                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x1be2:0x16 DW_TAG_subprogram
	.long	.Linfo_string247        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1bed:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1bf2:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1bf8:0x16 DW_TAG_subprogram
	.long	.Linfo_string248        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1c03:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1c08:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1c0e:0x16 DW_TAG_subprogram
	.long	.Linfo_string249        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1c19:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1c1e:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1c24:0x16 DW_TAG_subprogram
	.long	.Linfo_string250        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1c2f:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1c34:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1c3a:0x16 DW_TAG_subprogram
	.long	.Linfo_string251        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1c45:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1c4a:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1c50:0x21 DW_TAG_subprogram
	.long	.Linfo_string252        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	834                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1c5c:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1c61:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1c66:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1c6b:0x5 DW_TAG_formal_parameter
	.long	7281                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c71:0x5 DW_TAG_restrict_type
	.long	7286                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x1c76:0x5 DW_TAG_pointer_type
	.long	7291                    # DW_AT_type
	.byte	33                      # Abbrev [33] 0x1c7b:0x5 DW_TAG_const_type
	.long	7296                    # DW_AT_type
	.byte	44                      # Abbrev [44] 0x1c80:0x5 DW_TAG_structure_type
	.long	.Linfo_string253        # DW_AT_name
                                        # DW_AT_declaration
	.byte	32                      # Abbrev [32] 0x1c85:0x11 DW_TAG_subprogram
	.long	.Linfo_string254        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	222                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1c90:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1c96:0x1b DW_TAG_subprogram
	.long	.Linfo_string255        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1ca1:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ca6:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1cab:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1cb1:0x1b DW_TAG_subprogram
	.long	.Linfo_string256        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	109                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1cbc:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1cc1:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1cc6:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1ccc:0x1b DW_TAG_subprogram
	.long	.Linfo_string257        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1cd7:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1cdc:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ce1:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1ce7:0x21 DW_TAG_subprogram
	.long	.Linfo_string258        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	343                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1cf3:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1cf8:0x5 DW_TAG_formal_parameter
	.long	7432                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1cfd:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d02:0x5 DW_TAG_formal_parameter
	.long	6643                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1d08:0x5 DW_TAG_restrict_type
	.long	7437                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x1d0d:0x5 DW_TAG_pointer_type
	.long	6484                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x1d12:0x16 DW_TAG_subprogram
	.long	.Linfo_string259        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	191                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1d1d:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d22:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1d28:0x17 DW_TAG_subprogram
	.long	.Linfo_string260        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	377                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1d34:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d39:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1d3f:0x5 DW_TAG_restrict_type
	.long	7492                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x1d44:0x5 DW_TAG_pointer_type
	.long	6411                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x1d49:0x17 DW_TAG_subprogram
	.long	.Linfo_string261        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	382                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1d55:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d5a:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1d60:0x1b DW_TAG_subprogram
	.long	.Linfo_string262        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	217                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1d6b:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d70:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d75:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1d7b:0x1c DW_TAG_subprogram
	.long	.Linfo_string263        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	428                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1d87:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d8c:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1d91:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1d97:0x1c DW_TAG_subprogram
	.long	.Linfo_string264        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	433                     # DW_AT_decl_line
	.long	6202                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1da3:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1da8:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1dad:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1db3:0x1b DW_TAG_subprogram
	.long	.Linfo_string265        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1dbe:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1dc3:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1dc8:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1dce:0x12 DW_TAG_subprogram
	.long	.Linfo_string266        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	288                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1dda:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1de0:0x1c DW_TAG_subprogram
	.long	.Linfo_string267        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1dec:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1df1:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1df6:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1dfc:0x1c DW_TAG_subprogram
	.long	.Linfo_string268        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1e08:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1e0d:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1e12:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1e18:0x1c DW_TAG_subprogram
	.long	.Linfo_string269        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	267                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1e24:0x5 DW_TAG_formal_parameter
	.long	6411                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1e29:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1e2e:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1e34:0x1c DW_TAG_subprogram
	.long	.Linfo_string270        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	271                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1e40:0x5 DW_TAG_formal_parameter
	.long	6411                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1e45:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1e4a:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1e50:0x13 DW_TAG_subprogram
	.long	.Linfo_string271        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	587                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1e5c:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x1e61:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1e63:0x17 DW_TAG_subprogram
	.long	.Linfo_string272        # DW_AT_linkage_name
	.long	.Linfo_string273        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	644                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1e73:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x1e78:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1e7a:0x16 DW_TAG_subprogram
	.long	.Linfo_string274        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	164                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1e85:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1e8a:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1e90:0x16 DW_TAG_subprogram
	.long	.Linfo_string275        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	201                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1e9b:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ea0:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1ea6:0x16 DW_TAG_subprogram
	.long	.Linfo_string276        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	174                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1eb1:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1eb6:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1ebc:0x16 DW_TAG_subprogram
	.long	.Linfo_string277        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	212                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1ec7:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ecc:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x1ed2:0x1b DW_TAG_subprogram
	.long	.Linfo_string278        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.long	6411                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1edd:0x5 DW_TAG_formal_parameter
	.long	6484                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ee2:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1ee7:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1eed:0x17 DW_TAG_subprogram
	.long	.Linfo_string279        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	384                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1ef9:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1efe:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1f04:0x1c DW_TAG_subprogram
	.long	.Linfo_string280        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	441                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1f10:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1f15:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1f1a:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x1f20:0x1c DW_TAG_subprogram
	.long	.Linfo_string281        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.short	448                     # DW_AT_decl_line
	.long	7996                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x1f2c:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1f31:0x5 DW_TAG_formal_parameter
	.long	7487                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x1f36:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	30                      # Abbrev [30] 0x1f3c:0x7 DW_TAG_base_type
	.long	.Linfo_string282        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x1f43:0xb DW_TAG_typedef
	.long	8014                    # DW_AT_type
	.long	.Linfo_string285        # DW_AT_name
	.byte	22                      # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1f4e:0xb DW_TAG_typedef
	.long	8025                    # DW_AT_type
	.long	.Linfo_string284        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	30                      # Abbrev [30] 0x1f59:0x7 DW_TAG_base_type
	.long	.Linfo_string283        # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x1f60:0xb DW_TAG_typedef
	.long	8043                    # DW_AT_type
	.long	.Linfo_string288        # DW_AT_name
	.byte	22                      # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1f6b:0xb DW_TAG_typedef
	.long	8054                    # DW_AT_type
	.long	.Linfo_string287        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.byte	30                      # Abbrev [30] 0x1f76:0x7 DW_TAG_base_type
	.long	.Linfo_string286        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x1f7d:0xb DW_TAG_typedef
	.long	8072                    # DW_AT_type
	.long	.Linfo_string290        # DW_AT_name
	.byte	22                      # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1f88:0xb DW_TAG_typedef
	.long	3559                    # DW_AT_type
	.long	.Linfo_string289        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1f93:0xb DW_TAG_typedef
	.long	8094                    # DW_AT_type
	.long	.Linfo_string292        # DW_AT_name
	.byte	22                      # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1f9e:0xb DW_TAG_typedef
	.long	3552                    # DW_AT_type
	.long	.Linfo_string291        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1fa9:0xb DW_TAG_typedef
	.long	8025                    # DW_AT_type
	.long	.Linfo_string293        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1fb4:0xb DW_TAG_typedef
	.long	3552                    # DW_AT_type
	.long	.Linfo_string294        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1fbf:0xb DW_TAG_typedef
	.long	3552                    # DW_AT_type
	.long	.Linfo_string295        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1fca:0xb DW_TAG_typedef
	.long	3552                    # DW_AT_type
	.long	.Linfo_string296        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1fd5:0xb DW_TAG_typedef
	.long	8160                    # DW_AT_type
	.long	.Linfo_string298        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1fe0:0xb DW_TAG_typedef
	.long	8014                    # DW_AT_type
	.long	.Linfo_string297        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1feb:0xb DW_TAG_typedef
	.long	8182                    # DW_AT_type
	.long	.Linfo_string300        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x1ff6:0xb DW_TAG_typedef
	.long	8043                    # DW_AT_type
	.long	.Linfo_string299        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2001:0xb DW_TAG_typedef
	.long	8204                    # DW_AT_type
	.long	.Linfo_string302        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x200c:0xb DW_TAG_typedef
	.long	8072                    # DW_AT_type
	.long	.Linfo_string301        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2017:0xb DW_TAG_typedef
	.long	8226                    # DW_AT_type
	.long	.Linfo_string304        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2022:0xb DW_TAG_typedef
	.long	8094                    # DW_AT_type
	.long	.Linfo_string303        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x202d:0xb DW_TAG_typedef
	.long	8248                    # DW_AT_type
	.long	.Linfo_string306        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2038:0xb DW_TAG_typedef
	.long	3552                    # DW_AT_type
	.long	.Linfo_string305        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2043:0xb DW_TAG_typedef
	.long	3552                    # DW_AT_type
	.long	.Linfo_string307        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x204e:0xb DW_TAG_typedef
	.long	8281                    # DW_AT_type
	.long	.Linfo_string310        # DW_AT_name
	.byte	25                      # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2059:0xb DW_TAG_typedef
	.long	8292                    # DW_AT_type
	.long	.Linfo_string309        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	30                      # Abbrev [30] 0x2064:0x7 DW_TAG_base_type
	.long	.Linfo_string308        # DW_AT_name
	.byte	8                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x206b:0xb DW_TAG_typedef
	.long	8310                    # DW_AT_type
	.long	.Linfo_string313        # DW_AT_name
	.byte	25                      # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2076:0xb DW_TAG_typedef
	.long	8321                    # DW_AT_type
	.long	.Linfo_string312        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	30                      # Abbrev [30] 0x2081:0x7 DW_TAG_base_type
	.long	.Linfo_string311        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x2088:0xb DW_TAG_typedef
	.long	8339                    # DW_AT_type
	.long	.Linfo_string315        # DW_AT_name
	.byte	25                      # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2093:0xb DW_TAG_typedef
	.long	6289                    # DW_AT_type
	.long	.Linfo_string314        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x209e:0xb DW_TAG_typedef
	.long	8361                    # DW_AT_type
	.long	.Linfo_string317        # DW_AT_name
	.byte	25                      # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20a9:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string316        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20b4:0xb DW_TAG_typedef
	.long	8292                    # DW_AT_type
	.long	.Linfo_string318        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20bf:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string319        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20ca:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string320        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20d5:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string321        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20e0:0xb DW_TAG_typedef
	.long	8427                    # DW_AT_type
	.long	.Linfo_string323        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20eb:0xb DW_TAG_typedef
	.long	8281                    # DW_AT_type
	.long	.Linfo_string322        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x20f6:0xb DW_TAG_typedef
	.long	8449                    # DW_AT_type
	.long	.Linfo_string325        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2101:0xb DW_TAG_typedef
	.long	8310                    # DW_AT_type
	.long	.Linfo_string324        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x210c:0xb DW_TAG_typedef
	.long	8471                    # DW_AT_type
	.long	.Linfo_string327        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2117:0xb DW_TAG_typedef
	.long	8339                    # DW_AT_type
	.long	.Linfo_string326        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2122:0xb DW_TAG_typedef
	.long	8493                    # DW_AT_type
	.long	.Linfo_string329        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x212d:0xb DW_TAG_typedef
	.long	8361                    # DW_AT_type
	.long	.Linfo_string328        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2138:0xb DW_TAG_typedef
	.long	8515                    # DW_AT_type
	.long	.Linfo_string331        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2143:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string330        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x214e:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string332        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
	.byte	44                      # Abbrev [44] 0x2159:0x5 DW_TAG_structure_type
	.long	.Linfo_string333        # DW_AT_name
                                        # DW_AT_declaration
	.byte	32                      # Abbrev [32] 0x215e:0x16 DW_TAG_subprogram
	.long	.Linfo_string334        # DW_AT_name
	.byte	27                      # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	3540                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2169:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x216e:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	50                      # Abbrev [50] 0x2174:0xb DW_TAG_subprogram
	.long	.Linfo_string335        # DW_AT_name
	.byte	27                      # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	8575                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	29                      # Abbrev [29] 0x217f:0x5 DW_TAG_pointer_type
	.long	8537                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x2184:0x11 DW_TAG_subprogram
	.long	.Linfo_string336        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x218f:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2195:0x11 DW_TAG_subprogram
	.long	.Linfo_string337        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	109                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x21a0:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x21a6:0x11 DW_TAG_subprogram
	.long	.Linfo_string338        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x21b1:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x21b7:0x11 DW_TAG_subprogram
	.long	.Linfo_string339        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	111                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x21c2:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x21c8:0x11 DW_TAG_subprogram
	.long	.Linfo_string340        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	113                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x21d3:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x21d9:0x11 DW_TAG_subprogram
	.long	.Linfo_string341        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x21e4:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x21ea:0x11 DW_TAG_subprogram
	.long	.Linfo_string342        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	114                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x21f5:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x21fb:0x11 DW_TAG_subprogram
	.long	.Linfo_string343        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	115                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2206:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x220c:0x11 DW_TAG_subprogram
	.long	.Linfo_string344        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	116                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2217:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x221d:0x11 DW_TAG_subprogram
	.long	.Linfo_string345        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2228:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x222e:0x11 DW_TAG_subprogram
	.long	.Linfo_string346        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	118                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2239:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x223f:0x11 DW_TAG_subprogram
	.long	.Linfo_string347        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x224a:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2250:0x11 DW_TAG_subprogram
	.long	.Linfo_string348        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x225b:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2261:0x11 DW_TAG_subprogram
	.long	.Linfo_string349        # DW_AT_name
	.byte	28                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x226c:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x2272:0xb DW_TAG_typedef
	.long	8829                    # DW_AT_type
	.long	.Linfo_string350        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	51                      # Abbrev [51] 0x227d:0x1 DW_TAG_structure_type
                                        # DW_AT_declaration
	.byte	10                      # Abbrev [10] 0x227e:0xb DW_TAG_typedef
	.long	8841                    # DW_AT_type
	.long	.Linfo_string353        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.byte	39                      # Abbrev [39] 0x2289:0x1d DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	5                       # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x228d:0xc DW_TAG_member
	.long	.Linfo_string351        # DW_AT_name
	.long	3552                    # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x2299:0xc DW_TAG_member
	.long	.Linfo_string352        # DW_AT_name
	.long	3552                    # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	52                      # Abbrev [52] 0x22a6:0x8 DW_TAG_subprogram
	.long	.Linfo_string354        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	591                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	31                      # Abbrev [31] 0x22ae:0x12 DW_TAG_subprogram
	.long	.Linfo_string355        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	595                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x22ba:0x5 DW_TAG_formal_parameter
	.long	8896                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x22c0:0x5 DW_TAG_pointer_type
	.long	8901                    # DW_AT_type
	.byte	53                      # Abbrev [53] 0x22c5:0x1 DW_TAG_subroutine_type
	.byte	31                      # Abbrev [31] 0x22c6:0x12 DW_TAG_subprogram
	.long	.Linfo_string356        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	600                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x22d2:0x5 DW_TAG_formal_parameter
	.long	8896                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x22d8:0x11 DW_TAG_subprogram
	.long	.Linfo_string357        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x22e3:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x22e9:0x11 DW_TAG_subprogram
	.long	.Linfo_string358        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x22f4:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x22fa:0x11 DW_TAG_subprogram
	.long	.Linfo_string359        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	107                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2305:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x230b:0x26 DW_TAG_subprogram
	.long	.Linfo_string360        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	820                     # DW_AT_decl_line
	.long	6149                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2317:0x5 DW_TAG_formal_parameter
	.long	9009                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x231c:0x5 DW_TAG_formal_parameter
	.long	9009                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2321:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2326:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x232b:0x5 DW_TAG_formal_parameter
	.long	9015                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x2331:0x5 DW_TAG_pointer_type
	.long	9014                    # DW_AT_type
	.byte	54                      # Abbrev [54] 0x2336:0x1 DW_TAG_const_type
	.byte	23                      # Abbrev [23] 0x2337:0xc DW_TAG_typedef
	.long	9027                    # DW_AT_type
	.long	.Linfo_string361        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	808                     # DW_AT_decl_line
	.byte	29                      # Abbrev [29] 0x2343:0x5 DW_TAG_pointer_type
	.long	9032                    # DW_AT_type
	.byte	55                      # Abbrev [55] 0x2348:0x10 DW_TAG_subroutine_type
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x234d:0x5 DW_TAG_formal_parameter
	.long	9009                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2352:0x5 DW_TAG_formal_parameter
	.long	9009                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2358:0x17 DW_TAG_subprogram
	.long	.Linfo_string362        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	542                     # DW_AT_decl_line
	.long	6149                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2364:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2369:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x236f:0x17 DW_TAG_subprogram
	.long	.Linfo_string363        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	852                     # DW_AT_decl_line
	.long	8818                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x237b:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2380:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x2386:0xe DW_TAG_subprogram
	.long	.Linfo_string364        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	617                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	8                       # Abbrev [8] 0x238e:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	57                      # Abbrev [57] 0x2394:0xe DW_TAG_subprogram
	.long	.Linfo_string365        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	565                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x239c:0x5 DW_TAG_formal_parameter
	.long	6149                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x23a2:0x12 DW_TAG_subprogram
	.long	.Linfo_string366        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	634                     # DW_AT_decl_line
	.long	3540                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x23ae:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x23b4:0x12 DW_TAG_subprogram
	.long	.Linfo_string367        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	841                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x23c0:0x5 DW_TAG_formal_parameter
	.long	3552                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x23c6:0x17 DW_TAG_subprogram
	.long	.Linfo_string368        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	854                     # DW_AT_decl_line
	.long	8830                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x23d2:0x5 DW_TAG_formal_parameter
	.long	3552                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x23d7:0x5 DW_TAG_formal_parameter
	.long	3552                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x23dd:0x12 DW_TAG_subprogram
	.long	.Linfo_string369        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	6149                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x23e9:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x23ef:0x17 DW_TAG_subprogram
	.long	.Linfo_string370        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	922                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x23fb:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2400:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2406:0x1c DW_TAG_subprogram
	.long	.Linfo_string371        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	933                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2412:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2417:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x241c:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2422:0x1c DW_TAG_subprogram
	.long	.Linfo_string372        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x242e:0x5 DW_TAG_formal_parameter
	.long	6423                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2433:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2438:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	57                      # Abbrev [57] 0x243e:0x1d DW_TAG_subprogram
	.long	.Linfo_string373        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	830                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2446:0x5 DW_TAG_formal_parameter
	.long	6149                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x244b:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2450:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2455:0x5 DW_TAG_formal_parameter
	.long	9015                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x245b:0xe DW_TAG_subprogram
	.long	.Linfo_string374        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	623                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	8                       # Abbrev [8] 0x2463:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	47                      # Abbrev [47] 0x2469:0xc DW_TAG_subprogram
	.long	.Linfo_string375        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	453                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                      # Abbrev [31] 0x2475:0x17 DW_TAG_subprogram
	.long	.Linfo_string376        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	550                     # DW_AT_decl_line
	.long	6149                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2481:0x5 DW_TAG_formal_parameter
	.long	6149                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2486:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	57                      # Abbrev [57] 0x248c:0xe DW_TAG_subprogram
	.long	.Linfo_string377        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	455                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2494:0x5 DW_TAG_formal_parameter
	.long	6289                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x249a:0x16 DW_TAG_subprogram
	.long	.Linfo_string378        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	3601                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x24a5:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x24aa:0x5 DW_TAG_formal_parameter
	.long	9392                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x24b0:0x5 DW_TAG_restrict_type
	.long	9397                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x24b5:0x5 DW_TAG_pointer_type
	.long	3540                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x24ba:0x1b DW_TAG_subprogram
	.long	.Linfo_string379        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x24c5:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x24ca:0x5 DW_TAG_formal_parameter
	.long	9392                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x24cf:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x24d5:0x1b DW_TAG_subprogram
	.long	.Linfo_string380        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.long	6202                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x24e0:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x24e5:0x5 DW_TAG_formal_parameter
	.long	9392                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x24ea:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x24f0:0x12 DW_TAG_subprogram
	.long	.Linfo_string381        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	784                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x24fc:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2502:0x1c DW_TAG_subprogram
	.long	.Linfo_string382        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	936                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x250e:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2513:0x5 DW_TAG_formal_parameter
	.long	6479                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2518:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x251e:0x17 DW_TAG_subprogram
	.long	.Linfo_string383        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	929                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x252a:0x5 DW_TAG_formal_parameter
	.long	3540                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x252f:0x5 DW_TAG_formal_parameter
	.long	6416                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x2535:0xb DW_TAG_typedef
	.long	9536                    # DW_AT_type
	.long	.Linfo_string384        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.byte	39                      # Abbrev [39] 0x2540:0x1d DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	5                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x2544:0xc DW_TAG_member
	.long	.Linfo_string351        # DW_AT_name
	.long	4995                    # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x2550:0xc DW_TAG_member
	.long	.Linfo_string352        # DW_AT_name
	.long	4995                    # DW_AT_type
	.byte	5                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x255d:0xe DW_TAG_subprogram
	.long	.Linfo_string385        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	629                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	8                       # Abbrev [8] 0x2565:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x256b:0x12 DW_TAG_subprogram
	.long	.Linfo_string386        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	844                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2577:0x5 DW_TAG_formal_parameter
	.long	4995                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x257d:0x17 DW_TAG_subprogram
	.long	.Linfo_string387        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.short	858                     # DW_AT_decl_line
	.long	9525                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2589:0x5 DW_TAG_formal_parameter
	.long	4995                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x258e:0x5 DW_TAG_formal_parameter
	.long	4995                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2594:0x11 DW_TAG_subprogram
	.long	.Linfo_string388        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x259f:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x25a5:0x1b DW_TAG_subprogram
	.long	.Linfo_string389        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	4995                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x25b0:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x25b5:0x5 DW_TAG_formal_parameter
	.long	9392                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x25ba:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x25c0:0x1b DW_TAG_subprogram
	.long	.Linfo_string390        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	205                     # DW_AT_decl_line
	.long	7996                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x25cb:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x25d0:0x5 DW_TAG_formal_parameter
	.long	9392                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x25d5:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x25db:0x16 DW_TAG_subprogram
	.long	.Linfo_string391        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	123                     # DW_AT_decl_line
	.long	4027                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x25e6:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x25eb:0x5 DW_TAG_formal_parameter
	.long	9392                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x25f1:0x16 DW_TAG_subprogram
	.long	.Linfo_string392        # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.long	4085                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x25fc:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2601:0x5 DW_TAG_formal_parameter
	.long	9392                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x2607:0xb DW_TAG_typedef
	.long	6378                    # DW_AT_type
	.long	.Linfo_string394        # DW_AT_name
	.byte	31                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x2612:0xb DW_TAG_typedef
	.long	9757                    # DW_AT_type
	.long	.Linfo_string397        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x261d:0xb DW_TAG_typedef
	.long	9768                    # DW_AT_type
	.long	.Linfo_string396        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	44                      # Abbrev [44] 0x2628:0x5 DW_TAG_structure_type
	.long	.Linfo_string395        # DW_AT_name
                                        # DW_AT_declaration
	.byte	57                      # Abbrev [57] 0x262d:0xe DW_TAG_subprogram
	.long	.Linfo_string398        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	757                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2635:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x263b:0x5 DW_TAG_pointer_type
	.long	9735                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x2640:0x11 DW_TAG_subprogram
	.long	.Linfo_string399        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	213                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x264b:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2651:0x12 DW_TAG_subprogram
	.long	.Linfo_string400        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	759                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x265d:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2663:0x12 DW_TAG_subprogram
	.long	.Linfo_string401        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	761                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x266f:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2675:0x11 DW_TAG_subprogram
	.long	.Linfo_string402        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	218                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2680:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2686:0x12 DW_TAG_subprogram
	.long	.Linfo_string403        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	485                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2692:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2698:0x17 DW_TAG_subprogram
	.long	.Linfo_string404        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	731                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x26a4:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x26a9:0x5 DW_TAG_formal_parameter
	.long	9908                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x26af:0x5 DW_TAG_restrict_type
	.long	9787                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0x26b4:0x5 DW_TAG_restrict_type
	.long	9913                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x26b9:0x5 DW_TAG_pointer_type
	.long	9746                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x26be:0x1c DW_TAG_subprogram
	.long	.Linfo_string405        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	564                     # DW_AT_decl_line
	.long	3540                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x26ca:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x26cf:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x26d4:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x26da:0x16 DW_TAG_subprogram
	.long	.Linfo_string406        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.long	9787                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x26e5:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x26ea:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x26f0:0x18 DW_TAG_subprogram
	.long	.Linfo_string407        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	326                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x26fc:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2701:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x2706:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2708:0x17 DW_TAG_subprogram
	.long	.Linfo_string408        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	521                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2714:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2719:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x271f:0x17 DW_TAG_subprogram
	.long	.Linfo_string409        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	626                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x272b:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2730:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2736:0x21 DW_TAG_subprogram
	.long	.Linfo_string410        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	646                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2742:0x5 DW_TAG_formal_parameter
	.long	10071                   # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2747:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x274c:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2751:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x2757:0x5 DW_TAG_restrict_type
	.long	6149                    # DW_AT_type
	.byte	32                      # Abbrev [32] 0x275c:0x1b DW_TAG_subprogram
	.long	.Linfo_string411        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.long	9787                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2767:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x276c:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2771:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x2777:0x1c DW_TAG_subprogram
	.long	.Linfo_string412        # DW_AT_linkage_name
	.long	.Linfo_string413        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	407                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2787:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x278c:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x2791:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2793:0x1c DW_TAG_subprogram
	.long	.Linfo_string414        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x279f:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x27a4:0x5 DW_TAG_formal_parameter
	.long	3552                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x27a9:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x27af:0x17 DW_TAG_subprogram
	.long	.Linfo_string415        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	736                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x27bb:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x27c0:0x5 DW_TAG_formal_parameter
	.long	10182                   # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x27c6:0x5 DW_TAG_pointer_type
	.long	10187                   # DW_AT_type
	.byte	33                      # Abbrev [33] 0x27cb:0x5 DW_TAG_const_type
	.long	9746                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x27d0:0x12 DW_TAG_subprogram
	.long	.Linfo_string416        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	689                     # DW_AT_decl_line
	.long	3552                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x27dc:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x27e2:0x21 DW_TAG_subprogram
	.long	.Linfo_string417        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	652                     # DW_AT_decl_line
	.long	6627                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x27ee:0x5 DW_TAG_formal_parameter
	.long	10243                   # DW_AT_type
	.byte	8                       # Abbrev [8] 0x27f3:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x27f8:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x27fd:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x2803:0x5 DW_TAG_restrict_type
	.long	9009                    # DW_AT_type
	.byte	31                      # Abbrev [31] 0x2808:0x12 DW_TAG_subprogram
	.long	.Linfo_string418        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	486                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2814:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	47                      # Abbrev [47] 0x281a:0xc DW_TAG_subprogram
	.long	.Linfo_string419        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	492                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	57                      # Abbrev [57] 0x2826:0xe DW_TAG_subprogram
	.long	.Linfo_string420        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	775                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x282e:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2834:0x13 DW_TAG_subprogram
	.long	.Linfo_string421        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2840:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x2845:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2847:0x17 DW_TAG_subprogram
	.long	.Linfo_string422        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	522                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2853:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2858:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x285e:0x12 DW_TAG_subprogram
	.long	.Linfo_string423        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	528                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x286a:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2870:0x12 DW_TAG_subprogram
	.long	.Linfo_string424        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	632                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x287c:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2882:0x11 DW_TAG_subprogram
	.long	.Linfo_string425        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x288d:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2893:0x16 DW_TAG_subprogram
	.long	.Linfo_string426        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	148                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x289e:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x28a3:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	57                      # Abbrev [57] 0x28a9:0xe DW_TAG_subprogram
	.long	.Linfo_string427        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	694                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x28b1:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x28b7:0x17 DW_TAG_subprogram
	.long	.Linfo_string428        # DW_AT_linkage_name
	.long	.Linfo_string429        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	410                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x28c7:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x28cc:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	57                      # Abbrev [57] 0x28ce:0x13 DW_TAG_subprogram
	.long	.Linfo_string430        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x28d6:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x28db:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x28e1:0x21 DW_TAG_subprogram
	.long	.Linfo_string431        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x28ed:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x28f2:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x28f7:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x28fc:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2902:0x18 DW_TAG_subprogram
	.long	.Linfo_string432        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	334                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x290e:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2913:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x2918:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x291a:0x1c DW_TAG_subprogram
	.long	.Linfo_string433        # DW_AT_linkage_name
	.long	.Linfo_string434        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	412                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x292a:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x292f:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x2934:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	50                      # Abbrev [50] 0x2936:0xb DW_TAG_subprogram
	.long	.Linfo_string435        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	173                     # DW_AT_decl_line
	.long	9787                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                      # Abbrev [32] 0x2941:0x11 DW_TAG_subprogram
	.long	.Linfo_string436        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	3540                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x294c:0x5 DW_TAG_formal_parameter
	.long	3540                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2952:0x17 DW_TAG_subprogram
	.long	.Linfo_string437        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	639                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x295e:0x5 DW_TAG_formal_parameter
	.long	3559                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2963:0x5 DW_TAG_formal_parameter
	.long	9787                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2969:0x1c DW_TAG_subprogram
	.long	.Linfo_string438        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	341                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2975:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x297a:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x297f:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2985:0x17 DW_TAG_subprogram
	.long	.Linfo_string439        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	347                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2991:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2996:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x299c:0x1c DW_TAG_subprogram
	.long	.Linfo_string440        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	349                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x29a8:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x29ad:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x29b2:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x29b8:0x1d DW_TAG_subprogram
	.long	.Linfo_string441        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	354                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x29c4:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x29c9:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x29ce:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x29d3:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x29d5:0x20 DW_TAG_subprogram
	.long	.Linfo_string442        # DW_AT_linkage_name
	.long	.Linfo_string443        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	451                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x29e5:0x5 DW_TAG_formal_parameter
	.long	9903                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x29ea:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x29ef:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x29f5:0x1b DW_TAG_subprogram
	.long	.Linfo_string444        # DW_AT_linkage_name
	.long	.Linfo_string445        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	456                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2a05:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2a0a:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	31                      # Abbrev [31] 0x2a10:0x21 DW_TAG_subprogram
	.long	.Linfo_string446        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	358                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2a1c:0x5 DW_TAG_formal_parameter
	.long	7133                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2a21:0x5 DW_TAG_formal_parameter
	.long	6627                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2a26:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2a2b:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x2a31:0x20 DW_TAG_subprogram
	.long	.Linfo_string447        # DW_AT_linkage_name
	.long	.Linfo_string448        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.short	459                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2a41:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2a46:0x5 DW_TAG_formal_parameter
	.long	6638                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2a4b:0x5 DW_TAG_formal_parameter
	.long	6906                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	33                      # Abbrev [33] 0x2a51:0x5 DW_TAG_const_type
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x2a56:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	8870                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a5d:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	8878                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a64:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.long	9094                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a6b:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	8902                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a72:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	9307                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a79:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	8818                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a80:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	8830                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a87:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	1447                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a8e:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	8920                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a95:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.long	8937                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2a9c:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	8954                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2aa3:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	8971                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2aaa:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	9048                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2ab1:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	174                     # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2ab8:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.long	9108                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2abf:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	9122                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2ac6:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.long	9140                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2acd:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	9158                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2ad4:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	9181                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2adb:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	9199                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2ae2:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	9222                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2ae9:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	9250                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2af0:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	9278                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2af7:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	9321                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2afe:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	9333                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2b05:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	9356                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2b0c:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	9370                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2b13:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	9402                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2b1a:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	9429                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2b21:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	9456                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2b28:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	9474                    # DW_AT_import
	.byte	5                       # Abbrev [5] 0x2b2f:0x7 DW_TAG_imported_declaration
	.byte	36                      # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	9502                    # DW_AT_import
	.byte	10                      # Abbrev [10] 0x2b36:0xb DW_TAG_typedef
	.long	11073                   # DW_AT_type
	.long	.Linfo_string451        # DW_AT_name
	.byte	37                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	29                      # Abbrev [29] 0x2b41:0x5 DW_TAG_pointer_type
	.long	11078                   # DW_AT_type
	.byte	33                      # Abbrev [33] 0x2b46:0x5 DW_TAG_const_type
	.long	8072                    # DW_AT_type
	.byte	10                      # Abbrev [10] 0x2b4b:0xb DW_TAG_typedef
	.long	6202                    # DW_AT_type
	.long	.Linfo_string452        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	32                      # Abbrev [32] 0x2b56:0x11 DW_TAG_subprogram
	.long	.Linfo_string453        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2b61:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2b67:0x11 DW_TAG_subprogram
	.long	.Linfo_string454        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2b72:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2b78:0x11 DW_TAG_subprogram
	.long	.Linfo_string455        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2b83:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2b89:0x11 DW_TAG_subprogram
	.long	.Linfo_string456        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2b94:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2b9a:0x16 DW_TAG_subprogram
	.long	.Linfo_string457        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	159                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2ba5:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2baa:0x5 DW_TAG_formal_parameter
	.long	11083                   # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2bb0:0x11 DW_TAG_subprogram
	.long	.Linfo_string458        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2bbb:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2bc1:0x11 DW_TAG_subprogram
	.long	.Linfo_string459        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2bcc:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2bd2:0x11 DW_TAG_subprogram
	.long	.Linfo_string460        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2bdd:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2be3:0x11 DW_TAG_subprogram
	.long	.Linfo_string461        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2bee:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2bf4:0x11 DW_TAG_subprogram
	.long	.Linfo_string462        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2bff:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c05:0x11 DW_TAG_subprogram
	.long	.Linfo_string463        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c10:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c16:0x11 DW_TAG_subprogram
	.long	.Linfo_string464        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c21:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c27:0x11 DW_TAG_subprogram
	.long	.Linfo_string465        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	3559                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c32:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c38:0x16 DW_TAG_subprogram
	.long	.Linfo_string466        # DW_AT_name
	.byte	37                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c43:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2c48:0x5 DW_TAG_formal_parameter
	.long	11062                   # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c4e:0x11 DW_TAG_subprogram
	.long	.Linfo_string467        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c59:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c5f:0x11 DW_TAG_subprogram
	.long	.Linfo_string468        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	6315                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c6a:0x5 DW_TAG_formal_parameter
	.long	6315                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c70:0x11 DW_TAG_subprogram
	.long	.Linfo_string469        # DW_AT_name
	.byte	37                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	11062                   # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c7b:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	32                      # Abbrev [32] 0x2c81:0x11 DW_TAG_subprogram
	.long	.Linfo_string470        # DW_AT_name
	.byte	39                      # DW_AT_decl_file
	.byte	155                     # DW_AT_decl_line
	.long	11083                   # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2c8c:0x5 DW_TAG_formal_parameter
	.long	5370                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x2c92:0xd9 DW_TAG_namespace
	.long	.Linfo_string471        # DW_AT_name
	.byte	58                      # Abbrev [58] 0x2c97:0xd3 DW_TAG_class_type
	.long	.Linfo_string486        # DW_AT_name
	.short	4136                    # DW_AT_byte_size
	.byte	42                      # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x2ca0:0xc DW_TAG_member
	.long	.Linfo_string472        # DW_AT_name
	.long	11627                   # DW_AT_type
	.byte	42                      # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x2cac:0xc DW_TAG_member
	.long	.Linfo_string475        # DW_AT_name
	.long	11632                   # DW_AT_type
	.byte	42                      # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	59                      # Abbrev [59] 0x2cb8:0xd DW_TAG_member
	.long	.Linfo_string476        # DW_AT_name
	.long	11645                   # DW_AT_type
	.byte	42                      # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.short	4104                    # DW_AT_data_member_location
	.byte	59                      # Abbrev [59] 0x2cc5:0xd DW_TAG_member
	.long	.Linfo_string478        # DW_AT_name
	.long	11655                   # DW_AT_type
	.byte	42                      # DW_AT_decl_file
	.byte	35                      # DW_AT_decl_line
	.short	4112                    # DW_AT_data_member_location
	.byte	59                      # Abbrev [59] 0x2cd2:0xd DW_TAG_member
	.long	.Linfo_string480        # DW_AT_name
	.long	11665                   # DW_AT_type
	.byte	42                      # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.short	4120                    # DW_AT_data_member_location
	.byte	59                      # Abbrev [59] 0x2cdf:0xd DW_TAG_member
	.long	.Linfo_string485        # DW_AT_name
	.long	4027                    # DW_AT_type
	.byte	42                      # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.short	4132                    # DW_AT_data_member_location
	.byte	19                      # Abbrev [19] 0x2cec:0xe DW_TAG_subprogram
	.long	.Linfo_string486        # DW_AT_name
	.byte	42                      # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x2cf4:0x5 DW_TAG_formal_parameter
	.long	11721                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x2cfa:0xe DW_TAG_subprogram
	.long	.Linfo_string487        # DW_AT_name
	.byte	42                      # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x2d02:0x5 DW_TAG_formal_parameter
	.long	11721                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x2d08:0x1d DW_TAG_subprogram
	.long	.Linfo_string486        # DW_AT_name
	.byte	42                      # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x2d10:0x5 DW_TAG_formal_parameter
	.long	11721                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x2d15:0x5 DW_TAG_formal_parameter
	.long	3459                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2d1a:0x5 DW_TAG_formal_parameter
	.long	6289                    # DW_AT_type
	.byte	8                       # Abbrev [8] 0x2d1f:0x5 DW_TAG_formal_parameter
	.long	6185                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x2d25:0x17 DW_TAG_subprogram
	.long	.Linfo_string491        # DW_AT_linkage_name
	.long	.Linfo_string492        # DW_AT_name
	.byte	42                      # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x2d31:0x5 DW_TAG_formal_parameter
	.long	11721                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x2d36:0x5 DW_TAG_formal_parameter
	.long	11726                   # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x2d3c:0x17 DW_TAG_subprogram
	.long	.Linfo_string493        # DW_AT_linkage_name
	.long	.Linfo_string494        # DW_AT_name
	.byte	42                      # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x2d48:0x5 DW_TAG_formal_parameter
	.long	11721                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	8                       # Abbrev [8] 0x2d4d:0x5 DW_TAG_formal_parameter
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x2d53:0x16 DW_TAG_subprogram
	.long	.Linfo_string495        # DW_AT_linkage_name
	.long	.Linfo_string496        # DW_AT_name
	.byte	42                      # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.long	11645                   # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	17                      # Abbrev [17] 0x2d63:0x5 DW_TAG_formal_parameter
	.long	11721                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x2d6b:0x5 DW_TAG_pointer_type
	.long	3443                    # DW_AT_type
	.byte	41                      # Abbrev [41] 0x2d70:0xd DW_TAG_array_type
	.long	4027                    # DW_AT_type
	.byte	60                      # Abbrev [60] 0x2d75:0x7 DW_TAG_subrange_type
	.long	6308                    # DW_AT_type
	.short	1024                    # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x2d7d:0x5 DW_TAG_pointer_type
	.long	11650                   # DW_AT_type
	.byte	11                      # Abbrev [11] 0x2d82:0x5 DW_TAG_class_type
	.long	.Linfo_string477        # DW_AT_name
                                        # DW_AT_declaration
	.byte	29                      # Abbrev [29] 0x2d87:0x5 DW_TAG_pointer_type
	.long	11660                   # DW_AT_type
	.byte	11                      # Abbrev [11] 0x2d8c:0x5 DW_TAG_class_type
	.long	.Linfo_string479        # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                      # Abbrev [10] 0x2d91:0xb DW_TAG_typedef
	.long	11676                   # DW_AT_type
	.long	.Linfo_string484        # DW_AT_name
	.byte	43                      # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.byte	61                      # Abbrev [61] 0x2d9c:0x2d DW_TAG_structure_type
	.long	.Linfo_string484        # DW_AT_name
	.byte	12                      # DW_AT_byte_size
	.byte	43                      # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x2da4:0xc DW_TAG_member
	.long	.Linfo_string481        # DW_AT_name
	.long	4027                    # DW_AT_type
	.byte	43                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x2db0:0xc DW_TAG_member
	.long	.Linfo_string482        # DW_AT_name
	.long	4027                    # DW_AT_type
	.byte	43                      # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x2dbc:0xc DW_TAG_member
	.long	.Linfo_string483        # DW_AT_name
	.long	4027                    # DW_AT_type
	.byte	43                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x2dc9:0x5 DW_TAG_pointer_type
	.long	11415                   # DW_AT_type
	.byte	36                      # Abbrev [36] 0x2dce:0x5 DW_TAG_reference_type
	.long	11665                   # DW_AT_type
	.byte	62                      # Abbrev [62] 0x2dd3:0x7f DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	11760                   # DW_AT_object_pointer
	.byte	40                      # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	.Linfo_string497        # DW_AT_linkage_name
	.long	11528                   # DW_AT_specification
	.byte	63                      # Abbrev [63] 0x2df0:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string502        # DW_AT_name
	.long	12099                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	27                      # Abbrev [27] 0x2dfd:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1            # DW_AT_location
	.long	.Linfo_string503        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	3459                    # DW_AT_type
	.byte	27                      # Abbrev [27] 0x2e0c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc2            # DW_AT_location
	.long	.Linfo_string504        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	6289                    # DW_AT_type
	.byte	27                      # Abbrev [27] 0x2e1b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string505        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	6185                    # DW_AT_type
	.byte	64                      # Abbrev [64] 0x2e2a:0x27 DW_TAG_lexical_block
	.quad	.Ltmp9                  # DW_AT_low_pc
	.long	.Ltmp15-.Ltmp9          # DW_AT_high_pc
	.byte	65                      # Abbrev [65] 0x2e37:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string501        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	12087                   # DW_AT_type
	.byte	66                      # Abbrev [66] 0x2e45:0xb DW_TAG_variable
	.long	.Linfo_string506        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	6185                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	67                      # Abbrev [67] 0x2e52:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	11883                   # DW_AT_object_pointer
	.byte	40                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.long	11557                   # DW_AT_specification
	.byte	63                      # Abbrev [63] 0x2e6b:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc5            # DW_AT_location
	.long	.Linfo_string502        # DW_AT_name
	.long	12099                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	27                      # Abbrev [27] 0x2e78:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc6            # DW_AT_location
	.long	.Linfo_string509        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.long	11726                   # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	67                      # Abbrev [67] 0x2e88:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	11937                   # DW_AT_object_pointer
	.byte	40                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	11580                   # DW_AT_specification
	.byte	68                      # Abbrev [68] 0x2ea1:0xb DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	85
	.long	.Linfo_string502        # DW_AT_name
	.long	12099                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	28                      # Abbrev [28] 0x2eac:0xd DW_TAG_formal_parameter
	.byte	1                       # DW_AT_location
	.byte	97
	.long	.Linfo_string510        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	4027                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	67                      # Abbrev [67] 0x2eba:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	11987                   # DW_AT_object_pointer
	.byte	40                      # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	11603                   # DW_AT_specification
	.byte	63                      # Abbrev [63] 0x2ed3:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc7            # DW_AT_location
	.long	.Linfo_string502        # DW_AT_name
	.long	12099                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	65                      # Abbrev [65] 0x2ee0:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string511        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	12104                   # DW_AT_type
	.byte	64                      # Abbrev [64] 0x2eee:0x1d DW_TAG_lexical_block
	.quad	.Ltmp30                 # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp30         # DW_AT_high_pc
	.byte	69                      # Abbrev [69] 0x2efb:0xf DW_TAG_variable
	.long	.Ldebug_loc8            # DW_AT_location
	.long	.Linfo_string512        # DW_AT_name
	.byte	40                      # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	3559                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	62                      # Abbrev [62] 0x2f0c:0x2b DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.long	12073                   # DW_AT_object_pointer
	.byte	40                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	.Linfo_string500        # DW_AT_linkage_name
	.long	11514                   # DW_AT_specification
	.byte	63                      # Abbrev [63] 0x2f29:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc9            # DW_AT_location
	.long	.Linfo_string502        # DW_AT_name
	.long	12099                   # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0x2f37:0xc DW_TAG_array_type
	.long	3545                    # DW_AT_type
	.byte	42                      # Abbrev [42] 0x2f3c:0x6 DW_TAG_subrange_type
	.long	6308                    # DW_AT_type
	.byte	44                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x2f43:0x5 DW_TAG_pointer_type
	.long	11415                   # DW_AT_type
	.byte	41                      # Abbrev [41] 0x2f48:0xd DW_TAG_array_type
	.long	8054                    # DW_AT_type
	.byte	60                      # Abbrev [60] 0x2f4d:0x7 DW_TAG_subrange_type
	.long	6308                    # DW_AT_type
	.short	1024                    # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end5
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
.Lcu_macro_begin0:
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	12118                   # Compilation Unit Length
	.long	1500                    # DIE offset
	.asciz	"std::__exception_ptr"  # External Name
	.long	1495                    # DIE offset
	.asciz	"std::__debug"          # External Name
	.long	11410                   # DIE offset
	.asciz	"ILLIXR_AUDIO"          # External Name
	.long	3481                    # DIE offset
	.asciz	"std::operator|"        # External Name
	.long	11912                   # DIE offset
	.asciz	"ILLIXR_AUDIO::Sound::setSrcAmp" # External Name
	.long	251                     # DIE offset
	.asciz	"std"                   # External Name
	.long	6136                    # DIE offset
	.asciz	"__gnu_debug"           # External Name
	.long	3470                    # DIE offset
	.asciz	"std::__cxx11"          # External Name
	.long	11962                   # DIE offset
	.asciz	"ILLIXR_AUDIO::Sound::readInBFormat" # External Name
	.long	42                      # DIE offset
	.asciz	"__gnu_cxx"             # External Name
	.long	11858                   # DIE offset
	.asciz	"ILLIXR_AUDIO::Sound::setSrcPos" # External Name
	.long	12044                   # DIE offset
	.asciz	"ILLIXR_AUDIO::Sound::~Sound" # External Name
	.long	11731                   # DIE offset
	.asciz	"ILLIXR_AUDIO::Sound::Sound" # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	12118                   # Compilation Unit Length
	.long	329                     # DIE offset
	.asciz	"std::_Ios_Iostate"     # External Name
	.long	1813                    # DIE offset
	.asciz	"std::nullptr_t"        # External Name
	.long	8061                    # DIE offset
	.asciz	"int32_t"               # External Name
	.long	8237                    # DIE offset
	.asciz	"intmax_t"              # External Name
	.long	8094                    # DIE offset
	.asciz	"__int64_t"             # External Name
	.long	8383                    # DIE offset
	.asciz	"uint_fast16_t"         # External Name
	.long	8105                    # DIE offset
	.asciz	"int_fast8_t"           # External Name
	.long	8270                    # DIE offset
	.asciz	"uint8_t"               # External Name
	.long	6185                    # DIE offset
	.asciz	"bool"                  # External Name
	.long	1854                    # DIE offset
	.asciz	"std::size_t"           # External Name
	.long	9746                    # DIE offset
	.asciz	"fpos_t"                # External Name
	.long	8160                    # DIE offset
	.asciz	"__int_least8_t"        # External Name
	.long	8449                    # DIE offset
	.asciz	"__uint_least16_t"      # External Name
	.long	3443                    # DIE offset
	.asciz	"std::fstream"          # External Name
	.long	8116                    # DIE offset
	.asciz	"int_fast16_t"          # External Name
	.long	6315                    # DIE offset
	.asciz	"wint_t"                # External Name
	.long	11062                   # DIE offset
	.asciz	"wctrans_t"             # External Name
	.long	6202                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	8299                    # DIE offset
	.asciz	"uint16_t"              # External Name
	.long	3552                    # DIE offset
	.asciz	"long int"              # External Name
	.long	6170                    # DIE offset
	.asciz	"decltype(nullptr)"     # External Name
	.long	8193                    # DIE offset
	.asciz	"int_least32_t"         # External Name
	.long	8226                    # DIE offset
	.asciz	"__int_least64_t"       # External Name
	.long	9735                    # DIE offset
	.asciz	"FILE"                  # External Name
	.long	8361                    # DIE offset
	.asciz	"__uint64_t"            # External Name
	.long	8248                    # DIE offset
	.asciz	"__intmax_t"            # External Name
	.long	8043                    # DIE offset
	.asciz	"__int16_t"             # External Name
	.long	11415                   # DIE offset
	.asciz	"ILLIXR_AUDIO::Sound"   # External Name
	.long	390                     # DIE offset
	.asciz	"std::streamsize"       # External Name
	.long	9015                    # DIE offset
	.asciz	"__compar_fn_t"         # External Name
	.long	8083                    # DIE offset
	.asciz	"int64_t"               # External Name
	.long	4016                    # DIE offset
	.asciz	"float_t"               # External Name
	.long	8526                    # DIE offset
	.asciz	"uintptr_t"             # External Name
	.long	4085                    # DIE offset
	.asciz	"long double"           # External Name
	.long	9757                    # DIE offset
	.asciz	"__fpos_t"              # External Name
	.long	9525                    # DIE offset
	.asciz	"lldiv_t"               # External Name
	.long	8054                    # DIE offset
	.asciz	"short"                 # External Name
	.long	8460                    # DIE offset
	.asciz	"uint_least32_t"        # External Name
	.long	11676                   # DIE offset
	.asciz	"PolarPoint"            # External Name
	.long	8259                    # DIE offset
	.asciz	"intptr_t"              # External Name
	.long	8310                    # DIE offset
	.asciz	"__uint16_t"            # External Name
	.long	8182                    # DIE offset
	.asciz	"__int_least16_t"       # External Name
	.long	6367                    # DIE offset
	.asciz	"__FILE"                # External Name
	.long	8215                    # DIE offset
	.asciz	"int_least64_t"         # External Name
	.long	401                     # DIE offset
	.asciz	"std::ptrdiff_t"        # External Name
	.long	6220                    # DIE offset
	.asciz	"__mbstate_t"           # External Name
	.long	8830                    # DIE offset
	.asciz	"ldiv_t"                # External Name
	.long	8427                    # DIE offset
	.asciz	"__uint_least8_t"       # External Name
	.long	47                      # DIE offset
	.asciz	"__gnu_cxx::_Lock_policy" # External Name
	.long	8032                    # DIE offset
	.asciz	"int16_t"               # External Name
	.long	6289                    # DIE offset
	.asciz	"unsigned int"          # External Name
	.long	6416                    # DIE offset
	.asciz	"wchar_t"               # External Name
	.long	3559                    # DIE offset
	.asciz	"int"                   # External Name
	.long	4005                    # DIE offset
	.asciz	"double_t"              # External Name
	.long	6627                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	8127                    # DIE offset
	.asciz	"int_fast32_t"          # External Name
	.long	8471                    # DIE offset
	.asciz	"__uint_least32_t"      # External Name
	.long	8394                    # DIE offset
	.asciz	"uint_fast32_t"         # External Name
	.long	8482                    # DIE offset
	.asciz	"uint_least64_t"        # External Name
	.long	8003                    # DIE offset
	.asciz	"int8_t"                # External Name
	.long	8515                    # DIE offset
	.asciz	"__uintmax_t"           # External Name
	.long	8025                    # DIE offset
	.asciz	"signed char"           # External Name
	.long	1505                    # DIE offset
	.asciz	"std::__exception_ptr::exception_ptr" # External Name
	.long	3601                    # DIE offset
	.asciz	"double"                # External Name
	.long	8818                    # DIE offset
	.asciz	"div_t"                 # External Name
	.long	8171                    # DIE offset
	.asciz	"int_least16_t"         # External Name
	.long	3545                    # DIE offset
	.asciz	"char"                  # External Name
	.long	256                     # DIE offset
	.asciz	"std::_Ios_Openmode"    # External Name
	.long	8072                    # DIE offset
	.asciz	"__int32_t"             # External Name
	.long	8328                    # DIE offset
	.asciz	"uint32_t"              # External Name
	.long	6209                    # DIE offset
	.asciz	"mbstate_t"             # External Name
	.long	8416                    # DIE offset
	.asciz	"uint_least8_t"         # External Name
	.long	8372                    # DIE offset
	.asciz	"uint_fast8_t"          # External Name
	.long	7996                    # DIE offset
	.asciz	"long long unsigned int" # External Name
	.long	8281                    # DIE offset
	.asciz	"__uint8_t"             # External Name
	.long	8405                    # DIE offset
	.asciz	"uint_fast64_t"         # External Name
	.long	4995                    # DIE offset
	.asciz	"long long int"         # External Name
	.long	6911                    # DIE offset
	.asciz	"__va_list_tag"         # External Name
	.long	8321                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	8149                    # DIE offset
	.asciz	"int_least8_t"          # External Name
	.long	6110                    # DIE offset
	.asciz	"__float128"            # External Name
	.long	11083                   # DIE offset
	.asciz	"wctype_t"              # External Name
	.long	8438                    # DIE offset
	.asciz	"uint_least16_t"        # External Name
	.long	8493                    # DIE offset
	.asciz	"__uint_least64_t"      # External Name
	.long	8014                    # DIE offset
	.asciz	"__int8_t"              # External Name
	.long	8138                    # DIE offset
	.asciz	"int_fast64_t"          # External Name
	.long	4027                    # DIE offset
	.asciz	"float"                 # External Name
	.long	8339                    # DIE offset
	.asciz	"__uint32_t"            # External Name
	.long	8204                    # DIE offset
	.asciz	"__int_least32_t"       # External Name
	.long	8504                    # DIE offset
	.asciz	"uintmax_t"             # External Name
	.long	8292                    # DIE offset
	.asciz	"unsigned char"         # External Name
	.long	3459                    # DIE offset
	.asciz	"std::string"           # External Name
	.long	8350                    # DIE offset
	.asciz	"uint64_t"              # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.globl	_ZN12ILLIXR_AUDIO5SoundC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb
	.type	_ZN12ILLIXR_AUDIO5SoundC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb,@function
_ZN12ILLIXR_AUDIO5SoundC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb = _ZN12ILLIXR_AUDIO5SoundC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjb
	.globl	_ZN12ILLIXR_AUDIO5SoundD1Ev
	.type	_ZN12ILLIXR_AUDIO5SoundD1Ev,@function
_ZN12ILLIXR_AUDIO5SoundD1Ev = _ZN12ILLIXR_AUDIO5SoundD2Ev
	.ident	"clang version 6.0.1 "
	.ident	"clang version 6.0.1 "
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
