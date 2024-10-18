import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class StateMent3 extends StatefulWidget{

  const StateMent3({super.key});
  @override
  State createState()=> _StateMent3AppState();
}

class _StateMent3AppState extends State{

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
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.purple,
              border:Border.all(color: Colors.black,width: 2),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20))
            ),
          ),
        ),

    );
  }
}