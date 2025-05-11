import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromRGBO(83,177,117,1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/splash_logo.png'),
                  const SizedBox(width: 15,),
                  Image.asset('assets/nectar_logo.png'),
                ],
              ),
            ),
            Text(
              'online groceriet',
              style:GoogleFonts.dmSans(
                fontSize:14,
                fontWeight:FontWeight.w700,
                color: Colors.white,
              )
            )
          ],
        ),
      ),
    );
  }
}