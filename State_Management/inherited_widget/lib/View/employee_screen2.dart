import 'package:flutter/material.dart';
import 'package:inherited_widget/controller/employee.dart';

class EmployeeScreen2 extends StatefulWidget {
  const EmployeeScreen2({super.key});

  @override
  State<EmployeeScreen2> createState() => _EmployeeScreen2State();
}

class _EmployeeScreen2State extends State<EmployeeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen2"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Employee  Id: ${Employee.of(context).empId}',
            ),
            const SizedBox(height: 20,),
            Text(
              'Employee Name:${Employee.of(context).empName}',
            ),
            const SizedBox(height: 20,),
            Text(
              'Employee Salary:${Employee.of(context).empSal}',
            ),
          ],
        ),
      ),
    );
  }
}