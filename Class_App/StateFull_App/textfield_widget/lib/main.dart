import "package:flutter/material.dart";

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
      return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: TextFieldApp(),
        );
    }
}
class TextFieldApp extends StatefulWidget{
  
  const TextFieldApp({super.key});
   @override
    State createState() => _TextFieldAppState();
}
class _TextFieldAppState extends State{

    TextEditingController nameController = TextEditingController();

    String? myName;

    @override
    Widget build(BuildContext context){

        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                appBar: AppBar(
                    title: const Text("TextField Demo",
                        style: TextStyle(
                            fontSize: 20,
                        ),
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.blue,
                ),
                body:Column(
                    children:[
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                              controller: nameController,
                              style: const TextStyle(
                                  fontSize: 26,
                              ),
                              //obscureText: true,
                              decoration:const InputDecoration(
                                    hintText: "Enter name",
                                    hintStyle: TextStyle(fontSize: 22,color: Colors.grey),
                                    border: OutlineInputBorder(),
                                    suffixIcon: Icon(Icons.visibility,),
                             ),
                          ),
                        ),

                        const SizedBox(height: 50,),
                        GestureDetector(
                            onTap: (){

                                myName=nameController.text;
                                nameController.clear();
                                setState(() {});
                            },
                          child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                              decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue,
                              ),
                                  child: const Text(
                                      "Add Data",
                                          style: TextStyle(
                                              fontSize: 22,
                                          ),    
                                  ),
                          ),
                        ),
                        const SizedBox(height: 50,),
                        Text("Name : $myName",style: const TextStyle(fontSize: 20),),
                    ],
                ),
            ),
        );
    }
}