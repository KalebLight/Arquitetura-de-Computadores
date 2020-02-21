#2
.text
main:
	addi $8, $0, 10
	addi $9, $0, -1
func:	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	sub $8, $8, 1
	beq $8, $9, fim
	j func
fim:
	addi $4, $0, 'F'
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall	
	