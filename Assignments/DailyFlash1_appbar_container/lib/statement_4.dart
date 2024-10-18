import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

//create 2 container with color at center of body
class Statement4 extends StatelessWidget{

  const Statement4({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
              title: const Text("Statement 4",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.w600
                  ),
              ),
              backgroundColor: Colors.deepPurple,              
           ), 
           body: SizedBox(
            height: MediaQuery.of(context).size.height,
             child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[ 
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.purple,
                      ),
                ],
              ),
           ),
        ),
      );
  }
}