import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Travelapp extends StatefulWidget{

    const Travelapp({super.key});
    @override
    State createState()=> _TravelAppState();
}
class _TravelAppState extends State{

    @override
    Widget build(BuildContext context){
      return Scaffold(
          appBar: AppBar(
            title: Text(
            'Where do you want to travel?',
            style:GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white,
            ),
            ),
            backgroundColor: const Color.fromRGBO(27,48,101,1),
            centerTitle: true,
            //toolbarHeight:30,
          ),
          body:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22,top:20 ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromRGBO(233,237,248,1),
                        ),
                        padding:const EdgeInsets.only(top: 10,right: 70,bottom: 10,left: 80,),
                        child: Row(
                          children: [
                            Text(
                              'Select Destination',
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(52,111,249,1),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Icon(Icons.arrow_drop_down,color:const Color.fromRGBO(52,111,249,1) ,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(52,111,249,1),
                            ),
                            child:const Padding(
                              padding:  EdgeInsets.all(10),
                              child:  Icon(Icons.search,color: Colors.white,),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22,top: 25 ),
                  child: Text('Best Deals',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23,),
                  child: Row(
                    children: [
                      Text('Sorted by lower price',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(179,182,187,1),
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down_outlined,color: Color.fromRGBO(179,182,187,1),)
                    ],
                  ),
                ),
                Padding(
                   padding: const EdgeInsets.only(left: 22,top: 20 ),
                   child: Container(
                    height: 145,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromRGBO(233,237,248,1)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top:17 ),
                          child: Row(
                            children: [
                                Text('EI Cairo',
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 38,),
                                Container(
                                  height: 11,
                                  width: 11,
                                  child: const Icon(Icons.star,
                                    color:  Color.fromRGBO(228,161,2,1),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                   ),
                ),

            ],
          ),
      );
    }
    
}