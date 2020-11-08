import 'dart:io';

main() {
  print("Informe um número:");
  var numero = int.tryParse(stdin.readLineSync());

  var ehPar = numero % 2 == 0 ? true : false;

  if (ehPar) {
    print("O número $numero é par!");
  } else {
    print("O número $numero é impar!");
  }
}
