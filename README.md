# Arquitetura-de-Computadores
## REPOSITÓRIO PARA DISCIPLINA: ARQUITETURA DE COMPUTADORES
## Contém: Listas de exercícios e o projeto da disciplina.


### Projeto da disciplina - Programa para desenho de figuras geométricas animadas

Programa que cria figuras geométricas com informações passadas pelo usuário. 

#### Intruções para a execução do programa.
- Clone o repositório.
- Execute o programa ''Mips Mars.jar''
- No programa, abra o arquivo da pasta ''PROJETO DA DISCIPLINA (Programa para desenho de figuras geométricas animadas)''
- Na seção 'tools', escolha o Bitmap Display, nele, deixe as opções 'Unit Width in Pixel' e 'Unit Height in Pixels' com o valor '4'. Após isso, clique em 'Connect to MIPS'
- Ainda na seção 'tools', escolha a opção 'Keyboard and Display MMIO Simulator', e clique em 'Connect to MIPS'
- Após conectar as ferramentas necessárias ao MIPS, vá na opção 'Run' e clique em 'Assemble' para montar o programa.
- Para executar o programa, clique novamente em 'Run', e depois na opção 'Go'.
- Com o programa executando, você poderá digitar instruções na janela de entrada de dados 'Run I/O'.
- Para desenhar um QUADRADO digite Q, para desenhar uma LINHA digite L.
- Após escolher uma das opções, ainda na janela 'RUN I/O' digite as coordenas na seguinte ordem: Xinicial - Yinicial - Xfinal - Yfinal
- Em seguida, digite os valores RGB que formarão a cor do seu elemento
- Uma vez que uma linha ou quadrado foi desenhado, tem-se a opção de movê-lo pela tela usando os botões WASD na janela KEYBOARD na ferramenta  'Keyboard and Display MMIO Simulator'.
- Você pode parar o programa digitando 'p'
###### OBSERVAÇÕES
- Há um pequeno erro para desenhar um quadrado (ou retângulo) na tela com as seguintes condições: Xinicial > Xfinal && Yinicial > Yfinal  // Xinicial > Xfinal && Yinicial < Yfinal.
- O erro é que o desenho apresenta um pixel a mais do que o esperado.
- As linhas podem ser desenhadas dando coordenadas da esquerda pra direita ou vice-versa, e de cima pra baixo ou vice-versa. Os quadrados podem ser desenhados da mesma forma.
