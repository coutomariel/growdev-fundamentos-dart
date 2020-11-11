class Pessoa {
  // atributos
  String nome;
  int idade;

  // Construtores
  Pessoa(this.nome, this.idade);
  Pessoa.opcional({this.nome, this.idade});

  // comportamentos (métodos)
  void andar() {
    print("Andando");
  }
}

main() {
  var pessoa = Pessoa("Mariel", 34);

  var pessoa2 = Pessoa.opcional(nome: "Mariel");
  print(pessoa);
  pessoa.andar();

  print("Pessoa 2: ${pessoa2.nome}");
}
