import 'dart:developer';

import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget{

  String strChange;
  Screen3({super.key,required this.strChange});
  @override
  State createState(){
    return _Screen3State();
  }
}
class _Screen3State extends State<Screen3>{

  @override
  Widget build(BuildContext context){
    return Text(widget.strChange);
  }
@override
  void didUpdateWidget(Screen3 oldWidget){
    super.didUpdateWidget(oldWidget);
    log("In didUpdateWidget");
  }
}