#13
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
loop:
	div $11, $10, 2
	mfhi $12
	beq $12, $0, verif
	j impar
impar:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'		
	addi $2, $0, 11
	syscall
	j verif
verif:
	sub $10, $10, 1
	beq $10, $0, fim
	j loop
	
fim:	
	addi $2, $0, 10
	syscall					