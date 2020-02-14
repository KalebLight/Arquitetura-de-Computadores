#1
.text
main:	addi $2, $0, 5
	syscall
	
	add $8, $2, $0
	
	addi $2, $0, 5
	syscall
	add $9, $2, $0
	
	slt $10, $9, $8 # Se $9 for menor do que $8, então $10 = 1 // Senão $10 recebe 0
	beq $10, $0, maiorDollar9
	add $4, $8, $0
	j imprima

maiorDollar9: 
	add $4, $9, $0
	j imprima
imprima: 
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
