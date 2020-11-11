main() {
  var alunos = {
    {"nome": "Mariel", "idade": 34},
    {"nome": "Joel", "idade": 21}
  };

  alunos.forEach((element) {
    print(alunos.toList());
  });

  var aluno = <String, dynamic>{"nome": "Mariel", "idade": 34};
  aluno.forEach((key, value) {
    print(key);
    print(value);
  });

  aluno.keys.forEach((element) {
    print(element.toString());
  });

  aluno.addAll({"status": "aprovado"});
  print(aluno);
}
