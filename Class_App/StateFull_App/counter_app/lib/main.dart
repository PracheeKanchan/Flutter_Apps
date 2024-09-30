import "package:flutter/material.dart";

void main(){

    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});
    @override
    Widget build(BuildContext context){

        return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Counter App",
            home: CounterApp(),
        );
    }
}
class CounterApp extends StatefulWidget{

  const CounterApp({super.key});
  @override
  State createState()=>_CounterAppState();
}
class _CounterAppState extends State{

  int count=0;
  @override
  Widget build(BuildContext context){

      return Scaffold(
            appBar: AppBar(
              title: const Text("Counter App"),
              centerTitle: true,
              backgroundColor:  Colors.purple,  
            ),
            body:Container(
              color: const Color.fromARGB(255, 241, 182, 201),
              child: Center(
                child:Text("$count",
                  style: const TextStyle(fontSize: 24,color: Colors.black),
                ),
                
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                  count++;
                  setState(() {});
              },
              backgroundColor: Colors.purple,
              child:const Icon(Icons.add),
            ),
      );
  }
}