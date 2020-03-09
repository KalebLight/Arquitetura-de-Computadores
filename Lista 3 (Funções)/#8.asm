#8
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 5
	syscall
	add $11, $0, $2
	jal func
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
func:
	slt $13, $10, $11 
	beq $13, $0, preFim
	add $4, $11, $0
	jr $31
preFim:
	add $4, $10, $0
	jr $31		