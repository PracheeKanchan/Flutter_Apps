import 'package:c2w_student_firebase_app/get_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget{

  const AddData({super.key});
  @override
  State createState()=> _AddDataState();
}
class _AddDataState extends State{

  TextEditingController nameController=TextEditingController();
  TextEditingController collegeController=TextEditingController();
  TextEditingController courseController=TextEditingController();

  bool isoffline=true;
  // Map to store courses and their modes
  Map courseList = {};

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("C2w Students"),
        centerTitle: true,
        backgroundColor:Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration:  InputDecoration(
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
              const SizedBox(height: 15,),
              TextField(
                controller: collegeController,
                decoration:  InputDecoration(
                  hintText: "Enter College Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
              const SizedBox(height: 15,),
               Expanded(
                flex: 0,
                 child: Text(
                  'Enrolled Courses: $courseList',
                ),
               ),
              const SizedBox(height: 15,),
              TextField(
                controller: courseController,
                decoration:  InputDecoration(
                  hintText: "Enter Course Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                        isoffline=true;
                      setState(() {});
                    }, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        isoffline==true?Colors.blue : Colors.white,
                      )
                    ),
                    child: const Text(
                      'Offline',
                       style: TextStyle(
                        color: Colors.black,
                       ),  
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      isoffline=false;
                      setState(() {});
                    }, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        isoffline==false?Colors.blue : Colors.white,
                      )
                    ),
                    child: const Text(
                      'Online',
                       style: TextStyle(
                        color: Colors.black,
                       ),  
                    ),
                  ),
                ],
              ),
              const SizedBox(height:15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                        onPressed: (){
                          if(courseController.text.isNotEmpty){
                            courseList[courseController.text] =
                                isoffline?'Offline':"Online";
                            setState(() {
                              
                            });
                          }
                          courseController.clear();
                        }, 
                        child: const Text(
                          'Add Course',
                           style: TextStyle(
                            color: Colors.black,
                           ),  
                        ),
                  ),
                ],
              ),
              const SizedBox(height:15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      if (nameController.text.isNotEmpty &&
                          collegeController.text.isNotEmpty &&
                          courseList.isNotEmpty) {
                        // Create data map to save
                        Map<String, dynamic> data = {
                          'StudentName': nameController.text.trim(),
                          'CollegeName': collegeController.text.trim(),
                          'enrolledCourses': courseList, // Store courseList map
                        };

                        // Add data to Firestore
                        FirebaseFirestore.instance.collection('Core2WebStudents').add(data);
                           
                          // Clear all fields after successful submission
                          nameController.clear();
                          collegeController.clear();
                          courseList={}; // Clear the course list after adding
                          setState(() {});
                        }
                        
                    }, 
                    child: const Text(
                      'Add Data',
                       style: TextStyle(
                        color: Colors.black,
                       ),  
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return const GetData();
                        })
                      );
                    },
                    child: const Text(
                      'Get Data',
                       style: TextStyle(
                        color: Colors.black,
                       ),  
                    ),
                   ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}