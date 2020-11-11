main() {
  var frutas = {"Melancia", "Melao"};
  var frutas2 = {"Melancia", "Melao", "Abacate"};

  var interseccao = frutas.intersection(frutas2);
  print(interseccao);

  var union = frutas.union(frutas2);
  print(union);
}
