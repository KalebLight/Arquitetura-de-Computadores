#2.
.text
main:
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	slt $10, $2, $0 # se $2 < $0 então $10 = 1 // senão $10 = 0
	beq $10, $0, calcQuad
	
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	j fim
	
calcQuad:
	mul $4, $8, $8
	addi $2, $0, 1
	syscall
	j fim
fim:
	addi $2, $0, 10
	syscall
		
