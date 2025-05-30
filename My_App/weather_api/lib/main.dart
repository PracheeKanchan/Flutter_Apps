import 'package:flutter/material.dart';
import 'package:weather_api/View/weather_home.dart';
import 'package:weather_api/service/current_weather.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await CurrentWeather().getCurrentweatherData();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherHome(),
    );
  }
}
