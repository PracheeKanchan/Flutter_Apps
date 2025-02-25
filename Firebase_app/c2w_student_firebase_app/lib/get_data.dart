import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class GetData extends StatefulWidget{
  const GetData({super.key});

  @override
  State createState()=> _GetDataState();
}
class _GetDataState extends State{

  List studentsData=[];

  @override
  void initState(){
    super.initState();
    fetchData();
  }

  void fetchData()async{
        QuerySnapshot response = await FirebaseFirestore.instance.collection("Core2WebStudents").get();
        studentsData=response.docs;
        // for(var val in response.docs){
        //   studentsData.add(val.data() as Map<String,dynamic>);
        // }
        // var i=response.docs[0].id;
        // log("$i");
        log("$studentsData");
        setState(() { });
  }
  
  @override
  Widget build(BuildContext build){
    return Scaffold(
      body: ListView.builder(
        itemCount: studentsData.length,
        itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () async{
                  studentsData.removeAt(index);
                  await FirebaseFirestore.instance.collection('Core2WebStudents').doc(studentsData[index].id).delete();
                  setState(() {});
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(studentsData[index]['StudentName']),
                        const SizedBox(height: 10,),
                        Text(studentsData[index]['CollegeName']),
                        const SizedBox(height: 10,),
                         Text("${studentsData[index]['enrolledCourses']}"),
                        //SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              ),
            );
        }
        
      ),
    );
  }
}