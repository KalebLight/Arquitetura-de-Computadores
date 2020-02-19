#26
.text
main: 
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	addi $2, $0, 5
	syscall
	add $9, $2, $0
	div $10, $8, $9
	
	addi $12, $0, 9
	addi $13, $0, 14	
	slt $11, $12, $10  
	beq $11, $0, sellTheCar
	slt $11, $13, $10  
	beq $11, $0, economic
	j SEco
fim: 
	addi $2, $0, 10
	syscall	
sellTheCar:
	addi $2, $0, 11
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'l'
	syscall
	addi $4, $0, 'l'
	syscall
	j fim
economic:
	addi $2, $0, 11
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'c'
	syscall
	addi $4, $0, 'o'
	syscall
	j fim	
SEco
	addi $2, $0, 11
	addi $4, $0, 'S'
	syscall
	addi $4, $0, 'E'
	syscall
	addi $4, $0, 'c'
	syscall
	addi $4, $0, 'o'
	syscall
	j fim	
	
