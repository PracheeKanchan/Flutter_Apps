import 'package:flutter/material.dart';

//add 5 network images horizontally make them scrollable
class Statement7 extends StatelessWidget{

  const Statement7({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                  title: const Text("Network Image Scroll"),
                  centerTitle: true,
                  backgroundColor: Colors.blue,
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                        SizedBox(
                         // padding: const EdgeInsets.all(20),
                            height: 300,
                            width: 150,
                            //decoration: BoxDecoration(border: Border.all()),
                            child: Image.network("https://static.toiimg.com/thumb/width-600,height-400,msid-47986046.cms"),
                        ),
                        
                    ],
                ),
              ),
          ),
      );
  }
}