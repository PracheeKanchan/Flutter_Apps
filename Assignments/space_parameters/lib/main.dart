

import 'package:flutter/material.dart';

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
          debugShowCheckedModeBanner: false,
          
          home: Scaffold(

              appBar: AppBar(
                  title: const Text( "Column Space"),
                  centerTitle: true,
                  backgroundColor: const Color.fromARGB(255, 222, 142, 236),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: const Color.fromARGB(255, 248, 160, 190),
                      ),
                  ],
              ),
          ),

    );
  }
}