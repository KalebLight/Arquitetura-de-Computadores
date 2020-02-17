#30
.text
main:	
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	j verif

verif:	
	slt $11, $8, $9 
	beq $11, $0, func1
	
	slt $11, $8, $10
	beq $11, $0, func2
	
	slt $11, $9, $10
	beq $11, $0, func3
	j fim
func3:
	add $15, $10, $0
	add $10, $9, $0
	add $9, $15, $0 
	j verif		
func2:
	add $15, $10, $0
	add $10, $8, $0
	add $8, $15, $0 
	j verif
func1:
	add $15, $9, $0
	add $9, $8, $0
	add $8, $15, $0
	j verif 	
fim:
 	addi $2, $0, 1 	
 	add $4, $8, $0
 	syscall
 	
 	addi $2, $0, 11
 	addi $4, $0, ','
 	syscall
 	addi $2, $0, 1
 	add $4, $9, $0
 	syscall
 	addi $2, $0, 11
 	addi $4, $0, ','
 	syscall
 	
 	addi $2, $0, 1
 	add $4, $10, $0
 	syscall
 	
 	addi $2, $0, 10
 	syscall
					