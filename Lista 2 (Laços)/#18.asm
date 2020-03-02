#18
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 5
	syscall
	addi $11, $2, 1
	add $12, $0, $10
	addi $17, $0, 1
	
loop1:
	div $25, $12, 2
	mfhi $14
	beq $14, $0, par
	j verif1
par:
	add $16, $16, $12	
verif1:
	addi $12, $12, 1
	beq $12, $11, loop2
	j loop1	
	
loop2:
	div $25, $10, 2
	mfhi $14
	beq $14, $0, verif2
	j impar
impar:
	mul $17, $17, $10
	j verif2
verif2:
	addi $10, $10, 1
	beq $10, $11, fim
	j loop2	 		
fim:
	add $4, $16, $0
	addi $2, $0, 1
	syscall	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $17, $0
	addi $2, $0, 1
	syscall
	
