import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Gradient Demo"),
            centerTitle: true,
            //backgroundColor: Colors.blue,
            flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.pink,Colors.purple],
                              stops: [0.2,1.0],
                    ),
                ),
            ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            
            children: [
              //LinearGradient
              const Padding(
                padding: EdgeInsets.only(top: 20,bottom: 10),
                child:  Text("Linear Gradient",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Container(
                    height: 170,
                    width: 170,
                    decoration:BoxDecoration(
                        gradient:const  LinearGradient(
                          colors: [
                                Colors.purpleAccent,
                                Colors.deepPurpleAccent,
                            ],
                            stops: [0.0,1.0],
                        ),
                        borderRadius: BorderRadius.circular(20),
                    ),
                ),
              ),
              //Radial Gradient
              const Padding(
                padding: EdgeInsets.only(top: 20,bottom: 10),
                child:  Text("Radial Gradient",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Container(
                    height: 170,
                    width: 170,
                    decoration:BoxDecoration(
                        gradient:const RadialGradient(
                            colors: [Colors.pinkAccent,Colors.yellow],
                            tileMode: TileMode.mirror,
                            center: Alignment.topLeft,
                        ),
                        
                        borderRadius: BorderRadius.circular(20),
                    ),
                ),
              ),
              //Sweep gradient
              const Padding(
                padding: EdgeInsets.only(top: 20,bottom: 10),
                child:  Text("Sweep Gradient",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Container(
                    height: 170,
                    width: 170,
                    decoration:BoxDecoration(
                        gradient:const SweepGradient(
                            colors: [Colors.lightGreenAccent,Colors.teal],
                            center: Alignment.topLeft,
                            stops: [0.0,0.2],
                            tileMode: TileMode.mirror,
                        ),
                        borderRadius: BorderRadius.circular(20),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
