#6
.text
main:
	addi $10, $0, 10
loop:
	addi $2, $0, 5
	syscall	
	slt $9, $0, $2 
	beq $9, $0, negativo
	j positivo
negativo:
	j verif
verif:
	sub $10, $10, 1
	beq $10, $0, fim
	j loop
positivo:
	add $8, $8, $2
	addi $11, $11, 1
	j verif
fim:
	div $4, $8, $11
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall	
		