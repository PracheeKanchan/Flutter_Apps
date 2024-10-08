import 'package:flutter/material.dart';

void main(){
    
    runApp(const MyApp());
}

class  MyApp extends StatelessWidget {

     const MyApp({super.key});

     @override
     Widget build(BuildContext context){

        return MaterialApp(
                debugShowCheckedModeBanner: false,
               home:Scaffold(

                    appBar: AppBar(
                            title:const Text("Container App"),
                            centerTitle: true,
                            backgroundColor: const Color.fromARGB(255, 211, 56, 238),
                    ),

                    body:Center(
                         child: Container(
                                 height: 200,
                                 width: 200, 
                                 decoration:  BoxDecoration(
                                    color: const Color.fromARGB(255, 240, 141, 174),
                                    borderRadius: BorderRadius.circular(30),
                                 ),
                         ),
                         
                    ),

               ),
        );
     }
}
