main() {
  // Tipo de dados

  // String
  var nome = "Mariel";
  String sobrenome = "Couto";
  print(nome + sobrenome);
  print("${nome.toUpperCase()} $sobrenome");

  // Int
  int idade = 23;
  print("${nome.toUpperCase()} $sobrenome e tenho $idade anos");

  // Double
  double peso = 105.8;
  print("${nome.toUpperCase()} $sobrenome e tenho $idade anos, ${peso.abs()}");

  // Boolean
  bool ehGeliz = true;

  // dynamic
  dynamic qualquerCoisa = 22;
  qualquerCoisa = 22;

  // Constantes
  final nomeFinal = "Lebron";
  // nomeFinal.padRight(" James");
  const sobrenomeConst = " James";
  print("$nomeFinal $sobrenomeConst");
}
