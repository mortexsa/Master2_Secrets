	.file	"mystere.c"
	.text
	.globl	mystere_product
	.type	mystere_product, @function
mystere_product:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	key_initialized.2394(%rip), %eax
	testl	%eax, %eax
	jne	.L2
	movl	$0, -80(%rbp)
	jmp	.L3
.L4:
	movl	-80(%rbp), %eax
	imull	$57, %eax, %eax
	leal	3(%rax), %esi
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
	movl	-80(%rbp), %edx
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
	movslq	%edx, %rax
	movb	%cl, -32(%rbp,%rax)
	addl	$1, -80(%rbp)
.L3:
	cmpl	$23, -80(%rbp)
	jle	.L4
	leaq	-32(%rbp), %rax
	leaq	wctx.2395(%rip), %rdx
	movl	$192, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-32(%rbp), %rax
	leaq	244+wctx.2395(%rip), %rdx
	movl	$192, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movl	$1, key_initialized.2394(%rip)
.L2:
	movq	dec_key.2397(%rip), %rdx
	leaq	-64(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_decrypt@PLT
	movq	dec_key.2397(%rip), %rdx
	leaq	-48(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_decrypt@PLT
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L5
.L6:
	movl	-72(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-76(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movl	-72(%rbp), %eax
	cltq
	movb	%dl, -32(%rbp,%rax)
	movl	-68(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -76(%rbp)
	addl	$1, -72(%rbp)
.L5:
	cmpl	$15, -72(%rbp)
	jle	.L6
	movq	enc_key.2396(%rip), %rdx
	movq	-88(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_encrypt@PLT
	movq	dec_key.2397(%rip), %rdx
	leaq	-32(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_decrypt@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mystere_product, .-mystere_product
	.local	key_initialized.2394
	.comm	key_initialized.2394,4,4
	.local	wctx.2395
	.comm	wctx.2395,488,32
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	dec_key.2397, @object
	.size	dec_key.2397, 8
dec_key.2397:
	.quad	wctx.2395+244
	.align 8
	.type	enc_key.2396, @object
	.size	enc_key.2396, 8
enc_key.2396:
	.quad	wctx.2395
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
