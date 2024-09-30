import "package:flutter/material.dart";

void main(){
    runApp(const AppbarColorApp());
}

class AppbarColorApp extends StatefulWidget{

    const AppbarColorApp({super.key});

    @override
    State<AppbarColorApp> createState()=>_AppbarColorApp();
}

class _AppbarColorApp extends State<AppbarColorApp>{

  bool colorChange=true;
  @override
  Widget build(BuildContext context){

      return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: "Appbar Color Change",
        home: Scaffold(
            appBar: AppBar(
                title: const Text("Appbar Color Change"),
                centerTitle: true,
                backgroundColor:(colorChange)? Colors.purple:Colors.yellow,
            ),
            body:Container(
                      color:(colorChange)? const Color.fromARGB(255, 244, 180, 180):Colors.greenAccent,
                
            ),
            floatingActionButton: FloatingActionButton(
              onPressed:(){

                    if(colorChange==true){
                        colorChange=false;
                    }else{
                        colorChange=true;
                    }
                    setState(() {});
              },
              backgroundColor: Colors.purple,
              child: const Icon(Icons.add),
            ),
        ),
      );
  }
}