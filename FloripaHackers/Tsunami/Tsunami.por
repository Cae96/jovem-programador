programa
{
	inclua biblioteca Util 
	cadeia opcaoA, opcaoB, consequenciaA, consequenciaB
	funcao opcao()
	{
		inteiro opcao
		escreva("O que você faz?\n")
		escreva("1) ",opcaoA)
		escreva("2) ",opcaoB)


		escreva("Escolha uma opção: ")
		leia(opcao)

		limpa()

		escolha (opcao)	
		{
			caso 1: 
		 		escreva (consequenciaA)
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 2: 
		 		escreva (consequenciaB)
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
		 		escreva ("Opção Inválida !")
		}

		escreva("\n")
	}

	funcao inicio(){

		escreva("Você está em casa quando de repente recebe uma mensagem de alerta da defesa civil")
		Util.aguarde(2000) // Aguarda (2 segundos)
		
		alerta()

		
		opcaoA = "Vai dormir, pois pensa que é so mais um alerta idiota da defesa civil\n"
		opcaoB = "Decide pegar as coisas mais importantes com você e sair de casa\n"
		consequenciaA = ""
		consequenciaA = ""
		opcao()



	}

	funcao alerta() 
	{
		inteiro contador = 7
		
		enquanto (contador > 0)
		{
			limpa()
		  	
		  	contador = contador - 1
		  	Util.aguarde(500) // Aguarda 500 millisegundos (0.5 segundo)
		escreva("!!!Alerta URGENTE!!!, Tsunami a caminho de Florianópolis, deixe a ilha ou procure um abrigo em lugar elevado!")
				Util.aguarde(500) // Aguarda 500 millisegundos (0.5 segundo)
		escreva("\nEncontre um ponto seguro e acione a defesa civil: 5555")
				Util.aguarde(500) // Aguarda 500 millisegundos (0.5 segundo)
		}

		limpa()
	}
}

