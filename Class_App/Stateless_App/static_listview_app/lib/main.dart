import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
                "List View",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    
                ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
               const SizedBox(height: 50,),
               
               Container(
                   margin: const EdgeInsets.fromLTRB(150, 0, 0, 20), 
                   child:const  Text("Taj Mahal",style: TextStyle(fontSize: 25),)
               ),
               Image.network("https://cdn1.matadornetwork.com/blogs/1/2018/02/Taj-Mahal.jpg"),
               Container(
                   margin:const EdgeInsets.only(top: 20),
                   child: const Icon(Icons.favorite,color: Colors.red,)
               ),

               Container( 
                   margin: const EdgeInsets.fromLTRB(120, 0, 0, 20), 
                   child:const  Text("Great Wall of China",style: TextStyle(fontSize: 25),)
               ),
               Image.network("https://cdn.britannica.com/82/94382-050-20CF23DB/Great-Wall-of-China-Beijing.jpg"),
               Container(
                   margin:const EdgeInsets.only(top: 20),
                   child: const Icon(Icons.favorite,color: Colors.red,)
               ),

               Container( 
                   margin: const EdgeInsets.fromLTRB(120, 0, 0, 20), 
                   child:const  Text("Statue of Liberty",style: TextStyle(fontSize: 25),)
               ),
               Image.network("https://cdn-imgix.headout.com/media/images/0d83e157c884a6c3afc30533fd27801a-846-new-york-statue-of-liberty-island---ellis-island-tour-with-audioguide-01.jpg"),
               Container(
                   margin:const EdgeInsets.only(top: 20),
                   child: const Icon(Icons.favorite,color: Colors.red,)
               ),

               Container( 
                   margin: const EdgeInsets.fromLTRB(120, 0, 0, 20),
                   child:const  Text("Pyramid of Giza",style: TextStyle(fontSize: 25),)
               ),
               Image.network("https://media.architecturaldigest.com/photos/58e2a407c0e88d1a6a20066b/16:9/w_1280,c_limit/Pyramid%20of%20Giza%201.jpg"),
               Container(
                   margin:const EdgeInsets.only(top: 20),
                   child: const Icon(Icons.favorite,color: Colors.red,)
               ),
                
                
          ],
        ),
      ),
    );
  }
}
