main() {
  /**
  // Criar ma lista de alunos com as keys Nome, Idade, Situacao, Nota
  // A partir da lista de alunos criar uma lista somente com as notas dos alunos
  // A partir da lista de alunos criar uma lista de alunos aprovados (nota maior que 5)
  // Por fim remover a key Idade de todos os alunos
   */

  var alunos = {
    {"nome": "Mariel", "idade": 34, "situacao": "Aprovado", "nota": 8.9},
    {"nome": "Abreu", "idade": 29, "situacao": "Reprovado", "nota": 3.0},
    {"nome": "João", "idade": 18, "situacao": "Aprovado", "nota": 9.7},
    {"nome": "Pedro", "idade": 34, "situacao": "Aprovado", "nota": 7.6},
    {"nome": "Roberto", "idade": 31, "situacao": "Aprovado", "nota": 8.2},
  };

  var notas = alunos.map((aluno) => aluno["nota"] as double);
  // .where((element) => element > 5);

  var aprovados = alunos.where((aluno) {
    return aluno["nota"] as double > 5;
  });

  print(notas);
  print(aprovados.toList());
  print("Alunos sem idade: $alunos");
}
