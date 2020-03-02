#11
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $0, $2
loop:
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'	
	addi $2, $0, 11
	syscall
	j verif
verif:	
	sub $10, $10, 1
	beq $10, $0, fim
	j loop
fim: 
	addi $2, $0, 10
	syscall	
