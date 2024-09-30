import "package:flutter/material.dart";

void main(){

    runApp(const MyApp());
}

class MyApp extends StatelessWidget{

    const MyApp({super.key});

    @override
    Widget build(BuildContext context){

        return MaterialApp(
              debugShowCheckedModeBanner: false,
              home:Scaffold(
                  appBar: AppBar(
                        title: const Text("Column App"),
                        backgroundColor: const Color.fromARGB(255, 14, 113, 194),
                        centerTitle: true,
                  ),

                  body: Center(
                        child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:[
                                                Container(
                                                        height: 100,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            color: Colors.amber,
                                                            borderRadius: BorderRadius.circular(30),
                                                            border: Border.all(color: Colors.black,width: 2),
                                                            boxShadow: const [
                                                                      BoxShadow(
                                                                        color: Colors.grey,
                                                                        offset: Offset(-8,4),
                                                                        blurRadius: 15,
                                                                        spreadRadius: 8,
                                                                      ),
                                                            ],
                                                        ),
                                                ),
                                                Container(
                                                        height: 100,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            color: Colors.green,
                                                            borderRadius: BorderRadius.circular(30),
                                                            border: Border.all(color: Colors.black,width: 2),
                                                            boxShadow: const [
                                                                      BoxShadow(
                                                                        color: Colors.grey,
                                                                        offset: Offset(-8,4),
                                                                        blurRadius: 15,
                                                                        spreadRadius: 8,
                                                                      ),
                                                            ],
                                                        ),
                                                ),
                                                Container(
                                                        height: 100,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            color: Colors.pink,
                                                            borderRadius: BorderRadius.circular(30), 
                                                            border: Border.all(color: Colors.black,width: 2),
                                                            boxShadow: const [
                                                                      BoxShadow(
                                                                        color: Colors.grey,
                                                                        offset: Offset(-8,4),
                                                                        blurRadius: 15,
                                                                        spreadRadius: 8,
                                                                      ),
                                                            ],
                                                        ),
                                                ),
                                            ], 
                    
                                  ),
                  ),

              ),

        );
        
    }
}
