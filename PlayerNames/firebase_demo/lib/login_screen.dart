import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/custom_snackbar.dart';
import 'package:firebase_demo/player_auth.dart';
import 'package:firebase_demo/register_screen.dart';
import 'package:firebase_demo/session_data.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
      const LoginScreen({super.key});
      @override
      State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

      final TextEditingController _emailTextEditingController =TextEditingController();
      final TextEditingController _passwordtextEditingController =TextEditingController();
      bool _showPassword = false;

      final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

          @override 
          Widget build(BuildContext context) {

          return Scaffold(
              backgroundColor: Colors.black,
              body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Text(
                     "Login",
                      style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                          controller: _emailTextEditingController,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                            ),
                           border: OutlineInputBorder(
                                borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                              ),
                           ),
                         ),
                      ),
          ),
          const SizedBox(
              height: 10,
          ),
          Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                    controller: _passwordtextEditingController,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                    ),
                    obscureText: _showPassword,
                    decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                    ),
                    hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                           color: Colors.white,
                        ),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _showPassword = !_showPassword;
                        setState(() {});
                      },
                      child: Icon(
                          (_showPassword) ? Icons.visibility_off :
                          Icons.visibility,
                          color: const Color.fromARGB(255, 3, 2, 2),
                       ),
                    ),
                  ),
                ),
          ),
          const SizedBox(
               height: 20,
          ),
    GestureDetector(
      onTap: () async {
         
         if(_emailTextEditingController.text.trim().isNotEmpty && _passwordtextEditingController.text.trim().isNotEmpty ){

            try{
                UserCredential userCredential= await _firebaseAuth.signInWithEmailAndPassword(
                  email: _emailTextEditingController.text,
                   password: _passwordtextEditingController.text,
                  );
                  //store login status when user login
                  await SessionData.storeSessionData(loginData: true);
                  
                  log("c2w : UserCredentials : ${userCredential.user!.email}");
                  Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                        builder: (context) {
                            return  const PlayersInfo(
                              // email: userCredential.user!.email!,
                            );  
                        },
                      ),
                  );
            }on FirebaseAuthException  catch(error){

                CustomSnackbar.showCustomSnackbar(message: error.code, context: context);
            }
         }
         
          
      },
      child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
            ),
            padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical:5.0),
            child: const Text(
            "Login",
             style: TextStyle(
               fontSize: 25,
             ),
            ),
         ),
      ),
      const SizedBox(
          height: 40,
      ),
      GestureDetector(
          onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                        return const RegisterScreen();
                  },
              ));
          },
          child: const Text(
                "Create new account ? Register",
                 style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                ),
          ),
      ),
    ],
  ),
  );
}
}