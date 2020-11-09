/**
 * Seguinte a lista com os 6 primeiros números primos: 2, 3, 5, 7, 11 e 13, 
 * nos podemos ver que o número primo 13 é o 6º
 * Desenvolva uma aplicação que encontre o número primo de posição 10001
 */

main() {
  const totalNumerosPrimos = 10001;

  int totalDivisores;
  var listaPrimos = [];

  int iterador = 1;

  while (listaPrimos.length < 10001) {
    totalDivisores = 0;

    for (var i = 1; i <= iterador; i++) {
      if (iterador % i == 0) totalDivisores++;
    }

    if (totalDivisores == 2) {
      listaPrimos.add(iterador);
    }
    iterador++;
  }

  print("Total numros primos gerados: ${listaPrimos.length}");
  print("Número primo na pos [10001] ${listaPrimos[10000]}");
}
