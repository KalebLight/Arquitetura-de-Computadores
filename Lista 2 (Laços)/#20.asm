#20
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $2, $0
	sub $17, $10, 1
	j loop
	
loop:
	addi $11, $11, 1	
	div $20, $10, $11
	mfhi $13
	beq $13, $0, divisor
	j verif
divisor:
	add $14, $14, $11
	j verif 
verif:	
	beq $11, $17, fim
	j loop
fim:
	add $4, $0, $14	
	addi $2, $0, 1
	syscall	
	addi $2, $0, 10
	syscall
	