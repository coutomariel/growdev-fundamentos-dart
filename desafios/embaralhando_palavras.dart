import 'dart:math';

/**
 * Vamos lá devs
 * Esta atividade vai fazer você usar sua criatividade, 
 * Dado uma palavra qualquer, deve ser escrito no terminal esta mesma palavra embaralhada.
 * Para embaralhar use usa criatividade.
 * Exemplo:
 * growdev = worgved
 */

main() {
  var texto = "Growdev";
  print("${texto} => ${palavraEmbaralhada("growdev")}");
}

String palavraEmbaralhada(String s) {
  String novaPalavra = "";

  while (s.length > 0) {
    var indexCaractTransfer = Random().nextInt(s.length);
    novaPalavra += s.substring(indexCaractTransfer, indexCaractTransfer + 1);
    s = s.replaceRange(indexCaractTransfer, indexCaractTransfer + 1, "");
  }

  return novaPalavra;
}
