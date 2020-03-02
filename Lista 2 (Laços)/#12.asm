#12
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $11, $0, -1
loop:
	addi $11, $11, 1
	div $13, $11, 2
	mfhi $15
	beq $15, $0, par
	j verif
par:
	add $4, $11, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j verif	
verif:
	beq $11, $10, fim	
	j loop
fim:
	addi $2, $0, 10
	syscall	
