import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/cardclick_scrreen.dart';

class Travelapp extends StatefulWidget{

    const Travelapp({super.key});
    @override
    State createState()=> _TravelAppState();
}
class _TravelAppState extends State{

  List<Map> dealsCardList=[
    {'title':'El Cairo', 'subTitle':'Egypt'},
    {'title':'London', 'subTitle':'England'},
    {'title':'Seoul', 'subTitle':'Korea'},
    {'title':'Korea', 'subTitle':'korea'},
    
  ];

  List<Map> destinatinCardList=[
    {'title':'Cancun', 'subTitle':'Mexico'},
    {'title':'Santorini', 'subTitle':'Greece'},
    {'title':'El cairo', 'subTitle':'Egypt'},
    {'title':'Korea', 'subTitle':'korea'},
  ];
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
            toolbarHeight:90,
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
                            const Icon(Icons.arrow_drop_down,color:Color.fromRGBO(52,111,249,1) ,),
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
                
                 SizedBox(
                   height: 170,  // Set a height for the ListView
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,  // Makes the list horizontal
                     itemCount: 4,  // Define how many items you want
                     itemBuilder: (context, index) {
                       return Padding(
                   padding: const EdgeInsets.only(left: 22,top: 20 ),
                   child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                            return const CardclickScreen();
                        })
                      );
                    },
                     child: Container(
                      height: 145,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromRGBO(233,237,248,1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15,bottom: 15,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: SizedBox(
                                       child: Row(
                                          children: [
                                              Text(dealsCardList[index]['title'],
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(width: 38,),
                                      const Icon(Icons.star,
                                          color:  Color.fromRGBO(228,161,2,1),
                                          size: 12,
                                        ),
                                      Text(
                                        '4.6',
                                        style: GoogleFonts.inter(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(228,161,2,1),
                                        ),
                                       )
                                                                       ],
                                                                  ),
                                                                ),
                                    ),                             
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                dealsCardList[index]['subTitle'],
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(179,182,187,1),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: SvgPicture.asset('assets/demo.svg',
                                  
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 15,top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                                  child: Text(
                                    'More',
                                    style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(52,111,249,1),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 18,),
                                Container(
                                  margin: const EdgeInsets.only(left: 15,top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromRGBO(52,111,249,1),
                                  ),
                                  padding: const EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                                  child: Text(
                                    '\$260',
                                    style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
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
                
                const SizedBox(height: 20,),
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text('Popular Destinations',
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
                        Text('Sorted by Higher Rating',
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
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                    width: 167,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            Padding(
                     padding: const EdgeInsets.only(left: 22,top: 20 ),
                     child: Container(
                      height: 145,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromRGBO(233,237,248,1)
                      ),
                      child: Center(
                                child: SvgPicture.asset('assets/demo.svg',
                                ),
                              ),
                     ),
                  ),
                         Padding(
                                      padding: const EdgeInsets.only(left: 22,top: 10),
                                      child: SizedBox(
                                       child: Row(
                                          children: [
                                              Text(destinatinCardList[index]['title'],
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      //const SizedBox(width: 38,),
                                      const Spacer(),
                                      const Icon(Icons.star,
                                          color:  Color.fromRGBO(228,161,2,1),
                                          size: 12,
                                        ),
                                      Text(
                                        '4.6',
                                        style: GoogleFonts.inter(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(228,161,2,1),
                                        ),
                                       )
                                                                       ],
                                                                  ),
                                                                ),
                                    ),                             
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Row(
                                children: [
                                  Text(
                                    destinatinCardList[index]['subTitle'],
                                    style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(179,182,187,1),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '848 Reviews',
                                    style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(179,182,187,1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                      ],
                    ),
                  );
                      },
                    ),
                  ),
                  
                    
                        ],
                      );
                    },
                  ),
                ),
                
            ],
          ),
      );
    }
    
}