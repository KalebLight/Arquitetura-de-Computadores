#16
.text
main:
	add $8, $0, 1
	add $9, $0, 2
	add $10, $0, 3
	add $11, $0, 4
	add $12, $0, 5
	add $13, $0, 6
	add $14, $0, 7
	add $15, $0, 8
	add $16, $0, 9
	add $17, $0, 10
	add $18, $0, 11
	add $19, $0, 12
	
	addi $2, $0, 5
	syscall
	
	beq $2, $8, janeiro
	beq $2, $9, fevereiro
	beq $2, $10, marco
	beq $2, $11, abril
	beq $2, $12, maio
	beq $2, $13, junho
	beq $2, $14, julho
	beq $2, $15, agosto
	beq $2, $16, setembro
	beq $2, $17, outubro
	beq $2, $18, novembro
	beq $2, $19, dezembro
	
janeiro:
	addi $4, $0, 'J'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'n'
	syscall
	j fim
fevereiro: 
	addi $4, $0, 'F'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'v'
	syscall
	j fim
marco:
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'r'
	syscall	
	j fim
abril:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'b'
	syscall
	addi $4, $0, 'r'
	syscall	
	j fim
maio:
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'i'
	syscall
	j fim
junho:
	addi $4, $0, 'J'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 'n'
	syscall	
	j fim
julho:
	addi $4, $0, 'J'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 'l'
	syscall
	j fim	
	
agosto:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'g'
	syscall
	addi $4, $0, 'o'
	syscall
	j fim			
setembro:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 't'
	syscall
	j fim	
outubro:
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 't'
	syscall
	j fim	
novembro:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'o'
	syscall
	addi $4, $0, 'v'
	syscall
	j fim	
dezembro:
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'z'
	syscall
	j fim				
fim:
	addi $2, $0, 10
	syscall
