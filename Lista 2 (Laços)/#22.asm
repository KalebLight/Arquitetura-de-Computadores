#22
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $2, $0
	addi $11, $0, 11
	addi $12, $0, 13
	addi $13, $0, 17
loop:
	div $20, $10, $11
	mfhi $15
	beq $15, $0, fim
	div $20, $10, $12
	mfhi $15
	beq $15, $0, fim
	div $20, $10, $13
	mfhi $15
	beq $15, $0, fim
	
	addi $10, $10, 1
	j loop
fim:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall			
	
	
