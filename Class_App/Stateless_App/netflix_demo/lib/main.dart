import "package:flutter/material.dart";

void main(){
    runApp(const NetflixApp());
}
class NetflixApp extends StatelessWidget{

  const NetflixApp({super.key});
  @override
  Widget build(BuildContext context){

      return MaterialApp(

          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.black,
              appBar:AppBar(
                  title: const Text("NETFLIX"),
                  titleSpacing: 10,
                  titleTextStyle: const TextStyle(
                      fontSize: 26,
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                  ),
                  backgroundColor: Colors.black,
                  actions:  [
                      IconButton(
                          onPressed: (){}, 
                          icon: const Icon(Icons.download,color: Colors.white,size: 25,),
                      ),
                      IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.search,color: Colors.white,size: 25,)
                      ),
                  ],
              ), 
              body:  Column(

                  children: [
                         Row(
                              children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                        onPressed: (){},
                                        style:const ButtonStyle(
                                            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 82, 82, 82)),
                                        ),
                                        child: const Text("TV Shows",
                                              style: TextStyle(
                                                  color: Colors.white,
                                              ),
                                        ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                        onPressed: (){},
                                        style:const ButtonStyle(
                                            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 82, 82, 82)),
                                        ),
                                        child: const Text("Movies",
                                              style: TextStyle(
                                                  color: Colors.white,
                                              ),
                                        ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: ElevatedButton(
                                        onPressed: (){},
                                        style:const ButtonStyle(
                                            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 82, 82, 82)),
                                        ),
                                        child: const Text("Categories",
                                              style: TextStyle(
                                                  color: Colors.white,
                                              ),
                                        ),
                                    ),
                                  ),
                               ],
                           ),
                        
                         Expanded(
                           child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder:(context, index) {
                                    return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Action/Thrillar",
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                              ), 
                                        ),
                                  const SizedBox(height: 10,),
                                  SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: [
                                    Container(
                                        height: 300,
                                        width: 200,
                                        padding: const EdgeInsets.all(5),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child:Image.network(
                                          "https://stat5.bollywoodhungama.in/wp-content/uploads/2017/11/Jumanji-Welcome-to-The-Jungle-English-01-306x393.jpg",
                                              fit: BoxFit.cover,
                                             ),
                                        ),
                                    ),
                                    Container(
                                        height: 300,
                                        width: 200,
                                        padding: const EdgeInsets.all(5),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child:Image.network(
                                          "https://m.media-amazon.com/images/M/MV5BYTJmY2Q2NTYtNjcxMy00MjQ5LThkMDktYTFmYzk2NzllM2I0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
                                              fit: BoxFit.cover,
                                             ),
                                        ),
                                    ),
                                    Container(
                                        height: 300,
                                        width: 200,
                                        padding: const EdgeInsets.all(5),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child:Image.network(
                                              "https://v3img.voot.com/resizeMedium,w_810,h_1080/v3Storage/assets/3x4hobbs-1719809698404.jpg",
                                              fit: BoxFit.cover,
                                             ),
                                        ),
                                    ),
                                    Container(
                                        height: 300,
                                        width: 200,
                                        padding: const EdgeInsets.all(5),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child:Image.network(
                                          "https://static.toiimg.com/photo/90355881.cms",
                                              fit: BoxFit.cover,
                                             ),
                                        ),
                                    ),
                                    Container(
                                        height: 300,
                                        width: 200,
                                        padding: const EdgeInsets.all(5),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child:Image.network(
                                          "https://m.media-amazon.com/images/I/81hu4DOZzbS._AC_UF1000,1000_QL80_.jpg",
                                              fit: BoxFit.cover,
                                             ),
                                        ),
                                    ),
                                ],
                            ),
                            
                                                   ),
                                                   const SizedBox(height: 30,),
                                               ],
                                             );
                                           }
                                            
                                         ),
                         ),
 
             ],
          ),
      ),
    );
  }
}