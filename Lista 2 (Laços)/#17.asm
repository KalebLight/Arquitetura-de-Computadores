#17
.text
main:
	addi $12, $0, 1000
loop:
	addi $2, $0, 5
	syscall
	beq $2, $12, fim
	add $8, $0, $2
	div $9, $8, 2
	mfhi $10
	beq $10, $0, par
	j impar
par:
	addi $15, $15, 1		
	addi $16, $16, 1
	j loop
impar:
	addi $15, $15, 1
	j loop
fim:
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $16
	addi $2, $0, 1
	syscall		