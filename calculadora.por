programa {

  inclua biblioteca Util --> u

  funcao inteiro somar(inteiro a, inteiro b) {
    retorne 1
  }

  funcao inteiro subtrair(inteiro a, inteiro b) {
    retorne 1
  }

  funcao inteiro multiplicar(inteiro a, inteiro b) {
    retorne 1
  }

  funcao inteiro dividir(inteiro a, inteiro b) {
    retorne 1
  }

  funcao inteiro calculadora() {
    inteiro a, b
      cadeia op = ""
      escreva("\nDigite o 1o número: ")
      leia(a)
      escreva("\nDigite o 2o número: ")
      leia(b)
      escreva("\nDigite a operação (+, -, * ou /):")
      leia(op)

      enquanto(op != "+" e op != "-" e op != "*" e op != "/") {
        escreva("\nDigite uma operção válida.\n")
        escreva("\nDigite a operação (+, -, * ou /):")
        leia(op)
      }

      escreva("\nResultado = ")
      escolha(op) {
        caso "+": retorne somar(a, b) 
        caso "-": retorne subtrair(a, b) 
        caso "*": retorne multiplicar(a, b) 
        caso "/": retorne dividir(a, b) 
      }
      retorne 0
  }

  funcao inicio() {
    cadeia entrada = ""
    enquanto(verdadeiro) {
      escreva("====== CALCULADORA ======\n")

      escreva(calculadora())

      escreva("\nDeseja encerrar o programa?(s/n): ")
      leia(entrada)

      se (entrada == "s") {
        pare
      }

      u.aguarde(850)
      limpa()
    }
  }
}
