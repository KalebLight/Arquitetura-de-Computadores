#11
.text
main: 
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	slt $10, $2, $0 # se $2 < $0 então $10 = 1 // senão $10 = 0
	beq $10, $0, calcQuest
	
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	j fim
calcQuest:
	div $8, $8, 10
	mfhi $14
	add $13, $13, $14
	beq $8, $0, fim
	j calcQuest
fim: 
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall		