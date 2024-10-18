import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

//create appbar with center title and icon at the last of appbar
class Statement2 extends StatelessWidget{

  const Statement2({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
              title: const Text("Statement 2",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.w600
                  ),
              ),
              backgroundColor: Colors.purple,
              actions: const [Icon(Icons.favorite,size: 25,color: Colors.white,)],
              
              centerTitle: true,
           ), 
        ),
      );
  }
}