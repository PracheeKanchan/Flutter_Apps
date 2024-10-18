import 'package:flutter/material.dart';


class StateMent1 extends StatefulWidget{

  const StateMent1({super.key});
  @override
  State createState()=> _StateMent1AppState();
}

class _StateMent1AppState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(

        appBar: AppBar(
          title: const Text("DailyFlash2"),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20,),
              border:Border.all(color: Colors.red),
            ),
            child: const Center(child:Text("Container",style: TextStyle(fontSize: 20),)),
          ),
        ),

    );
  }
}