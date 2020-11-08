// Atividades

// printar multiplo de 3 e 5 na tela

// ler 3 numeros no terminal e devolver a media

main() {
  int numero = 0;

  while (numero <= 100) {
    var ehMultiploDe3 = numero % 3 == 0 ? true : false;
    var ehMultiploDe5 = numero % 5 == 0 ? true : false;

    if (ehMultiploDe3) {
      print("$numero eh multiplo de 3");
    } else if (ehMultiploDe5) {
      print("$numero eh multiplo de 5");
    }

    numero++;
  }
}
