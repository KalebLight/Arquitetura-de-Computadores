#5
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $2, $0
	addi $2, $0, 5
	syscall
	add $11, $2, $0
	addi $2, $0, 5
	syscall
	add $12, $0, $2
	jal horarioS
	j fim
horarioS:
	mul $10, $10, 3600
	mul $11, $11, 60
	add $10, $10, $11
	add $4, $10, $12
	jr $31	
fim:
	addi $2, $0, 1
	syscall
	addi $2, $0, 10	
	syscall