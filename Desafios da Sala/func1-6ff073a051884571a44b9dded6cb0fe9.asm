.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      add $4, $2, $0
      jal pow
      addi $4, $2, 0
      addi $2, $0, 1
      syscall
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall

      addi $4, $8, 1
      jal pow
      addi $4, $2, 0
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall


#------------------
# funcao para realizar a potenciacao de um numero
# entrada: $4
# saida: $2
# registradores sujos: -
#------------------
pow: mul $2, $4, $4  
     jr $31