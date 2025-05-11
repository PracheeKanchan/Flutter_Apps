import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget_dynamic/inherited_user_list.dart';

class FirebaseUserList extends StatefulWidget {
  const FirebaseUserList({super.key});

  @override
  State<FirebaseUserList> createState() => _FirebaseUserListState();
}

class _FirebaseUserListState extends State<FirebaseUserList> {

  List usersList=[];

  @override
  void initState(){
    super.initState();
    getFirebaseData();
    log('$usersList');
  }

  void getFirebaseData()async{
      QuerySnapshot response=await FirebaseFirestore.instance.collection("SignUpData").get();
      usersList=response.docs;
      setState(() {
        
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: usersList.length,
              itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Email : ${usersList[index]['Email']}',
                          ),
                          const SizedBox(height: 20,),
                          Text(
                            'Password : ${usersList[index]['Password']}',
                          ),
                        ],
                      ),
                    ),
                  );
              }
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const InheritedUserList();
          }));
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}