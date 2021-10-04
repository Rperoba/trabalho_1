import 'package:flutter/material.dart';
import 'package:trabalho_1/calendario.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int numTarefas = 24;

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
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Container(
          child: ListView(
            children: _criaTarefas(numTarefas),
          ),
        ),
        //Botão para adicionar mais tarefas

        floatingActionButton: FloatingActionButton.extended(
          //TODO trocar para um outro codigo e criar uma nova main
          onPressed: () {
            /*
            setState(() {
              _addTarefa();
            });*/
          },
          label: Text("Adicione uma tarefa"),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
