import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class StateMent4 extends StatefulWidget{

  const StateMent4({super.key});
  @override
  State createState()=> _StateMent4AppState();
}

class _StateMent4AppState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(

        appBar: AppBar(
          title: const Text("DailyFlash2"),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 235, 194, 242),
              border:Border.all(color: Colors.deepPurple,width: 2),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
            child: const Center(child: Text("Container",style: TextStyle(fontSize: 18),),),
          ),
        ),

    );
  }
}