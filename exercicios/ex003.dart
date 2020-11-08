// Pedir doi numeros pelo terminal
// pedir operação
// Executar operação pelo switch e printar resultado na tela

import 'dart:io';

main() {
  print("Informe primeiro valor:");
  var primeiroValor = double.tryParse(stdin.readLineSync());

  print("Informe segundo valor:");
  var segundoValor = double.tryParse(stdin.readLineSync());

  print("Informe operação desejada:");
  var operacao = stdin.readLineSync();

  switch (operacao) {
    case "+":
      {
        print("Resultado da soma é: ${primeiroValor + segundoValor}");
      }
      break;
    case "-":
      {
        print("Resultado da subtração é: ${primeiroValor - segundoValor}");
      }
      break;
    case "*":
      {
        print("Resultado da multiplicação é: ${primeiroValor * segundoValor}");
      }
      break;
    case "/":
      {
        print("Resultado da divisão é: ${primeiroValor / segundoValor}");
      }
      break;
    default:
      {
        print("Deu ruim!!");
      }
  }
}
