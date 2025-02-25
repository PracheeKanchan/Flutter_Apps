import 'package:flutter/material.dart';
import 'package:inherited_widget/View/employee_screen2.dart';
import 'package:inherited_widget/controller/employee.dart';

class EmployeeScreen1 extends StatefulWidget {
  const EmployeeScreen1({super.key});

  @override
  State<EmployeeScreen1> createState() => _EmployeeScreen1State();
}

class _EmployeeScreen1State extends State<EmployeeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Employee Id: ${Employee.of(context).empId}',
            ),
            const SizedBox(height: 20,),
            Text(
              'Employee Name:${Employee.of(context).empName}',
            ),
            const SizedBox(height: 20,),
            Text(
              'Employee Sal:${Employee.of(context).empSal}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return const EmployeeScreen2();
            })
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}