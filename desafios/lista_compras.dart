import 'dart:io';

main() {
  /** 
   * Receba do usuário 5 itens de uma lista de compras. 
   * Cada item é composto pelo Nome e pela quantidade. 
   * Crie um Map com a informação de cada item e adicione em uma lista. 
   * Por fim percorra a lista imprimindo os itens cadastrados.

   */
  int count = 5;

  List<Map<String, dynamic>> listaCompras = [];

  print("Informe 5 itens de compra:");
  for (var i = 0; i < count; i++) {
    stdout.write("Nome:");
    var nome = stdin.readLineSync();
    stdout.write("Quantidade:");
    var quantidade = int.tryParse(stdin.readLineSync());

    var item = <String, dynamic>{"nome": nome, "qtd": quantidade};
    listaCompras.add(item);
  }

  print("Lista de compras:");
  listaCompras.forEach((item) {
    print("${item["quantidade"]} - ${item["nome"]} ");
  });
}
