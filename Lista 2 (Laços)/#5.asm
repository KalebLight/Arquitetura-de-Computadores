#5
.text
main:
	addi $9, $0, 10
loop:
	addi $2, $0, 5
	syscall
	
	add $8, $8, $2
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	sub $9, $9, 1
	beq $9, $0, fim
	j loop
fim:
	add $4, $8, $0
	div $4, $4, 10
	addi $2, $0, 1
	syscall	
	addi $2, $0, 10
	syscall	
