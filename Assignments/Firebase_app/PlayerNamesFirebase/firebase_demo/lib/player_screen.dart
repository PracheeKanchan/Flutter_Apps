import 'package:firebase_demo/Model/player_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PlayerScreen extends StatefulWidget{

  const PlayerScreen({super.key});
  @override
  State createState()=>_PlayerScreenState();
}
class _PlayerScreenState extends State{

  TextEditingController playerNameController=TextEditingController();
  TextEditingController jerseyNoController=TextEditingController();

  List<PlayerModel> playerList=[];

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'FireBase Player Info',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [

            const SizedBox(
              height: 25,
            ),
            //Student Name
           Padding(
             padding: const EdgeInsets.all(10),
             child: TextField(
              controller: playerNameController,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              decoration: const InputDecoration(
                hintText: 'Enter Player Name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              border: OutlineInputBorder(),
              ),
                       ),
           ),

           //Student Roll Number

           Padding(
             padding: const EdgeInsets.all(10),
             child: TextField(
              controller: jerseyNoController,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              decoration: const InputDecoration(
                hintText: 'Enter Jersey No.',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
             ),
           ),

          const SizedBox(height:10),

          GestureDetector(
            onTap: () async{
              if(playerNameController.text.trim().isNotEmpty &&
                  jerseyNoController.text.trim().isNotEmpty){
                    Map<String,dynamic> data={
                      'playerName':playerNameController.text.trim(),
                      'jerseyNo':jerseyNoController.text.trim(),
                    };
                    
                    //add data to firebase
                     FirebaseFirestore.instance.collection("playersInfo").add(data);
                    print(data);

                    playerNameController.clear();
                    jerseyNoController.clear();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Data Added'),
                      ),
                    );
                }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(' Invalid Data'),
                      ),
                    );
                }
            },
            child: Container(
              padding:const EdgeInsets.symmetric(
                horizontal: 17,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Add Data',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
            ),
          ),

          const SizedBox(height:10),

          GestureDetector(
            onTap: ()async{
               QuerySnapshot response= await FirebaseFirestore.instance.collection('playersInfo').get();

               //playerList.clear();

               for(int i=0;i<response.docs.length;i++){
                  playerList.add(
                    PlayerModel(
                      playerName: response.docs[i]['playerName'], 
                      playerID: response.docs[i].id,
                      jerseyNo: response.docs[i]['jerseyNo'],
                       
                    )
                  );
               }
               setState(() {});
            },
            child: Container(
              padding:const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Get Data',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(
              itemCount: playerList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(15),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Player Name : ${playerList[index].playerName}',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Jersey No. : ${playerList[index].jerseyNo}',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}