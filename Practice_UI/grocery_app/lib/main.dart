import 'package:flutter/material.dart';
import 'package:grocery_app/detail_screen.dart';
import 'package:grocery_app/login_screen.dart';
import 'package:grocery_app/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailScreen(),
    );
  }
}
