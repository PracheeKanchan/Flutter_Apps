import "package:flutter/material.dart";

void main(){
    runApp(const LanguageApp());
}

class LanguageApp extends StatelessWidget{

  const LanguageApp({super.key});

  @override
  Widget build(BuildContext context){

      return MaterialApp(

          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                  title: const Text(
                    "Recomended",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 91, 135, 1),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                    centerTitle: true,
                    leading:IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios_new_sharp)),
                    flexibleSpace: Container(
                                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    ),
              ),
              body:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const Padding(
                        padding:  EdgeInsets.only(left: 10,top: 15),
                        child: Text("Start a new career",
                                style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: ElevatedButton(
                                      style: const ButtonStyle(
                                          
                                          backgroundColor:  WidgetStatePropertyAll(Color.fromRGBO(0, 91, 135, 1)),
                                      ),
                                      onPressed: (){},
                                      child: const Text(
                                            "Data Science",
                                            style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: ElevatedButton(
                                        style: const ButtonStyle(
                                              backgroundColor:  WidgetStatePropertyAll(Color.fromRGBO(227, 232, 234, 1)),
                                        ),
                                        onPressed: (){}, 
                                        child: const Text(
                                              "Machines Learning",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromRGBO(0, 91, 135, 1),
                                              ),
                                        ),
                                  ),
                                ),
                                ElevatedButton(
                                      onPressed: (){}, 
                                      style: const ButtonStyle(
                                              backgroundColor:  WidgetStatePropertyAll(Color.fromRGBO(227, 232, 234, 1)),
                                        ),
                                      child: const Text(
                                          "Apache Spark",
                                          style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromRGBO(0, 91, 135, 1),
                                          ),
                                      ),
                                ),
                            ],
                        ),
                      ),
                      const SizedBox(height: 30,),

                      //ListView.builder
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                              return Padding(
                            padding: const EdgeInsets.only(bottom: 25,left: 10,right: 10),
                            child: Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                      children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: SizedBox(
                                                  height: 150,
                                                  width: 130,
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(20),
                                                         child:Image.asset(
                                                          "assets/arrow.jpeg",
                                                          fit: BoxFit.cover,
                                                        ),
                                                  ),
                                              ),
                                            ),
                                            //const SizedBox(width: 30,),
                                             Expanded(
                                              child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                      const SizedBox(height: 10,),
                                                      const SizedBox(
                                                        child:  Text(
                                                              "Data Science",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.w500,
                                                              ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        child: Text("Harvard University",
                                                              style: TextStyle(
                                                                   color: Color.fromARGB(255, 143, 142, 142),
                                                                  fontSize: 13,
                                                                  fontWeight: FontWeight.w400
                                                              ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                            height: 50,
                                                            child: Text(
                                                                "Loreum ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                                                style: TextStyle(
                                                                    fontSize: 13,
                                                                ),
                                                            ),
                                              
                                                      ),
                                                      Row(
                                                          children: [
                                                                Container(
                                                                   padding: const EdgeInsets.only(left: 5,right: 5,top: 7,bottom: 5),
                                                                    decoration: BoxDecoration(
                                                                      color: const Color.fromRGBO(227, 232, 234, 1),
                                                                        borderRadius: BorderRadius.circular(5),
                                                                    ),
                                                                    child: const Center(
                                                                      child: Text(
                                                                          "Data Science",
                                                                          style: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w600,
                                                                              color:Color.fromRGBO(0, 91, 135, 1)
                                                                          ),
                                                                      ),
                                                                    ),
                                                                ),
                                                                const SizedBox(width: 7,),
                                                                Container(
                                                                    padding: const EdgeInsets.only(left: 5,right:5,top: 7,bottom: 5),
                                                                    decoration: BoxDecoration(
                                                                      color: const Color.fromRGBO(227, 232, 234, 1),
                                                                        borderRadius: BorderRadius.circular(5),
                                                                    ),
                                                                    child: const Center(
                                                                      child: Text(
                                                                          "Machines Learning",
                                                                          style: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w600,
                                                                              color:Color.fromRGBO(0, 91, 135, 1)
                                                                          ),
                                                                      ),
                                                                    ),
                                                                ),
                                                          ],
                                                      ),
                                                  ],
                                              ),
                                            ),
                                      ],
                                  ),
                            ),
                              );
                          },
                           
                        ),
                      ),
                  ],
              ),
          ),
      );
  }
}