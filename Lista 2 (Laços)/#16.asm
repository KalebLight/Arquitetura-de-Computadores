#16
.text
main:
	addi $2, $0, 5
	syscall
	addi $10, $0, 99
	slt $11, $10, $2
	beq $11, $0, invalido
	addi $10, $0, 1000
	slt $11, $2, $10
	beq $11, $0, invalido
	add $10, $0, $2
	addi $11, $0, 3
	j loop
loop:
	div $10, $10, 10
	mfhi $4
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j verif	
verif:
	beq $10, $0, fim
	j loop	
invalido:
	addi $4, $0, 'i'
	addi $2, $0, 11
	syscall
	j fim
fim:
	addi $2, $0, 10
	syscall	
