import 'package:flutter/material.dart';
import 'package:trabalho_1/main.dart';
import 'package:trabalho_1/Database.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => pgDeTarefas();
}

class pgDeTarefas extends State<MyStatefulWidget> {
  int numTarefas = 4;
  String minhaTarefa = "";
  // ver se dia existe no banco de dados
  //se existir pegar as informacoes dele
  //se nao existir, criar um novo
  //Dia diaAtual = new Dia(data: 01011997, tarefa: "", hora: 0, feito: 0);
  void _addTarefa() => numTarefas++;

  List<Container> _criaTarefas(int count) => List.generate(
        count,
        (i) => Container(
          child: Row(
            children: <Widget>[
              Flexible(
                  flex: 3, child: Text("Hora")), // colocar um contador de hora
              Spacer(),
              Flexible(
                flex: 12,
                child: Card(
                    color: Colors.grey[850],
                    child: (TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(
                          hintText: "Tarefa",
                          border: InputBorder.none,
                        )))),
              ) // colocar um slot para escrever
            ],
          ),
          margin: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dia Genérico'),
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
        onPressed: () {
          setState(() {
            _addTarefa();
          });
        },
        label: Text("Adicione uma tarefa"),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.black,
        fixedColor: Colors.green.shade800,
        unselectedItemColor: Colors.green,
        showSelectedLabels: false,
        onTap: (int index) {
          trocaDeTela(context, index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: "Calendário",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "GPS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: "Configurações",
          ),
        ],
      ),
    );
  }
}
