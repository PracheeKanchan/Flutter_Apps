import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height:55,
                  width:47,
                  child: Image.asset(
                    'assets/login.png'
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100,),
            Text(
              'Register',
              style: GoogleFonts.dmSans(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(24,23,37,1),
              ),
            ),
            Text(
              'Enter your emails and password',
              style: GoogleFonts.dmSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(124,124,124,1),
              ),
            ),
            const SizedBox(height: 15,),
            TextField(
              controller: emailController,
              cursorHeight: 35,
              decoration: InputDecoration(
                hintText: 'imshuvo97@gmail.com',
                hintStyle: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                label: Text(
                  'Email',
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(124,124,124,1),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
             TextField(
              controller: emailController,
              cursorHeight: 35,
              decoration: InputDecoration(
                hintText: '.........',
                hintStyle: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                label: Text(
                  'Password',
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(124,124,124,1),
                  ),
                ),
                suffixIcon: const Icon(Icons.visibility_off)
              ),
              obscureText: false,
            ),
           
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  //horizontal: 
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: const Color.fromRGBO(83,177,117,1),
                ),
                child: Center(
                  child: Text(
                    'Register',
                    style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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