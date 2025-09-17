Algoritmo "calculadora"
// Disciplina   : API
// Professor   : Fabiano Sabha
// Descrição   : Calculadora com menu e opções de calculos.
// Autor(a)    : Bughunters
// Data atual  : 15/09/2025
Var
// Seção de Declarações das variáveis
   opcao:inteiro

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
      escreval (" 06 - Números Primos")
      escreval (" 07 - Sair")
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
         escreval ("Você escolheu a opção 03 - Sequencia de Fibonacci")
      fimse
      se opcao =4 entao
         escreval ("Você escolheu a opção 04 - Sequencia Geométrica")
      fimse
      se opcao =5 entao
         escreval ("Você escolheu a opção 05 - Sequência Alternada")
      fimse
      se opcao =6 entao
         escreval ("Você escolheu a opção 06 - Números Primos")
      fimse
      se opcao =7 entao
         escreval ("Você escolheu a opção 07 - SAIR")
      fimse
   fimenquanto

Fimalgoritmo
