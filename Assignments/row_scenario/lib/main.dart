

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
                  title: const Text("Row Demo"),
                  centerTitle: true,
                  backgroundColor: Colors.purple,
                  shadowColor: Colors.black,
              ),
              body: Container(
                color: const Color.fromARGB(255, 244, 189, 208),
                height: MediaQuery.of(context).size.height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                        Container(
                            height: 100,
                            width: 100,
                            color: Colors.pink
                        ),
                    ],
                ),
              ),
            ),
        );
    }
}