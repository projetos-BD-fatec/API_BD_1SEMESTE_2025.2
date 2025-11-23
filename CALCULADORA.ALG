Algoritmo "calculadora"
// Disciplina   : API
// Professor   : Fabiano Sabha
// Descrição   : Calculadora com menu e opções de calculos.
// Autor(a)    : Bughunters
// Data atual  : 15/09/2025
Var
   // Seção de Declarações das variáveis
   opcao, voltar, qnt_termos, i, quadrado, cont, fatorial, limite, proximo, num1, num2, num3, cont_div, j, cubo:inteiro
   termo, razao: real
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   enquanto opcao <>10 faca
      escreval ("")
      escreval ("------MENU CALCULADORA-------")
      escreval ("                             |")
      escreval (" 01 - Quadrados Perfeitos    |")
      escreval (" 02 - Fatorial               |")
      escreval (" 03 - Fibonacci              |")
      escreval (" 04 - Sequência Geométrica   |")
      escreval (" 05 - Sequência Alternada    |")
      escreval (" 06 - Números Primos         |")
      escreval (" 07 - Tribonacci             |")
      escreval (" 08 - Sequência Triangular   |")
      escreval (" 09 - Sequência de Cubos     |")
      escreval (" 10 - SAIR                   |")
      escreval ("                             |")
      Escreval ("-----------------------------")

      escreval ("Digite a opção: ")
      leia (opcao)
      escolha opcao
         limpatela

         //inicio da opcao 01 - Quadrados perfeitos
      caso 1
         limpatela
         escreval ("----------QUADRADOS PERFEITOS-----------")
         escreval("Um quadrado perfeito é um número natural")
         escreval("que é o resultado da multiplicação de um número")
         escreval("inteiro por ele mesmo (elevado ao quadrado)")
         escreval ("----------------------------------------")
         escreval("")
         repita
            escreval ("Digite o primeiro número (deve ser positivo): ")
            leia (num1)
            escreval ("Digite o segundo número (deve ser maior que o primeiro): ")
            leia (num2)
         até (num2 > num1)
         limpatela
         escreval ("Quadrados perfeitos dentro do período de",num1," a",num2,": ")
         enquanto (quadrado <= num2) faça
            para i <- 1 até num2 faça
               quadrado <- i * i
               se (quadrado >= num1) e (quadrado <= num2) então
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
         leia (voltar)
         limpatela

         //inicio da opcao 02 - Fatorial
      caso 2
         limpatela
         escreval ("----------------FATORIAL----------------")
         escreval("O fatorial de um número é a multiplicação desse número")
         escreval("por todos os seus antecessores inteiros e positivos até 1")
         escreval ("----------------------------------------")
         escreval("")
         escreval ("Digite um numero inteiro para calcular o fatorial")
         leia (num1)
         limpatela
         enquanto (num1 <0) faca
            escreval ("O fatorial não é definido para numeros negativos")
            escreval ("Digite novamente um numero inteiro positivo: ")
            leia (num1)
            limpatela
         fimenquanto

         enquanto (num1 > 12) faca
            escreval("O limite fatorial é ate o numero 12")
            escreval("Digite novamente o numero:")
            leia(num1)
            limpatela
         fimenquanto

         fatorial <-1
         para i de 1 ate num1 faça
            fatorial<- fatorial*i
         fimpara

         escreval ("O fatorial de", num1 ," é", fatorial)

         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela

         //inicio da opcao 03 Sequência de Fibonacci
      caso 3
         limpatela
         escreval ("----------------FIBONACCI----------------")
         escreval("Para este cálculo você deve inserir os dois")
         escreval("primeiros números da sequência e o valor limite.")
         escreval("E então será retornado a sequência Fibonacci")
         escreval ("----------------------------------------")
         escreval("")
         repita
            repita
               escreval("Digite o primeiro valor:")
               leia(num1)
               escreval("Digite o segundo valor:")
               leia(num2)
               escreval("Digite o limite:")
               leia(limite)

               se (limite < num1) e (limite < num2) entao
                  limpatela
                  escreval ("Valor limite tem que ser maior que os valores iniciais.")
               fimse
            até (num1 e num2) < limite
            se (num1 = 0) e (num2 = 0) entao
               limpatela
               escreval("Você digitou 0 nos dois valores, isso da sequência infinita!")
            senao
               escreval ("A sequência Fibonacci com os valores informados é: ")
               enquanto num1 <= limite faca
                  escreva(num1)
                  proximo <- num1 + num2
                  num1 <- num2
                  num2 <- proximo
               fimenquanto
               escreval ("")
            fimse
         até (num1 e num2) <> 0

         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela

         //Inicio da opção 04 - Sequência geométrica
      caso 4
         limpatela
         escreval ("----------SEQUÊNCIA GEOMÉTRICA---------")
         escreval("A sequência geométrica é uma lista de números")
         escreval("onde cada termo, exceto o primeiro, é obtido")
         escreval("multiplicando o termo anterior por um número")
         escreval("fixo constante chamado razão")
         escreval ("----------------------------------------")
         escreval("")
         escreval("Digite o termo inicial:")
         leia(termo)


         repita
            escreval("Digite a razão:")
            leia(razao)
            se (razao <= 1) e (razao >= -1) entao
               escreval("Razão inválida! Digite novamente um valor diferente de 0, 1 e -1.")
            fimse
         ate (razao > 1) ou (razao < -1)

         repita
            escreval("Digite a quantidade de termos:")
            leia(qnt_termos)
            se (qnt_termos <= 0) entao
               escreval("Quantidade inválida! Digite um número maior que zero.")
            fimse
         ate (qnt_termos > 0)



         limpatela
         escreval("A sequência geométrica com os valores informados é:")

         para i de 1 ate qnt_termos faca
            escreval("Termo ", i, ": ", termo)

            termo <- termo * razao
         fimpara

         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela

         //Inicio da opção 05 - Sequência alternada
      caso 5
         limpatela
         escreval("---------- SEQUÊNCIA ALTERNADA ---------")
         escreval("Uma sequência alternada é uma série numérica")
         escreval("cujos termos se alternam entre positivos e negativos")
         escreval("----------------------------------------")
         escreval("")

         escreval("Digite um número inicial e a quantidade de termos:")
         repita
            escreval("Digite o primeiro valor:")
            leia(termo)
            escreval("Digite quantos termos:")
            leia(qnt_termos)
            se (qnt_termos <= 0) ou (termo <= 0) entao
               limpatela
               escreval("O valor inicial ou quantidade de termos não podem ser negativos!")
            fimse
         até (termo > 0) e (qnt_termos > 0)

         escreval ("A Sequência Alternada com os valores informados é: ")

         para i de 1 ate qnt_termos faca
            escreval(termo)
            termo <- termo*2
            termo <- termo*-1
         fimpara

         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela

         // Inicio da opção 06 - Sequência de numeros primos
      caso 6
         limpatela
         escreval ("----------NÚMEROS PRIMOS---------")
         escreval ("Um número primo é um número natural")
         escreval ("maior que 1 que tem apenas dois divisores")
         escreval ("positivos: 1 e ele mesmo.")
         escreval ("---------------------------------")
         escreval ("")

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
         leia (voltar)
         limpatela
         // Inicio da opção 07 -  Sequência de tribonacci
      caso 7
         limpatela
         escreval("----------SEQUÊNCIA TRIBONACCI---------")
         escreval("A sequência de Tribonacci é uma progressão numérica")
         escreval("em que cada termo, a partir do quarto,")
         escreval("é a soma dos três termos imediatamente anteriores")
         escreval("---------------------------------------")
         escreval("")

         repita
            repita
               escreval("Digite o primeiro valor:")
               leia(num1)
               escreval("Digite o segundo valor:")
               leia(num2)
               escreval("Digite o terceiro valor:")
               leia(num3)
               escreval("Digite o limite:")
               leia(limite)

               se (limite < num1) ou (limite < num2) ou (limite < num3)entao
                  limpatela
                  escreval ("Valor limite tem que ser maior que os valores iniciais.")
               fimse
            até (num1 e num2 e num3) < limite
            se (num1 = 0) e (num2 = 0) e (num3 = 0) entao
               limpatela
               escreval("Você digitou 0 nos três valores, isso da sequência infinita!")
            senao
               escreval ("A sequência Tribonacci com os valores informados é: ")
               enquanto num1 <= limite faca
                  escreva(num1)
                  proximo <- num1 + num2 + num3
                  num1 <- num2
                  num2 <- num3
                  num3 <- proximo
               fimenquanto
               escreval ("")
            fimse
         até (num1 e num2 e num3) <> 0
         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela
         //Inicio da opção 08 - Número triangular
      caso 8
         limpatela
         escreval("----------NÚMERO TRIANGULAR---------")
         escreval("Um número triangular é um número natural que pode")
         escreval("ser representado pela soma dos primeiros n números naturais")
         escreval("e visualizado na forma de um triângulo equilátero de pontos.")
         escreval("------------------------------------")
         escreval("")
         repita
            repita

               Escreval("Digite o primeiro número do intervalo:")
               leia(num1)
               Escreval("Digite o número máximo do intervalo:")
               leia(num2)
            ate num2 > num1
            limpatela

            se (num1 < 0) e (num2 < 0) entao
               escreval("Intervalo inválido! Digite um número inteiro e positivo")
            fimse
         ate (num1 > 0) e (num2 > 0)
         para i de num1 ate num2 faça

            termo <- i * (i + 1) / 2

            Escreval("O ", i, "° número da sequencia triangular é ", num3)
         fimpara
         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela

         //Inicio da opção 09 - Sequência de cubos
      caso 9
         limpatela
         escreval ("------------SEQUÊNCIA DE CUBOS----------")
         escreval ("Uma sequência de cubos é uma progressão de números inteiros")
         escreval ("que são o resultado da elevação de um número inteiro")
         escreval ("ao cubo, ou seja, multiplicando o número")
         escreval ("por ele mesmo três vezes consecutivas.")
         escreval ("----------------------------------------")
         escreval ("")
         repita
            escreval("Digite o primeiro número (deve ser maior que 0): ")
            leia (num1)
            escreval ("Digite o segundo número (deve ser maior que o primeiro): ")
            leia (num2)
         até (num2 > num1) e (num1 > 0)

         escreval ("")
         escreval ("Cubos dentro do intervalo determinado (",num1, " e", num2, "): ")
         escreval ("")

         enquanto (cubo <= num2) faça
            para i de 1 até num2 faça
               cubo <- i * i * i

               se (cubo <= num2) e (cubo >= num1) então
                  escreval (i, " *", i, " *", i, " =", cubo)
                  cont <- cont + 1
               fimse

            fimpara
         fimenquanto

         cubo <- 0

         se (cont = 0) então
            escreval ("Zero. Não há cubos no intervalo informado")
         fimse
         cont <- 0

         escreval ("")
         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela

         //Inicio da opção 10 - Sair do menu
      caso 10
         escreval ("Você escolheu a opção 10 - SAIR")
         limpatela
         //Caso de opção inválida
      outrocaso
         limpatela
         escreval ("Opção inválida!")
         escreval ("Tecle <enter> para voltar ao menu")
         leia (voltar)
         limpatela
      fimescolha

   fimenquanto
Fimalgoritmo
