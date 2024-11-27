import "package:flutter/material.dart";

void main(){
  runApp(const ShoesApp());
}
class ShoesApp extends StatefulWidget{

  const ShoesApp({super.key});

  @override
  State<ShoesApp> createState() => _ShoesAppState();
}

class _ShoesAppState extends State<ShoesApp> {

  int itemCount=0;

  @override
  Widget build(BuildContext context){

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: const Text(
                    "Shoes",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight:FontWeight.w400,
                        color: Colors.deepPurple,
                    ),
                ),
                actions: [
                        IconButton(onPressed: (){},
                        icon: const Icon(Icons.shopping_cart,color: Colors.deepPurple,),
                        ),
                ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     SizedBox(
                      //width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Image.network(
                        "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                         fit: BoxFit.cover,
                        ),
                    ),

                    //const SizedBox(height: 20,),
                    const Padding(
                      padding: EdgeInsets.only(left: 20,top: 20,bottom: 15),
                      child: Text("Nike Air Force 1 ''07",
                                style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                          children: [
                              
                              ElevatedButton(
                                onPressed: (){}, 
                                style:const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                                ),
                                child: const Text("SHOES",
                                      style:TextStyle(
                                        color: Colors.white,
                                      ) ,
                                ),
                                
                              ),
                              const SizedBox(width: 10,),
                              ElevatedButton(
                                onPressed: (){}, 
                                style:const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                      child: SizedBox(
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat.This iteration puts a fresh spin on the hoopsclassic with crisp leather, eraechoing 80's construction and reflective-design Swoosh logos."
                        ),
                      ),
                    ),

                    //const SizedBox(height: 30,),
                     Padding(
                      padding:const EdgeInsets.only(left: 20,bottom: 20),
                      child:  Row(
                          children: [
                                const Text(
                                   "Quantity",
                                   style: TextStyle(
                                         fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                   ), 
                                ),
                                const SizedBox(width: 5,),
                                IconButton(
                                    onPressed: (){
                                        if(itemCount>0){
                                            itemCount--;
                                        }
                                        setState(() {});
                                    },
                                    icon:  const Icon(Icons.remove)
                                ),
                                const SizedBox(width: 5,),
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration:  BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black,width: 0.3),
                                        borderRadius: BorderRadius.circular(5),
                                    ),
                                    child:  Center(child:  Text("$itemCount")),
                                ),
                                const SizedBox(width: 10,),
                                IconButton(
                                    onPressed: (){
                                        itemCount++;
                                        setState(() {});
                                    },
                                    icon:  const Icon(Icons.add)
                                ),                              
                          ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 360,
                        height: 50,
                          child: ElevatedButton(
                            
                              onPressed: (){}, 
                              style:const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                                  
                              ),
                              child: const Text("PURCHASE",
                                      style: TextStyle(
                                          color: Colors.white,
                                      ),
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