import 'package:flutter/material.dart';
import 'package:row_scenario/row_axis.dart';

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});

    @override
    Widget build(BuildContext context){

        //creating object of RowAxis class
        RowAxis rowAxis=RowAxis();

        return MaterialApp(
          debugShowCheckedModeBanner: false,

            home: Scaffold(
              appBar: AppBar(
                  title: const Text("Row Demo"),
                  centerTitle: true,
                  backgroundColor: Colors.purple,
                  shadowColor: Colors.black,
              ),
              body: Container(

                color: const Color.fromARGB(255, 244, 189, 208),
                height: MediaQuery.of(context).size.height,
                child: rowAxis.mainStartCrossCenter(),

              ),
            ),
        );
    }
}