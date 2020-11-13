import 'dart:math';

main() {
  const GABARITO = ['A', 'C', 'A', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];
  const OPCOES = ['A', 'B', 'C'];

  List<Pessoa> pessoas = [];

  pessoas.add(Pessoa(nome: "Júlia", idade: 17));
  pessoas.add(Pessoa(nome: "Rubem", idade: 55));
  pessoas.add(Pessoa(nome: "Patricia", idade: 32));
  pessoas.add(Pessoa(nome: "Moisés", idade: 30));

  List<Aluno> alunos = [];

  pessoas.forEach((pessoa) {
    alunos.add(Aluno(pessoa: pessoa));
  });

  print("Lista de alunos:");
  alunos.forEach((aluno) {
    List<String> respostas = geradorRespostas(GABARITO.length, OPCOES);

    var novaNota = atualizaNota(respostas, GABARITO).toDouble();
    aluno.nota = novaNota;
    aluno.status = novaNota >= 4 ? "Aprovado" : "Reprovado";

    print(
        "Aluno: ${aluno.pessoa.nome} - ${aluno.nota.toString()} - ${aluno.status}");
  });

  Turma turma = Turma(alunos: alunos);
  print("\nTotal alunos: ${turma.alunos.length}");
  print("Soma total das notas: ${turma.getSumNotas()}");
  print("Média das notas: ${turma.getAvgNotas()}");

  print("\nFiltro alunos aprovados:");
  var alunosAprovados = turma.getAprovados();
  alunosAprovados.forEach((aluno) {
    print("${aluno.pessoa.nome} - ${aluno.nota} - ${aluno.status}");
  });

  print("\nFiltro alunos reprovados:");
  var alunosReprovados = turma.getReprovados();
  alunosReprovados.forEach((aluno) {
    print("${aluno.pessoa.nome} - ${aluno.nota} - ${aluno.status}");
  });

  var melhorAluno = turma.getAlunoMaiorNota();
  print(
      "\nMelhor desempenho:${melhorAluno.pessoa.nome}-nota:${melhorAluno.nota}");

  var piorAluno = turma.getAlunoMenorNota();
  print("Pior desempenho:${piorAluno.pessoa.nome}-nota:${piorAluno.nota}");
}

class Pessoa {
  String nome;
  int idade;

  Pessoa({this.nome, this.idade});
}

class Aluno {
  Pessoa pessoa;
  double _nota;
  String _status;

  Aluno({this.pessoa});

  double get nota {
    return _nota;
  }

  void set nota(double novaNota) {
    _nota = novaNota;
  }

  String get status {
    return _status;
  }

  void set status(String novoStatus) {
    _status = novoStatus;
  }

  bool isAprove() {
    return this._status == "Aprovado";
  }
}

class Turma {
  List<Aluno> alunos;

  Turma({this.alunos});

  // Ação de calcular e retornar o total das notas
  double getSumNotas() {
    return this.alunos.fold(0, (acc, e) => acc += e.nota);
  }

  // Ação de calcular e retornar a média dos alunos
  double getAvgNotas() {
    return this.getSumNotas() / this.alunos.length;
  }

  // Ação de retornar uma lista de alunos aprovados
  List<Aluno> getAprovados() {
    var alunosAprovados = this.alunos.where((aluno) => aluno.isAprove());
    return alunosAprovados.toList();
  }

  // Ação de retornar uma lista de alunos reprovados
  List<Aluno> getReprovados() {
    var alunosReprovados = this.alunos.where((aluno) => !aluno.isAprove());
    return alunosReprovados.toList();
  }

  // Ação de retornar o melhor aluno (nota mais alta)
  Aluno getAlunoMaiorNota() {
    List<Aluno> orderedList = this.alunos;
    orderedList.sort((a, b) => b.nota.compareTo(a.nota));
    return orderedList[0];
  }

  // Ação de retornar o pior aluno (nota mais baixa)
  Aluno getAlunoMenorNota() {
    List<Aluno> orderedList = this.alunos;
    orderedList.sort((a, b) => a.nota.compareTo(b.nota));
    return orderedList[0];
  }
}

List<String> geradorRespostas(int qtdRespostas, List<String> opcoes) {
  List<String> notas = [];

  for (var i = 0; i < qtdRespostas; i++) {
    var respostaAleatoria = opcoes[Random().nextInt(opcoes.length)];
    notas.add(respostaAleatoria);
  }

  return notas;
}

int atualizaNota(List<String> respostas, List<String> gabarito) {
  int acertos = 0;

  for (var i = 0; i < respostas.length; i++) {
    if (respostas[i] == gabarito[i]) {
      acertos++;
    }
  }

  return acertos;
}
