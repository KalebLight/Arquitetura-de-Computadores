#3
.text
main:
	addi $9, $0, 101000 
loop:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $8, $8, 1000
	beq $8, $9, fim
	j loop
fim:
	addi $2, $0, 10
	syscall	
