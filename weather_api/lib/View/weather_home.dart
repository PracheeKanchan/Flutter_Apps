
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_api/service/current_weather.dart';
import 'package:weather_api/service/geolocation.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {

TextEditingController cityNameController = TextEditingController();

  Widget showMyDialogBox() {
    return Dialog(
      insetPadding: EdgeInsets.only(
        left: 5,
        right: 5,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: EdgeInsets.only(
          left: 30,
          top: 20,
          right: 30,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Text(
              "Enter city name",
              style: GoogleFonts.quicksand(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 40,
              width: 200,
              child: TextField(
                controller: cityNameController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 5, left: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                await LatitudeLongitude()
                    .giveLatLong(cityNameController.text);
                await CurrentWeather().getCurrentweatherData();
                cityNameController.clear();
                setState(() {});
                Navigator.of(context).pop();

                //log(LatitudeLongitude.latitude.toString());
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 3, 77, 137),
                ),
                child: Center(
                  child: Text(
                    "Search",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

Widget decideImage(String status) {
    if (status == "Smoke") {
      return Image.asset("assets/smoke.png");
    } else if (status == "Clouds" || status == "Rain") {
      return Image.asset("assets/weather.png");
    } else {
      return Image.asset("assets/clearSky.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String date = DateFormat.yMMMEd().format(now);
    final String time = DateFormat('jm').format(now);

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding:  EdgeInsets.only(
          top: 50,
          //bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context, 
                    builder: (BuildContext context) => showMyDialogBox(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      'Change',
                       style:GoogleFonts.quicksand(
                         color: Colors.white,
                         fontSize: 15,
                         fontWeight: FontWeight.w500,
                       ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Text(
                  CurrentWeather.weatherObj!.name,
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              Text(
                  "${(CurrentWeather.weatherObj!.temperature-273.15).toStringAsFixed(2)} °C",
                  style: GoogleFonts.quicksand(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
              ),
              Text(
                  CurrentWeather.weatherObj!.status,
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  date,
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  time,
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    height: 200,
                    width: 200,
                    child: decideImage(CurrentWeather.weatherObj!.status),
                ),
                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                   // color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/wind.png"),
                              ),
                              Text(
                                "${CurrentWeather.weatherObj!.wind} m/s",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Wind",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/sunny.png"),
                              ),
                              Text(
                                "${(CurrentWeather.weatherObj!.maxTemp - 273.15).toStringAsFixed(2)}°C",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Max Temp",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/sun.png"),
                              ),
                              Text(
                                "${(CurrentWeather.weatherObj!.minTemp - 273.15).toStringAsFixed(2)}°C",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Min Temp",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //const Divider(),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/humidity.png"),
                              ),
                              Text(
                                "${CurrentWeather.weatherObj!.humidity}%",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Humidity",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/air.png"),
                              ),
                              Text(
                                "${CurrentWeather.weatherObj!.pressure} hPa",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Pressuer",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/water-level.png"),
                              ),
                              Text(
                                "${CurrentWeather.weatherObj!.seaLevel} m",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Sea Level",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                           ],
                          ),
                        ]
                      ),
                    ]
                  ),
               ),
            ]
          ),
        ),
      )
    );
  }
}