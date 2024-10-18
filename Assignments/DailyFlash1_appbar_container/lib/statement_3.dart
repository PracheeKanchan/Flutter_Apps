import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

//create appbar with  title , deep purple color and container with blue color at center of body
class Statement4 extends StatelessWidget{

  const Statement4({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
              title: const Text("Hello Core2web",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.w600
                  ),
              ),
              backgroundColor: Colors.deepPurple,              
           ), 
           body: Center(
                  child: Container(
                      height: 200,
                      width: 360,
                      color: Colors.blue,
                  ),
            ),
        ),
      );
  }
}