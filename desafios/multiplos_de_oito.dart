import 'dart:io';

/**
 * Fazer um programa que recebe um número do usuário pelo terminal 
 * que seja maior que 200 e imprimir todos os números múltiplos de 8
 */

main() {
  int numero = 0;
  var ehValido = (int i) => i > 200 ? true : false;
  var ehMultiploDeOito = (int i) => i % 8 == 0 ? true : false;

  print("Informe um número superior a 200:");
  do {
    numero = int.tryParse(stdin.readLineSync());
    if (ehValido(numero)) {
      imprimirMultilos(numero, ehMultiploDeOito);
    } else {
      print("O número informado precisa ser maior que 200, tente novamente:");
      continue;
    }
  } while (numero != 0);
}

void imprimirMultilos(int numero, bool ehMultiploDeOito(int i)) {
  for (var i = 1; i < numero; i++) {
    if (ehMultiploDeOito(i)) {
      stdout.write("-$i");
    }
  }
}
