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
	cmpa	#$1
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

LOOP1
	lda	#$40	
LOOP2
	inca
	
	;sta	TX
	tfr	A, B
	jsr	PUTCHAR	

	jsr	DELAY_50MS

	;jmp LOOP
	cmpa	#$50
	bne	LOOP2

	ldb	#$a
	;stb	TX

	jsr	PUTCHAR

	ldb	#$d
	jsr	PUTCHAR


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
