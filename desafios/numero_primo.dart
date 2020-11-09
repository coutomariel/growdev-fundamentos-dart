/**
 * Fazer uma função com o nome ePrimo que recebe um número e retorne um booleano 
 * informando se o número é primo ou não (Você pode utilizar essa função para 
 * outras atividades com relação aos números primos)
 */

main() {
  print("Teste numero 12 eh primo? ${ehPrimo(12)}");
  print("Teste numero 5 eh primo? ${ehPrimo(5)}");
  print("Teste numero 7 eh primo? ${ehPrimo(7)}");
}

bool ehPrimo(int verificavel) {
  for (var i = 2; i < verificavel; i++) {
    if (verificavel % i == 0) {
      return false;
    }
  }
  return true;
}
