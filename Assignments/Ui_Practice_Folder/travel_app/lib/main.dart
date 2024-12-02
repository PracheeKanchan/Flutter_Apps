import 'package:flutter/material.dart';
import 'package:travel_app/cardclick_scrreen.dart';
import 'package:travel_app/travel_ui.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Travelapp(),
        );
    }
}