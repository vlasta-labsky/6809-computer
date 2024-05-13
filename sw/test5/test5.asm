L_SHIFT_BIT	equ	0b10000000
R_SHIFT_BIT	equ	0b01000000
L_CTRL_BIT	equ	0b00100000
R_CTRL_BIT	equ	0b00010000
L_ALT_BIT	equ	0b00001000
R_ALT_BIT	equ	0b00000100
EXTENDED_BIT	equ	0b00000010
KEY_UP_BIT	equ	0b00000001

K_ESC	equ	0x1B
K_CPL	 equ	0x80	;caps lock
K_F1	 equ	0x81
K_F2	 equ	0x82
K_F3	 equ	0x83
K_F4	 equ	0x84
K_F5	 equ	0x85
K_F6	 equ	0x86
K_F7	 equ	0x87
K_F8	 equ	0x88
K_F9	 equ	0x89
K_F10	 equ	0x8A
K_F11	 equ	0x8B
K_F12	 equ	0x8C
K_UP	 equ	0x8D	;up arrow
K_LF	 equ	0x8E	;left arrow
K_DN	 equ	0x8F	;down arrow
K_RT	 equ	0x90	;right arrow
K_INS	 equ	0x91	;insert
K_DEL	 equ	0x92	;delete
K_HOM	 equ	0x93	;home
K_END	 equ	0x94	;end
K_PGU	 equ	0x95	;page up
K_PGD	 equ	0x96	;page down
K_NML	 equ	0x97	;num lock
K_SCL	     equ	0x98	;scroll lock
K_PRS	 equ	0x99	;print screen


	org	$0000	; RAM start
;COUNTER	rmb	1

KEYBOARD_STATUS rmb 1

KEYBOARD_BUFFER rmb 20
KEYBOARD_BUFLEN rmb 1
KEYBOARD_RDY    rmb 1

K_BRK	 equ	0x9A	;break

	org	$c000	; CPLD regs
TX  rmb	1
STATUS	rmb	1

    org $c200
SCANCODE rmb 1

	org	$E000	; ROM start
PUTCHAR
	pshs	A
PUTCHAR_WAIT
	lda	STATUS
	cmpa	#0x1
	bne	PUTCHAR_WAIT

	stb	TX
	puls	A, PC	
	
PRINT
	pshs   U, B
        
PRINT_LOOP
	ldb     ,U+
	cmpb    #$0
	beq     PRINT_END
    
	jsr     PUTCHAR
    
	jmp     PRINT_LOOP
    
PRINT_END
    puls    U, B, PC
    	
STRCMP
    pshs    X, Y
STRCMP_LOOP
    ldb     ,X+
    lda     ,Y+
    
    pshs	A	
	subb 	,S+
	
	cmpb    #$0
	bne    STRCMP_NOT_SAME 
	
	cmpa    #$0
	beq     STRCMP_SAME
	jmp     STRCMP_LOOP
	
STRCMP_NOT_SAME
    ldb     #$0
    puls    X, Y, PC

STRCMP_SAME
    ldb     #$1
    puls    X, Y, PC

	
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
	
	clr KEYBOARD_BUFFER
	clr KEYBOARD_STATUS
	clr KEYBOARD_BUFLEN
	clr KEYBOARD_RDY
	
	andcc	#%11101111 ; SEI

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
    ldb KEYBOARD_RDY
    cmpb #$1
    beq COMMAND_PROCESS
	jmp	LOOP1

COMMAND_PROCESS
    clr KEYBOARD_RDY
    
    ldb    KEYBOARD_BUFFER
    cmpb   #$0
    beq    LOOP1
    
    ldx    #KEYBOARD_BUFFER
    
    ldy    #TXT_CMD_FUCK
    jsr    STRCMP
    cmpb   #$1
    beq    COMMAND_FUCK
    
    ldy    #TXT_CMD_ZMRD
    jsr    STRCMP
    cmpb   #$1
    beq    COMMAND_ZMRD
    
    ldu    #TXT_NAPIS1
    jsr    PRINT
    jmp    COMMAND_END
    
