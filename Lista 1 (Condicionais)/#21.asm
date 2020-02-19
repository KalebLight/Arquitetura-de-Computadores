#21
.text
main:
	add $8, $0, 1
	add $9, $0, 2
	add $10, $0, 3
	add $11, $0, 4
	
	addi $2, $0, 5
	syscall	
	beq $2, $8, addd
	beq $2, $9, subb
	beq $2, $10, mull
	beq $2, $11, divv
	j invalido
	
addd:	
	addi $2, $0, 5
	syscall	
	add $4, $2, $0
	addi $2, $0, 5
	syscall 
	add $4, $4, $2
	addi $2, $0, 1
	syscall
	j fim
subb:
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	addi $2, $0, 5
	syscall
	add $9, $2, $0
	slt $10, $9, $8
	
	beq $10, $0, subMaiorDollar9
	j subMaiorDollar8
subMaiorDollar8:
	sub $4, $8, $9
	addi $2, $0, 1
	syscall	
	j fim	
subMaiorDollar9:	
	sub $4, $9, $8
	addi $2, $0, 1
	syscall
	j fim
mull:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	mul $4, $4, $2
	addi $2, $0, 1
	syscall
	j fim
divv:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	beq $2, $0, invalido
	div $4, $4, $2
	addi $2, $0, 1
	syscall
	j fim		
fim:
	addi $2, $0, 10
 	syscall 	
 invalido:	
	addi $4, $0, 'i'	
	addi $2, $0, 11
	syscall	
	j fim		