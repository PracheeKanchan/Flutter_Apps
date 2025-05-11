import 'package:c2w_student_firebase_app/add_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCa0-8lLGBRRT63vZG6JqBfHkBq8bqRbcU", 
      appId: "1:1047686029241:android:909e25fed4af1fe2106068", 
      messagingSenderId: "1047686029241", 
      projectId:"employeeinfo-5bc60"
    )
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddData(),
    );
  }
}
