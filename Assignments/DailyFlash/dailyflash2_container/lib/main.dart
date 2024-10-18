import 'package:dailyflash2_container/statement3.dart';
import 'package:dailyflash2_container/statement4.dart';
import 'package:dailyflash2_container/statement5.dart';
import "package:flutter/material.dart";
import 'statement1.dart';
import './statement2.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StateMent5(),
      );
    }
}
