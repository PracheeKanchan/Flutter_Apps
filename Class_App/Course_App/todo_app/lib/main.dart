import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/svg.dart";
void main(){
    runApp(   const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});

    @override
    Widget build(BuildContext context){

        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ToDoApp(),
        );
    }
}
class ToDoApp extends StatefulWidget{

  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
    
    TextEditingController titleController=TextEditingController();
    TextEditingController descriptionController =TextEditingController();
    TextEditingController dateController=TextEditingController();

    static const List<Color> colorList=[

      Color.fromRGBO(250,232,232,1),
      Color.fromRGBO(232,237,250,1),
      Color.fromRGBO(250,249,232,1),
      Color.fromRGBO(250,232,250,1),
    ];

     List<Map> toDoList=[];

     String? toDoTitle;
     String? todoDescription;
     String? toDoDate;


    @override
    Widget build(BuildContext context){

      return Scaffold(
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
                itemCount: toDoList.length,
                itemBuilder: (context,index){

                    return Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 33),
                      child: Container(                           
                         decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: const Color.fromRGBO(250,232,232,1),
                              
                              color:colorList[index % colorList.length],
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
                                                SizedBox(
                                               child: Text(toDoList[index]['Title'],
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: Color.fromRGBO(0,0,0,1)
                                                      ),
                                               ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(top: 10),
                                                child: Text(toDoList[index]['Description'],
                                                      style: const TextStyle(
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
                                  
                                   Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                          SizedBox(
                                          child: Text(toDoList[index]['Date'],
                                            style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(132,132,132,1),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: (){},
                                          icon: const Icon(
                                          Icons.edit_outlined,
                                                color: Color.fromRGBO(0,139,148,1),
                                                size:20 ,
                                              ),
                                        ),
                                        const SizedBox(width: 10,),
                                        IconButton(
                                          onPressed: (){
                                            toDoList.removeAt(index);
                                            setState(() { });
                                          },
                                          icon:const Icon(Icons.delete_outline,
                                                color:Color.fromRGBO(0,139,148,1),
                                                size: 20,
                                          ),
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
        
              floatingActionButton:FloatingActionButton(
                  onPressed: (){

                      showModalBottomSheet(context: context, builder: (context){

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                    const SizedBox(height: 20,),
                                    const Center(
                                      child:  Text("Create To-Do",
                                            style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text("Title",
                                        style:  TextStyle(
                                          color:  Color.fromRGBO(2,167,177,1),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                                      child: TextField(
                                        controller: titleController,
                                        maxLines:1,
                                        style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                        ),
                                        decoration:const InputDecoration(
                                          fillColor: Color.fromRGBO(248,248,248,1),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color:Color.fromRGBO(2,167,177,1),width:0.5, )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color:Color.fromRGBO(2,167,177,1),width: 0.5 )
                                          ),
                                          
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text("Description",
                                        style:  TextStyle(
                                          color:  Color.fromRGBO(2,167,177,1),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                                      child: TextField(
                                        controller: descriptionController,
                                        maxLines:2,
                                        style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                        ),
                                        decoration:const InputDecoration(
                                          fillColor: Color.fromRGBO(248,248,248,1),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color:Color.fromRGBO(2,167,177,1),width: 0.5 )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color:Color.fromRGBO(2,167,177,1),width: 0.5 )
                                          ),
                                          
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text("Date",
                                        style:  TextStyle(
                                          color:  Color.fromRGBO(2,167,177,1),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 25),
                                      child: TextField(
                                        controller: dateController,
                                        style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                        ),
                                        decoration:const InputDecoration(
                                          suffixIcon: Icon(Icons.calendar_month_outlined,size: 18,),
                                          fillColor: Color.fromRGBO(248,248,248,1),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color:Color.fromRGBO(2,167,177,1),width: 0.5 )
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color:Color.fromRGBO(2,167,177,1),width: 0.5 )
                                          ),
                                          
                                        ),
                                      ),
                                    ),
                                    
                                  Padding(
                                    padding: const EdgeInsets.only(left: 45,right: 45,bottom: 20),
                                    child: GestureDetector(
                                      onTap: (){

                                          toDoTitle=titleController.text.trim();
                                          todoDescription=descriptionController.text.trim(); 
                                          toDoDate=dateController.text.trim();

                                        if(toDoTitle != "" && todoDescription != "" && toDoDate != ""){
                                            toDoList.add({
                                                'Title':toDoTitle,
                                                'Description':descriptionController.text,
                                                'Date':dateController.text,
                                            });
                                            setState(() {});
                                            
                                            titleController.clear();
                                            descriptionController.clear();
                                            dateController.clear();
                                            //print(toDoList);
                                        }
                                        
                                           
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(2,167,177,1),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: const Center(
                                          child: Text("Submit",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                            );
                      },
                      backgroundColor: const Color.fromRGBO(248,248,248,1),
                      
                    );
                  },
                  shape:const CircleBorder(),
                  backgroundColor: const Color.fromRGBO(2,167,177,1),
                  child:  const Icon(Icons.add,color:Colors.white,size: 50,),
              ),
        
      );
    }
}