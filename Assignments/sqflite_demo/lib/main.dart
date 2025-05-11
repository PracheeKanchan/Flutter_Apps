import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_demo/player_model.dart';

dynamic database;

Future<void> insertPlayerData(Player pObj)async{
  Database localDB=await database;

  int id=await localDB.insert(
    "Player",
    pObj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  print("id:$id");
}

Future<List<Map<String, dynamic>>> getPlayerData() async {
  Database localDB = await database;

  List<Map<String, dynamic>> playerData = await localDB.query("Player");
  //print(playerData);
  return playerData;
}

void main()async{

  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(),"IndiaDBNew"),
    version: 1,
    onCreate: (db,version) async{
      print("database creatde");
      await db.execute(
        '''CREATE TABLE PLAYER(
            playerName TEXT,
            jerNo INT PRIMARY KEY,
            runs INT,
            avg REAL
        )'''
            
      );
    }
  );
  Player pObj1 =Player(playerName: "Virat", jerNo: 18, runs: 50000, avg: 50.33);

await insertPlayerData(pObj1);

dynamic data= await getPlayerData();
print(data);
}