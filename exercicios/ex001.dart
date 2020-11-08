import 'dart:io';

import 'dart:math';

main() {
  print("Informe seu peso:");
  var peso = double.tryParse(stdin.readLineSync());
  print("Informe sua altura:");
  var altura = double.tryParse(stdin.readLineSync());

  final IMC = peso / pow(altura, 2);
  print("Seu IMC É: ${IMC.roundToDouble()}");
}
