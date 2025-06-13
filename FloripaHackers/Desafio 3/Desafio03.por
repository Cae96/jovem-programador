programa {
  inclua biblioteca Matematica -->mat //incluindo biblioteca matemática para arrendodar o resultado da media
  funcao inicio() { // Inicio da Operação
    
    cadeia aluno1, aluno2, aluno3 //Declarando variáveis do tipo texto 
    real nota1, nota2, nota3, media1, media2, media3 //Declarando variáveis do tipo inteiro

    escreva("Digite o nome do aluno: ") //Saída de comandos para identificar o primeiro aluno
    leia (aluno1)                       //Entrada de comandos para declarar o aluno
    escreva ("Nota do primeiro Bimestre: ") //Saída de comandos para identificar a primeira nota do bimestre
    leia(nota1)                            //Entrada de comando para declarar a primeira nota 
    escreva("Nota do segundo Bimestre: ")
    leia(nota2)
    escreva("Nota do terceiro Bimestre: ")"\n"
    leia(nota3)
    
    media1 = (nota1 + nota2 + nota3)/3 //Operação de media para o total das notas do aluno

     escreva("\nDigite o nome do aluno: ")
    leia (aluno2)
    escreva ("Nota do primeiro Bimestre: ")
    leia(nota1)
    escreva("Nota do segundo Bimestre: ")
    leia(nota2)
    escreva("Nota do terceiro Bimestre: ")"\n"
    leia(nota3)
    
    media2 = (nota1 + nota2 + nota3)/3

     escreva("\nDigite o nome do aluno: ")
    leia (aluno3)
    escreva ("Nota do primeiro Bimestre: ")
    leia(nota1)
    escreva("Nota do segundo Bimestre: ")
    leia(nota2)
    escreva("Nota do terceiro Bimestre: ")
    leia(nota3)
    
    media3 = (nota1 + nota2 + nota3)/3

  		se              //comando de decisão para declarar se o aluno foi Aprovado ou Reprovado
		(
			media1 >= 6			
		)
		{ 
			escreva("\n",aluno1," aprovado, Parabéns!\n") 
		}
		senao
		{
			escreva("\n",aluno1," reprovado!\n") 
		}		

    	se 
		(
			media2 >= 6			
		)
		{ 
			escreva(aluno2," aprovado, Parabéns!\n") 
		}
		senao
		{
			escreva(aluno2," reprovado!\n") 
		}		

    	se 
		(
			media3 >= 6			
		)
		{ 
			escreva(aluno3," aprovado, Parabéns!\n") 
		}
		senao
		{
			escreva(aluno3," reprovado!\n") 
		}		




    escreva("\nAluno: ", aluno1)  //Finalizando com as declarações de resultado das médias para saber se os alunos foram Aprovados!
    escreva("\nMedia1: ", mat.arredondar(media1, 2))
    escreva("\nAluno: ", aluno2)
    escreva("\nMédia: ", mat.arredondar(media2, 2))
    escreva("\nAluno: ", aluno3)
    escreva("\nMédia: ", mat.arredondar(media3, 2))


  }
}
