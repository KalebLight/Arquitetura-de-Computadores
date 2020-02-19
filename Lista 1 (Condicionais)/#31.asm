#31
.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	add $11, $0, 60
	add $12, $0, 90
	
	add $13, $0, 120
	add $14, $0, 170
	slt $10, $11, $9
	addi $2, $0, 11
	beq $10, $0, func1
	
	slt $10, $12, $9
	beq $10, $0, func2
	j func3
	
func1:	
	slt $10, $13, $8
	beq $10, $0, func1.1
	slt $10, $14, $8
	beq $10, $0, func1.2
	j func1.3
func1.1:
	addi $4, $0, 'A'	
	syscall
	j fim
func1.2:	
	addi $4, $0, 'B'	
	syscall
	j fim
func1.3:	
	addi $4, $0, 'C'	
	syscall
	j fim	
func2:	
	slt $10, $13, $8
	beq $10, $0, func2.1
	slt $10, $14, $8
	beq $10, $0, func2.2
	j func2.3	
func2.1:
	addi $4, $0, 'D'	
	syscall
	j fim	
func2.2:
	addi $4, $0, 'E'	
	syscall
	j fim	
func2.3:
	addi $4, $0, 'F'	
	syscall
	j fim			
func3:
	slt $10, $13, $8
	beq $10, $0, func3.1
	slt $10, $14, $8
	beq $10, $0, func3.2
	j func3.3	
func3.1:	
	addi $4, $0, 'G'	
	syscall
	j fim	
func3.2:	
	addi $4, $0, 'H'	
	syscall
	j fim	
func3.3:	
	addi $4, $0, 'I'	
	syscall
	j fim			
		
fim: 	
	addi $2, $0, 10
	syscall	
	
	