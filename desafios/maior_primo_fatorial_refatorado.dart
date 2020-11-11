/**
 * Alterar o código da atividade fatores primordiais para adicionar em uma lista 
 * todos os fatores primordiais dos números pedido na atividade. 
 * 
 * Além de guardar os números primordiais em uma lista, no final do programa 
 * deve ser somado todos os números desta lista e verificar se o número da soma 
 * é igual aos da atividade
 */

main() {
  // var numero = 13195;
  var numero = 600851475143;
  print("Número a fatorar: $numero");

  List<int> primos = obterListaPrimos(1000);
  List<int> divisores = [];

  var maiorPrimoFatorial = 0;

  while (numero > 1) {
    for (var primo in primos) {
      var result = numero / primo;
      bool ehDivisor = result - result.toInt() == 0;
      if (ehDivisor) {
        var decremento = numero - result;
        numero -= decremento.toInt();
        divisores.add(primo);
        if (primo > maiorPrimoFatorial) maiorPrimoFatorial = primo;
      }
    }
  }

  print("Maior divisor: $maiorPrimoFatorial");
  print("Divisores: $divisores");
  var provaReal = divisores.reduce((acc, e) => acc * e);
  print("Prova real multiplicando todos os divisores => $provaReal");
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
