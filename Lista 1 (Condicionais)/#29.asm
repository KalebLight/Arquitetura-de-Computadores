#29
.text
main:
	addi $13, $0, 5
funcPrincipal:
	beq $13, $0, fim
	addi $5, $0, 100
	addi $2, $0, 42
	syscall	
	addi $2, $0, 1
	syscall
	add $8, $0, $4
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 42
	syscall
	addi $2, $0, 1
	syscall
	add $9, $0, $4
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $11, $8, $9
	j prova
prova:
	addi $2, $0, 5
	syscall
	add $12, $0, $2
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	beq $11, $12, funcAcerto
	sub $13, $13, 1
	beq $13, $0, fim
	j funcPrincipal

funcAcerto:
	addi $15, $15, 1
 	sub $13, $13, 1
	beq $13, $0, fim	
	
	j funcPrincipal

fim:
	add $4, $0, $15
	addi $2, $0, 1
	syscall	
	addi $2, $0, 10
	syscall
	
	