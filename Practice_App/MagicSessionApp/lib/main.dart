import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: const Text(
                    "Shoes",
                    style: TextStyle(
                        color: Colors.purple,
                    ),
                ),
                
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     SizedBox(
                      child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),
                    ),

                    const SizedBox(height: 30,),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("Nike Air Force 1 ''07",
                                style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                          children: [
                              
                              ElevatedButton(
                                onPressed: (){}, 
                                style:const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(Colors.purple),
                                ),
                                child: const Text("SHOES",
                                      style:TextStyle(
                                        color: Colors.white,
                                      ) ,
                                ),
                                
                              ),
                              const SizedBox(width: 20,),
                              ElevatedButton(
                                onPressed: (){}, 
                                style:const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(Colors.purple),
                                ),
                                child: const Text("FOOTWEAR",
                                      style: TextStyle(
                                            color: Colors.white,
                                      ),
                                ),
                              ),
                          ],
                      ),
                    ),
                    /*const SizedBox(
                        height: 10,
                    ),*/
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat.This iteration puts a fresh spin on the hoopsclassic with crisp leather, eraechoing 80's construction and reflective-design Swoosh logos."
                        ),
                      ),
                    ),

                    //const SizedBox(height: 30,),
                     Padding(
                      padding:const EdgeInsets.all(20),
                      child:  Row(
                          children: [
                                const Text(
                                   "Quantity",
                                   style: TextStyle(
                                         fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                   ), 
                                ),
                                const SizedBox(width: 10,),
                                const Icon(Icons.minimize),
                                const SizedBox(width: 10,),
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration:  BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black,),
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(child:  Text("1")),
                                ),
                                const SizedBox(width: 10,),
                                const Icon(Icons.add),
                              
                          ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      height: 50,
                        child: ElevatedButton(
                          
                            onPressed: (){}, 
                            style:const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Colors.purple),
                                
                            ),
                            child: const Text("PURCHASE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        //fontSize: 15,
                                        //fontWeight: FontWeight.w400,
                                    ),
                            ),
                        ),
                      ),
                    
                ],
            ),
        ),
      );
  }
}