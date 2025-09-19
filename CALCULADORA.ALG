Algoritmo "calculadora"
// Disciplina   : API
// Professor   : Fabiano Sabha
// Descrição   : Calculadora com menu e opções de calculos.
// Autor(a)    : Bughunters
// Data atual  : 15/09/2025
Var
   // Seção de Declarações das variáveis
   opcao, num_inicio, num_fim, i, quadrado, cont, Valor1, Valor2, limite, numero, resultado ,proximo:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   enquanto opcao <>6 faca
      escreval ("")
      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Quadrados Perfeitos ")
      escreval (" 02 - Fatorial ")
      escreval (" 03 - Fibonacci")
      escreval (" 04 - Sequência Geométrica")
      escreval (" 05 - Sequência Alternada")
      escreval (" 06 - Sair")
      escreval ("")
      Escreval ("-----------------------------")
      leia (opcao)
      limpatela
      se opcao =1 entao
         escreval ("Você escolheu a opção 01 - Quadrados Perfeitos")
         repita
            escreval ("Digite o primeiro número: ")
            leia (num_inicio)
            escreval ("Digite o segundo número (deve ser maior que o primeiro): ")
            leia (num_fim)
         até (num_fim > num_inicio)
         limpatela
         escreval ("Quadrados perfeitos dentro do período",num_inicio," e",num_fim,": ")
         enquanto (quadrado <= num_fim) faça
            para i <- 1 até num_fim faça
               quadrado <- i * i
               se (quadrado >= num_inicio) e (quadrado <= num_fim) então
                  escreval(quadrado)
                  cont <- cont + 1
               fimse
            fimpara
         fimenquanto
         se (cont = 0) então
            escreval("Não há quadrados perfeitos no intervalo determinado")
         fimse
         quadrado <- 0
         cont <- 0
      fimse
      se opcao =2 entao
         escreval ("Você escolheu a opção 02 - Fatorial")
escreval ("Digite um numero inteiro para calcular o fatorial")
   leia (numero)
   limpatela
   enquanto (numero <0) faca
      escreval ("O fatorial não é definido para numeros negativos")
      escreval ("Digite novamente um numero inteiro positivo: ")
   leia (numero)
   limpatela
fimenquanto

enquanto (numero > 12) faca
      escreval("O limite fatorial é ate o numero 12")
      escreval("Digite novamente o numero:")
   leia(numero)
   limpatela
fimenquanto

   resultado <-1
   para i de 1 ate numero faça
      resultado<- resultado*i
      fimpara


      escreval ("O fatorial de ", numero ," é ", resultado)
      fimse
      se opcao =3 entao
         escreval("Bem vindo ao calculo de Fibonacci. Digite os dois valores:")
         repita
         repita
            escreval("Digite o primeiro valor:")
            leia(Valor1)
            escreval("Digite o segundo valor:")
            leia(Valor2)
            escreval("Digite o limite:")
            leia(limite)

            se (limite < Valor1) e (limite < Valor2) entao
             escreval ("Valor limite tem que ser maior que os valores iniciais.")
              fimse
              até (Valor1 e Valor2) < limite
            se (Valor1 e Valor2) = 0 entao
               escreval("Você digitou 0 nos dois valores, isso da sequência infinita!")
            senao
               enquanto Valor1 <= limite faca
                  escreva(Valor1)
                  proximo <- Valor1 + Valor2
                  Valor1 <- Valor2
                  Valor2 <- proximo
               fimenquanto
               escreval ("")
            fimse
         até (Valor1 e Valor2) <> 0
      fimse
      se opcao =4 entao
         escreval ("Você escolheu a opção 04 - Sequencia Geométrica")
      fimse
      se opcao =5 entao
         escreval ("Você escolheu a opção 05 - Sequência Alternada")
      fimse
      se opcao =6 entao
         escreval ("Você escolheu a opção 06 - SAIR")
      fimse
   fimenquanto
Fimalgoritmo



