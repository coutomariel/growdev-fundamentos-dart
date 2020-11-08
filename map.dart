main() {
  var numeros = [5, 14, 25, 7, 18, 13, 5, 14];
  print(numeros);

  List<int> numerosDobrados = numeros.map((e) => e * 2).toList();
  print(numerosDobrados);

  print("Números ordenados:");
  numerosDobrados.sort((a, b) => a.compareTo(b));
  print(numerosDobrados);
}
