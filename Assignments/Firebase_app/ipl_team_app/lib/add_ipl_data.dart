import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ipl_team_app/get_team_name.dart';

class AddIplData extends StatefulWidget{

  const AddIplData({super.key});
  @override
  State createState()=> _AddIplDataState();
}
class _AddIplDataState extends State{

TextEditingController nameTextController=TextEditingController();
TextEditingController jerseyNoTextController=TextEditingController();
TextEditingController teamNameTextController=TextEditingController();

final ImagePicker imagePicker=ImagePicker();
XFile? selectedFile;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "IPL Teams",
        ),
        centerTitle:true,
        backgroundColor: Colors.blue,
      ),
      body:SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children:[
              GestureDetector(
                onTap: ()async{
                    selectedFile=await imagePicker.pickImage(source: ImageSource.gallery);
                    if(selectedFile != null){
                        log(selectedFile!.name);
                    }
                    setState(() {
                      
                    });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration:const BoxDecoration(
                    shape:BoxShape.circle,
                  ),
                  child: selectedFile!=null ?Image.file(File(selectedFile!.path)) 
                    : Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUqnJA06cgspCyRTSneLeJYc5_rcMBHc6MmA&s")
                  ),
                ),
              
              const SizedBox(height: 15,),
              TextField(
                controller:nameTextController,
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Player Name",
                ),
              ),
              const SizedBox(height: 15,),
              TextField(
                controller:jerseyNoTextController,
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Jersey No.",
                ),
              ),
              const SizedBox(height: 15,),
              TextField(
                controller:teamNameTextController,
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Team Name",
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: ()async{
                      if(nameTextController.text.isNotEmpty &&
                         jerseyNoTextController.text.isNotEmpty&&
                         teamNameTextController.text.isNotEmpty
                      ){
                        Map<String,dynamic> data={
                          'playerName':nameTextController.text,
                          'jerseyNo':jerseyNoTextController.text,
                          'teamName':teamNameTextController.text,
                        };
                        await FirebaseFirestore.instance.collection("IPLTeamData").add(data);
                        nameTextController.clear();
                        jerseyNoTextController.clear();
                        teamNameTextController.clear();
                      }
                    }, 
                    child:const Text("Add Data"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context){
                          return const GetTeamName();
                        })
                      );
                    }, 
                    child:const Text("Get Data"),
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}