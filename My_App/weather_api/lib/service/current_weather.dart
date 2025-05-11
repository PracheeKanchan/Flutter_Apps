import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:weather_api/Model/weather_model.dart';
import 'package:weather_api/service/geolocation.dart';

class CurrentWeather {
    
  static WeatherModel? weatherObj;

  dynamic getCurrentweatherData()async{
    try{
      http.Response response=await http.get(
        Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=${LatitudeLongitude.latitude}&lon=${LatitudeLongitude.longitude}&appid=d7b43a5681d28f0fa99f2da305abc656",
        ),
      );
      try{
        if(response.statusCode == 200){
            dynamic jsonResponse=jsonDecode(response.body);
            weatherObj = WeatherModel(
              name: jsonResponse["name"], 
              status: jsonResponse["weather"][0]["main"],
              temperature: jsonResponse["main"]["temp"], 
              humidity:jsonResponse["main"]["humidity"], 
              maxTemp: jsonResponse["main"]["temp_max"], 
              minTemp: jsonResponse["main"]["temp_min"], 
              pressure: jsonResponse["main"]["pressure"], 
              seaLevel: jsonResponse["main"]["sea_level"], 
              wind: jsonResponse["wind"]["speed"]);

              return jsonResponse;
        }
      }catch(err){
        log("Exception to get Current Weather Data");
      }
    }catch(e){
        log("Exception:$e");
    }
  }
}