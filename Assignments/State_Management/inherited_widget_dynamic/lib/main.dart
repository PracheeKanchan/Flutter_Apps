import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget_dynamic/login_page.dart';
import 'package:inherited_widget_dynamic/userinfo.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB9sxsoe4CWKNyFvZNY2-X6w5ISus2sw94", 
      appId: "1:484174752395:android:6a1c45fb6b3cb615d3428e", 
      messagingSenderId: "484174752395", 
      projectId: "inheritedwidget-709f2"
    )
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Userinfo(
      email: '',
      password: '',
      child: const MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
