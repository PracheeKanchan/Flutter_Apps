import "package:flutter/material.dart";

void main(){

    runApp(const MyApp());
}

class MyApp extends StatelessWidget{

   const MyApp({super.key});

  @override
  Widget build(BuildContext context){

      return  MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Scaffold(
            backgroundColor: const Color.fromARGB(255, 231, 162, 244),
               appBar: AppBar(
                      title:const Text("First App"),
                      backgroundColor:const Color.fromARGB(255, 158, 33, 180),
                      centerTitle: true,
               ),
               body: const Center(
                    child: Text("Flutter First App",
                     style: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.w500),
                    ),
              ),
        ),
      );
  }

}