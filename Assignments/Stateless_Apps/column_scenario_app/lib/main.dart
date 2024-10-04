
// ignore_for_file: non_constant_identifier_names

import 'package:colimn_scenario/column_axis.dart';
import 'package:flutter/material.dart';

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});
    
    @override
    Widget build(BuildContext context){

        //creating object of created class that stores differnt method related to axis alignment
        ColumnAxis colAxis=ColumnAxis();

        return MaterialApp(

          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                title: const Text("Column Demo"),
                centerTitle: true,
                backgroundColor: Colors.deepPurple,
              ),
              body: Container(
                color: const Color.fromARGB(255, 245, 175, 170),
                width: MediaQuery.of(context).size.width,
                //calling the method written above as per axis postion
                child: colAxis.mainStart_CrossEnd(),
              ),
          ),
        );
    }
}