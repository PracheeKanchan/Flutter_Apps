import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";
import "package:intl/intl.dart";
import "package:todo_list/todo_model.dart";
void main(){
    runApp(   const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});

    @override
    Widget build(BuildContext context){

        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ToDoAppUI(),
        );
    }
}
class ToDoAppUI extends StatefulWidget{

  const ToDoAppUI({super.key});

  @override
  State<ToDoAppUI> createState() => _ToDoAppUIState();
}

class _ToDoAppUIState extends State<ToDoAppUI> {
    
    TextEditingController titleController=TextEditingController();
    TextEditingController descriptionController =TextEditingController();
    TextEditingController dateController=TextEditingController();

    static const List<Color> colorCardList=[

      Color.fromRGBO(250,232,232,1),
      Color.fromRGBO(232,237,250,1),
      Color.fromRGBO(250,249,232,1),
      Color.fromRGBO(250,232,250,1),
    ];

     List<ToDoModel> toDoCardList=[];

    void submit(bool isEdit,[ToDoModel? todoObj]){

      if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty
            && dateController.text.trim().isNotEmpty){
           if(isEdit){
            //Update previousl added data in a list
            todoObj!.title=titleController.text;
            todoObj.description=descriptionController.text;
            todoObj.date=dateController.text;
           }else{
            //Add new card to list
            toDoCardList.add(
              ToDoModel(
                title: titleController.text.trim(),
                description: descriptionController.text.trim(),
                date: dateController.text.trim(),
              ),
            );
           }
           Navigator.of(context).pop();
           clearControllers();
           setState(() {});
         }
    }

     void clearControllers(){
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
     }

     void showMyBottomSheet(bool isEdit , [ToDoModel? todoObj]){
        
        showModalBottomSheet(
            isScrollControlled: true,
            context: context, 
            builder: (context){

                            return Padding(
                              padding:  EdgeInsets.only(
                                bottom: MediaQuery.of(context).viewInsets.bottom,
                                top: 12.0,
                                right: 12.0,
                                left: 12.0
                              ),
                              child: Column(
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
                                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                                        child: TextField(
                                          controller: dateController,
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
                                            
                                                  suffixIcon: const Icon(
                                                      Icons.calendar_month_outlined,
                                                  ),
                                                 ),
                                                  onTap: () async {
                                                      DateTime? pickedDate = await showDatePicker(
                                                      context: context,
                                                      firstDate: DateTime(2024),
                                                      lastDate: DateTime(2025),
                                                  );
                                                  String formattedDate = DateFormat.yMMMd().format(pickedDate!);

                                                  setState(() {
                                                       dateController.text = formattedDate;
                                                  });
                                                  }
                                          ),
            
                                      ),
                                      
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45,bottom: 20),
                                      child: GestureDetector(
                                        onTap: (){
                                            if(isEdit == true){
                                              submit(true,todoObj);
                                            }else{
                                              submit(false);
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
                              ),
                            );
          }
        );
     }


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
                itemCount: toDoCardList.length,
                itemBuilder: (context,index){

                    return Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 33),
                      child: Container(                           
                         decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //color: const Color.fromRGBO(250,232,232,1),
                              
                              color:colorCardList[index % colorCardList.length],
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
                                               child: Text(toDoCardList[index].title,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: Color.fromRGBO(0,0,0,1)
                                                      ),
                                               ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(top: 10),
                                                child: Text(toDoCardList[index].description,
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
                                          child: Text(toDoCardList[index].date,
                                            style: const TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(132,132,132,1),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: (){
                                            titleController.text=toDoCardList[index].title;
                                            descriptionController.text=toDoCardList[index].description;
                                            dateController.text=toDoCardList[index].date;

                                            showMyBottomSheet(true,toDoCardList[index]);
                                            setState(() {});},
                                          icon: const Icon(
                                          Icons.edit_outlined,
                                                color: Color.fromRGBO(0,139,148,1),
                                                size:20 ,
                                              ),
                                        ),
                                        const SizedBox(width: 10,),
                                        IconButton(
                                          onPressed: (){
                                            toDoCardList.removeAt(index);
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
                    showMyBottomSheet(false);
                  },
                   //backgroundColor: const Color.fromRGBO(248,248,248,1),
                   shape:const CircleBorder(),
                  backgroundColor: const Color.fromRGBO(2,167,177,1),
                  child:  const Icon(Icons.add,color:Colors.white,size: 50,),

                 
              ),
        
      );
    }
}