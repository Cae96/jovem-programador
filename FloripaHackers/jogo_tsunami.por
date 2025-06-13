programa {

  inteiro cena = 1,resposta


  funcao jogo( inteiro cena){
    
    escolha (cena){

      caso 1:
        escreva("Um alerta de tsunami em floripa. Código de Resgate 1234 ! o que voce faz ?\n")
        escreva("1 - dorme\n")
        escreva("2- resolve agilizar as coisas e sair de casa\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        
        se (resposta ==1){
          cena = 2
          jogo(cena)
        }senao{
          cena = 5
          jogo(cena)
        }
        pare

      caso 2:
        escreva("Voce dormiu, e recebeu 1 hr depois um novo alerta!  o que voce faz ?\n")
        escreva("1 - Voce acorda\n")
        escreva("2- continua dormindo\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        
        se (resposta ==1){
          cena = 3
          jogo(cena)
        }senao{
          cena = 8
          jogo(cena)
        }
        pare

      caso 3:
        escreva("Ao levantar você percebe que sua casa havia sido roubada e está pegando fogo! o que voce faz ?\n")
        escreva("1 - Decide apagar o fogo\n")
        escreva("2- Decide pegar as coisas mais importantes e sair de casa\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        
        se (resposta ==1){
          cena = 4
          jogo(cena)
        }senao{
          cena = 5
          jogo(cena)
        }
        pare

      caso 4:
        escreva("Você consegue apagar o fogo, mas ao olhara para a fora você percebe que a água ja atingiu a casa dos seus vizinhos! o que voce faz ?\n")
        escreva("1 - Decide sair correndo para o alto do morro mais próximo\n")
        escreva("2- Começa a rezar e pedir por salvação\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        cena = 19
        jogo(cena)
        
        pare

      caso 5:
        escreva("Na saída de casa Pensa na distância que vai percorrer ! o que voce escolhe ?\n")
        escreva("1 - Escolhe a bicicleta\n")
        escreva("2- Escolhe o carro\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        se (resposta ==1){
          cena = 6
          jogo(cena)
        }senao{
          cena = 9
          jogo(cena)
        }
        pare

      caso 6:
        escreva("Pedala o mais rápido, mas é atacado e roubam sua bicicleta!\n")
        escreva("1 - Começa uma briga e rouba uma moto\n")
        escreva("2- Resolve continuar correndo para dar tempo de se salvar\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        
        se (resposta ==1){
          cena = 7
          jogo(cena)
        }senao{
          cena = 11
          jogo(cena)
        }
        pare

      caso 7:
        escreva("Com muita velocidade, se desequilibra, atropela uma pessoa. É arremessado da moto\n")
        limpa()
        cena = 8
        jogo(cena)
        pare
      caso 8:
        escreva("MORREU!!")
        pare
      caso 9:
        escreva(" Pega um congestionamento e fica preso no trânsito\n")
        escreva("1 - Espera impaciente no carro\n")
        escreva("2- Decide abandonar o carro e seguir a pé\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        se (resposta == 1){
          cena = 19 //MORTE
          jogo(cena)
        }senao{
          cena = 10
          jogo(cena)
        }
        pare
      caso 10:
        escreva(" De repente vê uma pessoa vindo com uma bicicleta\n")
        escreva("1 - Decide continuar correndo a pé\n")
        escreva("2- Derrubar a pessoa e roubar sua bicicleta\n")
        escreva("resposta")
        leia(resposta)
        limpa()
        se (resposta == 1){
          cena = 11
          jogo(cena)
        }senao{
          cena = 14
          jogo(cena)
        }
        pare

      caso 11:
        escreva("No caminho encontra uma amiga de moto, a qual oferece uma carona até o Resgate...")
        escreva("\nChegando próximo a saída da cidade, acontece um acidente. Eles caem e ela se fere gravemente, sem poder andar pede que ele continue e se salve.")
        escreva("\nPassando por algumas confusões na saída da cidade, consegue ser rápido e correr para um lugar seguro e entrar em contato com o resgate")
        escreva("1- Digita o código incorreto")
        escreva("2- Digita o código correto")
        escreva("resposta")
        leia(resposta)
        se (resposta == 1){
          cena = 19 //MORTE
          jogo(cena)
        }senao{
          cena = 13
          jogo(cena)
        }
        pare
      caso 13:   // FINAL Vitória
        escreva("Você consegue entrar em contato com o resgate\n")
        // Esta é a opcao que ganha o jogo, poderiamos adicionar uma animacao ou os creditos
        pare
      caso 14:
        escreva("Você derruba a pessoa da bicicleta, rouba a bicicleta e pedala em direção a ponte. Ao chegar na Beira Mar você percebe que as 3 pontes caíram. \n")
        escreva("O que você faz? \n")
        escreva("1 - Decide pedalar o mais rápido possível até o Morro da Cruz\n")
        escreva("2 - Decide largar a bicicleta e atravessar nadando\n")
        escreva("Resposta: ")
        leia(resposta)
        limpa()
        se (resposta == 1){
        cena = 15
        jogo(cena)
 
      }senao{
        cena = 8
        jogo(cena)
      }
      pare
      caso 15:
        escreva("Ao chegar na metade do morro da Cruz, percebe que a água já havia inundado todos os pontos mais baixos da ilha. \n")
        escreva("O que você faz? \n")
        escreva("1 - Continúa pedalando mesmo que a subida seja muito íngrime \n")
        escreva("2 - Abandona a bicicleta e segue o caminho correndo \n")
        escreva("Resposta: ")
        leia(resposta)
        limpa()
        se (resposta == 1){
        cena = 19
        jogo(cena)
 
      }senao{
        cena = 16
        jogo(cena)
      }
      pare
      caso 16:
        escreva("Ao chegar no topo do morro, você encontra a pessoa que você derrubou da bicicleta com mais 3 amigos \n")
        escreva("O que você faz? \n")
        escreva("1 - Decide brigar com eles \n")
        escreva("2 - Pede desculpas \n")
        escreva("Resposta: ")
        leia(resposta)
        limpa()
        se (resposta == 1){
        cena = 17
        jogo(cena)
 
      }senao{
        cena = 18
        jogo(cena)
      }

      pare

      caso 17: // FINAL Derrota
        escreva("Ao chegar no topo do morro, você encontra a pessoa que você derrubou da bicicleta com mais 3 amigos \n")
       
      pare
      caso 18: // FINAL Alternativo
        escreva("Ao chegar no topo do morro, você encontra a pessoa que você derrubou da bicicleta com mais 3 amigos \n")

      pare  


    }
  
  }
  funcao inicio() {

    jogo(cena)
    
  }
}




  
  
    
     
     
     
     

     
       
 

 

 

 
