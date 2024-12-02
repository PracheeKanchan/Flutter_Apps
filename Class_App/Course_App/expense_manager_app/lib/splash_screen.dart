import 'package:expense_manager_app/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State createState()=> _SplashScreenState();
}

class _SplashScreenState extends State{

@override
  void initState() {
    super.initState();
    // Navigate to HomeScreen after a 3-second delay
    Future.delayed(
      const Duration(seconds: 3), () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context){
              return const ExpenseLoginScreen();
            }
           )
          );
      }
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
          Stack(
            children: [
              Center(
                child:Container(
                      height: 144,
                      width: 144,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(234,238,235,1),
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/expense_splash_image.svg'),
                      ),
                ),
              ),
              Positioned(
                bottom: 100,
                left: 125,
                child: Text(
                    'Expense Manager',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              ),
               
            ],
          ),
         
          
          
        
      
    );
  }
}