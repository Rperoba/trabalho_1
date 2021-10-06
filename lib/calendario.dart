import 'package:flutter/material.dart';
import 'package:trabalho_1/main.dart';

class calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mes"),
      ),
      body: GridView.count(
        crossAxisCount: 7,
        children: List.generate(30, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "pgDeTarefas");
            },
            child: Container(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green),
              child: Text(
                "Dia ${index + 1}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w800),
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
