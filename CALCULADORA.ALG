Algoritmo "calculadora"
// Disciplina   : API
// Professor   : Fabiano Sabha
// Descrição   : Calculadora com menu e opções de calculos.
// Autor(a)    : Bughunters
// Data atual  : 15/09/2025
Var
   // Seção de Declarações das variáveis
   opcao, Valor1, Valor2, limite,proximo:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   enquanto opcao <>6 faca
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
      fimse
      se opcao =2 entao
         escreval ("Você escolheu a opção 02 - Fatorial")
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
            
            se limite < (Valor1 e Valor2) entao
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
