import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("ListView Builder Demo",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                  ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView.builder(
            itemCount: 40,
            itemBuilder: (BuildContext context, int index) {
                return Text(
                  "Index :  $index",
                  style: const TextStyle(fontSize: 24,fontWeight:FontWeight.w600)
                );
            },
          ),
        ),
      ),
    );
  }
}
