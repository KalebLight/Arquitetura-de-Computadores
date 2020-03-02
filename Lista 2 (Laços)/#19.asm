#19
.text
main:
	addi $2, $0, 5
	syscall
	add $15, $0, $2
	addi $10, $2, 1
	addi $11, $0, 1
	j loop
loop:	
	div $13, $15, $11
	mfhi $12
	beq $12, $0, ehDivisor
	j verif 	
ehDivisor:
	add $4, $13, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j verif	
verif: 
	addi $11, $11, 1
	beq $11, $10, fim
	j loop
fim: 
	addi $2, $0, 10
	syscall