import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor:const Color.fromRGBO(31,33,37,1),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'PixelsCo.',
                  style:GoogleFonts.dmSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                ),
                SizedBox(
                  height: 22,
                  width: 22,
                  child: Image.asset('assets/bag.png'),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.red,
                // gradient: const LinearGradient(
                //   colors: [
                //     Color.fromRGBO(72,76,87,1),
                //     Color.fromRGBO(29,31,35,1)
                //   ],
                  
                // ),
                boxShadow: const[
                  BoxShadow(
                    color: Color.fromRGBO(0,0,0,0.2),
                    blurRadius: 40,
                    offset: Offset(0,30),
                  )
                ]
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'New Vintage Collection',
                          style: GoogleFonts.dmSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(width: 1.04,strokeAlign: BorderSide.strokeAlignOutside),
                          gradient:  const LinearGradient(
                            colors: [
                              Color.fromRGBO(50,52,59,1),
                              Color.fromRGBO(114,117,129,0)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Explore now',
                            style: GoogleFonts.dmSans(
                              fontSize: 10.41,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.blue,
                    //height: 180,
                    //width: MediaQuery.of(context).size.width,
                  //width: 220,
                    child: Image.asset('assets/camera1.png',fit: BoxFit.cover,),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              'Popular',
              style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
              ),
            ),
            const SizedBox(height: 20,),
            
            Container(
              width: 160,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(54,57,65,1),
                    Color.fromRGBO(62,66,75,0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: const[
                  BoxShadow(
                    color: Color.fromRGBO(0,0,0,0.25),
                    blurRadius: 60,
                    offset: Offset(0,20),
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255,197,103,1),
                      ),
                      Text(
                        '4.5',
                        style: GoogleFonts.dmSans(
                          fontSize: 10.65,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 134,
                    width: 132,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0,0,0,0.25),
                          spreadRadius: 0,
                          blurRadius: 32.66,
                          offset: Offset(0,16.89)
                        )
                      ]
                    ),
                  ),
                  Text(
                    'Canon EOS 30D',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$16000',
                        style: GoogleFonts.dmSans(
                        fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                       ),
                      ),
                      Container(
                        height: 21,
                        width: 23.57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.04),
                          border: Border.all(
                            width: 0.63,
                            color: const Color.fromRGBO(55,73,87,0.2)
                          ),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(111,117,128,1),
                              Color.fromRGBO(31,34,37,0)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
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
  }
}