import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(251,247,248,1),
      body: Column(
        children: [
          Image.asset('assets/plant1.jpg'),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Enjoy your\nlife with ',
                  style: GoogleFonts.poppins(
                    fontSize: 34.22,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  )
                ),
                TextSpan(
                  text: 'Plants',
                  style: GoogleFonts.poppins(
                    fontSize: 34.22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context){
                    return const LoginScreen();
                  })
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 93
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(124,180,70,1),
                      Color.fromRGBO(62,102,24,1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  ),
                  boxShadow:const [
                    BoxShadow(
                      color: Color.fromRGBO(0,0,0,0.15),
                      blurRadius: 40,
                      spreadRadius: 0,
                      offset: Offset(0,20)
                    )
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      'Get Started ',
                      style: GoogleFonts.rubik(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                    const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    )
                  ]
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}