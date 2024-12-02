import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/login_screen.dart';
import 'package:flutter/material.dart';

void main() async{
  //if asynchrou0
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:"AIzaSyCyXoY5PVvMO5M qG4Ndy_ySlJfPek0oqTU",
     appId: "1:897541160024:android:72998f230c096763ec1e2d",
      messagingSenderId:  "897541160024",
       projectId: "playerinfo-c3344"
       ),
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override
  Widget build(BuildContext context){

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


  
