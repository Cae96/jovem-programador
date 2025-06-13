programa
{
	inclua biblioteca Util --> u
	inteiro contador = 0

  funcao animacao_baseball(){
    enquanto (contador < 50){
      limpa()
      
      // Pessoa caída no chão (sempre no mesmo lugar)
      //escreva("                   x___x                \n")
      //escreva("                    /|\\                 \n")
      //escreva("                     |                  \n")
      //escreva("                    / \\                 \n")
      
      // Efeitos de impacto (alternam conforme o contador)
      se (contador % 15 < 5) {
        escreva("                   *POW*                \n")
      } senao se (contador % 15 < 10) {
        escreva("                   *BAM*                \n")
      } senao {
        escreva("                  *CRACK*               \n")
      }
      escreva("\n")
      
      // Pessoa 1 com taco (à esquerda)
      
      
      // Animação do taco da pessoa 1
      se (contador % 10 < 5) {
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
      contador++
    }
  }

  funcao inicio(){
    animacao_baseball()
  }
}