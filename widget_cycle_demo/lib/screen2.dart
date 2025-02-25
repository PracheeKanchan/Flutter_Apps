import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget{

  const Screen2({super.key});
  @override
  State createState(){
    return _Screen2State();
  }
}
class _Screen2State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen2'),
        centerTitle: true,
      ),
    );
  }
}