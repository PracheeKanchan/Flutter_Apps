import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statement1 extends StatefulWidget{

  const Statement1({super.key});
  @override
  State createState()=>_Statement1State();
}

class _Statement1State extends State{

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
          color: Colors.amber,
          child: Center(child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/024/669/489/small_2x/mountain-countryside-landscape-at-sunset-dramatic-sky-over-a-distant-valley-green-fields-and-trees-on-hill-beautiful-natural-landscapes-of-the-carpathians-generative-ai-variation-5-photo.jpeg",fit: BoxFit.cover,)),
        ),
      ),
    );
  }
}