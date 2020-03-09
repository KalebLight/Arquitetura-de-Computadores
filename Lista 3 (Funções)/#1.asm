#1
.text
main:
	addi $2, $0, 5
	syscall
	jal double
	addi $2, $0, 1
	syscall
	j fim
double:
	add $4, $2, $2
	jr $31	
fim:
	addi $2, $0, 10
	syscall