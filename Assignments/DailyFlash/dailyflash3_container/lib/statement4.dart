
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statement4 extends StatefulWidget{

  const Statement4({super.key});
  @override
  State createState()=>_Statement4State();
}

class _Statement4State extends State{

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
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.amber,
            boxShadow:[BoxShadow(color:Colors.black ,
                  offset: Offset(-10, 0), // Shadow positioned to the left
                  blurRadius: 20.0, // Blur effect
                  
             ), // Spread effect
            ],
          ),
        ),
      ),
    );
  }
}