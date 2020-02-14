#8
.text
main:  #verificando se os números são invalidos
	addi $2, $0, 5
	syscall
	
	addi $12, $0,  101
	slt $10, $2, $12
	beq $10, $0, invalido
	
	addi $12, $0, -1
	slt $10, $12, $2 
	beq $10, $0, invalido
	
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	addi $12, $0,  101
	slt $10, $2, $12
	beq $10, $0, invalido

	addi $12, $0, -1
	slt $10, $12, $2 
	beq $10, $0, invalido	
	
	add $9, $0, $2
	
	j media	
media: 
	add $10, $9, $8
	addi $12, $0, 2
	div $11, $10, 2
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall		
invalido:	
	addi $4, $0, 'i'	
	addi $2, $0, 11
	syscall	
fim:
	addi $2, $0, 10
	syscall	
