#22
.text
main:
	addi $2, $0, 5
	syscall	
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $13, $0, 60
	addi $14, $0, 65	
	addi $15, $0, 30
	addi $16, $0, 25	
	
	slt $10, $8, $14	
	beq $10, $0, aposentado
	
	slt $10, $9, $15
	beq $10, $0, aposentado
	j lastChance
aposentado:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'P'
	syscall
	addi $4, $0, 'S'
	syscall
	addi $4, $0, '\n'
	syscall
	j fim			
lastChance:
	slt $10, $8, $13	
	beq $10, $0, lastLastChance
	j fim
lastLastChance:
	slt $10, $9, $16	
	beq $10, $0, aposentado
	j fim
fim:
	addi $2, $0, 10
 	syscall