import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

/*
class DBProvider {
  // Construtor
  DBProvider._();
  static final DBProvider db = DBProvider._();
}

static Database _database;
Future<Database> get database async {
  if (_database != null) return _database;

  _database = await initDB();
  return _database;
}

initDB() async{
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path,'TestDB.db');
  return await openDatabase(path,version: 1,onOpen:(db){},onCreate: (Database db, int version) async{
    await db.execute("CREATE TABLE myTable("
    "tarefa TEXT,"
    "data INTEGER PRIMARY KEY," // ddmmaaaa
    "hora INTEGER,"
    "feito INTEGER"
    ")");
  } );
}

getDia (int dia) async {
  final db = await database;
  List<Map> res = await db.query("myTable",where: "dia = ?",whereArgs: [dia]);
  return res.isNotEmpty ? Dia.fromMap(res.first):Null;
}

Dia diaFromJson (String str) => Dia.fromJson (json.decode(str));
String diaToJson(Dia info) => json.encode(info.toJson());

class Dia{
  String tarefa;
  int data;
  int hora;
  int feito;

    Dia({
      this.tarefa,
      this.data,
      this.hora,
      this.feito,
    });


factory Dia.FromJson(Map<String,dynamic>json)=>new Dia(
  tarefa: json["tarefa"],
  data: json["data"],
  hora: json["hora"],
  feito: json["feito"],
);

Map<String,dynamic> toJson()=>{
  "tarefa":tarefa,
  "data":data,
  "hora":hora,
  "feito":feito,
};
}
*/