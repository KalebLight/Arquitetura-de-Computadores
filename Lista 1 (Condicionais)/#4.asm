#4
.text 
main:
	addi $2, $0, 5
	syscall
	
	add $8, $2, $0
	slt $10, $8, $0 
	bne $10, $0, negativo
	j positivo 
	
positivo:
	mul $4, $2, $2
	addi $2, $0, 1
	syscall
	j fim

negativo:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall		
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
fim:
	addi $2, $0, 10
	syscall
	
	