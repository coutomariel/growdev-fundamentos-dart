/**
 * 
 * Dado um número qualquer, é preciso escrever no terminal o inverso do mesmo.
 * Exemplo:
 * 150 = 051
 *  */

main() {
  int numero = 335;
  print("Número original: $numero");

  String textoInvertido = inverterConteudo(numero);
  print("Número invertido: $textoInvertido");
}

String inverterConteudo(int numero) {
  String textoOriginal = numero.toString();
  String textoInverso = "";
  int numCaracteres = textoOriginal.length;

  for (var i = numCaracteres - 1; i >= 0; i--) {
    textoInverso += textoOriginal.substring(i, i + 1);
  }

  return textoInverso;
}
