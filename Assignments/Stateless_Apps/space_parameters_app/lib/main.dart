import 'package:flutter/material.dart';
import 'package:space_parameters/space_parameter.dart';

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    //create object of SpaceParameter class
    SpaceParameter space=SpaceParameter();
    
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          
          home: Scaffold(

              appBar: AppBar(
                  title: const Text( "Column Space Parameters"),
                  centerTitle: true,
                  backgroundColor: const Color.fromARGB(255, 222, 142, 236),
              ),
              body: space.spaceBetween(),
          ),

    );
  }
}