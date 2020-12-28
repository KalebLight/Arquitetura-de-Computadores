######Instruções######

# - Para desenhar uma linha digite 'l'
# - Para desenhar um quadrado (ou retângulo) digite 'q'
# - Após isso, digite as coordenas na seguinte ordem: Xinicial - Yinicial - Xfinal - Yfinal
# - Em seguida, digite os valores RGB que formarão a cor do seu elemento.
# - Uma vez que uma linha ou quadrado foi desenhado, tem-se a opção de movê-lo pela tela usando 
# os botões WASD na ferramenta 'Keyboard and Display MMIO Simulator'.
# - Você pode parar o programa apertando 'p'

######Observações######
# - Há um pequeno erro para desenhar um quadrado (ou retângulo) na tela com as seguintes condições:
#    Xi > Xf && Yi > Yf  // Xi > Xf && Yi < Yf
# - O erro é que o desenho apresenta um pixel a mais do que o esperado
# - As linhas podem ser desenhadas dando coordenadas da esquerda pra direita ou vice-versa, 
#e de cima pra baixo ou vice-versa. Os quadrados podem ser desenhados da mesma forma.


.text
main:

#adicionando valores para comparação
addi $8, $0, 113 #valor ascii da letra 'q'
addi $9, $0, 108 #valor ascii da letra 'l'
#input caractér
addi $2, $0, 12
syscall
#verificação do caractér
beq $2, $8, quadrado
beq $2, $9, linha
addi $4, $0, 'E'
addi $2, $0, 11
syscall
j main

pintaBranco:
lui $14,0x00ff
ori $14, $14, 0xffff
lui $13, 0x1001
addi $12, $0, 8192
test1: beq $12, $0, retorno
      sw $14, 0($13)
      addi $13, $13, 4
      addi $12, $12, -1      
      j test1 

retorno: 
jr $31

#rotina para caso o usuário queiria imprimir um quadrado
quadrado:
jal pintaBranco
jal inputPontos
jal inputCor
add $4, $21, $0 #Xi
add $5, $22, $0 #Yi
add $6, $23, $0 #Xf
add $7, $24, $0 #Yf
jal calcXY

verifQuadrado:
slt $10, $23, $21
beqz $10, Q13
j Q24

Q13:
slt $10, $22, $24
beqz $10, desenhaQ1
j desenhaQ3

Q24:
slt $10, $22, $24
beqz $10, desenhaQ2
j desenhaQ4

desenhaQ4:
#SWAP
add $9, $0, $5
add $5, $0, $7
add $7, $0, $9
#SWAP
sub $12, $4, $6 #Xf - Xi // Pra contar a largura
add $14, $12, $0 #salva a largura aqui
mul $15, $14, 4
sub $13, $5, $7 #Yi - Yf // pra contar a altura
addi $14, $14, 1
j desQ4
prepDesQ4: 
beqz $13, loopMovMain
addi $18, $18, -512
add $18, $18, $15
addi $13, $13, -1
add $14, $12, $0
j desQ4
desQ4: beq $14, $0, prepDesQ4
	sw $8, 0($18)
	addi $18, $18, -4
        addi $14, $14, -1      
        j desQ4

desenhaQ2: 
#SWAP
add $9, $0, $5
add $5, $0, $7
add $7, $0, $9
#SWAP
sub $12, $4, $6 #conta a largura
add $14, $12, $0 #salva a largura
mul $15, $14, 4
sub $13, $7, $5 #conta a altura
addi $14, $14, 1
j desQ2
prepDesQ2: 
beqz $13, loopMovMain
addi $18, $18, 512
add $18, $18, $15
addi $13, $13, -1
add $14, $12, $0
j desQ2
desQ2: beq $14, $0, prepDesQ2
	sw $8, 0($18)
	addi $18, $18, -4
        addi $14, $14, -1      
        j desQ2

desenhaQ3:
#SWAP
add $9, $0, $5
add $5, $0, $7
add $7, $0, $9
#SWAP
sub $12, $6, $4  #conta a largura
add $14, $12, $0 #salva a largura 
mul $15, $14, 4
sub $13, $5, $7 # conta a altura

j desQ3
prepDesQ3: 
beqz $13, loopMovMain
addi $18, $18, -512
sub $18, $18, $15
addi $13, $13, -1
add $14, $12, $0
j desQ3
desQ3: beq $14, $0, prepDesQ3
	sw $8, 0($18)
	addi $18, $18, 4
        addi $14, $14, -1      
        j desQ3

desenhaQ1:
sub $12, $6, $4 #conta a largura
add $14, $12, $0 #salva a largura 
mul $15, $14, 4
sub $13, $5, $7 #conta a altura

j desQ1
prepDesQ1: 
beqz $13, loopMovMain
addi $18, $18, 512
sub $18, $18, $15
addi $13, $13, -1
add $14, $12, $0
j desQ1
desQ1: beq $14, $0, prepDesQ1
	sw $8, 0($18)
	addi $18, $18, 4
        addi $14, $14, -1      
        j desQ1
        
#rotina para caso o usuário queiria imprimir um linha
linha:
jal pintaBranco
jal inputPontos #21 = Xinicio // $22 = Yinicio // $23 = Xfim // $24 = Yinicio
jal inputCor
add $4, $21, $0 #Xi
add $5, $22, $0 #Yi
add $6, $23, $0 #Xf
add $7, $24, $0 #Yf
jal calcXY

#rotina para iniciar verificação de orientação e direção da linha
verifDirecLinha:
beq $22, $24, linhaHorizontal
beq $21, $23, linhaVertical
j linha

linhaHorizontal:
slt $10, $23, $21
beqz $10, linhaDir
j linhaEsq

