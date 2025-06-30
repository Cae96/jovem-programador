programa
{

  inclua biblioteca Util  // importando funcao util
  inclua biblioteca Texto // importando funcao texto

	cadeia usuario,senha
	inteiro infinito = 1
	cadeia bancoUsuario[100][4]
	inteiro tamanho = 100 // Deve ser colocado o mesmo numero de linhas que o vetor bancoUsuario

	inteiro posicaoAuxiliar = 0

	funcao criarUsuario(cadeia nome, cadeia password, cadeia tipo, cadeia email)
	{
		 posicaoAuxiliar = localizacao()
		 bancoUsuario[posicaoAuxiliar][0] = nome
		 bancoUsuario[posicaoAuxiliar][1] = password
		 bancoUsuario[posicaoAuxiliar][2] = tipo
		 bancoUsuario[posicaoAuxiliar][3] = email
	}
	

	funcao inicio()
	{		
		criarUsuario("andre", "1234", "1", "andre@outlook.com")
		criarUsuario("luis", "6789", "2", "luiskare@gmail.com")
		telainicial()
		
	}
		
	funcao login()
	{
		inteiro idade
		inteiro auxiliar = 0

		limpa()
			
		faca
		{
			escreva("-------------- Sistema de Apoio ao Imigrante ------------\n")
			escreva("Para retornar ao site original digite 'q' e enter\n")
		     escreva("Usuario: ")
		     leia(usuario)
		     se 
				(usuario == "q")
				{
					escreva ("Retornando a pagina inicial!\n")
					Util.aguarde(1000)	
					limpa()
					pare
				}
		     escreva("Senha: ")
		     leia(senha)
			
			para (inteiro posicao = 0; posicao < tamanho; posicao++)
				{
				se (usuario ==	bancoUsuario[posicao][0])
				{auxiliar = posicao
				}
			
				senao
				{}
				}
				
		
			se (usuario == bancoUsuario[auxiliar][0] e senha == bancoUsuario[auxiliar][1])
			{escreva("entrada OK")
			Util.aguarde(1000)
   
   // Se o usuario for um usuario do governo abrirá o menu_governo, caso o usuario seja um imigrante abrirá o menu_imigrante
   // Aqui deveria se conectar ao banco de dados
	
				se 
				(bancoUsuario[auxiliar][2] == "1")
				{        
					escreva("menu_governo")
					Util.aguarde(2000)
				}

				senao se 
				(bancoUsuario[auxiliar][2] == "2")
				{
					escreva("menu_imigrante")
					Util.aguarde(2000)
				}

			}

				senao{        
					escreva("Dados nao encontrados no sistema, verifique os dados e tente novamente")
					Util.aguarde(2000)
					limpa()
				}

			}
		enquanto (usuario != "q")
		
	}

	funcao telainicial()
	{
		cadeia entrada

		faca{

		escreva("-------------- Sistema de Apoio ao Imigrante ------------\n")
		escreva("Bem vindo ao portal de atendimento ao imigrante, informacoes...\n")
		escreva("O que deseja fazer?\n")
		escreva("1 - Cadastro\n")
		escreva("2 - Log in\n")
		leia(entrada)

				se 
				(entrada == "1")
				{   
					cadastro()
				}

					
				senao se 
				(entrada == "2")
				{
					login()
				}


				senao
				{        
					escreva("Opcao invalida, elija o numero adequado")
					Util.aguarde(2000)
					limpa()
				}

		}
		enquanto (infinito < 2)			
		
	}

	funcao inteiro localizacao()
	{

		para (inteiro posicao = 0; posicao < tamanho; posicao++)
		{
			se (bancoUsuario[posicao][0] =="")
			{
				retorne posicao
			}
		}
		retorne -1
	}

	funcao cadastro()
	{

		cadeia nome, sobrenome, email
		inteiro check = 0

		limpa()
		escreva("-------------- Sistema de Apoio ao Imigrante ------------\n")
		// escreva("Escolha um nome de usuario: ")
		// leia(usuario)
		consultarnome() // Validará o nome de usuario
		escreva("Qual seu primeiro nome? ")
		leia(nome)
		escreva("Qual seu sobrenome? ")
		leia(sobrenome)
		escreva("Qual seu email? ")
		leia(email)
		consultarsenha()

		// Adiciona os dados ao banco de dados
		posicaoAuxiliar = localizacao()
		bancoUsuario[posicaoAuxiliar][0] = usuario
		bancoUsuario[posicaoAuxiliar][1] = senha
		bancoUsuario[posicaoAuxiliar][2] = "2" // Deve ser sempre assignado o numero 2, pois é um cadastro de Imigrante
		

	}

	funcao consultarnome()
	{
				
		inteiro check = 0

		faca{

		
		escreva("Escolha um nome de usuario: ")
		leia(usuario)
		check = 0
		inteiro resposta = Texto.numero_caracteres(usuario)

		se (usuario !="" e resposta >= 4)
		{
			para (inteiro posicao = 0; posicao < tamanho; posicao++)
				{
				se (usuario ==	bancoUsuario[posicao][0])
				{
					check = 1
					pare
				}
				}
			se (check == 1)
			{
				escreva("Nome de usuario ja utilizado\n")
			}
			senao
			{
				escreva("Usuario OK\n")
			}	
		}
		senao
		{
			check = 1
			escreva("O campo deve ser preenchido com minimo 4 caracteres\n")
		}
		}
		enquanto (check ==1)

		
	}
		
	funcao consultarsenha()
	{
		inteiro check = 0
		faca{
		escreva("Escolha uma senha: ")
		leia(senha)
		inteiro resposta = Texto.numero_caracteres(senha)

		se (senha !="" e resposta >= 4) //garantir que a senha nao seja em branco e adicionar depois quantidade minima de caracteres
			{
				escreva("Senha OK")
				check = 1
			}
		senao
		{
			escreva("Voce deve escolher uma senha com pelo menos 4 caracteres\n")
		}
			}
		enquanto (check ==0)
	
			
	}
		
}