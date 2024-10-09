import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
void main(){
    runApp(  const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});

    static const List<Color> colorList=[

      Color.fromRGBO(250,232,232,1),
      Color.fromRGBO(232,237,250,1),
      Color.fromRGBO(250,249,232,1),
      Color.fromRGBO(250,232,250,1),
    ];

    @override
    Widget build(BuildContext context){

      return MaterialApp(
          debugShowCheckedModeBanner:false,
          home: Scaffold(
              appBar: AppBar(
                  title: const Text("To-do list",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                        ),
                  ),
                  backgroundColor: const Color.fromRGBO(2,167,177,1),
              ),
              body:ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){

                    return Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 33),
                      child: Container(                           
                         decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: const Color.fromRGBO(250,232,232,1),
                              color: colorList[index % colorList.length],
                         ),
                            child: Column(
                              children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,top: 20),
                                        child: Container(
                                          height: 72,
                                          width: 72,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromRGBO(255,255,255,1),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(18),
                                            child: SvgPicture.asset("assets/svg/home.svg",
                                                  // ignore: deprecated_member_use
                                                  color: const Color.fromRGBO(199,199,199,1),
                                            ),
                                          ),
                                        ),
                                      ),
                                       Expanded(
                                        child:  Padding(
                                          padding: const EdgeInsets.only(left: 15,top: 10,right: 3),
                                          child:  Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                               const SizedBox(
                                               child: Text("Lorem Ipsum is simply setting industry.",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: Color.fromRGBO(0,0,0,1)
                                                      ),
                                               ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(top: 10),
                                                child:const Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w400,
                                                        color: Color.fromRGBO(84,84,84,1),
                                                      ),
                                               ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          child: Text(
                                            "10 July 2023",
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(132,132,132,1),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(Icons.edit_outlined,
                                                color: Color.fromRGBO(0,139,148,1),
                                                size:20 ,
                                        ),
                                        SizedBox(width: 10,),
                                        Icon(Icons.delete_outline,
                                              color:Color.fromRGBO(0,139,148,1),
                                              size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                      ),
                    );
                }
          ),
        ),
      );
    }
}