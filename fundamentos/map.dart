main() {
  var numeros = [5, 14, 25, 7, 18, 13, 5, 14];
  print(numeros);

  List<int> numerosDobrados = numeros.map((e) => e * 2).toList();
  print(numerosDobrados);

  // Utilização
  print("Números ordenados:");
  numerosDobrados.sort((a, b) => a.compareTo(b));
  print(numerosDobrados);

  // utilização do reduce
  var soma = numeros.reduce((value, element) => value += element);
  print("Soma: $soma");
}
