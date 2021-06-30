	org	$0000	; RAM start
;COUNTER	rmb	1

	org	$c000	; CPLD regs
TX	rmb	1
STATUS	rmb	1

	org	$E000	; ROM start
PUTCHAR
	pshs	A
PUTCHAR_WAIT
	lda	STATUS
	cmpa	#0x1
	bne	PUTCHAR_WAIT

	stb	TX
	puls	A, PC	

PRINT_NUM
	pshs	A, B

	cmpb	#10
	blo	PRINT_NUM_1
	
	pshs	B
	
	lda	#$CD   ; divide by 10
	mul
	lsra
	lsra
	lsra	       ; output now in A
	tfr	A, B	

	cmpb	#10
	blo	PRINT_NUM_2

	pshs	B

	lda	#$CD	; divide by 10
	mul
	lsra
	lsra
	lsra
	tfr	A, B

	addb	#0x30
	jsr	PUTCHAR

	ldb	#10
	mul

	tfr	B, A

	puls	B
	pshs	B

	pshs	A
	subb	,S+

	puls	A
	
PRINT_NUM_2

	addb	#0x30		
	jsr	PUTCHAR

	ldb	#10
	mul

	tfr	B, A

	puls	B
	
	pshs	A	
	subb 	,S+	; remainder is now in B

PRINT_NUM_1
	addb	#0x30
	jsr	PUTCHAR

	puls	A, B, PC

RESVEC
	lds	#$1000	; stack top

	lda	#0
LOOP1
	tfr	A, B
	jsr	PRINT_NUM		

	ldb	#$a
	jsr	PUTCHAR

	inca

	jmp	LOOP1
	
; interrupt vectors
	org	$FFF0
	fdb 	$0000	; reserved
	fdb	$0000	; SWI3
	fdb	$0000   ; SWI2
	fdb	$0000	; FIRQ
	fdb	$0000	; IRQ
	fdb	$0000	; SWI
	fdb	$0000	; NMI
	fdb	RESVEC	; RESET           
