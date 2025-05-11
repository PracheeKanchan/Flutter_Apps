import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCa0-8lLGBRRT63vZG6JqBfHkBq8bqRbcU",
      appId: "1:1047686029241:android:b99ed2bfa6b8411c106068",
      messagingSenderId: "1047686029241",
      projectId: "employeeinfo-5bc60",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _EmployeeInfoState();
}

class _EmployeeInfoState extends State<MyApp> {
  TextEditingController empNameTextController = TextEditingController();
  TextEditingController empSalTextController = TextEditingController();
  TextEditingController devTypeTextController = TextEditingController();

  double highestSal = 0.0;
  String empName = "";
  String devType = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Firebase Demo"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: empNameTextController,
                  decoration: const InputDecoration(
                    hintText: "Enter Employee Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: empSalTextController,
                  decoration: const InputDecoration(
                    hintText: "Enter Employee Salary",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: devTypeTextController,
                  decoration: const InputDecoration(
                    hintText: "Enter Employee DevType",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    // Add Data to Firestore
                    Map<String, dynamic> data = {
                      "empName": empNameTextController.text.trim(),
                      "empSal": empSalTextController.text.trim(),
                      "devType": devTypeTextController.text.trim(),
                    };
                    FirebaseFirestore.instance.collection("EmployeeData").add(data);

                    // Clear the text fields after adding the data
                    empNameTextController.clear();
                    empSalTextController.clear();
                    devTypeTextController.clear();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(child: Text("Add Data")),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    // Get Data and find the employee with the highest salary
                    QuerySnapshot response = await FirebaseFirestore.instance.collection("EmployeeData").get();
                    highestSal = 0.0;
                    empName = "";
                    devType = "";

                    // Loop through each document to find the highest salary
                    for (dynamic val in response.docs) {
                      dynamic sal = val.data()['empSal'];
                      // Check if the salary is a valid double
                      if (sal != null) {
                        double parsedSal = double.tryParse(sal) ?? 0.0;
                        //print(runtimeType.parsedSal);
                        // If parsedSal is greater than the current highestSal, update values
                        if (parsedSal > highestSal) {
                          highestSal = parsedSal;
                          empName = val.data()['empName'];
                          devType = val.data()['devType'];
                        }
                      }
                    }

                    // Log the results to the console
                    log("Highest Salary: $highestSal");
                    log("Employee Name: $empName");
                    log("Dev Type: $devType");

                    // Update the UI with the highest salary employee details
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(child: Text("Get Data")),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Employee Name: $empName"),
                        Text("Employee Salary: $highestSal"),
                        Text("Dev Type: $devType"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
