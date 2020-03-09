#10
.text
main:
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	jal calcQuest
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall	
calcQuest:
	div $8, $8, 10
	mfhi $14
	add $4, $4, $14
	beq $8, $0, retorno
	j calcQuest	
	
retorno:
	jr $31	