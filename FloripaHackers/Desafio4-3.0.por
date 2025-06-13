programa
{
	inclua biblioteca Util --> util 									// Incluindo a bilbioteca para vetores
	inclua biblioteca Matematica --> mat 							// Incluindo biblioteca mat, para poder arredondar
	
	funcao inicio() // Inicio do sistema de médias 
	{
		cadeia vetor[10] 		// variável vetor que armazenará o nome dos alunos
		real media [10], nota = 0, soma = 0, media1 = 0, mediafinal = 0, somatotal = 0		// variáveis do tipo real, que serão utilizadas para armazenar e calcular as medias
		inteiro contador, alunos		// Contador auxiliar para o vetor

		escreva("Quantos alunos existe na turma? ") // Entrada do usuário para quantidade de alunos 
		leia (alunos) // Atribuindo a entrada do usuário a variável

		// preenche o vetor
		para (inteiro posicao = 0; posicao < alunos; posicao++)		// Estrutura de repetição
		{
			escreva("Digite o nome do aluno: ") // Entrada do usuário para obter o nome do aluno 
			leia(vetor[posicao]) // Atribuição da entrada ao vetor

				para (inteiro contador = 0; contador < 3; contador++) // Estrutura de repetição para definir notas 
				{
					escreva ("Digite a nota ",contador + 1,": ") // Entrada do usuário para obter os valores da nota
					leia (nota) // Atribuição da entrada do usuário a variável nota 
					soma = soma + nota // somando o valor das notas e atribuindo na variável nota
				}
			media1 = (soma / 3) // Definindo a média por aluno, dividindo a soma por 3 
			media[posicao] = media1 // Atribuindo a média do aluno ao vetor de médias
			media1 = 0 // Resetando o valor de média para próxima interação 
			somatotal = somatotal + soma // Somando o valor total de todas as notas 
			soma = 0 // redefenindo a variável soma para 0 , para próxima interação
		}
		limpa() // Função para limpar as saídas 
		para (inteiro posicao = 0; posicao < alunos; posicao++) //Estrutura de repetição para saídas na tela 
		{
			se (media[posicao] < 7) // Estrutura condicional para vereficar se o valor da média é menor que 7 
			{
				escreva("\n O aluno ",vetor[posicao]," teve a média: ", mat.arredondar(media[posicao],2),"   --> situação final REPROVADO") // Saída do resultado do programa, se atender a condição 
			}
		senao // Estrutura condicional se caso nao atenda a primeira condição 
		{
			escreva("\n O aluno ",vetor[posicao]," teve a média: ", mat.arredondar(media[posicao],2),"   --> situação final APROVADO") // Saída do resultado do programa, se a primeira condição nao for atendida
		}
		}
		mediafinal = somatotal / (alunos * 3) // Cáculo da média geral da turma, que é a soma total de todas a notas dividido pela mutiplicação do números de alunos por 3 e atribuido o resultado a variável
		escreva("\n A media final da turma foi: ", mat.arredondar(mediafinal,2)) // Saída do resultado da média da turma 
	}
}

