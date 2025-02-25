import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/page_view_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),(){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context){
            return const PageViewScreen();
          })
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13,110,252,1),
      body: Center(
        child: Text(
          'Travenor',
          style: GoogleFonts.aclonica(
            fontSize: 34,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}