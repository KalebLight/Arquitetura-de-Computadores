.text
main:  addi $2, $0, 12
       syscall  # le um caractere
       add $8, $0, $2  #guarda o caractere lido no $8
       
       addi $4, $0, '\n'
       addi $2, $0, 11
       syscall #imprimir uma quebra de linha
       
       addi $2, $0, 5
       syscall
       add $9, $0, $2 #le um numero e guarda-o em $9
       
       addi $2, $0, 5
       syscall
       add $10, $0, $2 #le um numero e guarda-o em $10
              
       addi $11, $0, '+'   #coloco o caractere + em $11
       beq $11, $8, soma  #testa se $11 contem o mesmo que $8. Caso verdade salta para soma            
 
       addi $11, $0, '-'  #coloco o caractere - em $11
       beq $11, $8, subit #testa se $11 contem o mesmo que $8. Caso verdade salta para subit
                            
       addi $11, $0, '*'  #coloco o caractere * em $11
       beq $11, $8, multi #testa se $11 contem o mesmo que $8. Caso verdade salta para multi                                                                                                                                                                

       j divis    # vai para divis                               

soma:  
	add $4, $9, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '+'
	addi $2, $0, 11
	syscall
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	add $4, $9, $10  #soma
        j fim
subit: 
	add $4, $9, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '-'
	addi $2, $0, 11
	syscall
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	sub $4, $9, $10  #subtração
       j fim       
multi: 
	add $4, $9, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '*'
	addi $2, $0, 11
	syscall
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	mul $4, $9, $10  #multiplicação
       j fim                                      
divis: 
	add $4, $9, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '/'
	addi $2, $0, 11
	syscall
	add $4, $10, $0
	addi $2, $0, 1
	syscall
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	div $9, $10      #divisão
       mflo $4
                                                                                                                         
fim: addi $2, $0, 1
     syscall        #imprimir o que foi calculado em $4


     addi $2, $0, 10  
     syscall          #termina a execução do código                                                                                                                                                                                                                                                                                                                                                                                
       
       
       
       
       
       
