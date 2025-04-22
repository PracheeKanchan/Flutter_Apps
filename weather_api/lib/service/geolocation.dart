import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class LatitudeLongitude{
  static double latitude=0;
  static double longitude=0;

  dynamic giveLatLong(String cityName)async{
    dynamic response = await http.get(
      Uri.parse(
        "http://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=1&appid=d7b43a5681d28f0fa99f2da305abc656"
      ),
    );
    dynamic parsedJson = jsonDecode(response.body);
    latitude = parsedJson[0]["lat"];
    longitude = parsedJson[0]["lon"];
    log("Latitude:$latitude \n Longitude:$longitude");

  }
}