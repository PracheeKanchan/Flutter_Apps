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
            title: const Text("Column Scroll"),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                    Image.network("https://g4.img-dpreview.com/09BAC962856C4C6DACFB4AC150AF2624.jpg"),
                    const Padding(padding: EdgeInsets.only(bottom: 40)),
                    Image.network("https://g2.img-dpreview.com/0092C98398254023B844D78BFF2EC71F.jpg"),
                    const Padding(padding: EdgeInsets.only(bottom: 40)),
                    Image.network("https://g4.img-dpreview.com/75275EE1A79A4DD68AC8878E879B0704.jpg"),
                    const Padding(padding: EdgeInsets.only(bottom: 40)),
                    Image.network("https://g2.img-dpreview.com/81C81CB44922409EA3C99FA3E42369CD.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
