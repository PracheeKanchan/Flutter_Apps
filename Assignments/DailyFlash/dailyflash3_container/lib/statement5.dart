
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statement5 extends StatefulWidget{

  const Statement5({super.key});
  @override
  State createState()=>_Statement5State();
}

class _Statement5State extends State{

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
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
              ],
              stops: [0.5,0.5],
              
            ),
            
          ),
        ),
      ),
    );
  }
}