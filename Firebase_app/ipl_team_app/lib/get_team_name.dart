
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ipl_team_app/get_player_list.dart';

class GetTeamName extends StatefulWidget{
  const GetTeamName({super.key});

  @override
  State createState()=> _GetTeamNameState();
}
class _GetTeamNameState extends State{

List IplData=[];
List uniqueTeamNames=[];
@override
void initState(){
  super.initState();
  getPlayerData();
}

void getPlayerData()async{
  QuerySnapshot response=await FirebaseFirestore.instance.collection("IPLTeamData").get();
  IplData=response.docs;
   // Extract unique team names using a List 
  List<String> teams = [];
  for (var player in IplData) {
    if (!teams.contains(player['teamName'])) {
      teams.add(player['teamName']);
    }
  }
   uniqueTeamNames = teams;
   log("$uniqueTeamNames");
  
  setState(() {
    
  });
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        itemCount: uniqueTeamNames.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                List updatePlayerList=[];
                String tName=IplData[index]['teamName'];

                for(var i=0;i<IplData.length;i++){
                  if(tName == IplData[i]['teamName']){
                    updatePlayerList.add(IplData[i]);
                }
                }
                  Navigator.of(context).push(
                  MaterialPageRoute(builder:(context){
                    return GetPlayerList(playerList: updatePlayerList);
                  })
                );
              },
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal,
                ), 
                child: Center(
                  child: Text(
                    uniqueTeamNames[index],
                    style: const TextStyle(
                      fontSize: 18,
                    ),  
                  )),
              ),
            ),
          );
        }
      ),
    );
  }
}