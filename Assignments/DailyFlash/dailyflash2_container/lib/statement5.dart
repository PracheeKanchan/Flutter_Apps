import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class StateMent5 extends StatefulWidget{

  const StateMent5({super.key});
  @override
  State createState()=> _StateMent5AppState();
}

class _StateMent5AppState extends State{

bool colorChange=true;
String str="Click Me";

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
          child: GestureDetector(
            onTap: (){

              if(colorChange == true){
                  colorChange=false;
              }else{
                  colorChange=true;
              }
                 if(str == "Click Me") {
                  str = "Container Tapped";
                 }  
              setState(() {});
            },
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: colorChange? Colors.red:Colors.blue,
                border:Border.all(color: Colors.white,width: 2),
              ),
              child:  Center(child: Text(str,style: TextStyle(fontSize: 18),),),
            ),
          ),
        ),

    );
  }
}