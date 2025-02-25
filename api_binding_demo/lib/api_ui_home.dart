import 'dart:convert';
import 'dart:developer';

import 'package:api_binding_demo/get_all_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIUIHomeScreen extends StatefulWidget{

  const APIUIHomeScreen({super.key});
  @override
  State createState()=>_APIUIHomeScreenState();
}

class _APIUIHomeScreenState extends State{

void getAllDeviceData() async{
    Uri url=Uri.parse('https://api.restful-api.dev/objects');
    http.Response response= await http.get(url);
    //log(response.body);

    //convert json data to List of map fot accessing
    List<dynamic> jsonData=json.decode(response.body);
    log(jsonData[1]['name']);

    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return  GetAllDataScreen(devicedata: jsonData,);
        })
    );

}

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'API Binding',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  getAllDeviceData();
                  
                },
                child: Container(
                  height: 190,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 252, 217, 217),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0,0,0,0.3),
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: const Center(
                    child: Text(
                      'Get Data',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 190,
                width: 180,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 217, 217),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0,0,0,0.3),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                child: const Center(
                  child: Text(
                    'Post Data',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 190,
                width: 180,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 217, 217),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0,0,0,0.3),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                child: const Center(
                  child: Text(
                    'Update Data',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                height: 190,
                width: 180,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 217, 217),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0,0,0,0.3),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 3),
                    )
                  ]
                ),
                child: const Center(
                  child: Text(
                    'Delete Data',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}