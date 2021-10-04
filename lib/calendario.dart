import 'package:flutter/material.dart';

//void main() => runApp(calendario()); // para testes

class calendario extends StatelessWidget {
  // Mudar para statefull?
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colocar mes aqui',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colocar mes aqui 2"),
        ),
        body: GridView.count(
          crossAxisCount: 7,
          children: List.generate(30, (index) {
            return Container(child: Text("Dia ${index + 1}"));
          }),
        ),
      ),
    );
  } //TODO colocar uma bottom navigation bar
}
