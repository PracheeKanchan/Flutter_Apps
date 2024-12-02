import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseSignUpScreen extends StatefulWidget{
  const ExpenseSignUpScreen({super.key});

  @override
  State createState()=> _ExpenseSignUpScreenState();
}

class _ExpenseSignUpScreenState extends State{

TextEditingController nameController=TextEditingController();
TextEditingController usernameController=TextEditingController();
TextEditingController passwordController=TextEditingController();
TextEditingController confirmPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context){

    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 100),
          height: MediaQuery.of(context).size.height,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SvgPicture.asset('assets/expense_splash_image.svg'),
              ),
              Container(
                margin:const EdgeInsets.only(left: 42,top: 50),
                child: Text(
                  'Create your Account',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              
              //Name TextField
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
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'Name',
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
              //UserName TextField
              Container(
                margin: const EdgeInsets.only(left: 42,right: 42,top: 15),
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
                margin: const EdgeInsets.only(left: 42,right: 42,top: 15),
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
          
              //Confirm password TextField
              //PassWord TextField
              Container(
                margin: const EdgeInsets.only(left: 42,right: 42,top: 15),
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
                          hintText: 'Confirm Password',
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
              //Sign Up button
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 42,right: 42,top: 20),
                  padding: const EdgeInsets.only(top: 15,bottom: 15 ),
                  width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(14, 161, 125, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color:  Colors.white,
                              ),
                             
                            ),
                      ),
                      ),
              ),
              ],
          ),
        ),
      ),
    );
  }
}