import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  TextEditingController titleController=TextEditingController();


  @override
  Widget build(BuildContext context) {


    return  Scaffold(
        appBar:AppBar(
          title: const Text("BottomSheet Demo"),
          backgroundColor: Colors.cyan,
        ),
        body: const Center(
          child: Text('BottomSheet Demo'),
        ),
        floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.cyan,
              onPressed: (){
                  showModalBottomSheet(context: context, builder: (context){

                      return Column(
                        children: [
                          const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextField(
                                controller: titleController,
                                decoration: InputDecoration(
                                  hintText: "Title",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                ),
                                
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextField(
                                controller: titleController,
                                decoration: InputDecoration(
                                  hintText: "Description",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                ),
                                
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextField(
                                controller: titleController,
                                decoration: InputDecoration(
                                  hintText: "Date",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                ),
                                
                              ),
                            ),
                        ],
                      );
                  },
                );//show bottom sheet ends here
              }, 
               //on pressed
              child: const Icon(Icons.add,color: Colors.white,),
        ),
      );
  }
}
