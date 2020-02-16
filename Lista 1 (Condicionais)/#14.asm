#14
.text
main:
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
	
	addi $2, $0, 5
	syscall	
	addi $12, $0,  101
	slt $10, $2, $12
	beq $10, $0, invalido
	addi $12, $0, -1
	slt $10, $12, $2 
	beq $10, $0, invalido	
	add $10, $0, $2
	j calcQuest
	
calcQuest:
	mul $8, $8, 2
	mul $9, $9, 3	
	mul $10, $10, 5
	add $11, $8, $9
	add $11, $11, $10
	div $11, $11, 10
	addi $12, $0, 30
	slt $15, $12, $11 
	beq $15, $0, reprovado
	
	addi $12, $0, 50
	slt $15, $12, $11
	beq $15, $0, recuperacao
	j aprovado
reprovado:
	addi $4, $0, 'R'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'V'
	syscall
	j fim
recuperacao:		
	addi $4, $0, 'R'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'C'
	syscall
	j fim
aprovado:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'p'
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