linhaEsq:
sub $12, $4, $6
lEsq: beq $12, $0, loopMovMain
	sw $8, 0($18)
	addi $18, $18, -4
        addi $12, $12, -1      
        j lEsq  
        
linhaDir:
sub $12, $6, $4
lDir: beq $12, $0, loopMovMain
      sw $8, 0($18)
      addi $18, $18, 4
      addi $12, $12, -1      
      j lDir   
      
linhaVertical:
slt $10, $24, $22
beqz $10, linhaCima
j linhaBaixo

linhaCima:
sub $12, $7, $5
lCima: beq $12, $0, loopMovMain
sw $8, 0($18)
addi $18, $18, -512
addi $12, $12, -1      
j lCima 

linhaBaixo:
sub $12, $5, $7
addi $12, $12, 1
lBaixo: beq $12, $0, loopMovMain
sw $8, 0($18)
addi $18, $18, 512
addi $12, $12, -1
j lBaixo


inputPontos:
addi $4, $0, 'x'
addi $2, $0, 11
syscall
addi $2, $0, 5
syscall
add $21, $0, $2 #21 = Xinicio
addi $4, $0, 'y'
addi $2, $0, 11
syscall
addi $2, $0, 5
syscall
add $22, $0, $2 #$22 = Yinicio
addi $4, $0, 'X'
addi $2, $0, 11
syscall
addi $2, $0, 5
syscall
add $23, $0, $2 #$23 = Xfim
addi $4, $0, 'Y'
addi $2, $0, 11
syscall
addi $2, $0, 5
syscall
add $24, $0, $2 #$24 = Yinicio
jr $31

#ROTINA PARA RECEBER OS VALORES QUE FARÃO A COMPOSIÇÃO DA COR RGB
inputCor:
addi $4, $0, 'R'
addi $2, $0, 11
syscall
addi $2,$0, 5
syscall 
add $8,$0, $2 #$8 = R
addi $4, $0, 'G'
addi $2, $0, 11
syscall
addi $2,$0, 5
syscall 
add $9,$0, $2 #$9 = R
addi $4, $0, 'B'
addi $2, $0, 11
syscall
addi $2,$0, 5
syscall 
add $10,$0, $2  #$10 = B
#pegando valor hex
sll $11, $8, 16
sll $9, $9, 8
or $11, $11, $9
or $8, $11, $10 #$8 = COR RGB
jr $31
####################################

#ROTINA PARA ENCONTRAR O ENDEREÇO PIXEL DADA AS COORDENADAS X & Y
#Entradas: $4: Coordenada X
#          $5: coordenada Y
#          $6: Cor (0x00RRGGBB)
#Saída: $18: endereço 
# configuração da tela
# Endereço Base: 0x10010000
calcXY:              
         lui $16, 0x1001
         addi $17, $0, 63
         sub $18, $17, $5  # 63-Y
         sll $18, $18, 7   # (63-Y)*128
         add $18, $18, $4  # (63-Y)*128+X
         sll $18, $18, 2   # ((63-Y)*128+X)*4
         addu $18, $18, $16 # 0x10010000+((63-Y)*128+X)*4                                                                                   
         jr $31
 ################################    
 
loopMovMain:
lui $14, 0x00ff
ori $14, $14, 0xffff
lui $13, 0x1001
addi $10, $0, 8192
lui $25, 0xffff

addi $15, $0, 'p'
addi $16, $0, 'w'
addi $17, $0, 'a'
addi $18, $0, 's'
addi $19, $0, 'd'

loopMov:
lw $20 0($25)
beqz $20, loopMov
lw $12, 4($25)
beq $12, $15, fim
beq $12, $16, movCima2
beq $12, $17, movEsq2
beq $12, $18, movBaixoAux
beq $12, $19, movDirAux
j loopMov
 
#####MOVER ELEMENTO PARA ESQUERDA#####
movEsq1:
addi $13, $13, 4
addi $10, $10 -1  				
beqz $10, loopMovMain				
									
movEsq2:
lw $15, 0($13)
beq $15, $14, movEsq1
j movEsq3

movEsq3:
sw $15, -4($13)
sw $14, 0($13)
j movEsq1


#####MOVER ELEMENTO PARA DIREITA#####
movDirAux:
add $11, $0, $0
movDirAuxLoop:
beq $10, $11, movDir2
addi $13, $13, 4
addi $11, $11, 1
j movDirAuxLoop

movDir1:
addi $13, $13, -4
addi $10, $10 -1   
beqz $10, loopMovMain

movDir2:
lw $15, 0($13)
beq $15, $14, movDir1
j movDir3

movDir3:
sw $15, 4($13)
sw $14, 0($13)
j movDir1

#####MOVER ELEMENTO PARA BAIXO#####
movBaixoAux:
addi $11, $0, 1
movBaixoAuxLoop:
beq $10, $11, movBaixo2
addi $13, $13, 4
addi $11, $11, 1
j movBaixoAuxLoop

movBaixo1:
addi $13, $13, -4
addi $10, $10 -1   
beqz $10, loopMovMain

movBaixo2:
lw $15, 0($13)
beq $15, $14, movBaixo1
j movBaixo3

movBaixo3:
sw $15, 512($13)
sw $14, 0($13)
j movBaixo1

#####MOVER ELEMENTO PARA CIMA#####
movCima1:
addi $13, $13, 4
addi $10, $10 -1   
movCima2:
beqz $10, loopMovMain
lw $15, 0($13)
beq $15, $14, movCima1
j movCima3

movCima3:
sw $15, -512($13)
sw $14, 0($13)
j movCima1
#####MOVER ELEMENTO PARA CIMA#####

#rotina pra finalizar o programa
fim:
addi $2, $0, 10
syscall
