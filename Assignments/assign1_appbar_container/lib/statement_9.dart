import 'package:flutter/material.dart';

//add container of size(300 * 300) with border of red color and corner radius of 20
class Statement9 extends StatelessWidget{

  const Statement9({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                  title: const Text("Container Round Corner"),
                  centerTitle: true,
                  backgroundColor: Colors.blue,
              ),
              body: Center(
                child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                          border: Border.all(color: Colors.red,width: 5),
                          borderRadius: BorderRadius.circular(20),
                      ),
                ),
              ),
          ),
      );
  }
}