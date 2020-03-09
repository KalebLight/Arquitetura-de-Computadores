#14
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	addi $2, $0, 5
	syscall
	addi $11, $2, -1
	jal func
	add $4, $15, $0
	addi $2, $0, 1
	syscall
func:
	addi $10, $10, 1
	add $15, $15, $10
	beq $10, $11, retorno
	j func
retorno:
	jr $31	
	
		
	
	
