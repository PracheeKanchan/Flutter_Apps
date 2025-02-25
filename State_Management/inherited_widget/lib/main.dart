import 'package:flutter/material.dart';
import 'package:inherited_widget/View/employee_screen1.dart';
import 'package:inherited_widget/controller/employee.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  final String empName = "Prachee";
  final int empId =120;
  final double empSal=20.5;

  @override
  Widget build(BuildContext context){
    return Employee(
      empName: empName, 
      empId: empId, 
      empSal: empSal, 
      child: const MaterialApp(
        home: EmployeeScreen1(),
      )
      
      );
  }
}