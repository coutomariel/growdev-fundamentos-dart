/**
 * Os primos fatoriais do número 13195 são 5, 7, 13 e 29.
 * Logo, o maior primo fatorial é 29.
 * Encontre o maior primo fatorial do número 600851475143.
 * Um primo fatorial é aquele que divide corretamente o número alvo/restante até chegar ao 1
 * 
 * Exemplo
 * 13195  | 5
 * 2639   | 7
 * 377    | 13
 * 29     | 29
 * 1
 */

main() {
  // var numero = 13195;
  var numero = 600851475143;

  List<int> primos = obterListaPrimos(1000);

  var maiorPrimoFatorial = 0;

  while (numero > 1) {
    for (var primo in primos) {
      var result = numero / primo;
      bool ehDivisor = result - result.toInt() == 0;
      if (ehDivisor) {
        var decremento = numero - result;
        print(
            "<$ehDivisor> $primo é divisor de $numero -> resto: ${result.toInt()}");
        numero -= decremento.toInt();
        if (primo > maiorPrimoFatorial) maiorPrimoFatorial = primo;
      }
    }
  }
  print("Maior divisor: $maiorPrimoFatorial");
}

List<int> obterListaPrimos(int qtdPrimos) {
  int totalDivisores;
  List<int> listaPrimos = [];

  int iterador = 1;

  while (listaPrimos.length < qtdPrimos) {
    totalDivisores = 0;

    for (var i = 1; i <= iterador; i++) {
      if (iterador % i == 0) totalDivisores++;
    }

    if (totalDivisores == 2) {
      listaPrimos.add(iterador);
    }
    iterador++;
  }

  return listaPrimos;
}
