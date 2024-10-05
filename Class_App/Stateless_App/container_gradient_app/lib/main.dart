import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Container Gradient Demo"),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
                height: 200,
                width: 200,
                decoration:const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                        colors: [
                            Colors.pink,
                            Colors.black,
                        ]
                    )
                ),
            ),
        ),
      ),
    );
  }
}
