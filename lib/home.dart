import 'package:flutter/material.dart';
import 'package:trabalho_1/main.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Página a fazer"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.black, // nao esta indo
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
