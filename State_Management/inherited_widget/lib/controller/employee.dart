import 'package:flutter/material.dart';

class Employee extends InheritedWidget{

  final String empName;
  final int empId;
  final double empSal;

  const Employee({
    super.key,
    required this.empName,
    required this.empId,
    required this.empSal,
    required super.child,
  });
  static Employee of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Employee>()!;
  }

  @override
  bool updateShouldNotify(Employee oldWidget) {
    return empId != oldWidget.empId;
  }

}