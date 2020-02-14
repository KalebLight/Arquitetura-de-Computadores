#5
.text 
main:
	addi $2,$0,5
	syscall	
	div $8, $2, 2
	
	mfhi $9
	beq $9, $0, par
	j impar
	
impar:	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	j fim
par:
	addi $4, $0, 'P'
	addi $2, $0, 11
	syscall
	j fim
	
fim: 
	addi $2, $0, 10
	syscall
