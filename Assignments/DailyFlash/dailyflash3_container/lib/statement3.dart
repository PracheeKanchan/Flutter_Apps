import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statement3 extends StatefulWidget{

  const Statement3({super.key});
  @override
  State createState()=>_Statement3State();
}

class _Statement3State extends State{

bool colorChange=true;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("DailyFlash3",
               style:GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
              ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
              if(colorChange == true){
                  colorChange=false;
              }else{
                  colorChange=true;
              }
              setState(() { });
          },
          child: Container(
            width: 200,
            height: 200,
            decoration:  BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: colorChange? Colors.red:Colors.green,width: 3),
            ),
          ),
        ),
      ),
    );
  }
}