#18
.text
main:
	addi $2, $0, 11
	addi $4, $0, '1'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, '+'
	syscall
	
	addi $4, $0, '\n'
	syscall
	
	addi $4, $0, '2'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, '-'
	syscall
	
	addi $4, $0, '\n'
	syscall
	
	addi $4, $0, '3'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, '*'
	syscall
	
	addi $4, $0, '\n'
	syscall
	
	addi $4, $0, '4'
	syscall
	addi $4, $0, ':'
	syscall
	addi $4, $0, '/'
	syscall
	
	addi $4, $0, '\n'
	syscall
	
	add $8, $0, 1
	add $9, $0, 2
	add $10, $0, 3
	add $11, $0, 4
	
	addi $2, $0, 5
	syscall
	
	beq $2, $8, addd
	beq $2, $9, subb
	beq $2, $10, mull
	beq $2, $11, divv
	j invalido
	
addd:	
	addi $2, $0, 5
	syscall	
	add $4, $2, $0
	addi $2, $0, 5
	syscall 
	add $4, $4, $2
	addi $2, $0, 1
	syscall
	j fim
subb:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	sub $4, $4, $2
	addi $2, $0, 1
	syscall
	j fim
	
mull:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	mul $4, $4, $2
	addi $2, $0, 1
	syscall
	j fim
divv:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	div $4, $4, $2
	addi $2, $0, 1
	syscall
	j fim

fim:
	 addi $2, $0, 10
 	syscall
 	
 invalido:	
	addi $4, $0, 'i'	
	addi $2, $0, 11
	syscall	
	j fim	