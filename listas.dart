main() {
  // Trabalhando com arrays

  final nomes = ["Edson", "Pedro", "João"];
  nomes.add("Roldao");
  print(nomes);

  print("Percorrendo FOR IN");
  for (var nome in nomes) {
    print("nome: $nome");
  }

  print("Percorrendo FOR EACH");
  nomes.forEach((element) => print(element));

  print("Incluir [Mariel] na posição 1:");
  nomes.insert(1, "Mariel");
  print(nomes);

  // Ativida:
  // Criar lista de notas, usando for de 10 iterações e removendo notas mesnores que 5;
}
