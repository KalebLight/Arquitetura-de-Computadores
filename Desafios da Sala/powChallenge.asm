.text
main:
	addi $2, $0, 5
	syscall
	add $6, $2, $0
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	addi $4, $0, 1
	jal pow
	j fim
pow:
	mul $4, $4, $6
	sub $5, $5, 1
	beq $5, $0, checkP
	j pow
checkP:
	jr $31	
fim:
	add $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall	