#15
.text
main:
	add $t0, $0, 1
	add $t1, $0, 2
	add $t2, $0, 3
	add $t3, $0, 4
	add $t4, $0, 5
	add $t5, $0, 6
	add $t6, $0, 7
	
	addi $2, $0, 5
	syscall
	
	beq $2, $t0, domingo
	beq $2, $t1, segunda
	beq $2, $t2, terca
	beq $2, $t3, quarta
	beq $2, $t4, quinta
	beq $2, $t5, sexta
	beq $2, $t6, sabado
	
segunda:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'g'
	syscall
	j fim
terca: 
	addi $4, $0, 'T'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'r'
	syscall
	j fim
quarta:
	addi $4, $0, 'Q'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 'a'
	syscall	
	j fim
quinta:
	addi $4, $0, 'Q'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'u'
	syscall
	addi $4, $0, 'i'
	syscall	
	j fim
sexta:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'e'
	syscall
	addi $4, $0, 'x'
	syscall
	j fim
sabado:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'a'
	syscall
	addi $4, $0, 'b'
	syscall	
	j fim
domingo:
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	addi $4, $0, 'o'
	syscall
	addi $4, $0, 'm'
	syscall
	j fim			
fim:
	addi $2, $0, 10
	syscall
