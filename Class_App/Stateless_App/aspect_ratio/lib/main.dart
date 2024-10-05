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
            title: const Text("Aspect Ratio"),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        body: Center(
              child:Container(
                  height: 300,
                  width: 300,
                  color: Colors.purple,
                  child: Image.network("https://g2.img-dpreview.com/0092C98398254023B844D78BFF2EC71F.jpg"),
              ),
        ),
      ),
    );
  }
}
