import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ToDoAdvanceUI extends StatefulWidget{

  const ToDoAdvanceUI({super.key});
  @override
  State<ToDoAdvanceUI> createState()=> _ToDoAdvanceUIState();

}

class _ToDoAdvanceUIState extends State<ToDoAdvanceUI>{


    TextEditingController titleController=TextEditingController();
    TextEditingController descriptionController =TextEditingController();
    TextEditingController dateController=TextEditingController();

    void clearControllers(){
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
     }

     void showMyBottomSheet(){
        
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
                                          //maxLines:1,
                                          style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                          ),
                                          decoration:const InputDecoration(
                                            fillColor: Color.fromRGBO(248,248,248,1),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color:const Color.fromRGBO(111,81,255,1),width:0.5, )
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color:const Color.fromRGBO(111,81,255,1),width: 0.5 )
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
                                                borderSide: BorderSide(color:const Color.fromRGBO(111,81,255,1),width: 0.5 )
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color:const Color.fromRGBO(111,81,255,1),width: 0.5 )
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
                                          //maxLines:2,
                                          style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                          ),
                                          decoration:const InputDecoration(
                                            fillColor: Color.fromRGBO(248,248,248,1),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color:const Color.fromRGBO(111,81,255,1),width: 0.5 )
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color:const Color.fromRGBO(111,81,255,1),width: 0.5 )
                                            ),
                                            
                                                  suffixIcon: Icon(
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
                                          
                                        },
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(111,81,255,1),
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
              backgroundColor: const Color.fromRGBO(111,81,255,1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(111,81,255,1),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning',
              style: GoogleFonts.quicksand(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Text(
              'Prachee',
              style: GoogleFonts.quicksand(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        toolbarHeight: 150,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Color.fromRGBO(217,217,217,1),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Text(
              'CREATE TO DO LIST',
              style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 50,),
                  child: ListView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Slidable(
                        key: ValueKey(index),
                // Start action pane (sliding from right to left)
                endActionPane: ActionPane(
                  motion: const ScrollMotion(), // Slide effect
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20,top: 10,bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(89,57,241,1),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0,0),
                                  blurRadius: 10,
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.edit_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(89,57,241,1),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0,0),
                                  blurRadius: 10,
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.delete_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                                     
                    
                  ],
                ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20,),
                          child: Container(
                          decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              offset: Offset(0,4),
                              spreadRadius: 0,
                              blurRadius: 12,
                            ),
                          ],
                          color: Colors.white,
                                        ),
                                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(217,217,217,1),
                                ),
                                child: Image.asset(
                                  'assets/gallary.png',
                                  ),
                              ),
                              const SizedBox(width: 15,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          'Lorem Ipsum is simply dummy industry',
                                           style: GoogleFonts.inter(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500
                                           ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          'Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ',
                                          style: GoogleFonts.inter(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(0,0,0,0.7),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "10 july 2023",
                                        style: GoogleFonts.inter(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(0,0,0,0.7),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                                        ),
                                      ),
                        ),
                      );
                    },
                  ),
                ),
                
              ),
            ),
            
            
          ],
        ),
      ),
      // floatingActionButton:FloatingActionButton(
      //             onPressed: (){
      //               //showMyBottomSheet(false);
      //             },
      //              //backgroundColor: const Color.fromRGBO(248,248,248,1),
      //              shape:const CircleBorder(),
      //             backgroundColor: const Color.fromRGBO(2,167,177,1),
      //             child:  const Icon(Icons.add,color:Colors.white,size: 50,),

                 
      //         ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showMyBottomSheet();
        },
                   shape:const CircleBorder(),
                  backgroundColor: const Color.fromRGBO(111,81,255,1),
                  child:  const Icon(Icons.add,color:Colors.white,size: 50,),
        
      ),
    );
  }
}