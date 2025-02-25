import 'package:expense_manager_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashScreen extends StatefulWidget{
  const TrashScreen({super.key});
  @override
  State createState()=> _TrashScreenState();
}
class _TrashScreenState extends State<TrashScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Trash',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        surfaceTintColor: Colors.white,
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        shrinkWrap: true,
        //itemCount: 2,
        itemBuilder: (context,index){
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child:Column(
                 // crossAxisAlignment: ,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                },
                                child:Container(
                                decoration: const BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Color.fromRGBO(204,210,227,1),
                               ),
                               child: const Center(
                                    child: Icon(
                                       Icons.remove,
                                       color: Colors.white,
                                       size: 18,
                                   ),
                                 ),
                              ) ,
                           ),
                            
                          ],
                        ),
                        const SizedBox(width: 20,),
                        SizedBox(
                          width:320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Medicine',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              
                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry... more',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                  '500',
                                  style: GoogleFonts.poppins(
                                    fontSize:15,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                          ],
                        )
                      ],
                    ),
                     Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '3 June | 11:50AM',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0,0,0,0.6),
                              ),
                            ),
                          ],
                        )
                  ],
                ),
              ),
              const Divider(height: 5,color: Color.fromRGBO(206,206,206,1),),
            ],
          );
        }
      ),
    );
  }
}