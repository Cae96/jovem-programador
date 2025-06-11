programa {

  inclua biblioteca Util --> u
  inteiro cena = 1,resposta, i =1, espaco, passos = 50, contador,codigo = u.sorteia(0000,9999)
  caracter enter


  funcao jogo( inteiro cena){
    
    escolha (cena){

      caso 1:
        escreva("Você está em casa quando de repente recebe uma mensagem de alerta da defesa civil! ")
		   u.aguarde(3000) // Aguarda (2 segundos)
		
		   alerta()

        escreva("O que você faz?\n")
        escreva("1 - Dorme\n")
        escreva("2 - Resolve agilizar as coisas e sair de casa\n")
        escreva("Resposta: ")
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
        escreva("2 - Continua dormindo\n")
        escreva("Resposta: ")
        leia(resposta)
        limpa()
        
        se (resposta ==1){
          cena = 3
          jogo(cena)
        }senao{
          cena = 19
          jogo(cena)
        }
        pare

      caso 3:
        escreva("Ao levantar você percebe que sua casa havia sido roubada e está pegando fogo! o que voce faz ?\n")
        escreva("1 - Decide apagar o fogo\n")
        escreva("2 - Decide pegar as coisas mais importantes e sair de casa\n")
        escreva("Resposta: ")
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
        escreva("2 - Começa a rezar e pedir por salvação\n")
        escreva("Resposta: ")
        leia(resposta)
        limpa()
        cena = 19
        jogo(cena)
        
        pare

      caso 5:
        escreva("Na saída de casa Pensa na distância que vai percorrer ! o que voce escolhe ?\n")
        escreva("1 - Escolhe a bicicleta\n")
        escreva("2 - Escolhe o carro\n")
        escreva("Resposta: ")
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
        escreva("2 - Resolve continuar correndo para dar tempo de se salvar\n")
        escreva("Resposta: ")
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
        escreva("Com muita velocidade, se desequilibra, atropela uma pessoa e é arremessado da moto\n")
        u.aguarde(2000)
        limpa()
        cena = 8
        jogo(cena)
        pare
      caso 8:   // Morte causada por acidente de moto
        animacao_moto_caindo()
        pare
      caso 9:
        escreva(" Pega um congestionamento e fica preso no trânsito\n")
        escreva("1 - Espera impaciente no carro\n")
        escreva("2 - Decide abandonar o carro e seguir a pé\n")
        escreva("Resposta: ")
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
        escreva("2 - Derrubar a pessoa e roubar sua bicicleta\n")
        escreva("Resposta: ")
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
        escreva("\n1- Digite o código de resgate: ")
        escreva("\nresposta: ")
        leia(resposta)
 
        para(contador = 1; contador<= 3; contador ++){
 
          se (resposta == codigo){
              escreva ("\nCorreto!\n")
              cena = 13
              jogo(cena)

              pare
           
            }senao{
              se(contador == 3){

                escreva("Você não consegue resgate a Tempo, cidade inundada!!!")
                u.aguarde(2000)
                cena = 19
                jogo(cena)
                pare
     
              }senao{
                  se(contador == 2){
                    escreva("Código incorreto!")
                    escreva("Atenção última tentativa!")
                     escreva("\nDigite novamente: ")
                      leia(resposta)
     
                  } senao{
                    escreva("Código incorreto!")
                    escreva("\nDigite novamente: ")
                    leia(resposta)
               
                  }
           
              }
           
           
            }
        }
        
        
        pare
      caso 13:   // FINAL Vitória
        escreva("Você consegue entrar em contato com o resgate\n")
        u.aguarde(1500)
        limpa()
        animacao_resgate_helicoptero()
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
        cena = 19
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
        escreva("Eles estão armados e você descobre que não é um bom lutador! \n")
        u.aguarde(2000)
        animacao_baseball()
       
      pare
      caso 18: // FINAL Alternativo
        escreva("Ele não te perdoa e decide te capturar, você passa o resto da sua vida vivendo como um escravo numa ilha isolada do resto do mundo. \n")
        escreva("Ao menos você está vivo \n")
        escreva("END OF THE GAME? - wait for our new release in 202...")
      pare  

      caso 19:
      tsunami()
      pare


    }
  
  }
  funcao inicio() {  // PARTE principal do codigo (ordem das cenas)

    desenhar_ilha()   // Tela inicial do jogo
    escreva("TSUNAMI EM FLORIPA \n")
    escreva("developed by FloripaHackers ™\n")
    leia(enter)
    limpa()

    jogo(cena) // INICIO do jogo
    
  }

  funcao desenhar_ilha() {

  
  escreva("⠀⠀  ⠈⠉⠛⢷⣦⡀⠀⣀⣠⣤⠤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n")
  escreva("⠀⠀⠀⠀⠀⠀⠀⣀⣻⣿⣿⣿⣋⣀⡀⠀⠀⢀⣠⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n")
  escreva("⠀⠀⣠⠾⠛⠛⢻⣿⣿⣿⠟⠛⠛⠓⠢⠀⠀⠉⢿⣿⣆⣀⣠⣤⣀⣀⠀⠀⠀⠀⠀\n")
  escreva("⠀⠘⠁⠀⠀⣰⡿⠛⠿⠿⣧⡀⠀⠀⢀⣤⣤⣤⣼⣿⣿⣿⡿⠟⠋⠉⠉⠀⠀⠀⠀\n")
  escreva("⠀⠀⠀⠀⠠⠋⠀⠀⠀⠀⠘⣷⡀⠀⠀⠀⠀⠹⣿⣿⣿⠟⠻⢶⣄⠀⠀⠀⠀⠀⠀\n")
  escreva("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀\n")
  escreva("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n")
  escreva("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n")
  escreva("⣤⣤⣤⣤⣤⣤⡤⠄⠀⠀⣀⡀⢸⡇⢠⣤⣁⣀⠀⠀⠠⢤⣤⣤⣤⣤⣤⣤⠀⠀⠀\n")
  escreva("⠀⠀⠀⠀⠀⠀⣀⣤⣶⣾⣿⣿⣷⣤⣤⣾⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀\n")
  escreva("⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀\n")
  escreva("⠀⠼⠿⣿⣿⠿⠛⠉⠉⠉⠙⠛⠿⣿⣿⠿⠛⠛⠛⠛⠿⢿⣿⣿⠿⠿⠇⠀⠀⠀⠀\n")
  escreva("⢶⣤⣀⣀⣠⣴⠶⠛⠋⠙⠻⣦⣄⣀⣀⣠⣤⣴⠶⠶⣦⣄⣀⣀⣠⣤⣤⡶⠀⠀⠀\n")
  escreva("⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀\n")


  }

  funcao alerta() //FUNCAO da mensagem de alerta (aparece/desaparece)
	{
		inteiro contador = 7
		
		enquanto (contador > 0)
		{
			limpa()
		  	
		  	contador = contador - 1
		  	u.aguarde(500) // Aguarda 500 millisegundos (0.5 segundo)
		escreva("!!!Alerta URGENTE!!!, Tsunami a caminho de Florianópolis, deixe a ilha ou procure um abrigo em lugar elevado!")
				u.aguarde(500) // Aguarda 500 millisegundos (0.5 segundo)
		escreva("\nEncontre um ponto seguro e utilize o código de resgaste: ", codigo)
				u.aguarde(500) // Aguarda 500 millisegundos (0.5 segundo)
		}

		limpa()
	}

  funcao tsunami(){



    enquanto (passos > 0){
    limpa()
    espaco = passos
    escreva("  ⠈⠉⠛⢷⣦⡀⠀⣀⣠⣤⠤⠄")           //Linha 1 Palmeira
    distancia()
    escreva("          ⣀⣤⣶⣾⣿⣿⣷⣦⣄\n")         // Linha 1 Onda
    escreva("⠀⠀⠀⠀⠀⠀⣀⣻⣿⣿⣿⣋⣀⡀⠀⠀⢀⣠⣤⣄")   //Linha 2 Palmeira
    distancia()
    escreva("     ⠉⢿⣿⣿⣿⣿⣿⣦⣄⠀\n")          // Linha 2 Onda
    escreva("⠀⠀⣠⠾⠛⠛⢻⣿⣿⣿⠟⠛⠛⠓⠢⠀⠀⠉⢿⣿⣆⣀⣠⣤⣀⣀")   //Linha 3 Palmeira
    distancia()
    escreva("⠉⢿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀\n")       //Linha 3 Onda
    escreva("⠀⠘⠁⠀⠀⣰⡿⠛⠿⠿⣧⡀⠀⠀⢀⣤⣤⣤⣼⣿⣿⣿⡿⠟⠋⠉⠉")  //Linha 4 Palmeira
    distancia()
    escreva("⠉⢿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀\n") //Linha 4 Onda
    escreva("⠀⠀⠀⠀⠠⠋⠀⠀⠀⠀⠘⣷⡀⠀⠀⠀⠀⠹⣿⣿⣿⠟⠻⢶⣄")    //Linha 5 Palmeira
    distancia()
    escreva("       ⢿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄ \n") // Linha 5 Onda
    escreva("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠈")    //Linha 6 Palmeira
    distancia()
    escreva("         ⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷\n")    // Linha 6 Onda
    escreva("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠀⠀⢠⡟")    //Linha 7 Palmeira
    distancia()
    escreva("                 ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄\n")  // Linha 7 Onda
    escreva("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")    //Linha 8 Palmeira
    distancia()
    escreva(" ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄\n") // Linha 8 Onda
    escreva("⣤⣤⣤⣤⣤⣤⡤⠄⠀⠀⣀⡀⢸⡇⢠⣤⣁⣀⠀⠀⠠⢤⣤⣤⣤⣤⣤⣤")    //Linha 9 Palmeira
    distancia()
    escreva("⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀\n") // Linha 9 Onda
    escreva("⠀⠀⠀⠀⠀⠀⣀⣤⣶⣾⣿⣿⣷⣤⣤⣾⣿⣿⣿⣿⣷⣶⣤⣀")    //Linha 10 Palmeira
    distancia()
    escreva("     ⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄\n") // Linha 10 Onda
    escreva("⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄")    //Linha 11 Palmeira
    distancia()
    escreva("⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄\n")  //Linha 11 Onda
    escreva("⠀⠼⠿⣿⣿⠿⠛⠉⠉⠉⠙⠛⠿⣿⣿⠿⠛⠛⠛⠛⠿⢿⣿⣿⠿⠿⠇")    //Linha 12 Palmeira
    distancia()
    escreva("⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀\n")  //Linha 12 Onda
    escreva("⢶⣤⣀⣀⣠⣴⠶⠛⠋⠙⠻⣦⣄⣀⣀⣠⣤⣴⠶⠶⣦⣄⣀⣀⣠⣤⣤⡶")    //Linha 13 Palmeira
    distancia()
    escreva("⣠⣴⠶⠛⠋⠙⠻⣦⣄⣀⣀⣠⣤⣴⠶⠶⣦⣄⣀⣀⣠⣤⣤⡶")
    escreva("⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀")    //Linha 14 Palmeira

    u.aguarde(350) // Tempo entre cada frame
    passos--
    
    }
    escreva("\n\n\n!!!GAME OVER!!!")
  }

  funcao distancia(){
    enquanto (i < espaco)
      {
      escreva(" ")
      espaco--
      }
      espaco = passos
  }

   funcao animacao_baseball(){

    inteiro contador1 = 0

    enquanto (contador1 < 50){
      limpa()
      
      // Pessoa caída no chão (sempre no mesmo lugar)
      //escreva("                   x___x                \n")
      //escreva("                    /|\\                 \n")
      //escreva("                     |                  \n")
      //escreva("                    / \\                 \n")
      
      // Efeitos de impacto (alternam conforme o contador)
      se (contador1 % 15 < 5) {
        escreva("                   *POW*                \n")
      } senao se (contador1 % 15 < 10) {
        escreva("                   *BAM*                \n")
      } senao {
        escreva("                  *CRACK*               \n")
      }
      escreva("\n")
      
      // Pessoa 1 com taco (à esquerda)
      
      
      // Animação do taco da pessoa 1
      se (contador1 % 10 < 5) {
        // Taco em posição prepara
        escreva("       |   ") // Agressor 1
        escreva("             x___x       ")
        escreva("          \n") // Agressor 2
        escreva("    O  |               ")  // Agressor 1
        escreva("  /|\\     ")
        escreva("          O           \n")  // Agressor 2
        escreva("   /|\\ |              ") // Agressor 1
        escreva("    |        ")
        escreva("______ /|\\               \n") // Agressor 2
        escreva("    |                 ") // Agressor 1
        escreva("    |            ")
        escreva("    |                 \n") // Agressor 2
        escreva("   / \\               ")  // Agressor 1
        escreva("    / \\           ")
        escreva("   / \\               \n")  // Agressor 2
      } senao {
        // Taco em posição bate
                escreva("          ") // Agressor 1
        escreva("              x___x       ")
        escreva("    |      \n") // Agressor 2
        escreva("    O                 ")  // Agressor 1
        escreva("   /|\\     ")
        escreva("       |  O           \n")  // Agressor 2
        escreva("   /|\\ _____          ") // Agressor 1
        escreva("    |        ")
        escreva("     | /|\\               \n") // Agressor 2
        escreva("    |                 ") // Agressor 1
        escreva("    |            ")
        escreva("    |                 \n") // Agressor 2
        escreva("   / \\               ")  // Agressor 1
        escreva("    / \\           ")
        escreva("   / \\               \n")  // Agressor 2
      }
      
      escreva("\n")
                
      u.aguarde(300)
      contador1++
    }
    escreva("\n!!!GAME OVER!!!")
  }

funcao animacao_moto_caindo(){

    inteiro contador2 = 0
    enquanto (contador2 < 50){
      limpa()
      
      // Diferentes fases da queda da moto
      se (contador2 < 10) {
        // Fase 1: Moto andando normalmente
        escreva("                                      \n")
        escreva("           o                           \n")
        escreva("          /|\\ /                        \n")
        escreva("         __ \\ |                        \n")
        escreva("      __|__|_|_                        \n")
        escreva("     (o)    (o)\\                      \n")
        escreva("                                      \n")
      } 
      senao se (contador2 < 18) {
        // Fase 2: Moto começando a inclinar
        escreva("                                      \n")
        escreva("           o         _______                  \n")
        escreva("          /|\\  /   |       |              \n")
        escreva("         __ \\  |   |       |              \n")
        escreva("      __|__| |\\_|  |       |               \n")
        escreva("     (o)    (o)\\   |       |            \n")
        escreva("                                      \n")
      }
      senao se (contador2 < 27) {
        // Fase 3: Moto inclinando mais, pessoa começando a cair
        escreva("                   *POW*                   \n")
        escreva("           o       _______                  \n")
        escreva("          /|\\  / |       |              \n")
        escreva("         __ \\  | |       |              \n")
        escreva("      __|__| |\\_||       |               \n")
        escreva("     (o)    (o)\\ |       |            \n")
        escreva("                                      \n")
      }
      senao se (contador2 < 35) {
        // Fase 4: Pessoa caindo da moto
        escreva("                   *POW*                   \n")
        escreva("                   _______        >-->o          \n")
        escreva("            \\    |       |              \n")
        escreva("         __  \\   |       |              \n")
        escreva("      __|__|_||   |       |        \n")
        escreva("     (o)    (o)\\ |       |            \n")
        escreva("                                      \n")
      }
      senao {
        // Fase 5: Pessoa caída no chão e moto tombada
      escreva("                   x___x                \n")
      escreva("                    /|\\                 \n")
      escreva("                     |                  \n")
      escreva("                    / \\                 \n")
      escreva("!!!GAME OVER!!!")
        
        // Efeitos de impacto
        se (contador2 % 5 == 0) {
          escreva("\n        *CRASH*                      \n")
        } senao {
          escreva("\n        *OUCH!*                      \n")
        }
      }
      
      u.aguarde(300)
      contador2++
    }
  }

  funcao animacao_resgate_helicoptero()
	{
		inteiro quadro = 0
		inteiro total_quadros = 15 // Total steps in the animation sequence

		enquanto (quadro < total_quadros)
		{
			limpa()

			// Top water/sky area
			escreva("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n") 

			// Animation frames based on 'quadro' (frame number)
			se (quadro < 2) { // Frame 1-2: Person stranded alone
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("               \o/                                   \n")
				escreva("              /|\\                                  \n") // Doubled backslash
				escreva("              / \\                                   \n") // Doubled backslash
				escreva("             -----                                   \n") 
			} senao se (quadro < 4) { // Frame 3-4: Helicopter appears far
				escreva("                      __|__                          \n")
				escreva("            --@--@-- /_o_\\ --@--@--                   \n") // Doubled backslash
				escreva("                    \\_____/                          \n") // Doubled backslash
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("               \o/                                   \n")
				escreva("              /|\\                                  \n") // Doubled backslash
				escreva("              / \\                                   \n") // Doubled backslash
				escreva("             -----                                   \n") 
			} senao se (quadro < 6) { // Frame 5-6: Helicopter closer
				escreva("                                                     \n")
				escreva("                  __|__                              \n")
				escreva("            --@-- /_o_\\ --@--                         \n") // Doubled backslash
				escreva("                 \\_____/                              \n") // Doubled backslash
				escreva("                                                     \n")
				escreva("               \o/                                   \n")
				escreva("              /|\\                                  \n") // Doubled backslash
				escreva("              / \\                                   \n") // Doubled backslash
				escreva("             -----                                   \n") 
			} senao se (quadro < 8) { // Frame 7-8: Helicopter lowers rope
				escreva("                                                     \n")
				escreva("                  __|__                              \n")
				escreva("            --@-- /_o_\\ --@--                         \n") // Doubled backslash
				escreva("                 \\_____/                              \n") // Doubled backslash
				escreva("                   |                                 \n")
				escreva("                   |                                 \n")
				escreva("                   |                                 \n")
				escreva("               \o/                                   \n")
				escreva("              /|\\                                  \n") // Doubled backslash
				escreva("              / \\                                   \n") // Doubled backslash
				escreva("             -----                                   \n")
			} senao se (quadro < 10) { // Frame 9-10: Person grabs rope
				escreva("                                                     \n")
				escreva("                  __|__                              \n")
				escreva("            --@-- /_o_\\ --@--                         \n") // Doubled backslash
				escreva("                 \\_____/                              \n") // Doubled backslash
				escreva("                   |                                 \n")
				escreva("                   |                                 \n")
				escreva("                   \o/                                \n") 
				escreva("                  /|\\                                \n") // Doubled backslash
				escreva("                  / \\                                \n") // Doubled backslash
				escreva("             -----                                   \n") 
			} senao se (quadro < 12) { // Frame 11-12: Person being lifted
				escreva("                                                     \n")
				escreva("                  __|__                              \n")
				escreva("            --@-- /_o_\\ --@--                         \n") // Doubled backslash
				escreva("                 \\_____/                              \n") // Doubled backslash
				escreva("                   |                                 \n")
				escreva("                   \o/                                \n") 
				escreva("                  /|\\                                \n") // Doubled backslash
				escreva("                  / \\                                \n") // Doubled backslash
				escreva("                                                    \n")
				escreva("             -----                                   \n") 
			} senao se (quadro < 14) { // Frame 13-14: Helicopter ascending/moving away with person
				escreva("                      __|__                          \n")
				escreva("            --@--@-- /_o_\\ --@--@--                   \n") // Doubled backslash
				escreva("                    \\_o_/                           \n") // Person inside/attached // Doubled backslash
				escreva("                     /|\\                            \n") // Doubled backslash
				escreva("                     / \\                            \n") // Doubled backslash
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("             -----                                   \n") // Base remains
			} senao { // Frame 15: Final message displayed within the loop
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("            *** RESCUED! ***                         \n")
				escreva("           *** HAPPY END! ***                        \n")
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("                                                     \n")
				escreva("             -----                                   \n")
			}

			// Bottom water area
			escreva("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
			escreva("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
			escreva("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n") // Frame bottom border

			u.aguarde(500) // 500ms delay between frames
			quadro++
		}

		// Hold the final message frame for a bit longer
		se (quadro >= total_quadros) {
		    u.aguarde(2000) // Wait 2 seconds on the final frame
		}
	}

	

}





  
  
    
     
     
     
     

     
       
 

 

 

 