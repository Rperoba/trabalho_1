import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trabalho_1/main.dart';
import 'package:sensors_plus/sensors_plus.dart';

class MyStatefulWidget2 extends StatefulWidget {
  const MyStatefulWidget2({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget2> createState() => maps();
}

class maps extends State<MyStatefulWidget2> {
  double velocidade = 1;
  double x = 1;
  double y = 1;
  double z = 1;
  void initState() {
    super.initState();
    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      x = event.x;
      y = event.y;
      z = event.z;
    }, onDone: () {
      setState(() {
        velocidade = sqrt(x * x + y * y + z * z);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapas"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: <Widget>[
          StreamBuilder<UserAccelerometerEvent>(
              stream: SensorsPlatform.instance.userAccelerometerEvents,
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  x = snapshot.data!.x;
                  y = snapshot.data!.y;
                  z = snapshot.data!.z;

                  velocidade = sqrt(x * x + y * y + z * z);
                }
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Sua velocidade é de :$velocidade",
                  ),
                );
              })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
