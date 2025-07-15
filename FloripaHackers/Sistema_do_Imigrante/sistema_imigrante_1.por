programa
{

  inclua biblioteca Util --> u // importando funcao util
  inclua biblioteca Texto --> tx // importando funcao texto
  inclua biblioteca Tipos

	cadeia usuario,senha, email, dtnascimento, pais, nome
	inteiro infinito = 1, cambio = -1
	const inteiro tamanho = 100 // Deve ser colocado o mesmo numero de linhas que o vetor bancoUsuario
	cadeia bancoUsuario[tamanho][9]
	 

	inteiro posicaoAuxiliar = 0

	funcao criarUsuario(cadeia nome, cadeia password, cadeia tipo, cadeia nomecompleto, cadeia dt_nascimento, cadeia nacionalidade, cadeia doc_identificacao, cadeia email2, cadeia status)
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
		bancoUsuario[posicaoAuxiliar][8] = status
	}
	
	funcao inicio()
	{	// Cria um usuário do governo (tipo 1)
		criarUsuario("andre", "1234", "1","Andre da Silva","25/05/1990","AN","6890Y56","andre@outlook.com","ativo")
		// Cria um usuário imigrante (tipo 2)
		criarUsuario("luis", "6789", "2","Luis Wagner Britt","14/11/2000","BO","098567930" ,"luiskare@gmail.com","ativo")
		// Chama a tela inicial do sistema
		telainicial()
		
	}
		
	funcao login()
	{
		inteiro idade
		inteiro auxiliar = 0 // Usado para armazenar a posição do usuário no banco de dados

		limpa() // Limpa a tela
			
		faca
		{	// Exibe o cabeçalho do sistema
			escreva("==========================================\n")
			escreva("      PORTAS ABERTAS   \n")
			escreva("  Sistema de Apoio ao Imigrante\n")
			escreva("==========================================\n")
			escreva("Para retornar ao site original digite 'q' e enter\n")
			// Entrada do usuário
		     escreva("Usuario: ")
		     leia(usuario)
		     // Verifica se o usuário deseja sair
		     se 
				(usuario == "q")
				{
					escreva ("Retornando a pagina inicial!\n")
					Util.aguarde(1000)	
					limpa()
					pare
				}
				// Entrada da senha
		     escreva("Senha: ")
		     leia(senha)
			// Procura a posição do usuário no banco
			para (inteiro posicao = 0; posicao < tamanho; posicao++)
				{
				se (usuario ==	bancoUsuario[posicao][0])
				{
					auxiliar = posicao // Guarda a posição caso encontre o usuário
				}
			
				senao
				{}
				}
				
			// Verifica se o nome de usuário e senha estão corretos
			se (usuario == bancoUsuario[auxiliar][0] e senha == bancoUsuario[auxiliar][1])
			{	
				// Verifica se o usuário está ativo
				se(bancoUsuario[auxiliar][8]!="ativo")
				{
					limpa()
					escreva("!!!Usuario desativado, contate o sistema de suporte!!!")
					Util.aguarde(2000)
					limpa()
				}
				senao
				{
					escreva("entrada OK")
					Util.aguarde(1000)
		   
					// Verifica o tipo de usuário:
					// "1" = governo → direciona para o menu do governo
						se 
						(bancoUsuario[auxiliar][2] == "1")
						{        
							menuGoverno()
							Util.aguarde(2000)
						}
						// "2" = imigrante → direciona para menu de imigrante
						senao se 
						(bancoUsuario[auxiliar][2] == "2")
						{
							escreva("menu_imigrante")
							Util.aguarde(2000)
						}

				}
			}
			senao
			{     
				// Caso não encontre o usuário ou a senha esteja incorreta
				escreva("Dados nao encontrados no sistema, verifique os dados e tente novamente")
				Util.aguarde(2000)
				limpa()
			}

		}
		// Repete o loop enquanto o usuário não digitar "q"
		enquanto (usuario != "q")
		
	}

	funcao telainicial()
	{
		cadeia entrada// Variável para armazenar a escolha do usuário
		faca{
		// Exibe o cabeçalho do sistema
		escreva("==========================================\n")
		escreva("       PORTAS ABERTAS   \n")
		escreva("   Sistema de Apoio ao Imigrante\n")
		escreva("==========================================\n")
		// Mensagem institucional
		escreva("Apoio para quem começa uma nova vida longe de casa\n")
		escreva("Nosso objetivo é acolher, informar e conectar, para que você se sinta em casa, onde quer que esteja.")
		// Menu de opções
		escreva("O que deseja fazer?\n")
		escreva("1 - Cadastro\n")
		escreva("2 - Log in\n")
		leia(entrada)
				// Verifica a escolha e direciona para a função correspondente
				se 
				(entrada == "1")
				{   
					cadastro() // Chama a função de cadastro
				}

					
				senao se 
				(entrada == "2")
				{
					login() // Chama a função de login
				}


				senao
				{        
					// Caso a entrada não seja válida
					escreva("Opcao invalida, elija o numero adequado")
					Util.aguarde(2000) // Pausa por 2 segundos
					limpa() // Limpa a tela para nova tentativa
				}

		}
		enquanto (infinito < 2)	// Laço infinito — mantém a tela ativa		
		
	}

	funcao inteiro localizacao()
	{
		// Percorre todo o vetor de usuários
		para (inteiro posicao = 0; posicao < tamanho; posicao++)
		{
			// Verifica se a posição está vazia
			se (bancoUsuario[posicao][0] =="")
			{
				retorne posicao  // Retorna a posição disponível
			}
		}
		// Se não encontrar espaço disponível
		retorne -1
	}

	funcao consultarnome()
	{
				
		inteiro check = 0 // Variável de controle para repetição


		faca{

		
		escreva("Escolha um nome de usuario: ") // Solicita entrada ao usuário
		leia(usuario)
		check = 0 // Reinicia o controle
		inteiro resposta = Texto.numero_caracteres(usuario) // Conta o número de caracteres

		// Verifica se o nome não está vazio e tem pelo menos 4 caracteres
		se (usuario !="" e resposta >= 4)
		{
			// Verifica se o nome já está em uso no banco
			para (inteiro posicao = 0; posicao < tamanho; posicao++)
				{
				se (usuario ==	bancoUsuario[posicao][0]) // Nome já existente
				{
					check = 1
					pare // Sai do laço ao encontrar
				}
			}
			// Se o nome já existir, exibe aviso
			se (check == 1)
			{
				escreva("Nome de usuario ja utilizado\n")
			}
			senao
			{
				escreva("Usuario OK\n")  // Nome disponível
			}	
		}
		senao
		{
			check = 1 // Mantém o loop se for inválido
			escreva("O campo deve ser preenchido com minimo 4 caracteres\n")
		}
		}
		enquanto (check ==1) // Repete até ser um nome válido e único

		
	}
		
	funcao consultarsenha()
	{
		inteiro check = 0
		faca{
		escreva("Escolha uma senha: ")
		leia(senha)
		inteiro resposta = Texto.numero_caracteres(senha) // Conta o tamanho

		// Verifica se a senha não está vazia e tem pelo menos 4 caracteres
		se (senha !="" e resposta >= 4) 
			{
				escreva("Senha OK\n") // Senha válida
				check = 1
			}
		senao
		{
			escreva("Voce deve escolher uma senha com pelo menos 4 caracteres\n")
		}
			}
		enquanto (check ==0) // Repete até uma senha válida ser inserida
	
			
	}

	funcao consultaremail()
	{
		inteiro check = 0  // Variável de controle para validação

		faca
		{
		escreva("Digite seu email: ")
		leia(email)
		check = 0 // Reinicia a verificação
		inteiro resposta = Texto.numero_caracteres(email)

			// Verifica se o campo de email está vazio
			se (email == "") 
			{	
				escreva("O email é obrigatório. Tente novamente!\n")
            		check = 1 // Continua no loop
            		
			// Verifica se o email está em formato válido usando a função validarEmail()
		    }senao se(nao validarEmail())
			{
			 	escreva("Formato de email inválido. Exemplo válido: usuario@dominio.com\n")
           		 check = 1  // Continua no loop
			}
			 senao
      		  {
      		  	// Verifica se o email já existe no banco de dados
				para (inteiro posicao = 0; posicao < tamanho; posicao++)
				{
				se (email ==	bancoUsuario[posicao][7])
				{	
					check = 1 // Email já cadastrado, precisa alterar
					escreva("\nEmail já utilizado, escolha outro!\n")
					
					pare
				}
			}
			// Se passou todas as verificações, email está OK
			se(check == 0) {
				
				escreva("Email OK\n") // Repete até o email ser aceito
			}	
		}
		
	  }enquanto (check ==1)
 }

	funcao cadeia ehnumero(cadeia a)
	{
		// Verifica se a cadeia contém um único caractere numérico (0 a 9)
		se (a == "0" ou a == "1" ou a == "2" ou a == "3" ou a == "4" ou a == "5" ou a == "6" ou a == "7" ou a == "8" ou a == "9")
		{
			retorne "valido" // Retorna "valido" se for número
		}
		senao
		{
			retorne "falso" // Caso contrário, retorna "falso"
		}
	}
	
	funcao consultar_data_nascimento()
	{
		inteiro check = 0  // Variável de controle para validação da data

		faca
		{
		escreva("Qual sua data de nascimento? (formato: DD/MM/YYYY): ")
		leia(dtnascimento)
		check = 0
		inteiro resposta = Texto.numero_caracteres(dtnascimento)  // Conta o número de caracteres

			se (resposta != 10) // A data precisa ter exatamente 10 caracteres (ex: 01/01/2000)
			{
				escreva("formato invalido, tente novamente\n")
			}
			senao
			{
				// Extrai cada caractere da string para validação manual
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

			
				// Verifica se o formato é DD/MM/AAAA, validando cada caractere
				se(ehnumero(a)=="falso" ou ehnumero(b)=="falso" ou c!="/" ou ehnumero(d)=="falso" ou ehnumero(ee)=="falso" ou f!="/" ou ehnumero(g)=="falso" ou ehnumero(h)=="falso" ou ehnumero(i)=="falso" ou 
				ehnumero(j)=="falso")
				{
					escreva("formato invalido, tente novamente\n")
				}
				senao
				{	// Converte os trechos da string em números inteiros
					inteiro dia = Tipos.cadeia_para_real(Texto.extrair_subtexto(dtnascimento,0,2))
					inteiro mes = Tipos.cadeia_para_real(Texto.extrair_subtexto(dtnascimento,3,5))
					inteiro ano = Tipos.cadeia_para_real(Texto.extrair_subtexto(dtnascimento,6,10))
					// Verifica se o ano está dentro de um intervalo aceitável
					se (1920<=ano e ano<=2025)
					{	// Verifica se o mês está entre 1 e 12
						se (0<mes e mes<=12)
						{
							se(mes==2) // Caso especial para Fevereiro
							{
								se((ano-4*(ano/4))==0) // Verifica se é ano bissexto
								{
									se(dia<=29)
									{
										check=1
									}
									senao
									{
										escreva("Data invalida, tente novamente\n")	
									}
								}
								senao
								{
									se(dia<=28) // Fevereiro em ano não bissexto
									{
										check = 1
									}
									senao
									{
										escreva("Data invalida, tente novamente\n")	
									}
								}
							}
							// Verifica meses com 31 dias
							senao se(mes==1 ou mes==3 ou mes==5 ou mes==7 ou mes==8 ou mes==10 ou mes==12)
							{
								se(dia<=31)
								{
									check =1
								}
								senao
								{
									escreva("Data invalida, tente novamente\n")	
								}
							}// Demais meses com 30 dias
							senao
							{
								se(dia<=30)
								{
									check=1
								}
								senao
								{
									escreva("Data invalida, tente novamente\n")	
								}
							}
						
						}
					}
					senao
					{
						escreva("Data fora do intervalo permitido\n")
					}

				}
			}
			
		}
		enquanto (check ==0)  // Continua pedindo até a data ser considerada válida
	}

	funcao consultar_pais()
	{
		cadeia codigos[250] = {"AF","AX","AL","DZ","AS","AD","AO","AI","AQ","AG","AR","AM","AW","AU","AT","AZ","BS","BH","BD","BB","BY","BE","BZ","BJ","BM","BT","BO","BQ","BA","BW","BV","BR","IO","BN",
		"BG","BF","BI","CV","KH","CM","CA","KY","CF","TD","CL","CN","CX","CC","CO","KM","CG","CD","CK","CR","CI","HR","CU","CW","CY","CZ","DK","DJ","DM","DO","EC","EG","SV","GQ","ER","EE","SZ","ET","FK",
		"FO","FJ","FI","FR","GF","PF","TF","GA","GM","GE","DE","GH","GI","GR","GL","GD","GP","GU","GT","GG","GN","GW","GY","HT","HM","VA","HN","HK","HU","IS","IN","ID","IR","IQ","IE","IM","IL","IT","JM",
		"JP","JE","JO","KZ","KE","KI","KP","KR","KW","KG","LA","LV","LB","LS","LR","LY","LI","LT","LU","MO","MG","MW","MY","MV","ML","MT","MH","MQ","MR","MU","YT","MX","FM","MD","MC","MN","ME","MS","MA",
		"MZ","MM","NA","NR","NP","NL","NC","NZ","NI","NE","NG","NU","NF","MK","MP","NO","OM","PK","PW","PS","PA","PG","PY","PE","PH","PN","PL","PT","PR","QA","RE","RO","RU","RW","BL","SH","KN","LC","MF",
		"PM","VC","WS","SM","ST","SA","SN","RS","SC","SL","SG","SX","SK","SI","SB","SO","ZA","GS","SS","ES","LK","SD","SR","SJ","SE","CH","SY","TW","TJ","TZ","TH","TL","TG","TK","TO","TT","TN","TR","TM",
		"TC","TV","UG","UA","AE","GB","US","UM","UY","UZ","VU","VE","VN","VG","VI","WF","EH","YE","ZM","ZW","ZZ"}
	
		cadeia nomes[250] = {"Afghanistan","Aland Islands","Albania","Algeria","American Samoa","Andorra","Angola","Anguilla","Antarctica","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia",
		"Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia (Plurinational State of)","Bonaire, Sint Eustatius and Saba",
		"Bosnia and Herzegovina","Botswana","Bouvet Island","Brazil","British Indian Ocean Territory","Brunei Darussalam","Bulgaria","Burkina Faso","Burundi","Cabo Verde","Cambodia","Cameroon","Canada",
		"Cayman Islands","Central African Republic","Chad","Chile","China","Christmas Island","Cocos (Keeling) Islands","Colombia","Comoros","Congo","Congo (Democratic Republic of)","Cook Islands","Costa Rica",
		"C?te d'Ivoire","Croatia","Cuba","Cura?ao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Eswatini",
		"Ethiopia","Falkland Islands (Malvinas)","Faroe Islands","Fiji","Finland","France","French Guiana","French Polynesia","French Southern Territories","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar",
		"Greece","Greenland","Grenada","Guadeloupe","Guam","Guatemala","Guernsey","Guinea","Guinea-Bissau","Guyana","Haiti","Heard Island and McDonald Islands","Holy See","Honduras","Hong Kong","Hungary","Iceland",
		"India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kiribati","Korea (North)","Korea (South)","Kuwait","Kyrgyzstan",
		"Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macao","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Martinique","Mauritania",
		"Mauritius","Mayotte","Mexico","Micronesia (Federated States of)","Moldova (Republic of)","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal",
		"Netherlands","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Niue","Norfolk Island","North Macedonia","Northern Mariana Islands","Norway","Oman","Pakistan","Palau","Palestine, State of","Panama",
		"Papua New Guinea","Paraguay","Peru","Philippines","Pitcairn","Poland","Portugal","Puerto Rico","Qatar","R?union","Romania","Russian Federation","Rwanda","Saint Barth?lemy",
		"Saint Helena, Ascension and Tristan da Cunha","Saint Kitts and Nevis","Saint Lucia","Saint Martin (French part)","Saint Pierre and Miquelon",
		"Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten (Dutch part)","Slovakia","Slovenia",
		"Solomon Islands","Somalia","South Africa","South Georgia and the South Sandwich Islands","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Svalbard and Jan Mayen","Sweden","Switzerland",
		"Syrian Arab Republic","Taiwan, Province of China","Tajikistan","Tanzania, United Republic of","Thailand","Timor-Leste","Togo","Tokelau","Tonga","Trinidad and Tobago","Tunisia","Turkey",
		"Turkmenistan","Turks and Caicos Islands","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom of Great Britain and Northern Ireland","United States of America",
		"United States Minor Outlying Islands","Uruguay","Uzbekistan","Vanuatu","Venezuela (Bolivarian Republic of)","Viet Nam","Virgin Islands (British)","Virgin Islands (U.S.)","Wallis and Futuna",
		"Western Sahara","Yemen","Zambia","Zimbabwe","Outros - Pais nao listado"}


		inteiro indice   // Variável para controle dos índices dos vetores
		inteiro check = 0  // Flag usada para controlar se o país foi encontrado
		
		faca
		{

			// Apresenta ao usuário orientações sobre como digitar o código do país
			escreva("\nDigite o codigo do pais (ex: Brasil, digite: BR), em caso de duvida selecione o numero de acordo com a letra inicial do seu pais")
			escreva ("\nPaises de A-C: 1 \nPaises de D-H: 2 \nPaises de I-M: 3 \nPaises de N-S: 4 \nPaises de T-Z: 5")
			escreva("\nQual sua nacionalidade? ")
			leia(pais)

			// Verifica se o país digitado está entre os códigos existentes
			para (inteiro posicao = 0; posicao < 250; posicao++)
			{
				se (pais == codigos[posicao])
				{
					check=1  // Marca como encontrado
					pare
				}
	
	
			}
			 // Se o usuário digitou um número (de 1 a 5), quer exibir lista parcial
			se (pais =="1" ou pais=="2" ou pais=="3" ou pais=="4"ou pais=="5")
			{	// Converte o valor digitado para número
				inteiro opcao = Tipos.cadeia_para_real(Texto.extrair_subtexto(pais,0,1))

				// Escolhe qual lista de países exibir com base na letra inicial (dividido por blocos)
				escolha (opcao)	
					{
					caso 1: //Paises de A-C
						limpa()
				 		escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =0; indice <60; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare   // Impede que as instru??es do caso 2 sejam executadas
				 		
				 	caso 2:   // Países de D a H
				 		limpa()
					 	escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =60; indice <102; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare   // Impede que as instru??es do caso 2 sejam executadas
				 		 
				 	caso 3:  // Países de I a M 
				 		limpa()
					 	escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =102; indice <153; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare
				 		
				 	caso 4:  // Países de N a S
				 		limpa()
					 	escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =153; indice <217; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare

				 	caso 5:  // Países de T a Z
				 		limpa()
					 	escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =217; indice <250; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare
					}
			}
		 	senao
		 	{	// Se o país não for número e não foi encontrado antes, verifica novamente nos códigos
		 		para (inteiro posicao = 0; posicao < 250; posicao++)
				{
					se (pais == codigos[posicao])
					{
						check=1  // Marca como válido
						pare
					}		
				}
			}
			

		}
		enquanto (check==0)  // Repete até que o código do país seja válido
		
	}
		
	funcao cadastro()  // Função responsável por cadastrar um novo imigrante no sistema
	{

	cadeia nomecompleto, dt_nascimento, nacionalidade, doc_identificacao
	inteiro check = 0  // Variável auxiliar que pode ser usada para controle de validações

	limpa()
	escreva("==========================================\n")
	escreva("      PORTAS ABERTAS   \n")
	escreva("  Sistema de Apoio ao Imigrante\n")
	escreva("==========================================\n")

	// As linhas abaixo coletam os dados do imigrante, utilizando subfunções para cada campo onde necessário
	
	consultarnome() // Validação do nome de usuário por meio de função separada
	
	consultarsenha()  // Validação da senha por meio de função separada
	
	escreva("Qual seu nome completo? ")
	leia(nomecompleto)
	consultar_data_nascimento() // Chama subfunção para obter a data de nascimento
	consultar_pais()  // Chama subfunção para obter a nacionalidade
	escreva("Qual o numero/codigo do seu documento de identificação? ")
	leia(doc_identificacao)
	// Validação e leitura do email
	consultaremail()
	escreva("\tCadastro Realizado!")

	// Armazena os dados coletados no vetor de usuários (banco de dados em memória)
	posicaoAuxiliar = localizacao()
	bancoUsuario[posicaoAuxiliar][0] = usuario
	bancoUsuario[posicaoAuxiliar][1] = senha
	bancoUsuario[posicaoAuxiliar][2] = "2"  // Código "2" indica cadastro do tipo imigrante
	bancoUsuario[posicaoAuxiliar][3] = nomecompleto
	bancoUsuario[posicaoAuxiliar][4] = dtnascimento
	bancoUsuario[posicaoAuxiliar][5] = pais
	bancoUsuario[posicaoAuxiliar][6] = doc_identificacao
	bancoUsuario[posicaoAuxiliar][7] = email
	bancoUsuario[posicaoAuxiliar][8] = "ativo"  // Situação do cadastro (ativo por padrão)

	// Pausa a execução por 2 segundos para que o usuário veja a confirmação
	u.aguarde(2000)
	limpa()
	}		

	funcao alterarusuario()
	{
				
		inteiro check = 0  // Variável de controle do loop (1 se houver erro, 0 se sucesso)

		faca{

		
		escreva("\nEscolha novo nome de usuario (para manter o nome de usuario deixe em branco e aperte enter): ")
		leia(usuario)
		check = 0
		inteiro resposta = Texto.numero_caracteres(usuario) // Conta os caracteres do nome digitado

		se (usuario =="")
		{
			pare
		}
		senao se(resposta >= 4)    // Se tem 4 ou mais caracteres

		{	
			// Verifica se o nome de usuário já existe no banco
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
				// Se nome é válido e não usado, atualiza o banco
				bancoUsuario[cambio][0] = usuario
				escreva("Usuario alterado com sucesso")
			}	
		}
		senao
		{
			check = 1   // Erro por nome muito curto
			escreva("O campo deve ser preenchido com minimo 4 caracteres\n")
		}
		}
		enquanto (check ==1)

		
	}

	funcao alterarsenha()
	{
		inteiro check = 0
		faca{
			escreva("\nEscolha uma senha nova (para manter a senha original, deixe em branco): ")
			leia(senha)
			inteiro resposta = Texto.numero_caracteres(senha)  // Conta os caracteres da senha
	
			se (senha=="")
			{
				pare  // Se estiver em branco, mantém a senha atual
			}
			senao se (resposta >= 4) // Valida mínimo de 4 caracteres
				{	
					// Atualiza a senha no banco
					bancoUsuario[cambio][1] = senha
					escreva("Senha alterada com sucesso\n")
					pare
				}
			senao
			{	// Mensagem de erro se senha for curta demais
				escreva("Voce deve escolher uma senha com pelo menos 4 caracteres\n")
			}
		}
		enquanto (check ==0)  // Loop continua enquanto o usuário não acertar
	
			
	}

	funcao alteraremail()
	{
				
		inteiro check = 0 // Variável para controle do loop


		faca
		{

		
			escreva("Escolha novo email (para manter o email anterior deixe o campo em branco e aperte enter): ")
			leia(email)
			check = 0 // Reinicia o check
	
			se (email =="")
			{
				// Se o campo estiver em branco, sai da função sem alterar nada
				pare
			}
			senao
			{	
				// Primeiro, valida o formato do email usando a função validarEmail
				se (nao validarEmail()) {
				escreva("Formato de email inválido! Tente novamente.\n")
				check = 1   // Continua no loop até digitar corretamente
			   }
				senao
			   {
			 		// Verifica se o email já está em uso no banco
				para (inteiro posicao = 0; posicao < tamanho; posicao++)
					{
					se (email == bancoUsuario[posicao][7])
					{
						check = 1
						escreva("Email já utilizado. Escolha outro.\n")
						pare
					}
				}				
					// Se passou nas verificações, o email pode ser alterado
				se (check == 0)
				{
					bancoUsuario[cambio][7] = email
					escreva("Email alterado com sucesso!\n")
					pare // sai do loop
				}	
			}
		}
      }	
		enquanto (check ==1)  // Continua enquanto houver erro
  }

	funcao alterarnome()
	{
		escreva("Escolha novo nome (para manter o nome original, deixe em branco): \n")
		leia(nome)
		se (nome =="")
			{
				// Não altera nada se o campo estiver em branco
			}
		senao
		{
			// Atualiza o nome na posição atual do usuário (cambio)
			bancoUsuario[cambio][3] = nome
			escreva("Nome alterado com sucesso")
		}
		
	}

	funcao alterar_doc_identificacao()
		{
			cadeia doc  // Variável local para o novo documento
			
			escreva("\nDigite o numero de identificação (para manter o nome original, deixe em branco): ")
			leia(doc)
			se (doc =="")
				{
					// Mantém o documento atual
				}
			senao
			{	// Atualiza o documento na posição do usuário (cambio)
				bancoUsuario[cambio][6] = doc
				escreva("Documento alterado com sucesso\n")
			}
			
		}

	funcao alterarstatus()  // Função para alterar o status (ativo/inativo) de um usuário do sistema
	{
	    inteiro check =0 // Usado para verificar se o usuário foi encontrado
	    cadeia entrada
	    limpa()
	    escreva("Digite usuario:  \n")
	    leia(entrada)

		// Procura o usuário informado no banco de dados
     	para (inteiro posicao = 0; posicao < tamanho; posicao++){
     		// Se o usuário for encontrado
			se(bancoUsuario[posicao][0] == entrada){
				// Exibe os dados do usuário encontrado (com a senha oculta)
				escreva(" Usuario Cadastrado :\n")
				escreva("\nNome\t\tsenha\t\tData_nascimento\t\tNacionalidade\t\tDocumento\t\tEmail\n")
     	 		escreva ("\n\n ",bancoUsuario[posicao][0], "\t\t ", "*****", "\t\t ", bancoUsuario[posicao][4],"\t\t",bancoUsuario[posicao][5],"\t\t\t",bancoUsuario[posicao][6],"\t\t\t",bancoUsuario[posicao][7],"\n")
				
				check =1 // Marca que encontrou o usuário
				cambio = posicao // Salva a posição para usar na alteração depois
				
				pare // Encerra o laço de busca
		     }senao{}
     	}
     	// Se o usuário não foi encontrado
     se (check == 0){
     	escreva("\nUsuario não encontrado!\n")
     }
     senao
     {
     	
     	 faca {
	     	
			// Menu de alteração de status
			escreva("\n Selecione a opção desejada")
			escreva("\n(1)- Para ATIVAR usuario")
			escreva("\n(2) - Para DESATIVAR usuario")
			escreva("\n(3) - Voltar\n")
		     leia(entrada)
		
		
			 se 
				(entrada == "1")
					{   
						// Ativa o usuário
						bancoUsuario[cambio][8] ="ativo"
						escreva("Usuario ativo")
						Util.aguarde(2000)
						pare
			  }senao se 
				(entrada == "2")
						{
							// Desativa o usuário
						bancoUsuario[cambio][8] ="inativo"
						escreva("Usuario desativado")
						Util.aguarde(2000)
						pare
						}
		
			senao se (entrada == "3")
			{		// Sai do menu de status
		            escreva("Saindo do programa...\n") 
		            pare
			}
			senao{
				// Caso o usuário digite uma opção inválida
			escreva("Opção inválida. Tente novamente.\n")
			}
	     }  
	     enquanto (1==1)  // Laço infinito até o usuário escolher uma opção válida
     }
	}
	
	funcao menuGoverno() //menu governo
	  {
	   
	   //Tela inicial menu governo
		cadeia entrada
	     faca {
	     	
			limpa()
		 // Exibe o título e as opções do menu
	     escreva("==========================================\n")
		escreva("      PORTAS ABERTAS   \n")
		escreva("  Sistema de Apoio ao Imigrante\n")
		escreva("==========================================\n")
		escreva("    MENU GOVERNO \n")
		escreva("\nESCOLHA UMA OPCAO: ")
		escreva("\n(1) CRIAR NOVO CADASTRO")
		escreva("\n(2) ALTERAR CADASTRO")
			escreva("\n(3) VER SITUACAO DOS CADASTROS")
			escreva("\n(4) ATIVAR/DESATIVAR USUARIO")
			escreva("\n(5) SAIR MENU GOVERNO\n")
		     leia(entrada)
		
			 se 
				(entrada == "1")
					{   
						cadastro() // Chamando funcao de cadastro escolhido pelo usuario
			  }senao se 
				(entrada == "2")
						{
					    alterarCadastro() //Chamando funcao de alterar cadastro escolhido pelo usuario
						}
				senao se 
				   (entrada == "3")
				      {
				      	mostrarCadastro() //Chamando funcao de mostrar cadastro escolhido pelo usuario
				      }
				      senao se 
				   (entrada == "4")
				      {
				      	alterarstatus() //Chamando funcao de mostrar cadastro escolhido pelo usuario
				      }
				      senao se 
				   (entrada == "5")
				      {
		            escreva("Saindo do programa...\n") 
				      
				      }
				      senao{
				      	escreva("Op��o inv�lida. Tente novamente.\n")
				      }
	     }  
	     enquanto (entrada != "5")
	     		
	    }
    
	funcao alterarCadastro(){ //Função para alterar cadastros de imigrantes
	
		cadeia novoNome, novoEmail, novaSenha,stop
	     
	     limpa()
     escreva("     ALTERAÇÃO DE CADASTRO     ")
	escreva("\nDigite o usuario que deseja alterar os dados: \n")
	leia(usuario)
	mostrarCadastroUsuario()// Mostra os dados do usuário atual buscado
	 
		para (inteiro posicao = 0; posicao < tamanho; posicao++){
			se (usuario == bancoUsuario[posicao][0])
	          {  	
	  			cambio = posicao
		           //Alteracao de cadastro
				alterarusuario()
				alterarsenha()
				alteraremail()
				alterarnome()
				alterar_doc_identificacao()  
				consultar_data_nascimento() 
				consultar_pais()				
				bancoUsuario[posicao][4] = dtnascimento
				bancoUsuario[posicao][5] = pais
		           
				escreva("Cadastro alterado com sucesso!\n")
		          Util.aguarde(400)
				 
	          }senao se(posicao == tamanho){
		           escreva("Cadastro não encontrado.\n")
		           Util.aguarde(400)
	        }
			   
		    	}
		    	escreva("Para voltar ao MENU GOVERNO digite enter")
		    	leia(stop)
	   }         	          

  	funcao mostrarCadastro(){ //função para mostrar dados cadastrados

		cadeia stop
	     limpa()

	     escreva("==========================================\n")
		escreva("      PORTAS ABERTAS   \n")
		escreva("  Sistema de Apoio ao Imigrante\n")
		escreva("==========================================\n")
	     escreva("        MENU GOVERNO    \n")
	     escreva(" DADOS CADASTRADOS :\n")
	     // Cabeçalho da tabela com os campos exibidos
	     escreva("\nNome\t\tsenha\t\tData_nascimento\t\tNacionalidade\t\tDocumento\t\tEmail\t\t\t\tSituação")

     	para (inteiro posicao = 0; posicao < tamanho; posicao++){

			se(bancoUsuario[posicao][0] == "")
			{
     	 		pare
     	 	}
     	 	senao
     	 	{
     	 escreva ("\n\n ",bancoUsuario[posicao][0], "\t\t ", "*****", "\t\t ", bancoUsuario[posicao][4],"\t\t",bancoUsuario[posicao][5],"\t\t",bancoUsuario[posicao][6],"\t\t\t\t",bancoUsuario[posicao][7],"\t\t\t",bancoUsuario[posicao][8],"\n")
     	 	}

     	}
     	escreva("\nPara voltar ao MENU GOVERNO digite enter")
	    	leia(stop)
  }
  	
  	funcao mostrarCadastroUsuario(){ //funcao para mostrar dados cadastrados de cada usuario buscado

	    inteiro check =0
	     
	    limpa()
	   
	   escreva("==========================================\n")
	   escreva("      PORTAS ABERTAS   \n")
	   escreva("  Sistema de Apoio ao Imigrante\n")
	   escreva("==========================================\n")

     	para (inteiro posicao = 0; posicao < tamanho; posicao++){
			se(bancoUsuario[posicao][0] == usuario){
				escreva(" Usuario Cadastrado :\n")
				escreva("\nNome\t\tsenha\t\tData_nascimento\t\tNacionalidade\t\tDocumento\t\tEmail\n")
     	 		escreva ("\n\n ",bancoUsuario[posicao][0], "\t\t ", "*****", "\t\t ", bancoUsuario[posicao][4],"\t\t",bancoUsuario[posicao][5],"\t\t",bancoUsuario[posicao][6],"\t\t\t",bancoUsuario[posicao][7],"\n")
				check =1
				pare
		     }senao{}

     	}
     se (check == 0){
     	escreva("\nUsuário não encontrado!\n")
     }
      }

    funcao logico validarEmail() {
  	
  	// Variáveis de controle
    inteiro i, tamanhoEmail, posArroba = -1, posPonto = -1, contadorArroba = 0
    logico check = verdadeiro
    caracter c
    
	// Obtém o número de caracteres do email
    tamanhoEmail = tx.numero_caracteres(email)
    
	// Verificação rápida se está vazio
    se (email == "" ou tx.numero_caracteres(email) == 0) {
        retorne falso
    }
   // Se o tamanho for zero, já é inválido
    se (tamanhoEmail == 0) {
        check = falso
    }

    // Percorre o email caractere por caractere
    se (check) {
        para (i = 0; i < tamanhoEmail; i++) {
            c = tx.obter_caracter(email, i)

		// Conta ocorrências de '@' e armazena sua posição
            se (c == '@') {
                contadorArroba = contadorArroba + 1
                se (contadorArroba == 1) {
                    posArroba = i
                }
            }
		// Armazena posição do último '.'
            se (c == '.') {
                posPonto = i
            }
        }

       // Só pode haver um '@'
        se (contadorArroba != 1) {
            check = falso
        }

         // '@' não pode ser o primeiro nem o último caractere
        se (check e (posArroba == 0 ou posArroba == tamanhoEmail - 1)) {
            check = falso
        }

        // '.' tem que existir e não pode estar no fim
        se (check e (posPonto == -1 ou posPonto == tamanhoEmail - 1)) {
            check = falso
        }

       // '.' deve vir depois do '@' com pelo menos um caractere entre eles
        se (check e (posPonto - posArroba <= 1)) {
            check = falso
        }

         // '.' não pode ser o primeiro nem o último caractere do email
        se (check e (tx.obter_caracter(email, 0) == '.' ou tx.obter_caracter(email, tamanhoEmail - 1) == '.')) {
            check = falso
        }
    }
	// Retorna verdadeiro se passou em todas as validações
    retorne check
}
  }

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3875; 
 * @DOBRAMENTO-CODIGO = [39, 173, 188, 235, 259, 305, 318, 427, 553, 598, 649, 678, 729, 746, 764, 836, 891, 929, 959, 985];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */