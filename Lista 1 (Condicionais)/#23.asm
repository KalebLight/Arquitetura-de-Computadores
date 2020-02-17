#23
.text
main:
	addi $2, $0, 5
	syscall
	
	div $8, $2, 400
	mfhi $9
	beq $9, $0, bissexto
	j lastChance

lastChance:
	div $8, $2, 4
	mfhi $9
	beq $9, $0, lastLastChance
	j fim
lastLastChance:
	div $8, $2, 100
	mfhi $9
	beq $9, $0, fim
	j bissexto	
bissexto:
	addi $4, $0, 'B'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'i'
	syscall
	addi $4, $0, 's'
	syscall
	addi $4, $0, '\n'
	syscall
	j fim	
	
fim:
	addi $2, $0, 10
 	syscall	