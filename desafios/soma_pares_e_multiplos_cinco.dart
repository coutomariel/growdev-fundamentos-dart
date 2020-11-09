import 'dart:io';

/**
 * Receber um número do usuário pelo terminal
 *  
 * O programa só deve aceitar de entrada números pares, 
 * números com mais de 2 dígitos e números com menos de 5 dígitos
 * 
 * e fazer um programa que some os números pares 
 * e que não some os números múltiplos de 5. 
 */

main() {
  int numero;

  do {
    print("Informe um número par entre 100 e menor que 99999: ");
    numero = int.tryParse(stdin.readLineSync());

    if (!ehPar(numero)) print("$numero não é um numéro par!");

    if (!estaEntreMinimoEMaximo(numero))
      print("$numero não está entre 99 e 99.999");
  } while (!ehValido(numero));

  var resultado = somaParesEMultiploDeCinco(numero);
  print("Soma dos pares e não multiplos de 5: $resultado");
}

var ehValido = (int i) => ehPar(i) && estaEntreMinimoEMaximo(i);

var estaEntreMinimoEMaximo = (int i) => i > 99 && i < 100000;

var ehPar = (int i) => i % 2 == 0;

var ehMultiploDeCinco = (int i) => i % 5 == 0;

int somaParesEMultiploDeCinco(int numero) {
  var soma = 0;

  for (var i = 1; i <= numero; i++) {
    if (ehPar(i) && !ehMultiploDeCinco(i)) {
      soma += i;
    }
  }

  return soma;
}
