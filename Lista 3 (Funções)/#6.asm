#6
.text
main:
	addi $2, $0, 5
	syscall
	add $12, $0, $2
	jal faren
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
faren:
	addi $8, $0, 9
	div $11, $8, 5
	mul $12, $12, $11
	addi $4, $12, 32
	jr $31
			