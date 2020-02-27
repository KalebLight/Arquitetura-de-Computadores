#7
.text
main:
	addi $10, $0, 9
	addi $2, $0, 5
	syscall
	add $11, $0, $2
	add $12, $0, $2
loop:	
	addi $2, $0, 5
	syscall
	slt $13, $11, $2
	beq $13, $0, ehMenor	
	slt $13, $2, $12
	beq $13, $0, ehMaior
	j verif
ehMaior:
	add $12, $0, $2 
	j verif
ehMenor:
	add $11, $0, $2
	j verif	
verif:
	sub $10, $10, 1
	beq $10, $0, fim
	j loop
fim:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $11
	addi $2, $0, 10
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	syscall		