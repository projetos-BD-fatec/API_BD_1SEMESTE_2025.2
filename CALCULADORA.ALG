Algoritmo "calculadora"
// Disciplina   : API
// Professor   : Fabiano Sabha
// Descrição   : Calculadora com menu e opções de calculos.
// Autor(a)    : Bughunters
// Data atual  : 15/09/2025
Var
   // Seção de Declarações das variáveis
   opcao, x, qntdtermos, num_inicio, num_fim, termos, i, quadrado, cont, Valor1, Valor2, limite, numero, proximo, num1, num2, cont_div, j:inteiro
   resultado, termo, razao :real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   enquanto opcao <>10 faca
      escreval ("")
      escreval ("------MENU CALCULADORA-------")
      escreval ("")
      escreval (" 01 - Quadrados Perfeitos ")
      escreval (" 02 - Fatorial ")
      escreval (" 03 - Fibonacci")
      escreval (" 04 - Sequência Geométrica")
      escreval (" 05 - Sequência Alternada")
      escreval (" 06 - Números Primos")
      escreval (" 07 - Tribonacci")
      escreval (" 08 - Sequência Triangular")
      escreval (" 09 - Sequência de Cubos")
      escreval (" 10 - SAIR")
      escreval ("")
      Escreval ("-----------------------------")

      escreval ("Digite a opção: ")
      leia (opcao)
      escolha opcao
         limpatela

         //inicio da opcao 01 do Menu
      caso 1
         limpatela
         escreval ("Você escolheu a opção 01 - Quadrados Perfeitos")
         repita
            escreval ("Digite o primeiro número (deve ser positivo): ")
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
         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela

         //inicio da opcao 02 do menu
      caso 2
         limpatela
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

         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela

         //inicio da opcao 03 do Menu
      caso 3
         limpatela
         escreval("Bem vindo ao calculo de Fibonacci. Digite dois valores:")
         repita
            repita
               escreval("Digite o primeiro valor:")
               leia(Valor1)
               escreval("Digite o segundo valor:")
               leia(Valor2)
               escreval("Digite o limite:")
               leia(limite)

               se (limite < Valor1) e (limite < Valor2) entao
                  limpatela
                  escreval ("Valor limite tem que ser maior que os valores iniciais.")
               fimse
            até (Valor1 e Valor2) < limite
            se (Valor1 e Valor2) = 0 entao
               limpatela
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
         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela

         //Inicio da opção 04 do Menu
      caso 4
         limpatela
         escreval ("Você escolheu a opção 04 - Sequencia Geométrica")
         escreval("Digite o termo inicial:")
         leia(termo)


         repita
            escreval("Digite a razão:")
            leia(razao)
            se (razao = 0) ou (razao = 1) ou (razao = -1) entao
               escreval("Razão inválida! Digite novamente um valor diferente de 0, 1 e -1.")
            fimse
         ate (razao <> 0) e (razao <> 1) e (razao <> -1)


         repita
            escreval("Digite a quantidade de termos:")
            leia(qntdtermos)
            se (qntdtermos <= 0) entao
               escreval("Quantidade inválida! Digite um número maior que zero.")
            fimse
         ate (qntdtermos > 0)

         resultado <- termo

         limpatela
         escreval("=== Sequência Geométrica ===")

         para i de 1 ate qntdtermos faca
            escreval("Termo ", i, ": ", resultado)
            resultado <- resultado * razao
         fimpara

         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela

         //Inicio da opção 05 do Menu
      caso 5
         limpatela
         escreval("Bem vindo ao cálculo da sequência alternada.")
         escreval("Digite um número inicial e a quantidade de termos:")
         repita
            escreval("Digite o primeiro valor:")
            leia(Valor1)
            escreval("Digite quantos termos:")
            leia(termos)
            se (termos <= 0) ou (Valor1 <= 0) entao
               limpatela
               escreval("O valor inicial ou quantidade de termos não podem ser negativos!")
            fimse
         até (Valor1 > 0) e (termos > 0)
         para i de 1 ate termos faca
            escreval(valor1)
            Valor1 <- Valor1*2
            Valor1 <- Valor1*-1
         fimpara

         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela

         // Inicio da opção 06 do Menu
      caso 6
         limpatela
         escreval ("Você escolheu a opção 06 - Números Primos")
         repita
            escreval ("Digite o primeiro número (inteiro e positivo): ")
            leia (num1)
            se (num1 < 0) então
               escreval ("O primeiro número deve ser positivo!")
            fimse
         até (num1 > 0)
         repita
            escreval ("Digite o segundo número (deve ser maior que o primeiro): ")
            leia (num2)
            se (num2 < num1) então
               escreval ("O segundo número deve ser maior que o primeiro!")
            fimse
         até (num2 > num1) e (num1 > 0)
         limpatela
         escreval ("Os números primos entre", num1, " e", num2, ":" )


         para i de num1 até num2 faça
            cont_div <- 0
            para j de 1 até i faça
               se i mod j = 0 então
                  cont_div <- cont_div + 1
               fimse
            fimpara
            se cont_div = 2 então
               cont <- cont + 1
               escreval (i)
            fimse
         fimpara


         se cont = 0 então
            escreval ("Não há números primos no período determinado")
         fimse
         cont <- 0

         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela

      caso 7
         limpatela
         escreval ("Você escolheu a opção 07 - Tribonacci")
         escreval ("Opção ainda em desenvolvimento")
         escreval ("")
         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela

      caso 8
         limpatela
         escreval ("Você escolheu a opção 08 - Sequência Triangular")
         escreval ("Opção ainda em desenvolvimento")
         escreval ("")
         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela


      caso 9
         limpatela
         escreval ("Você escolheu a opção 09 - Sequência de Cubos")
         escreval ("Opção ainda em desenvolvimento")
         escreval ("")
         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela


      caso 10
         escreval ("Você escolheu a opção 10 - SAIR")
         limpatela

      outrocaso
         limpatela
         escreval ("Opção inválida!")
         escreval ("Tecle <enter> para voltar ao menu")
         leia (x)
         limpatela
      fimescolha

   fimenquanto
Fimalgoritmo








