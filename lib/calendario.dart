import 'package:flutter/material.dart';
import 'package:trabalho_1/main.dart';
//void main() => runApp(calendario()); // para testes

class calendario extends StatelessWidget {
  // Mudar para statefull?
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colocar mes aqui 2"),
      ),
      body: GridView.count(
        crossAxisCount: 7,
        children: List.generate(30, (index) {
          return Container(child: Text("Dia ${index + 1}"));
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.black, // nao esta indo
        //possui on tap
        //TODO usar onTap e routes para mudar de pagina
        fixedColor: Colors.green.shade800,
        unselectedItemColor: Colors.green,
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
  } //TODO colocar uma bottom navigation bar
}
