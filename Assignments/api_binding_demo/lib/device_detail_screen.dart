import 'package:flutter/material.dart';

class DeviceDetailScreen extends StatefulWidget{

  String urlImage;
  Map<dynamic,dynamic> deviceInfo;

  DeviceDetailScreen({super.key,required this.urlImage,required this.deviceInfo});
  @override
  State<DeviceDetailScreen> createState()=> _DeviceDetailScreen();
}

class _DeviceDetailScreen extends State<DeviceDetailScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Device details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const SizedBox(height: 30,),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow:const  [
                              BoxShadow(
                                color: Color.fromRGBO(0,0,0,0.2),
                                offset: Offset(0,2),
                                blurRadius: 10,
                              )
                  ],
                ),
                child: Center(child: Image.network(widget.urlImage)),
              ),
              const SizedBox(height: 20,),
               Text(
                 "Name of device :${widget.deviceInfo['name']}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10,),
              widget.deviceInfo['data']!=null?(
                  widget.deviceInfo['data']['color']!=null?  Text(
                    "Color of Device :${widget.deviceInfo['data']['color']}",
                     style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                     ),
                  ):const SizedBox()
              ):const SizedBox(),

              widget.deviceInfo['data']!=null?(
                  widget.deviceInfo['data']['price']!=null?  Text(
                    "Price of Device :${widget.deviceInfo['data']['price']}",
                     style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                     ),
                  ):const SizedBox()
              ):const SizedBox(),
              
              widget.deviceInfo['data']!=null?(
                  widget.deviceInfo['data']['capacity']!=null?  Text(
                    "Capacity of Device :${widget.deviceInfo['data']['capacity']}",
                     style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                     ),
                  ):const SizedBox()
              ):const SizedBox(),
              
              widget.deviceInfo['data']!=null?(
                  widget.deviceInfo['data']['generation']!=null?  Text(
                    "Generation of Device :${widget.deviceInfo['data']['generation']}",
                     style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                     ),
                  ):const SizedBox()
              ):const SizedBox(),
          ],
        ),
      ),
    );
  }
}