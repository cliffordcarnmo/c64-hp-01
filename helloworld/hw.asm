	;Initial memory address for code
	*= $0801

	;Call a kernal function to clear the screen
	jsr $e544

	;Load register X with value 0
	ldx #$00

;A label is a human readable address in memory
loop:
	;Load text bytes from the address labeled by "test:", indexed by the X register
	lda text,x
	
	;Store the loaded byte to position $04fc in memory.
	;In default textmode, the screen is mapped directly from $0400
	sta $04fc,x
	
	;Increase the X register with 1 (the same as x++)
	inx
	
	;Check if the value in X is 13
	cpx #13
	
	;If it's not, branch back to the loop label
	bne loop

	;Inifinite loop
	jmp *

;A label
text:
	;!scr is compiler sugar that translates human readable text to PETSCII values
	!scr "hello, world!"