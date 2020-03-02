#14
.text
main:
	addi $2, $0, 5
	syscall
	add $10, $2, $0
	
loop:
	addi $11, $11, 1
	add $12, $12, $11
	j verif
	
verif:
	sub $10, $10, 1
	beq $10, $0, fim
	j loop
fim:
	add $4, $12, $0
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall		
	
		