#4
.text
main:
	addi $2, $0, 5
	syscall
	add $12, $0, $2
	jal volEsf
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
volEsf:
	mul $13, $12, $12
	mul $13, $12, $13
	mul $13, $13, 4
	mul $13, $13, 4
	div $4, $13, 3
	jr $31
			