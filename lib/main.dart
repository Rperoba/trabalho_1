import 'package:flutter/material.dart';
import 'package:trabalho_1/calendario.dart';
import 'package:trabalho_1/home.dart';
import 'package:trabalho_1/maps.dart';
import 'package:trabalho_1/settings.dart';
import 'package:trabalho_1/tarefas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        textTheme: Typography.whiteRedmond,
        brightness: Brightness.dark,
      ),
      //  theme nao esta indo para o calendario
      home: MyStatefulWidget(),
    );
  }
}
