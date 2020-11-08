// ler 3 numeros no terminal e devolver a media

import 'dart:io';

main() {
  var numeros = [];
  var count = 3;

  print("Informe 3 valores:");
  for (var i = 0; i < count; i++) {
    numeros.add(int.tryParse(stdin.readLineSync()));
  }

  var soma = numeros.reduce((value, element) => value += value);
  print("Média: ${soma / numeros.length}");
}
