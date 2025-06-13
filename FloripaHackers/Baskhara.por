programa {

	inclua biblioteca Matematica --> mat  // Inclui a biblioteca Matemática

  funcao inicio() {
  real a, b, c
  real delta
  real raiz1, raiz2
  real raiz_delta

  escreva("Dado a equação generica a X^2 + b X + c = 0")            // Entrada dos parametros a,b,c
  escreva("\nQual o valor de a? ")
  leia(a)
  escreva("Qual o valor de b? ")
  leia(b)
  escreva("Qual o valor de c? ")
  leia(c)

  delta = b*b - 4*a*c       // Calculo do valor de delta
  raiz_delta = mat.raiz(delta,2)

  se (a > 0){                     // Condicional para ver se a concavidade será voltada para cima ou para baixo
    escreva("\nConcavida para cima")
  }
  senao{
    escreva("\nConcavidade para baixo")
  }

  se (delta > 0){                           // Condicional caso o delta seja positivo, que significa que as duas raizes sao reais e distintas
    escreva("\nA equação possui 2 raizes reais e distintas")
    raiz1 = (-b + raiz_delta)/(2*a)
    raiz2 = (-b - raiz_delta)/(2*a)
    escreva("\nAs duas raizes são: ",raiz1," e ",raiz2)
  }
  senao se(delta == 0){         // Condicional caso delta seja 0, que significa que as duas raizes sao iguais
    escreva("\nA equação possui 2 raizes iguais")
    raiz1 = (-b)/(2*a)
    escreva("\nAs raizes são: ",raiz1)
  }
  senao{        // Condicional caso delta seja negativo, ou seja raizes nao reais
    escreva("\nA equação não possui raizes reais")
  }

  }
}