	.file	"mystere.c"
	.text
	.globl	mystere_product
	.type	mystere_product, @function
mystere_product:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$96, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	key_initialized.1996@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2
	movl	$0, -84(%ebp)
	jmp	.L3
.L4:
	movl	-84(%ebp), %eax
	imull	$57, %eax, %eax
	leal	3(%eax), %esi
	movl	$354224107, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	$97, %ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	$715827883, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%eax, %esi
	movl	%esi, %edx
	movl	%ecx, %eax
	movb	%al, -36(%ebp,%edx)
	addl	$1, -84(%ebp)
.L3:
	cmpl	$23, -84(%ebp)
	jle	.L4
	subl	$4, %esp
	leal	wctx.1997@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$192
	leal	-36(%ebp), %eax
	pushl	%eax
	call	AES_set_encrypt_key@PLT
	addl	$16, %esp
	subl	$4, %esp
	leal	244+wctx.1997@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$192
	leal	-36(%ebp), %eax
	pushl	%eax
	call	AES_set_decrypt_key@PLT
	addl	$16, %esp
	movl	$1, key_initialized.1996@GOTOFF(%ebx)
.L2:
	movl	dec_key.1999@GOTOFF(%ebx), %eax
	subl	$4, %esp
	pushl	%eax
	leal	-68(%ebp), %eax
	pushl	%eax
	pushl	-96(%ebp)
	call	AES_decrypt@PLT
	addl	$16, %esp
	movl	dec_key.1999@GOTOFF(%ebx), %eax
	subl	$4, %esp
	pushl	%eax
	leal	-52(%ebp), %eax
	pushl	%eax
	pushl	-100(%ebp)
	call	AES_decrypt@PLT
	addl	$16, %esp
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	jmp	.L5
.L6:
	leal	-68(%ebp), %edx
	movl	-76(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-80(%ebp), %eax
	leal	(%edx,%eax), %ecx
	leal	-52(%ebp), %edx
	movl	-76(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, %ecx
	leal	-36(%ebp), %edx
	movl	-76(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	movl	-72(%ebp), %eax
	sarl	$8, %eax
	movl	%eax, -80(%ebp)
	addl	$1, -76(%ebp)
.L5:
	cmpl	$15, -76(%ebp)
	jle	.L6
	movl	enc_key.1998@GOTOFF(%ebx), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	-92(%ebp)
	leal	-36(%ebp), %eax
	pushl	%eax
	call	AES_encrypt@PLT
	addl	$16, %esp
	movl	dec_key.1999@GOTOFF(%ebx), %eax
	subl	$4, %esp
	pushl	%eax
	leal	-36(%ebp), %eax
	pushl	%eax
	pushl	-92(%ebp)
	call	AES_decrypt@PLT
	addl	$16, %esp
	nop
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L7
	call	__stack_chk_fail_local
.L7:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	mystere_product, .-mystere_product
	.local	key_initialized.1996
	.comm	key_initialized.1996,4,4
	.local	wctx.1997
	.comm	wctx.1997,488,32
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	dec_key.1999, @object
	.size	dec_key.1999, 4
dec_key.1999:
	.long	wctx.1997+244
	.align 4
	.type	enc_key.1998, @object
	.size	enc_key.1998, 4
enc_key.1998:
	.long	wctx.1997
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE1:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
