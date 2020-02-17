#17
.text
main:
	addi $2, $0, 5
	syscall
	addi $12, $0, -1
	slt $10, $12, $2 
	beq $10, $0, invalido	
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	addi $12, $0, -1
	slt $10, $12, $2 
	beq $10, $0, invalido	
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	add $8, $8, $9
	mul $8, $8, $10
	div $4, $8, 2
	
	addi $2, $0, 1
	syscall
	j fim
	
invalido:	
	addi $4, $0, 'i'	
	addi $2, $0, 11
	syscall	
	j fim
fim: 
	addi $2, $0, 10
	syscall		
	
	
	
	
