import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardclickScreen extends StatefulWidget{

  const CardclickScreen({super.key});
  @override
  State createState()=> _CardClickScreenState();
}
class _CardClickScreenState extends State{

List<Map> iconList=[
  {'icon':Icons.flight,'title':"Flight"},
  {'icon':Icons.hotel,'title':"Hotel"},
  {'icon':Icons.car_crash,'title':"Car"},
  {'icon':Icons.tour,'title':"Tour"},
];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed:(){
                Navigator.of(context).pop();
              },
              icon: const Padding(
                padding:  EdgeInsets.only(left: 0),
                child: Icon(
                  Icons.navigate_before_outlined,
                  color: Colors.white,
                  size: 30,),
              ) ,
          ),
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:'London ',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )
                ),
                TextSpan(
                  text:'(England)',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )
                ),
              ]
            ),
          ),
          backgroundColor:const  Color.fromRGBO(27,48,101,1),
          toolbarHeight: 90,
          actions:const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 22,top: 30,right: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                      'Included',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'For more details press on the icons',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(179,182,187,1),
                      ),
                    ),
                    const SizedBox(height:15),
              
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        itemCount: iconList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                            return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 49),
                            child: SizedBox(
                              height: 80,
                              child: Column(
                                children: [
                                  Container(
                                    height: 55,
                                    width: 55,
                                    decoration:  BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color.fromRGBO(53,109,250,1),
                                        width: 1.5,
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                          height: 49,
                                          width: 49,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:const Color.fromRGBO(53,109,250,1) ,
                                            border: Border.all(width: 1.5,color: Colors.white)
                                          ),
                                      child:  Icon(
                                        iconList[index]['icon'],
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5,),
                                  Text(
                                    iconList[index]['title'],
                                    style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ],
                        
                      );
                        },
                      ),
                    ),
                    
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Text(
                          'Rating & Reviews',
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color.fromRGBO(228,161,2,1),
                            ),
                            Text(
                              ' 4.6',
                              style: GoogleFonts.inter(
                                fontSize: 20.3,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(228,161,2,1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Sorted by recent reviews',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(179,182,187,1),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down_sharp,
                          color:  Color.fromRGBO(179,182,187,1),
                        ),
                        const Spacer(),
                        Text(
                          '848 Reviews',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color:  const Color.fromRGBO(179,182,187,1),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 20),
                          height: 150,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(233,237,248,1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'London is great!',
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'John Doe',
                                      style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(0,0,0,0.4),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228,161,2,1),
                                      size: 15,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228,161,2,1),
                                      size: 15,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228,161,2,1),
                                      size: 15,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228,161,2,1),
                                      size: 15,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(228,161,2,1),
                                      size: 15,
                                    ),
                                    const Spacer(),
                                    Text(
                                      '12/08/18',
                                      style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(0,0,0,0.4),
                                      ),
                                    ),
              
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                SizedBox(
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                    style: GoogleFonts.inter(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0,0,0,0.6),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                         );
                      },
                         
                    ),
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      'Gallery',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Sorted by recent photos',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(179,182,187,1),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color:Color.fromRGBO(179,182,187,1) ,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                          margin: const EdgeInsets.only(right: 20),
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
                               );
                        },
                        
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 5),
              child: Row(
                children: [
                  Text(
                    'Expires in: 58 h 23 min',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 124,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromRGBO(52,111,249,1),
                    ),
                    child: Center(
                      child: Text(
                        "\$330",
                        style: GoogleFonts.inter(
                          fontSize: 15.47,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}