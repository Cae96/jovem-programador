programa
{

  inclua biblioteca Util  // importando funcao util
  inclua biblioteca Texto // importando funcao texto
  inclua biblioteca Tipos

	cadeia usuario,senha, email, dtnascimento, pais, nome
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
   
   // Se o usuario for um usuario do governo abrir� o menu_governo, caso o usuario seja um imigrante abrir� o menu_imigrante
   // Aqui deveria se conectar ao banco de dados
	
				se 
				(bancoUsuario[auxiliar][2] == "1")
				{        
					menuGoverno()
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

		escreva("==========================================\n")
		escreva(" \t\t     PORTAS ABERTAS   \n")
		escreva(" Sistema de Apoio ao Imigrante\n")
		escreva("==========================================\n")
		escreva("Apoio para quem come�a uma nova vida longe de casa\n")
		escreva("Nosso objetivo � acolher, informar e conectar, para que voc� se sinta em casa, onde quer que esteja.")
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
				escreva("Email j� utilizado, escolha outro\n")
			}
			senao
			{
				escreva("Email OK\n")
			}	
		}
		enquanto (check ==1)
	}

	funcao cadeia ehnumero(cadeia a)
	{
		se (a == "0" ou a == "1" ou a == "2" ou a == "3" ou a == "4" ou a == "5" ou a == "6" ou a == "7" ou a == "8" ou a == "9")
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

			

				se(ehnumero(a)=="falso" ou ehnumero(b)=="falso" ou c!="/" ou ehnumero(d)=="falso" ou ehnumero(ee)=="falso" ou f!="/" ou ehnumero(g)=="falso" ou ehnumero(h)=="falso" ou ehnumero(i)=="falso" ou 
				ehnumero(j)=="falso")
				{
					escreva("formato invalido, tente novamente\n")
				}
				senao
				{
					inteiro dia = Tipos.cadeia_para_real(Texto.extrair_subtexto(dtnascimento,0,2))
					inteiro mes = Tipos.cadeia_para_real(Texto.extrair_subtexto(dtnascimento,3,5))
					inteiro ano = Tipos.cadeia_para_real(Texto.extrair_subtexto(dtnascimento,6,10))
					
					se (1920<=ano e ano<=2025)
					{
						se (0<mes e mes<=12)
						{
							se(mes==2) // Validacoes para o mes de fevereiro
							{
								se((ano-4*(ano/4))==0) // Checa se o ano foi bissexto ou nao
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
									se(dia<=28) // Em caso de ano nao bissexto
									{
										check = 1
									}
									senao
									{
										escreva("Data invalida, tente novamente\n")	
									}
								}
							}
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
							}
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
		enquanto (check ==0)
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
		"C�te d'Ivoire","Croatia","Cuba","Cura�ao","Cyprus","Czechia","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Eswatini",
		"Ethiopia","Falkland Islands (Malvinas)","Faroe Islands","Fiji","Finland","France","French Guiana","French Polynesia","French Southern Territories","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar",
		"Greece","Greenland","Grenada","Guadeloupe","Guam","Guatemala","Guernsey","Guinea","Guinea-Bissau","Guyana","Haiti","Heard Island and McDonald Islands","Holy See","Honduras","Hong Kong","Hungary","Iceland",
		"India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kiribati","Korea (North)","Korea (South)","Kuwait","Kyrgyzstan",
		"Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macao","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Martinique","Mauritania",
		"Mauritius","Mayotte","Mexico","Micronesia (Federated States of)","Moldova (Republic of)","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal",
		"Netherlands","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Niue","Norfolk Island","North Macedonia","Northern Mariana Islands","Norway","Oman","Pakistan","Palau","Palestine, State of","Panama",
		"Papua New Guinea","Paraguay","Peru","Philippines","Pitcairn","Poland","Portugal","Puerto Rico","Qatar","R�union","Romania","Russian Federation","Rwanda","Saint Barth�lemy",
		"Saint Helena, Ascension and Tristan da Cunha","Saint Kitts and Nevis","Saint Lucia","Saint Martin (French part)","Saint Pierre and Miquelon",
		"Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten (Dutch part)","Slovakia","Slovenia",
		"Solomon Islands","Somalia","South Africa","South Georgia and the South Sandwich Islands","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Svalbard and Jan Mayen","Sweden","Switzerland",
		"Syrian Arab Republic","Taiwan, Province of China","Tajikistan","Tanzania, United Republic of","Thailand","Timor-Leste","Togo","Tokelau","Tonga","Trinidad and Tobago","Tunisia","Turkey",
		"Turkmenistan","Turks and Caicos Islands","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom of Great Britain and Northern Ireland","United States of America",
		"United States Minor Outlying Islands","Uruguay","Uzbekistan","Vanuatu","Venezuela (Bolivarian Republic of)","Viet Nam","Virgin Islands (British)","Virgin Islands (U.S.)","Wallis and Futuna",
		"Western Sahara","Yemen","Zambia","Zimbabwe","Outros - Pais nao listado"}


		inteiro indice
		inteiro check = 0
		
		faca
		{
		
			//limpa()
			//para (indice; indice <rango; indice++)
			//{
			//	escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
			//}
			escreva("\nDigite o codigo do pais (ex: Brasil, digite: BR), em caso de duvida selecione o numero de acordo com a letra inicial do seu pais")
			escreva ("\nPaises de A-C: 1 \nPaises de D-H: 2 \nPaises de I-M: 3 \nPaises de N-S: 4 \nPaises de T-Z: 5")
			escreva("\nQual sua nacionalidade? ")
			leia(pais)
			
			para (inteiro posicao = 0; posicao < 250; posicao++)
			{
				se (pais == codigos[posicao])
				{
					check=1
					pare
				}
	
	
			}

			se (pais =="1" ou pais=="2" ou pais=="3" ou pais=="4"ou pais=="5")
			{
				inteiro opcao = Tipos.cadeia_para_real(Texto.extrair_subtexto(pais,0,1))
			
				escolha (opcao)	
					{
					caso 1: //Paises de A-C
						limpa()
				 		escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =0; indice <60; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare   // Impede que as instru��es do caso 2 sejam executadas
				 		
				 	caso 2: 
				 		limpa()
					 	escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =60; indice <102; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare   // Impede que as instru��es do caso 2 sejam executadas
				 		
				 	caso 3: 
				 		limpa()
					 	escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =102; indice <153; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare
				 		
				 	caso 4: 
				 		limpa()
					 	escreva("Codigo do pais\t\tNome do Pais\n")
						para (indice =153; indice <217; indice++)
						{
							escreva(codigos[indice],"\t\t\t",nomes[indice],"\n")
						}
				 		pare

				 	caso 5: 
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
		 	{
		 		para (inteiro posicao = 0; posicao < 250; posicao++)
				{
					se (pais == codigos[posicao])
					{
						check=1
						pare
					}		
				}
			}
			

		}
		enquanto (check==0)
		
	}
		
	funcao cadastro()
	{

	cadeia nomecompleto, dt_nascimento, nacionalidade, doc_identificacao
	inteiro check = 0

	limpa()
	escreva("      ::::: ??  Portal de Apoio ao Imigrante :::::  \n")
	// escreva("Escolha um nome de usuario: ")
	// leia(usuario)
	consultarnome() // Validar� o nome de usuario
	consultarsenha()
	escreva("Qual seu nome completo? ")
	leia(nomecompleto)
	consultar_data_nascimento()
	consultar_pais()
	escreva("Qual o numero/codigo do seu documento de identifica��o? ")
	leia(doc_identificacao)
	consultaremail()
	

	// Adiciona os dados ao banco de dados
	posicaoAuxiliar = localizacao()
	bancoUsuario[posicaoAuxiliar][0] = usuario
	bancoUsuario[posicaoAuxiliar][1] = senha
	bancoUsuario[posicaoAuxiliar][2] = "2" // Deve ser sempre assignado o numero 2, pois � um cadastro de Imigrante
	bancoUsuario[posicaoAuxiliar][3] = nomecompleto
	bancoUsuario[posicaoAuxiliar][4] = dtnascimento
	bancoUsuario[posicaoAuxiliar][5] = pais
	bancoUsuario[posicaoAuxiliar][6] = doc_identificacao
	bancoUsuario[posicaoAuxiliar][7] = email
	}		


funcao menuGoverno() //menu governo
  {
   //Tela inicial menu governo
	cadeia entrada
     faca {
     	
		limpa()
	     escreva(":::::  Portal de Apoio ao Imigrante :::::  \n")
		escreva("    MENU GOVERNO \n")
		escreva("\nESCOLHA UMA OP��O: ")
		escreva("\n(1) CRIAR NOVO CADASTRO")
		escreva("\n(2) ALTERAR CADASTRO")
		escreva("\n(3) VER SITUA��O DOS CADASTROS")
		escreva("\n(4) SAIR MENU GOVERNO\n")
	     leia(entrada)
	
	
		 se 
			(entrada == "1")
				{   
					cadastro() // Chamando fun��o de cadastro escolhido pelo usuario
		  }senao se 
			(entrada == "2")
					{
				    alterarCadastro() //Chamando fun��o de alterar cadastro escolhido pelo usuario
					}
			senao se 
			   (entrada == "3")
			      {
			      	mostrarCadastro() //Chamando fun��o de mostrar cadastro escolhido pelo usuario
			      }
			      senao se 
			   (entrada == "4")
			      {
	            escreva("Saindo do programa...\n") 
	            // Saindo do menu governo
			      
			      }
			      senao{
			      	escreva("Op��o inv�lida. Tente novamente.\n")
			      }
     }  
     enquanto (entrada != "4")
     		
    }
    
 funcao alterarCadastro(){ //Fun��o para alterar cadastros de imigrantes

	cadeia novoNome, novoEmail, novaSenha,stop
     
     limpa()
     escreva("     ALTERA��O DE CADASTRO     ")
	escreva("\nDigite o usuario que deseja alterar os dados: \n")
	leia(usuario)
	mostrarCadastroUsuario()
  
	para (inteiro posicao = 0; posicao < tamanho; posicao++){
		se (usuario == bancoUsuario[posicao][0])
          {  
	           //Altera��o de cadastro
			escreva("Digite o novo nome: ")
			consultarnome()

		
	           escreva("Digite a nova senha: ")
	           leia(novaSenha)
	           bancoUsuario[posicao][1] = novaSenha
	           escreva("SENHA ALTERADA: \n", novaSenha, "\n")
	 
	
			 escreva("Digite o novo email: ")
			 leia(novoEmail)
			 bancoUsuario[posicao][7] = novoEmail
	           escreva("EMAIL ALTERADO: \n", novoEmail, "\n")
	          
	           
			 escreva("Cadastro alterado com sucesso!\n")
	           Util.aguarde(400)
			 
          }senao se(posicao == tamanho){
	           escreva("Cadastro n�o encontrado.\n")
	           Util.aguarde(400)
        }
		   
	    	}
	    	escreva("Para voltar ao MENU GOVERNO digite enter")
	    	leia(stop)
   }
		          	          

  funcao mostrarCadastro(){ //fun��o para mostrar dados cadastrados

		cadeia stop
	     limpa()
	     escreva("::::: Portal de Apoio ao Imigrante :::::  \n")
	     escreva("        MENU GOVERNO    \n")
	     escreva(" DADOS CADASTRADOS :\n")
	     escreva("\nNome\t\tsenha\t\tData_nascimento\t\tNacionalidade\t\tDocumento\t\tEmail")

     	para (inteiro posicao = 0; posicao < tamanho; posicao++){

     	 escreva ("\n\n ",bancoUsuario[posicao][0], "\t\t ", bancoUsuario[posicao][1], "\t\t ", bancoUsuario[posicao][4],"\t\t\t\t",bancoUsuario[posicao][5],"\t\t\t\t",bancoUsuario[posicao][5],"\t\t",bancoUsuario[posicao][7],"\n")
     	 		se(bancoUsuario[posicao][0] == ""){
     	 		    pare
     	 		}

     	}
     	escreva("Para voltar ao MENU GOVERNO digite enter")
	    	leia(stop)
  }
   funcao mostrarCadastroUsuario(){ //fun��o para mostrar dados cadastrados

	    inteiro check =0
	    limpa()
	    escreva("::::: Portal de Apoio ao Imigrante :::::  \n")

     	para (inteiro posicao = 0; posicao < tamanho; posicao++){
			se(bancoUsuario[posicao][0] == usuario){
				escreva(" Usuario Cadastrado :\n")
				escreva("\nNome\t\tsenha\t\tData_nascimento\t\tNacionalidade\t\tDocumento\t\tEmail\n")
     	 		escreva ("\n\n ",bancoUsuario[posicao][0], "\t\t ", bancoUsuario[posicao][1], "\t\t ", bancoUsuario[posicao][4],"\t\t\t\t",bancoUsuario[posicao][5],"\t\t\t\t",bancoUsuario[posicao][5],"\t\t",bancoUsuario[posicao][7],"\n")
				check =1
				pare
		     }senao{}

     	}
     se (check == 0){
     	escreva("\nUsu�rio n�o encontrado!\n")
     }
      }
    
  }
