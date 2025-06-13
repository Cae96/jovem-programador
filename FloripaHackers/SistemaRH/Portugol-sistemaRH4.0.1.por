programa {
  
  funcao cadeia opcao(cadeia x ){ // Função para tratamento de erro, recebe um valor de entrada e compara, e se modifica o valor se necessário e retorna o valor alterado .

    escolha (x){
      caso "a":
        x = "A"
      pare
      caso "b":
       x = "B"
      pare
      caso "c":
       x = "C"
      pare
      caso "d":
       x = "D"
      caso contrario:
        limpa()
        escreva("Opção incorreta!! Digite novamente.\n")
        
    }
    retorne x
  }
  // Inicio do Sistema RH 
  funcao inicio() {
    // definição de Variáveis
    cadeia nome,nivelIngles,respostaTeste1,respostaTeste2,var
    inteiro pontos = 0

    //Estrutura que define o nome do usuário
    escreva("==== SISRH (VAGA - DESENVOLVEDOR) ====\n")

    escreva("\nDigite seu nome: ") 
    leia(nome)
    limpa()
    escreva("Olá, "+ nome + " em seguida vamos iniciar nosso teste, Aperte 'ENTER' para iniciar!")
    leia(var)
    limpa()
    

    // inicio dos questionário, com Loop de repetição para tratar erro caso exista entradas inválidas
    
    escreva("==== Questionário de Perfil ====\n")
    faca{
    escreva("\nQual o nivel de inglês? (Eliminatória)\n")
    
    escreva("\nA - Básico\n")
    escreva("B - Intermediário\n")
    escreva("C - Avançado\n")
    escreva("D - Não tem conhecimento\n")
    escreva("\nDigite a opção( A, B, C, D): ")
    leia(nivelIngles) // lê a entrada do usuário
    
    nivelIngles = opcao(nivelIngles) // ultilizando a função para tratar possíveis erros de entrada do Usuário.
    
    }enquanto(nivelIngles != "A" e nivelIngles != "B" e nivelIngles != "C" e nivelIngles != "D")// Condição do loop de repetição

    se (nivelIngles == "A" ou nivelIngles == "D"){ // Verifica a resposta do usuário, e define a próximo caminho 
      limpa()

    } senao { // Caminho caso a condiçao seja False.
      limpa()
      escreva("Parabéns, " + nome +"!!! Passou para próxima fase (Aperte 'Enter' para continuar.)\n") // resposta para usuário caso ele passe de fase 
      leia(var)
      limpa()
      
      // Inicio da segunda fase, Questionário Teste de Lógica 
      
      faca {
      escreva("\n===== Teste de Lógica =====\n") // teste 1 de lógica
      escreva("\n(Teste 1)\n")
      escreva("\nEm um edifício comercial, há sete escritórios para serem alugados, todos no mesmo lado de um corredor. De quantos modos diferentes, três estarão abertos e quatro fechados? (3 pontos)\n")
      escreva("\nA - 35\n")
      escreva("B - 45\n")
      escreva("C - 30\n")
      escreva("D - Nenhuma das Alternativas\n")
      escreva("\nDigite a opção( A, B, C, D): ")
      leia(respostaTeste1)// lê a entrada do usuário para o primeiro Teste de Lógica 
      limpa()

      respostaTeste1 = opcao(respostaTeste1) // Tratamento de erros, com uso da função

      }enquanto(respostaTeste1 != "A" e respostaTeste1 != "B" e respostaTeste1 != "C" e respostaTeste1 != "D")// Condição do loop de repetição
      limpa()

      // teste 2 de lógica
      
      faca{
      escreva("\n===== Teste de Lógica =====\n") 
      escreva("\n(Teste 2)\n")
      escreva("\nNasci 11 anos depois do meu irmão. Nossa mãe, que está com 39 anos, é seis anos mais nova que meu pai. Se o primeiro filho do meu pai nasceu em seu aniversário de 26 anos, atualmente tenho. (5 pontos)\n")
      escreva("\nA - 10\n")
      escreva("B - 8\n")
      escreva("C - 12\n")
      escreva("D - Nenhuma das Alternativas\n")
      escreva("\nDigite a opção( A, B, C, D): ")
      leia(respostaTeste2) // lê a entrada do usuário para resposta do segundo questionário de lógica

      respostaTeste2 = opcao(respostaTeste2) // Tratamento de erro com a função

      }enquanto(respostaTeste2 != "A" e respostaTeste2 != "B" e respostaTeste2 != "C" e respostaTeste2 != "D")
      limpa()

      //Estrutura Condicicional que calcula a pontuação do usuário
      se (respostaTeste1 == "A"){// condição para verificar a resposta do Usuário para a primeira questão de lógica , se for verdadeira soma-se 3 pontos
        pontos+=3 // somando 3 pontos
      } 

      se (respostaTeste2 == "B"){// condição para verificar a resposta do Usuário para segunda questão de lógica, se for verdadeira soma-se 5 pontos
        pontos+=5 //somando 5 pontos
      } 
    }
     // Estrutura Condicional, Que verifica o valor de pontos, se é maior que 3 
    se (pontos >= 3){ 
      escreva("Próxima etapa: Entrevista\n")// Resposta caso a condição seja verdadeira 
    } senao {// Resposta caso a condição seja Falsa 
      escreva(nome + ",\n")
      escreva("Agradeço a sua participação, infelizmente o seu perfil não se adequa para essa vaga, mas manteremos seu currículo em nosso banco de Talentos. Siga nossas redes e fique atento as novas oportunidades! \n") 
    }
  } 
}

