programa {

  inclua biblioteca Matematica --> mat  // Inclui a biblioteca Matemática
  
  funcao inicio() {

    real valorImovel,valorEntrada,juros,qntparcelas,montante,montanteJuros,parcelaMensal

    escreva("Digite o preço do Imóvel: ")
    leia(valorImovel)

    escreva("Digite o valor de Entrada: ")
    leia(valorEntrada)

    escreva("Digite qntd de parcelas: ")
    leia(qntparcelas)

    juros = 1.01 // Variável que armazena o valor de juros ao mês.
    montante = valorImovel - valorEntrada // Operação de subtração do valor de entrada sobre o valor do imóvel e armazena o resultado na variável "montante".
    
    montanteJuros =  montante * mat.potencia(juros,qntparcelas) // Cálculo de juros sobre o valor montante 
    parcelaMensal = montanteJuros/qntparcelas // Operação para determinar o valor de parcela mensal do imóvel

    escreva("\nValor do Imóvel: ","R$",valorImovel)
    escreva("\nValor de entrada: ","R$",valorEntrada)
    escreva("\nQuantidade de parcelas: ",qntparcelas)
    escreva("\nTaxa de Juros(% ao Mês): ",mat.arredondar(((juros - 1)*100),2))
    escreva("\nValor a Parcelar: ","R$",mat.arredondar(montanteJuros,2))
    escreva("\nValor parcela: ","R$",mat.arredondar(parcelaMensal,2))

  }
}
