import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Insta",
        home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{

    const HomeScreen({super.key});

    @override
  
      Widget build(BuildContext context){

          return Scaffold(

              appBar: AppBar(
                  title: const Text("Insta Stories"),
                  centerTitle: true,
                  backgroundColor: Colors.purpleAccent,
              ),

              body: SizedBox(
                height: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                          Container(
                              width: 140,
                              height: 120,
                              decoration: const BoxDecoration(
                                 color: Colors.amber,
                                 shape: BoxShape.circle),
                          ),
                  
                          Container(
                              width: 140,
                              height: 120,
                              decoration: const BoxDecoration(
                                 color: Colors.blue,
                                 shape: BoxShape.circle),
                          ),
                  
                          Container(
                              width: 140,
                              height: 120,
                              decoration: const BoxDecoration(
                                 color: Colors.red,
                                 shape: BoxShape.circle),
                          ),
                  
                          Container(
                              width: 140,
                              height: 120,
                              decoration: const BoxDecoration(
                                 color: Colors.green,
                                 shape: BoxShape.circle),
                          ),
                  
                          Container(
                              width: 140,
                              height: 120,
                              decoration: const BoxDecoration(
                                 color: Colors.orange,
                                 shape: BoxShape.circle),
                          ),
                  
                      ],
                    
                    ),
                
                
                ),
              ),

          );
    }
}

