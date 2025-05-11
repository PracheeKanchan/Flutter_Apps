import 'package:flutter/material.dart';

class GetPlayerList extends StatefulWidget{

   final List playerList;
   const GetPlayerList({super.key,required this.playerList});

  @override
  State createState()=> __GetPlayerList();
}
class __GetPlayerList extends State<GetPlayerList>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        itemCount:widget.playerList.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              //height: 150,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration:const  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      children: [
                        Text(
                          widget.playerList[index]['playerName'],
                          style: const TextStyle(
                            fontSize: 18,
                          ),  
                        ),
                        Text(
                          widget.playerList[index]['jerseyNo'],
                          style: const TextStyle(
                            fontSize: 18,
                          ),  
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}