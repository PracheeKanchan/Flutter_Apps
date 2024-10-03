

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
                title: const Text("Column Demo"),
                centerTitle: true,
                backgroundColor: Colors.deepPurple,
              ),
              body: Container(
                color: const Color.fromARGB(255, 245, 175, 170),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                    ],
                ),
              ),
          ),
        );
    }
}