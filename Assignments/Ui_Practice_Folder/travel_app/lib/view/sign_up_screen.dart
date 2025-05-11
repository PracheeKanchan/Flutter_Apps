import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController userNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  bool _showPassword=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 140,left: 20,right: 20,bottom: 80),
          child: Column(
            children: [
              Text(
                'Sign Up now',
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(27,30,40,1),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'Please fill the details and create account',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(125,132,141,1),
                ),
              ),
              const SizedBox(height: 40,),
              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14), // Set border radius
                    borderSide: BorderSide.none, // No border when the field is not focused
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14), // Same border radius when focused
                    borderSide: BorderSide.none, // No border when the field is focused
                  ),
                  hintText: 'Enter UserName',
                  fillColor: const Color.fromARGB(255, 236, 238, 240),
                  filled: true,
                  
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14), // Set border radius
                    borderSide: BorderSide.none, // No border when the field is not focused
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14), // Same border radius when focused
                    borderSide: BorderSide.none, // No border when the field is focused
                  ),
                  hintText: 'Enter email',
                  fillColor: const Color.fromARGB(255, 236, 238, 240),
                  filled: true,
                  
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14), // Set border radius
                    borderSide: BorderSide.none, // No border when the field is not focused
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14), // Same border radius when focused
                    borderSide: BorderSide.none, // No border when the field is focused
                  ),
                  hintText: 'Enter password',
                  fillColor: const Color.fromARGB(255, 236, 238, 240),
                  filled: true,
                  suffixIcon: GestureDetector(
                        onTap: () {
                           _showPassword=!_showPassword;
                           setState(() {
                             
                           });
                        },
                        child: Icon(
                            (_showPassword) ? Icons.visibility :
                            Icons.visibility_off,
                            color: const Color.fromRGBO(125,132,141,1)
                         ),
                      ),
                ),   
                obscureText:! _showPassword,             
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Password must be 8 character',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(125,132,141,1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context){
                      return const HomeScreen();
                    })
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(13,110,252,1),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Or connect',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(112,123,129,1),
                ),
              ),
              const Spacer(),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 44,
                    width: 44,
                    child: Image.asset('assets/facebook.png'),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    height: 44,
                    width: 44,
                    child: Image.asset('assets/insta.png'),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    height: 44,
                    width: 44,
                    child: Image.asset('assets/twitter.png'),
                  ),
                ],
                             ),
            ],
          ),
        ),
      ),
    );
  }
}