COMMAND_FUCK
    ldu    #TXT_NAPIS2
    jsr    PRINT
    jmp    COMMAND_END
    
COMMAND_ZMRD
    ldu    #TXT_NAPIS3
    jsr    PRINT
    
    
COMMAND_END
    ldb    #$d
	jsr    PUTCHAR
	ldb    #$a
	jsr    PUTCHAR
	
    jmp LOOP1
	
	
IRQVEC
	ldb	SCANCODE
	lda   KEYBOARD_STATUS
	
	cmpb   #$F0
	beq    KEY_UP
	
	cmpb   #$E0
	beq    KEY_EX
	
	bita   #KEY_UP_BIT
	beq    KEY_PR
	bra     KEY_REL
	
	jmp    KEY_PR
	
KEY_UP
    ora     #KEY_UP_BIT
    sta     KEYBOARD_STATUS
    rti

KEY_EX
    ora     #EXTENDED_BIT
    sta     KEYBOARD_STATUS
    rti

KEY_REL
    anda    #~KEY_UP_BIT
    cmpb  #$12
    beq     KEY_REL_LSHIFT
    cmpb #$59
    beq     KEY_REL_RSHIFT
    bra       KEY_MODDONE
    
KEY_REL_LSHIFT
    anda   #~L_SHIFT_BIT
    bra     KEY_MODDONE
    
KEY_REL_RSHIFT
    anda   #~R_SHIFT_BIT
    bra     KEY_MODDONE

KEY_PR
	cmpb #$12
	beq    KEY_PR_LSHIFT
	cmpb #$59
	beq    KEY_PR_RSHIFT
	bra     KEY_PR_OTHER
	
KEY_PR_LSHIFT
    ora     #L_SHIFT_BIT
    bra     KEY_MODDONE
    	
KEY_PR_RSHIFT
    ora     #R_SHIFT_BIT
    bra     KEY_MODDONE
    
KEY_MODDONE
	anda	#~(EXTENDED_BIT|KEY_UP_BIT)
	sta      KEYBOARD_STATUS
	rti
	
KEY_PR_OTHER
	pshs u
	ldu	 #KEYBOARD_CODE_TABLE
	
	bita #(L_SHIFT_BIT|R_SHIFT_BIT)
    bne  KEY_PR_USESHIFT
	bra  KEY_PR_LOOKUP
	
KEY_PR_USESHIFT
    ldu  #KEYBOARD_SHIFT_TABLE
	
KEY_PR_LOOKUP
	ldb  b, u
	puls u
	
	cmpb   #$d
	beq    KEY_NEWLINE
	
    jsr    PUTCHAR
	
	lda    KEYBOARD_BUFLEN
	ldu    #KEYBOARD_BUFFER
	stb    a, u
	inc    KEYBOARD_BUFLEN

	rti
	
	;jsr	PRINT_NUM

KEY_NEWLINE
	ldb    #$d
	jsr    PUTCHAR

	ldb    #$a
	jsr    PUTCHAR
	
	clrb
    lda    KEYBOARD_BUFLEN
	ldu    #KEYBOARD_BUFFER
	stb    a, u
	inc    KEYBOARD_BUFLEN
	
;	ldu	   #KEYBOARD_BUFFER
;	jsr	   PRINT



    ldb    #$1
    stb    KEYBOARD_RDY
	
	
	clr    KEYBOARD_BUFLEN

	rti
	
