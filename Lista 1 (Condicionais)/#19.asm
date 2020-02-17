#19
.text
main:
	 addi $2, $0, 5
	 syscall
	 div $8, $2, 3
	 mfhi $9
	 beq $9, $0, div3
	
	div $8, $2, 5
	mfhi $9
	beq $9, $0, div5
	j fim
div3:
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'V'
	syscall
	addi $4, $0, '3'
	syscall
	addi $4, $0, '\n'
	syscall
	j fim	

div5:
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'V'
	syscall
	addi $4, $0, '5'
	syscall
	addi $4, $0, '\n'
	syscall
	j fim		
	
fim:
	 addi $2, $0, 10
 	syscall	  