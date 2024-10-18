import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class StateMent2 extends StatefulWidget{

  const StateMent2({super.key});
  @override
  State createState()=> _StateMent2AppState();
}

class _StateMent2AppState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(

        appBar: AppBar(
          title: const Text("DailyFlash2"),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 100,
            width: 100,
            decoration:const BoxDecoration(
              color: Colors.amber,
              border:Border(left: BorderSide(width: 5,color: Colors.black))
            ),
            child: const Center(child:Text("Container",style: TextStyle(fontSize: 20),)),
          ),
        ),

    );
  }
}