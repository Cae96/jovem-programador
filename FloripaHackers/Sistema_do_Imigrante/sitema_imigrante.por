programa
{

  inclua biblioteca Util  // importando funcao util
  inclua biblioteca Texto // importando funcao texto

	cadeia usuario,senha, email, dtnascimento
	inteiro infinito = 1
	const inteiro tamanho = 100 // Deve ser colocado o mesmo numero de linhas que o vetor bancoUsuario
	cadeia bancoUsuario[tamanho][8]
	 

	inteiro posicaoAuxiliar = 0

	funcao criarUsuario(cadeia nome, cadeia password, cadeia tipo, cadeia nomecompleto, cadeia dt_nascimento, cadeia nacionalidade, cadeia doc_identificacao, cadeia email2)
	{
		posicaoAuxiliar = localizacao()
		bancoUsuario[posicaoAuxiliar][0] = nome
		bancoUsuario[posicaoAuxiliar][1] = password
		bancoUsuario[posicaoAuxiliar][2] = tipo
		bancoUsuario[posicaoAuxiliar][3] = nomecompleto
		bancoUsuario[posicaoAuxiliar][4] = dt_nascimento
		bancoUsuario[posicaoAuxiliar][5] = nacionalidade
		bancoUsuario[posicaoAuxiliar][6] = doc_identificacao
		bancoUsuario[posicaoAuxiliar][7] = email2
	}
	
	funcao inicio()
	{		
		criarUsuario("andre", "1234", "1","Andre da Silva","25/05/1990","AN","6890Y56","andre@outlook.com")
		criarUsuario("luis", "6789", "2","Luis Wagner Britt","14/11/2000","BO","098567930" ,"luiskare@gmail.com")
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
				escreva("Senha OK\n")
				check = 1
			}
		senao
		{
			escreva("Voce deve escolher uma senha com pelo menos 4 caracteres\n")
		}
			}
		enquanto (check ==0)
	
			
	}

	funcao consultaremail()
	{
		inteiro check = 0

		faca
		{
		escreva("Digite seu email (caso nao tenha email deixe o campo em branco): ")
		leia(email)
		check = 0
		inteiro resposta = Texto.numero_caracteres(usuario)

			se (email == "") 
			{
			pare
			}
			senao
			{
				para (inteiro posicao = 0; posicao < tamanho; posicao++)
				{
				se (email ==	bancoUsuario[posicao][7])
				{
					check = 1
					pare
				}
			}
			
				}
			se (check == 1)
			{
				escreva("Email já utilizado, escolha outro\n")
			}
			senao
			{
				escreva("Email OK\n")
			}	
		}
		enquanto (check ==1)
	}

	funcao cadeia ehnumero(cadeia b)
	{
		se (b == "0" ou b == "1" ou b == "2" ou b == "3" ou b == "4" ou b == "5" ou b == "6" ou b == "7" ou b == "8" ou b == "9")
		{
			retorne "valido"
		}
		senao
		{
			retorne "falso"
		}
	}
	
	funcao consultar_data_nascimento()
	{
		inteiro check = 0

		faca
		{
		escreva("Qual sua data de nascimento? (formato: DD/MM/YYYY): ")
		leia(dtnascimento)
		check = 0
		inteiro resposta = Texto.numero_caracteres(dtnascimento)

			se (resposta != 10) 
			{
				escreva("formato invalido, tente novamente\n")
			}
			senao
			{
			cadeia a = Texto.extrair_subtexto(dtnascimento,0,1)
			cadeia b = Texto.extrair_subtexto(dtnascimento,1,2)
			cadeia c = Texto.extrair_subtexto(dtnascimento,2,3)
			cadeia d = Texto.extrair_subtexto(dtnascimento,3,4)
			cadeia ee = Texto.extrair_subtexto(dtnascimento,4,5)
			cadeia f = Texto.extrair_subtexto(dtnascimento,5,6)
			cadeia g = Texto.extrair_subtexto(dtnascimento,6,7)
			cadeia h = Texto.extrair_subtexto(dtnascimento,7,8)
			cadeia i = Texto.extrair_subtexto(dtnascimento,8,9)
			cadeia j = Texto.extrair_subtexto(dtnascimento,9,10)

			

				se((((a=="0" ou a=="1") e ehnumero(b)=="valido") ou (a=="3" e (b=="0" ou b=="1"))) e
				c=="/" e
				((d =="0" e ehnumero(ee)=="valido" e ee!="0")  ou (d=="1" e (ee=="0" ou ee=="1" ou ee=="2"))) e
				f=="/" e
				(g=="1" ou g=="2") e
				(h=="9" ou h=="0") e 
				ehnumero(i)=="valido" e
				ehnumero(j)=="valido") 
				// Valida as datas de nascimento, aceito desde 1900 ate 2099 - Falhas do codigo: o codigo nao valida datas no futuro, tambem pode ter erro para dias 31 nos meses de dias inferiores
				{
					check = 1
				}
				senao
				{
					escreva("formato invalido, tente novamente\n")
				}
			}
			
		}
		enquanto (check ==0)
	}

	funcao cadastro()
	{

	cadeia nomecompleto, dt_nascimento, nacionalidade, doc_identificacao
	inteiro check = 0

	limpa()
	escreva("-------------- Sistema de Apoio ao Imigrante ------------\n")
	// escreva("Escolha um nome de usuario: ")
	// leia(usuario)
	consultarnome() // Validará o nome de usuario
	consultarsenha()
	escreva("Qual seu nome completo? ")
	leia(nomecompleto)
	consultar_data_nascimento()
	escreva("Qual sua nacionalidade? ")
	leia(nacionalidade)
	escreva("Qual o numero/codigo do seu documento de identificação? ")
	leia(doc_identificacao)
	consultaremail()
	

	// Adiciona os dados ao banco de dados
	posicaoAuxiliar = localizacao()
	bancoUsuario[posicaoAuxiliar][0] = usuario
	bancoUsuario[posicaoAuxiliar][1] = senha
	bancoUsuario[posicaoAuxiliar][2] = "2" // Deve ser sempre assignado o numero 2, pois é um cadastro de Imigrante
	bancoUsuario[posicaoAuxiliar][3] = nomecompleto
	bancoUsuario[posicaoAuxiliar][4] = dtnascimento
	bancoUsuario[posicaoAuxiliar][5] = nacionalidade
	bancoUsuario[posicaoAuxiliar][6] = doc_identificacao
	bancoUsuario[posicaoAuxiliar][7] = email
	}		

}