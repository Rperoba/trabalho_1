import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => pgDeTarefas();
}

class pgDeTarefas extends State<MyStatefulWidget> {
  int numTarefas = 4;

  void _addTarefa() => numTarefas++;

  List<Container> _criaTarefas(int count) => List.generate(
        count,
        (i) => Container(
          child: Row(
            // transformar em funcao e criar varios
            children: <Widget>[
              Flexible(
                  flex: 3, child: Text("Hora")), // colocar um contador de hora
              Spacer(),
              Flexible(
                  flex: 12,
                  child: Text(
                    "Tarefa",
                    textScaleFactor: 1.5,
                  )), // colocar um slot para escrever
            ],
          ),
          height: 50,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dia D'),
      ),
      body: Container(
        child: ListView(
          children: _criaTarefas(numTarefas),
        ),
      ),
      //Botão para adicionar mais tarefas
      //IDEIA ter sempre um item "novo", sem precisar clicar em um botão para cria-lo
      //a tela começa com uma aba de tarefa e ao ser preenchida, aparece uma nova aba automaticamente
      floatingActionButton: FloatingActionButton.extended(
        //TODO trocar para um outro codigo e criar uma nova main
        onPressed: () {
          setState(() {
            _addTarefa();
          });
        },
        label: Text("Adicione uma tarefa"),
        backgroundColor: Colors.green,
      ),
    );
  }
}