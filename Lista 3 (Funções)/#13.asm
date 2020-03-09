#13
.text 
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 11
	add $4, $0, '='
	jal draw
	addi $2, $0, 10
	syscall
draw:
	syscall
	sub $8, $8, 1
	beq $8, $0, retorno
	j draw
	
retorno:
	jr $31	