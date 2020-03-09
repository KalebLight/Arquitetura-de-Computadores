#2
.text
main:
	addi $2, $0, 5
	syscall
	add $12, $2, $0
	jal verifNumber
	addi $2, $0, 10
	syscall
verifNumber:
	beq $12, $0, neutro
	slt $10, $0,	$12 
	beq $10, $0, negativo
	slt $10, $12, $0
	beq $10, $0, positivo
neutro:
	add $4, $0, $0
	addi $2, $0, 1
	syscall
	jr $31
positivo:
	addi $4, $0, 1
	addi $2, $0, 1
	syscall
	jr $31
negativo:
	addi $4, $0, -1
	addi $2, $0, 1
	syscall
	jr $31	