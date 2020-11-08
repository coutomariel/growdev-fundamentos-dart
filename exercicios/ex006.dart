import 'dart:math';

main() {
  // Trabalhando com arrays

  // Atividade:
  // Criar lista de notas, usando for de 10 iterações e removendo notas mesnores que 5;

  var notas = [];
  for (var i = 0; i < 10; i++) {
    notas.add(Random().nextInt(11));
  }
  print(notas);

  var maioresQueCinco = notas.where((nota) => nota > 5).toList();
  print(maioresQueCinco);

  notas.removeWhere((nota) => nota <= 5);
  print(notas);
}
