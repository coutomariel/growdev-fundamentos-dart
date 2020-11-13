import 'dart:math';

main() {
  const GABARITO = ['A', 'C', 'A', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];
  const OPCOES = ['A', 'B', 'C'];

  var alunos = [
    {"nome": "João", "idade": 31},
    {"nome": "Alberto", "idade": 22},
    {"nome": "Thiago", "idade": 31},
    {"nome": "Elias", "idade": 31}
  ];

  print("Valores iniciais:");
  print("Gabarito: $GABARITO");

  alunos.forEach((aluno) {
    aluno.addAll({"respostas": geradorRespostas(GABARITO.length, OPCOES)});
  });

  alunos.forEach((aluno) {
    var nota = calculaNota(aluno["respostas"], GABARITO);
    var status = nota >= 4 ? "Aprovado" : "Reprovado";
    aluno.addAll({"nota": nota, "status": status});
    print(
        "Aluno:${aluno["nome"]}:${aluno["respostas"]} nota:${aluno["nota"]} - ${aluno["status"]}");
  });
}

// funcão geradora de respostas
List<String> geradorRespostas(int qtdRespostas, List<String> opcoes) {
  List<String> notas = [];

  for (var i = 0; i < qtdRespostas; i++) {
    var respostaAleatoria = opcoes[Random().nextInt(opcoes.length)];
    notas.add(respostaAleatoria);
  }

  return notas;
}

// função cálculo de notas
int calculaNota(List<String> respostas, List<String> gabarito) {
  int acertos = 0;

  for (var i = 0; i < respostas.length; i++) {
    if (respostas[i] == gabarito[i]) {
      acertos++;
    }
  }

  return acertos;
}
