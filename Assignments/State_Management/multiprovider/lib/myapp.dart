import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Multi Provider Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Employee ID: ${Provider.of<Employee>(context).empId}"),
            const SizedBox(height: 15,),
             Text("Employee Name: ${Provider.of<Employee>(context).empName}"),
             const SizedBox(height: 15,),
             Consumer(
              builder: (context, value, child) {
                return Column(
                children: [
                  Text(
                    'Project Domain :${Provider.of<Project>(context).projDomain}',
                  ),
                  const SizedBox( height: 15,),
                  Text(
                    'Project Domain :${Provider.of<Project>(context).devType}',
                  ),
                  const SizedBox( height: 25,),
                ],
               );
              },
               
             ),
            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
                Provider.of<Project>(context,listen: false).changeData("Food", "FrontEnd");
                //Provider.of<Employee>(context,listen: false).changeData(empId: 200);
                
              }, 
              style:const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue)
              ),
              child: const Text(
                'Change Data',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}

class Employee{
  String empName;
  int empId;

  Employee({
    required this.empId,
    required this.empName,
  });

  // void changeData({required int empId}){
  //   this.empId=empId;
  // }
}

class Project extends ChangeNotifier{
  String projDomain;
  String devType;

  Project({
    required this.projDomain,
    required this.devType,
  });

  void changeData(String projDomain,String devType){
    this.projDomain=projDomain;
    this.devType=devType;
    notifyListeners();
  }
}