KEYBOARD_CODE_TABLE
	fcb	0,     K_F9,  0,     K_F5,  K_F3,  K_F1,  K_F2,  K_F12
	fcb	0,     K_F10, K_F8,  K_F6,  K_F4,  9,     '`,    0
	fcb	0,     0,     0,     0,     0,     'q,    '1,    0
	fcb	0,     0,     'z,    's,    'a,    'w,    '2,    0
	fcb	0,     'c,    'x,    'd,    'e,    '4,    '3,    0
	fcb	0,     32,    'v,    'f,    't,    'r,    '5,    0
	fcb	0,     'n,    'b,    'h,    'g,    'y,    '6,    0
	fcb	0,     0,     'm,    'j,    'u,    '7,    '8,    0
	fcb	0,     ',,    'k,    'i,    'o,    '0,    '9,    0
	fcb	0,     '.,    '/,    'l,    ';,    'p,    '-,    0
	fcb	0,     0,     '',    0,     '[,    '=,    0,     0
	fcb	K_CPL, 0,     13,    '],    0,     '\,    0,     0
	fcb	0,     0,     0,     0,     0,     0,     8,     0
	fcb	0,     '1,    0,     '4,    '7,    0,     0,     0
	fcb	'0,    '.,    '2,    '5,    '6,    '8,    K_ESC, K_NML
	fcb	K_F11, '+,    '3,    '-,    '*,    '9,    K_SCL, 0

KEYBOARD_SHIFT_TABLE
	fcb	0,     K_F9,  0,     K_F5,  K_F3,  K_F1,  K_F2,  K_F12
	fcb	0,     K_F10, K_F8,  K_F6,  K_F4,  9,     '~,    0
	fcb	0,     0,     0,     0,     0,     'Q,    '!,    0
	fcb	0,     0,     'Z,    'S,    'A,    'W,    '@,    0
	fcb	0,     'C,    'X,    'D,    'E,    '$,    '#,    0
	fcb	0,     32,    'V,    'F,    'T,    'R,    '%,    0
	fcb	0,     'N,    'B,    'H,    'G,    'Y,    '^,    0
	fcb	0,     0,     'M,    'J,    'U,    '&,    '*,    0
	fcb	0,     '<,    'K,    'I,    'O,    '),    '(,    0
	fcb	0,     '>,    '?,    'L,    ':,    'P,    '_,    0
	fcb	0,     0,     '",    0,     '{,    '+,    0,     0
	fcb	K_CPL, 0,     10,    '},    0,     '|,    0,     0
	fcb	0,     0,     0,     0,     0,     0,     8,     0
	fcb	0,     '1,    0,     '4,    '7,    0,     0,     0
	fcb	'0,    '.,    '2,    '5,    '6,    '8,    K_ESC, K_NML
	fcb	K_F11, '+,    '3,    '-,    '*,    '9,    K_SCL, 0
	
KEYBOARD_EXT_TABLE
	fcb	0,     0,     '/,    0,     0,     0,     0,     0
	fcb	0,     0,     0,     0,     0,     0,     0,     0
	fcb	0,     0,     10,    0,     0,     0,     0,     0
	fcb	0,     0,     0,     0,     0,     0,     0,     0
	fcb	0,     K_END, 0,     K_LF,  K_HOM, 0,     0,     0
	fcb	K_INS, K_DEL, K_DN,  '5,    K_RT,  K_UP,  0,     K_BRK
	fcb	0,     0,     K_PGD, 0,     K_PRS, K_PGU, 0,     0

	    
TXT_CMD_FUCK
    fcc  "fuck"
    fcb 0 
    
TXT_CMD_ZMRD
    fcc  "zmrd"
    fcb 0 
	
TXT_NAPIS1
    fcc  "command not found"
    fcb 0
    
TXT_NAPIS2
    fcc  "jsi kokot"
    fcb 0
    
TXT_NAPIS3
    fcc  "jsi mamrd"
    fcb 0
	
; interrupt vectors
	org	$FFF0
	fdb	$0000	; reserved
	fdb	$0000	; SWI3
	fdb	$0000   ; SWI2
	fdb	$0000	; FIRQ
	fdb	IRQVEC	; IRQ
	fdb	$0000	; SWI
	fdb	$0000	; NMI
	fdb	RESVEC	; RESET           
