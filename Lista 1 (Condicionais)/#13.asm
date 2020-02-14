#13
.text
main: #verificando se os números são invalidos
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
	mul $10, $10, 2
	add $14, $8, $9
	add $14, $14, $10
	div $8, $14, 3
	addi $9, $0, 60
	slt $10, $8, $9 
	beq $10, $0, aprovado
	j reprovado

aprovado:	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'	
	addi $2, $0, 11
	syscall
	addi $4, $0, 'A'	
	addi $2, $0, 11
	syscall
	j fim
reprovado: 
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'	
	addi $2, $0, 11
	syscall
	addi $4, $0, 'R'	
	addi $2, $0, 11
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