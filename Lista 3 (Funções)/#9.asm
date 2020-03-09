#9
.text
main:
	addi $2, $0, 12
	syscall
	add $13, $0, $2
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	addi $2, $0, 5
	syscall
	add $10, $2, $0
	addi $2, $0, 5
	syscall
	add $11, $2, $0
	addi $2, $0, 5
	syscall
	add $12, $0, $2
	addi $15, $0, 97
	jal medias
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
medias:
	beq $13, $15, aritmedica
	j ponderada	
		
aritmedica:
	add $10, $10, $11
	add $10, $10, $12
	div $4, $10, 3
	jr $31
ponderada:
	mul $10, $10, 5
	mul $11, $11, 3
	mul $12, $12, 2
	add $10, $10, $11
	add $10, $10, $12,	
	div $4, $10, 10
	jr $31