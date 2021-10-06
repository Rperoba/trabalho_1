import 'package:flutter/material.dart';
import 'package:trabalho_1/calendario.dart';
import 'package:trabalho_1/home.dart';
import 'package:trabalho_1/maps.dart';
import 'package:trabalho_1/settings.dart';
import 'package:trabalho_1/tarefas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'NewWay';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        theme: ThemeData(
          textTheme: Typography.whiteRedmond,
          brightness: Brightness.dark,
        ),
        home: home(),
        routes: <String, WidgetBuilder>{
          "calendario": (BuildContext context) => calendario(),
          "home": (BuildContext context) => home(),
          "maps": (BuildContext context) => maps(),
          "settings": (BuildContext context) => settings(),
          "pgDeTarefas": (BuildContext context) => MyStatefulWidget(),
        });
  }
}

void trocaDeTela(contexto, indice) {
  if (indice == 0) {
    Navigator.popAndPushNamed(contexto, "home");
    return;
  }
  if (indice == 1) {
    Navigator.popAndPushNamed(contexto, "calendario");
    return;
  }
  if (indice == 2) {
    Navigator.popAndPushNamed(contexto, "maps");
    return;
  }
  if (indice == 3) {
    Navigator.popAndPushNamed(contexto, "settings");
    return;
  }
}
