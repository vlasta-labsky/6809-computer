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
	
DELAY_50MS
	pshs	A, B
	ldb	#$0

DELAY_50MS_LOOP1
	lda	#$0
DELAY_50MS_LOOP2
	inca
	cmpa	#$ff
	bne	DELAY_50MS_LOOP2
	
	incb
	cmpb	#$24
	bne	DELAY_50MS_LOOP1

	puls	A, B, PC


DELAY_1S
	pshs	A
	lda	#$0
DELAY_1S_LOOP
	inca

	jsr	DELAY_50MS

	cmpa	#$14
	bne	DELAY_1S_LOOP
	
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
	
	jsr	DELAY_1S

	ldb	#$1b    ; reset VFD display
	jsr	PUTCHAR
	ldb	#$49
	jsr	PUTCHAR
	
    	jsr	DELAY_1S

    	ldb	#$0e    ; clear screen
	jsr	PUTCHAR
	ldb	#$0C
	jsr	PUTCHAR

	lda	#0
LOOP1
	tfr	A, B
	jsr	PRINT_NUM		

	ldb	#$d
	jsr	PUTCHAR
	
	ldb	#$a
	jsr	PUTCHAR

	inca

	jsr	DELAY_1S
	
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
