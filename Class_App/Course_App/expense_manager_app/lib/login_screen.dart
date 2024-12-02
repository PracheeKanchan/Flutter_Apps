import 'package:expense_manager_app/sign_up_screen.dart';
import 'package:expense_manager_app/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseLoginScreen extends StatefulWidget{
  const ExpenseLoginScreen({super.key});

  @override
  State createState()=> _ExpenseLoginScreenState();
}

class _ExpenseLoginScreenState extends State{

TextEditingController usernameController=TextEditingController();
TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset('assets/expense_splash_image.svg'),
            ),
            Container(
              margin:const EdgeInsets.only(left: 42,top: 50),
              child: Text(
                'Login to your Account',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 25,),
            
            //UsrName TextField
            Container(
              margin: const EdgeInsets.only(left: 42,right: 42),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const[
                       BoxShadow(
                        color:Color.fromRGBO(0, 0, 0, 0.15),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                      
                    ],
                  ),
                  child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0,0,0,0.4),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        
                      ),
                  ),
            ),

            //PassWord TextField
            Container(
              margin: const EdgeInsets.only(left: 42,right: 42,top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const[
                       BoxShadow(
                        color:Color.fromRGBO(0, 0, 0, 0.15),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                      
                    ],
                  ),
                  child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0,0,0,0.4),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        
                      ),
                  ),
            ),
            GestureDetector(
              onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context){
                      return const TransactionScreen();
                    })
                 );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 42,right: 42,top: 30),
                padding: const EdgeInsets.only(top: 15,bottom: 15 ),
                width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(14, 161, 125, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color:  Colors.white,
                            ),
                           
                          ),
                    ),
                    ),
            ),
                  const Spacer(),
                  //const SizedBox(height: 30,),
               GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return const ExpenseSignUpScreen();
                    }
                  )
                 );
                },
                 child: Container(
                  margin: const EdgeInsets.only(bottom: 80),
                   child: Center(
                     child: RichText(
                      text:  TextSpan(
                        children: [
                          TextSpan(
                            text : "Don't have an account?",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text : "Sign Up",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(14,161,125,1),
                            ),
                          ),
                        ]
                      ),
                     ),
                   ),
                 ),
               ),     

          ],
        ),
      ),
    );
  }
}