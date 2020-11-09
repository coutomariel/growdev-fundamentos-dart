/**
 * Fazer um programa que percorra um range de números e adicione em uma lista. 
 * Crie uma segunda lista onde as posições pares são o dobro da lista original 
 * e as posições ímpares são o triplo
 */
main() {
  var lista = criarListaDeTamanho(10);
  print("Lista original: $lista");

  var ehPar = (int x) => x % 2 == 0 ? true : false;
  var dobraValor = (int x) => x * 2;
  var triplicaValor = (int x) => x * 3;

  var novaLista = lista.map((e) => ehPar(e) ? dobraValor(e) : triplicaValor(e));
  print("Lista modificada: ${novaLista.toList()}");
}

List<int> criarListaDeTamanho(int tamanho) {
  List<int> lista = [];
  for (var i = 0; i < tamanho; i++) {
    lista.add(i + 1);
  }
  return lista;
}
