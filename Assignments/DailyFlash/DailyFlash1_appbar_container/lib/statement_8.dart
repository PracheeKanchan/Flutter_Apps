import 'package:flutter/material.dart';

//add container of size(300 * 300) with border of red color
class Statement8 extends StatelessWidget{

  const Statement8({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                  title: const Text("Container Border"),
                  centerTitle: true,
                  backgroundColor: Colors.blue,
              ),
              body: Center(
                child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                          border: Border.all(color: Colors.red,width: 5),
                      ),
                ),
              ),
          ),
      );
  }
}