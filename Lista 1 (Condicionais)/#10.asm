#10
.text
main:
	addi $2, $0, 12
	syscall
	
	beq $2, 109, homi
	j muié
homi:
	addi $4, $0, '\n'	
	addi $2, $0, 11
	syscall
	addi $2, $0, 5
	syscall
	mul $8, $2, 73
	addi $4, $0, '\n'	
	addi $2, $0, 11
	syscall
	sub $4, $8, 58
	addi $2, $0, 1
	syscall
	j fim
muié:
	addi $4, $0, '\n'	
	addi $2, $0, 11
	syscall
	addi $2, $0, 5
	syscall
	mul $8, $2, 62
	addi $4, $0, '\n'	
	addi $2, $0, 11
	syscall
	sub $4, $8, 45
	addi $2, $0, 1
	syscall
	j fim
fim: 
	addi $2, $0, 10
	syscall		
