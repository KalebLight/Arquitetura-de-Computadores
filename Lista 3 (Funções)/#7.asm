#7
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2 #raio
	addi $2, $0, 5
	syscall
	add $11, $0, $2 #altura
	jal cilindro
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
cilindro:
	mul $10, $10, $10
	mul $10, $10, $11
	mul $4, $10, 3
	jr $31	