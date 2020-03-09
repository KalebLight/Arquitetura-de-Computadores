#11
.text
main:
	addi $2, $0, 12
	syscall
	add $12, $0, $2
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $8, $0, 43
	addi $9, $0, 45
	addi $10, $0, 42
	addi $11, $0, 47
	jal verifOp
	addi $2, $0, 10
	syscall

verifOp:		
	beq $12, $8, addd
	beq $12, $9, subb
	beq $12, $10, mull
	beq $12, $11, divv
	
	
addd:	
	addi $2, $0, 5
	syscall	
	add $4, $2, $0
	addi $2, $0, 5
	syscall 
	add $4, $4, $2
	addi $2, $0, 1
	syscall
	jr $31
subb:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	sub $4, $4, $2
	addi $2, $0, 1
	syscall
	jr $31
	
mull:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	mul $4, $4, $2
	addi $2, $0, 1
	syscall
	jr $31
divv:
	addi $2, $0, 5
	syscall
	add $4, $2, $0
	addi $2, $0, 5
	syscall
	div $4, $4, $2
	addi $2, $0, 1
	syscall
	jr $31

