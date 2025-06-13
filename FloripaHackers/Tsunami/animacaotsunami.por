programa
{
	inclua biblioteca Util --> u
	inteiro espaco,passos=50, i = 1


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

    u.aguarde(0)
    passos--
    
    }

  }

  funcao inicio(){
  
  tsunami()

  }

funcao distancia(){
  enquanto (i < espaco)
    {
    escreva(" ")
    espaco--
    }
    espaco = passos
}
}