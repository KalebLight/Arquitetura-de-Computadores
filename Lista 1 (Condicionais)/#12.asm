#12
.text
main:
	addi $2, $0, 5
	syscall
	add $8, $2, $0
	slt $10, $2, $0 # se $2 < $0 ent�o $10 = 1 // sen�o $10 = 0
	beq $10, $0, calcQuest
	
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	j fim
	
calcQuest:
	sll $9, $8, 1
	add $4, $8, $9
	addi $2, $0, 1
	syscall
	j fim
fim:
	addi $2, $0, 10
	syscall
		
