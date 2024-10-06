import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//add container of size(300 * 300) with border of red color and top-left and bottom-right corner radius of 20
class Statement10 extends StatelessWidget{

  const Statement10({super.key});

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
                        color: const Color.fromARGB(255, 229, 229, 127),
                          border: Border.all(color: Colors.red,width: 5),
                          borderRadius:const BorderRadius.only(
                                topLeft:Radius.circular(20),
                                bottomRight:Radius.circular(20)
                          )
                      ),
                ),
              ),
          ),
      );
  }
}