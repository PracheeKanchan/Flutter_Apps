import 'package:flutter/material.dart';
import 'package:widget_cycle_demo/widget_lifycycle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetLifyCycle(),
    );
  }
}
