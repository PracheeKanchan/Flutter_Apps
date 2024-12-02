import 'package:firebase_demo/login_screen.dart';
import 'package:firebase_demo/Model/player_model.dart';
import 'package:firebase_demo/session_data.dart';
import 'package:flutter/material.dart';

class PlayersInfo extends StatefulWidget {
        
      //final String email;
      const PlayersInfo({super.key});
      @override
      State<PlayersInfo> createState() => _PlayersInfoState();
}

class _PlayersInfoState extends State<PlayersInfo> {

      
      TextEditingController playerNameTextController =
      TextEditingController();
      TextEditingController jerseyNoTextController = TextEditingController();
      List<PlayerModel> playersList = [];
///INSTANCE FOR IMAGE PICKER
//final ImagePicker _imagePicker = ImagePicker();
//XFile? _selectedFile;
              @override
              Widget build(BuildContext context) {
                  return Scaffold(
                      backgroundColor: Colors.black,
                      appBar: AppBar(
                      title: const Text(
                          "Firebase Player App",
                           style: TextStyle(
                              fontSize: 25,
                           ),
                      ),
                      centerTitle: true,
                      backgroundColor: Colors.blue,
                      actions: [
                          GestureDetector(
                          onTap: () async{
                           await SessionData.storeSessionData(loginData: false);
                           Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder:(context){
                                    return const LoginScreen();
                                    
                                }
                                
                                ),
                           );
                          },
                          child: const Icon(Icons.logout),
                          ),
                      ],
                      ),
              body: Column(
                      children: [
                      const SizedBox(height: 20,),
                      GestureDetector(
                          onTap: () async {},
                          child: Container(
                              width: 120,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.network(
                              "https://icons.veryicon.com/png/o/miscellaneous/standard/avatar-15.png")),
                      ),
                      /// PLAYER NAME
                      Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                                  controller: playerNameTextController,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                            ),
                            decoration: const InputDecoration(
                                hintText: "Enter Player Name",
                                hintStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                ),
                                border: OutlineInputBorder(),
                             ),
                          ),
                      ),
                      /// PLAYER JERSEY NO
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                                controller: jerseyNoTextController,
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                ),
                                decoration: const InputDecoration(
                                    hintText: "Enter Player Jersey No.",
                                    hintStyle: TextStyle(
                                    fontSize: 18,
                                        color: Colors.white,
                                    ),
                                    border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                          ),
                      ),
                      const SizedBox(height: 20,),
                      GestureDetector(
                            onTap: () async {},
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                    ),
                                ),
                            ),
                      ),
                      const SizedBox(height: 10,),
                      GestureDetector(
                            onTap: () async {},
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(25),
                               ),
                                child: const Text(
                                    "Display",
                                    style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    ),
                              ),
                          ),
                      ),
                    const SizedBox(height: 10,),
                    Expanded(
                        child: ListView.builder(
                        itemCount: playersList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                            return Container(
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey[200],
                                  ),
                                  padding: const EdgeInsets.all(20.0),
                                  margin: const EdgeInsets.all(10.0),
                                  child: Row(
                                  children: [
                                  Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                  ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                                  child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                                  Text(
                                                  "Player Name:${playersList[index].playerName}",
                                                  style: const TextStyle(
                                                  fontSize: 18,
                                                  ),
                                                  ),
                                                  const SizedBox(
                                                  height: 10,
                                                  ),
                                                  Text(
                                                  "Jersey No: ${playersList[index].jerseyNo}",
                                                  style: const TextStyle(
                                                  fontSize: 18,
                                                  ),
                                                  ),
                                           ],
                                        ),
                            ),
                    ],
                 ),
               );
             },
           ),
          )
       ],
     ),
   );
 }
}