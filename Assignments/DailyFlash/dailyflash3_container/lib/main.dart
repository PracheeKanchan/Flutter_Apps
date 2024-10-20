import 'package:dailyflash3_container/statement1.dart';
import 'package:dailyflash3_container/statement2.dart';
import 'package:dailyflash3_container/statement3.dart';
import 'package:dailyflash3_container/statement4.dart';
import 'package:dailyflash3_container/statement5.dart';
import 'package:flutter/material.dart';

void main(){
    runApp(const DaliyFlash3Container());
}
class DaliyFlash3Container extends StatelessWidget{

    const DaliyFlash3Container({super.key});
    @override
    Widget build(BuildContext context){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Statement5(),
      );
    }
}