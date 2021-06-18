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

RESVEC
	lds	#$1000	; stack top
LOOP1
	lda	#$40	
LOOP2
	inca
	
	;sta	TX
	tfr	A, B
	jsr	PUTCHAR	

	;jmp LOOP
	cmpa	#$50
	bne	LOOP2

	ldb	#$a
	;stb	TX

	jsr	PUTCHAR

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
