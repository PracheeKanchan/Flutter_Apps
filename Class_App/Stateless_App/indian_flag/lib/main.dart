import "package:flutter/material.dart";

void main(){

      runApp(const FlagApp());
}

class FlagApp extends StatelessWidget{

      const FlagApp({super.key});

      @override
      Widget build(BuildContext context){
        

        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:Scaffold(
                appBar:AppBar(
                    title:const Text("Indian Flag"),
                    centerTitle: true,
                    backgroundColor: Colors.blue,
                ),
                body: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                            colors: [
                              Colors.orange, // Saffron color
                              Colors.white,  // White color
                              Colors.green,  // Green color
                            ],
                            stops: [0.0, 0.5, 1.0], // Gradient stops
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Column(
                                children: [
                                const SizedBox(height: 70,),
                                Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                          Container(
                                            height: 300,
                                            width: 5,
                                            color: Colors.black,
                                            margin: const EdgeInsets.fromLTRB(20, 165, 0,0),
                                          ),
                                          Column(
                                            children: [
                                                Container(
                                                  height: 45,
                                                  width: 250,
                                                  color: Colors.orange,
                                                ),
                                                Container(
                                                  height: 45,
                                                  width: 250,
                                                  color: Colors.white,
                                                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png"),
                                                ),
                                                Container(
                                                  height: 45,
                                                  width: 250,
                                                  color: Colors.green,
                                                ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    color: Colors.grey,
                                    margin: const EdgeInsets.fromLTRB(0, 0,225,0),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 130,
                                    color: Colors.grey,
                                    margin: const EdgeInsets.fromLTRB(0, 0,225,0),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 160,
                                    color: Colors.grey,
                                    margin: const EdgeInsets.fromLTRB(0, 0,225,0),
                                  ),
                               ],
                          ),
                ),
            ),
        );
      }
}