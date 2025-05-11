import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ipl_team_app/add_ipl_data.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const FirebaseOptions(
      apiKey: "AIzaSyDxIVIumAPGgL8t8vx-Ud5aPVdCTsf5pcM", 
      appId: "1:974391136283:android:22a90e2f7a9df46082e8be", 
      messagingSenderId: "974391136283", 
      projectId: "iplteams-10478"
    )
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: AddIplData(),
    );
  }
}
