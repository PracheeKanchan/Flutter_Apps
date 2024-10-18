import 'package:flutter/material.dart';

//add 5 network images horizontally make them scrollable
class Statement7 extends StatelessWidget{

  const Statement7({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                  title: const Text("Network Image Scroll"),
                  centerTitle: true,
                  backgroundColor: Colors.blue,
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                              height: 300,
                              width: 150,
                              child: Image.network("https://i.pinimg.com/236x/b1/5f/e6/b15fe68d3086f6e35c1b996c1d811b74.jpg",
                                  fit:BoxFit.cover,
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                              
                              height: 300,
                              width: 150,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJKqA8PueJMsi4gQRgsyfww7ZnXcN-DdbHkA&s",
                                  fit:BoxFit.cover,
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                              height: 300,
                              width: 150,
                              child: Image.network("https://i.pinimg.com/originals/f6/35/fd/f635fda7eac6e9315006ecfba15db2b6.jpg",
                                  fit:BoxFit.cover,
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                              height: 300,
                              width: 150,
                              child: Image.network("https://m.media-amazon.com/images/I/61S+YHHA6xL._AC_UF1000,1000_QL80_.jpg",
                                  fit:BoxFit.cover,
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                              height: 300,
                              width: 150,
                              child: Image.network("https://i.pinimg.com/236x/b1/5f/e6/b15fe68d3086f6e35c1b996c1d811b74.jpg",
                                  fit:BoxFit.cover,
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