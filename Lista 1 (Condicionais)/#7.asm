#7
.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	beq $8, $9, iguais
	
	slt $10, $9, $8 
	beq $10, $0, maiorDollar9
	j maiorDollar8 
	
maiorDollar9:
	add $4, $0, $9
	j imprime		
maiorDollar8:
	add $4, $0, $8
	j imprime
imprime:
	addi $2, $0, 1
	syscall	
	j fim	
iguais:
	addi $4, $0, 'I'	
	addi $2, $0, 11
	syscall	
fim: 
	addi $2, $0, 10
	syscall