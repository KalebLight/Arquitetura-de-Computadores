#15
.text
main:
	addi $2, $0, 5
	syscall
	sub $10, $2, 1
	addi $2, $0, 5
	syscall
	add $13, $0, $2
	addi $15, $0, 1
	j loop
loop:
	addi $2, $0, 5
	syscall
	beq $2, $13, sameNumber
	slt $11, $2, $13
	beq $11, $0, bigger
	j verif
bigger:
	add $13, $2, $0
	addi $15, $0, 1
	j verif
sameNumber:
	add $15, $15, 1	
	j verif
verif:
	sub $10, $10, 1
	beq $10, $0, fim
	j loop

fim:
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall								