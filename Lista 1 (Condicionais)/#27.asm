#27
.text
main:
	addi $2, $0, 5
	syscall
	
	addi $13, $0, 7
	addi $14, $0, 10
	addi $15, $0, 13
	addi $16, $0, 17
	
	slt $10, $13, $2
	beq $10, $0, infantilA
	slt $10, $14, $2
	beq $10, $0, infantilB
	slt $10, $15, $2
	beq $10, $0, juvenilA
	slt $10, $16, $2
	beq $10, $0, juvenilB
	j senior	
infantilA:
	addi $2, $0, 11
	addi $4, $0, 'I'	
	syscall
	addi $4, $0, 'A'
	syscall
	j fim
infantilB:
	addi $2, $0, 11
	addi $4, $0, 'I'	
	syscall
	addi $4, $0, 'B'
	syscall
	j fim
juvenilA:
	addi $2, $0, 11
	addi $4, $0, 'J'	
	syscall
	addi $4, $0, 'A'
	syscall
	j fim 	
juvenilB:
	addi $2, $0, 11
	addi $4, $0, 'J'	
	syscall
	addi $4, $0, 'B'
	syscall
	j fim 	
senior:
	addi $2, $0, 11
	addi $4, $0, 'S'	
	syscall
	addi $4, $0, 'N'
	syscall
	j fim	
fim: 
	addi $2,$0, 10
	syscall		
