import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statement2 extends StatefulWidget{

  const Statement2({super.key});
  @override
  State createState()=>_Statement2State();
}

class _Statement2State extends State{

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
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.amber,
            image:DecorationImage(image:
                NetworkImage("https://plus.unsplash.com/premium_photo-1671976322695-803d996cecdc?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8d2hpdGUlMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D"),
                fit: BoxFit.cover,
             ),
      ),
      child: const Center(child:Text("Container",style: TextStyle(fontSize: 25),)),
      ),
      ),
    );
  }
}