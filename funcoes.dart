main() {
  // Funções normais
  imprimirNoTerminal();
  print(imprimirRetorno()); //
  // calcularDobro(50);
  // Parametros opcionis
  // Patametros obrigatórios

  // marca, nome, {portas, ar}

  // arrow functions

  // funcções anonimas
  print(criarCarro("Fiat", "Palio"));
  print(criarCarro("Fiat", "Palio", portas: 4, arCondicionado: true));
}

criarCarro(String marca, String modelo,
    {int portas = 2, bool arCondicionado = false}) {
  print("$marca - $modelo");
  var carro = {
    "marca": marca,
    "modelo": modelo,
    "portas": portas,
    "ar_condicionado": arCondicionado
  };

  return carro;
}

String imprimirRetorno() {
  return "Retornando valores pela função!";
}

void imprimirNoTerminal() {
  print("Imprimindo no terminal");
}
