import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sumiti_darpan_project/Admin/admin_palya_palak.dart';
import 'package:sumiti_darpan_project/Admin/admin_post_screen.dart';
import 'package:sumiti_darpan_project/login_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const FirebaseOptions(
      apiKey: "AIzaSyButfWf7XGCcR09U5qpOSM0e6vvX8S2bhY", 
      appId: "1:439651540137:android:21fea914aa189b6d769db8", 
      messagingSenderId: "439651540137",
      projectId: "mysamitidarpanproject",
    ),
  );
  runApp(const SumitiDarpan());
}

class SumitiDarpan extends StatelessWidget {
  const SumitiDarpan({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AdminDarpanPost(),
    );
  }
}
