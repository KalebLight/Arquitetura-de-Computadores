#1
.text
main:
	addi $8, $0, 5
	addi $9, $0, 3
func:	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $9, $4, 3
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	sub $8, $8, 1
	beq $8, $0, fim
	j func
fim:
	addi $2, $0, 10
	syscall	
