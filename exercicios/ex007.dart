import 'dart:math';

main() {
  // Trabalhando com arrays

  // Atividade:
  // Criar lista de notas, usando for de 10 iterações e removendo notas mesnores que 5;

  // Notas maiores que 7
  // Média das notas
  // melhor e pior nota

  var notas = [];
  for (var i = 0; i < 10; i++) {
    notas.add(Random().nextInt(11));
  }
  print(notas);

  var maioresQueSete = notas.where((nota) => nota > 7).toList();
  print("Notas maiores que 7$maioresQueSete");

  var somaDasNotas = notas.reduce((value, element) => value += element);
  var media = somaDasNotas / notas.length;
  print("Médias das notas: $media");

  var maiorNota =
      notas.fold(0, (maior, element) => element > maior ? element : maior);
  print("Maior nota: $maiorNota");

  var menorNota =
      notas.fold(0, (menor, element) => element < menor ? element : menor);
  print("Menor nota: $menorNota");
}
