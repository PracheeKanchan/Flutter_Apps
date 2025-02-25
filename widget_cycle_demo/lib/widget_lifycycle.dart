
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widget_cycle_demo/screen2.dart';
import 'package:widget_cycle_demo/screen3.dart';

class WidgetLifyCycle extends StatefulWidget{

  const WidgetLifyCycle({super.key});
  @override
  State createState(){
      log("In screen1 createState()");
      return _WidgetLifeCycleState();
  }
}

class _WidgetLifeCycleState extends State<WidgetLifyCycle>{

  String str="c2w";

  @override
  Widget build(BuildContext context){
    log("In screen1 build() ");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1 "),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [

          //Text(str),
          Screen3(strChange:str ),
          ElevatedButton(
            
            onPressed: (){
              str=(str == "c2w") ? "Core2web" :"c2w";
              setState(() {
                
              });
            }, 
            child: const Text('Change Text'),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context){
              return const Screen2();
            })
          );
        },
        child: const Text("Click"),
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    log("In Screen1 initState()");
  }

  @override
  void deactivate(){
    super.deactivate();
    log("In screen1 deactivate()");
  }

  @override
  void dispose(){
    super.dispose();
    log("In screen1 dispose");
  }
}