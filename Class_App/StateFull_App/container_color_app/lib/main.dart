import 'package:flutter/material.dart';

void main(){
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget{

    const ContainerColorApp({super.key});

    @override
    State createState()=>_ContainerColorAppState();
}

class _ContainerColorAppState extends State{

    bool colorChange=true;

    @override
    Widget build(BuildContext context){

        return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Container Color App",
              home:Scaffold(
                   appBar:AppBar(
                      title: const Text("Container color App"),
                      centerTitle: true,
                      backgroundColor: Colors.blue,
                   ),
                   body: Center(
                      child:Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: colorChange ? Colors.amber : Colors.green,
                            borderRadius: BorderRadius.circular(20)
                          ),
                      ),
                   ),
                   floatingActionButton: FloatingActionButton(
                      onPressed:(){
                          if(colorChange==true){
                                colorChange=false;
                          }else{
                                colorChange=true;
                          }
                          setState(() {});
                      } ,
                      backgroundColor: Colors.blue,
                      child: const Icon(Icons.add),
                   ),
              ),
        );
    }
}