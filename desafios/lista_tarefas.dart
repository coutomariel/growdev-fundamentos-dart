import 'dart:io';

import 'dart:math';

main() {
  /** 
   * Receba do usuário no mínimo 5 tarefas do dia-a-dia. 
   * Á partir da quinta tarefa, quando o usuário digitar 'exit' parar a coleta 
   * de tarefas. 
   * 
   * Definir valores de "concluído" ou "não concluído" aleatoriamente para cada 
   * tarefa recebida. 
   * 
   * Em seguida  criar uma lista de tarefas concluídas e outra de tarefas não 
   * concluídas e imprimir ambas.
   * 
   * Dica: Use Map, List, e "lista.where".
   */

  List<Map<String, dynamic>> listaTarefas = [];
  var imput = "zero";

  print("Informe 5 itens de compra:");
  while ((listaTarefas.length < 5) || (imput != "exit")) {
    var minimoDeTarefas = listaTarefas.length >= 5;
    var msg_exit = minimoDeTarefas ? "ou [exit] para encerrar" : "";

    stdout.write("Adicione uma tarefa $msg_exit:");
    imput = stdin.readLineSync();
    if (imput == "exit") continue; //Para não atribuir tarefa

    var ehPar = Random().nextInt(11).isEven;
    var status = ehPar ? "Concluída" : "Não concluída";

    var tarefa = {"descricao": imput, "status": status};
    listaTarefas.add(tarefa);
  }

  print("\nTarefas concluidas:");
  print("---------------------");
  var tarefaConcluida = (tarefa) => tarefa["status"] == "Concluída";
  var listaTarefasConcluidas = listaTarefas.where(tarefaConcluida);

  listaTarefasConcluidas.forEach((tarefa) {
    print("${tarefa["descricao"]} - ${tarefa["status"]}");
  });

  print("\nTarefas pendentes:");
  print("---------------------");
  var tarefaPendente = (tarefa) => tarefa["status"] == "Não concluída";
  var listaTarefasPendentes = listaTarefas.where(tarefaPendente);

  listaTarefasPendentes.forEach((tarefa) {
    print("${tarefa["descricao"]} - ${tarefa["status"]}");
  });
}
