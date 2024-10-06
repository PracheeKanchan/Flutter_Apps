import "package:flutter/material.dart";

//add 10 containers colorful vertically and make them scrollable
class Statement6 extends StatelessWidget{

  const Statement6({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(

          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                  title: const Text("Container column Scroll"),
                  centerTitle: true,
                  backgroundColor: Colors.purpleAccent,
              ),
              body:SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color:const Color.fromARGB(255, 245, 208, 206),
                  child: Column(
                      children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.lightGreen,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.pinkAccent,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.lightBlue,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.yellowAccent,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.orangeAccent,
                          ),
                           Container(
                            margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.deepPurple,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.blueGrey,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.green,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.pink,
                          ),
                          Container(
                              margin: const EdgeInsets.all(15),
                              height: 150,
                              width: 350,
                              color: Colors.deepPurpleAccent,
                          ),
                      ],
                  ),
                ),
              ),
          ),
      );
  }
}