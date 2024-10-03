import "package:flutter/material.dart";

void main(){
    runApp(const FlowerApp());
}

class FlowerApp extends StatefulWidget{

    const FlowerApp({super.key});

    @override
    State createState()=>_FlowerAppState();
}

class _FlowerAppState extends State{

    int index=0;
    List<String> flowerList=[
        "https://images.pexels.com/photos/36729/tulip-flower-bloom-pink.jpg?cs=srgb&dl=pexels-pixabay-36729.jpg&fm=jpg",
        "https://img.freepik.com/premium-photo/beautiful-flower-background-with-celebration_874813-17904.jpg",
        "https://cdn.pixabay.com/photo/2023/02/02/06/51/sunflower-7762051_1280.jpg",
        "https://i.pinimg.com/736x/04/5b/3a/045b3af4069fa0e2bf68369b092cb6e3.jpg",
    ];
    @override
    Widget build(BuildContext context){

        return MaterialApp(

            debugShowCheckedModeBanner: false,
            title: "Flower App",
            home: Scaffold(
              appBar:AppBar(
                     title: const Text("Image App"),
                     centerTitle: true,
                     backgroundColor: Colors.blue,   
              ),
              body:   Center(
                child:SizedBox(
                  height: 370,
                  width: 300,
                      child:Image.network(flowerList[index],fit:BoxFit.cover,),
                  ),
              ),
              
              floatingActionButton: FloatingActionButton(
                  onPressed:(){
                        if(index < flowerList.length-1){
                              index++;
                        }else{
                              index=0;
                        }
                        setState(() {});
                  },
                  backgroundColor: Colors.blue,
                  child: const Icon(Icons.add),
              ),
            ),
        );
    }
}