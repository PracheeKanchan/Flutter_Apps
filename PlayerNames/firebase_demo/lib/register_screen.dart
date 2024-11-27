
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_demo/Model/register_model.dart';
import 'package:firebase_demo/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegisterScreen extends StatefulWidget {
      const RegisterScreen({super.key});
      @override
      State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

          final TextEditingController _nameTextEditingController =TextEditingController();
          final TextEditingController _emailTextEditingController =TextEditingController();
          final TextEditingController _passwordTextEditingController =TextEditingController();
          final TextEditingController _mobileNoTextEditingController =TextEditingController();

          List<RegisterModelClass> registerUserList=[];

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
                        "Register",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                   const SizedBox(height: 20),
                   Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                        controller: _nameTextEditingController,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            hintText: "Enter your Name",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                color: Colors.white,
                                ),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                            ),
                            enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                    ),
                            ),
                           
                        ),
                    ),
                ),
                const SizedBox(height:10),
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
                  const SizedBox(height: 10,),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                        controller: _passwordTextEditingController,
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
                                    color: Colors.white,
                                ),
                            ),
                        ),
                    ),
                ),
                const SizedBox(height: 10,),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                        controller: _mobileNoTextEditingController,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            hintText: "Enter your Mobile No.",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                color: Colors.white,
                                ),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                            ),
                            enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                    ),
                            ),
                           
                        ),
                    ),
                ),
          const SizedBox(height: 20,),
          GestureDetector(
                  onTap: () async {
                      if(_emailTextEditingController.text.trim().isNotEmpty && _passwordTextEditingController.text.trim().isNotEmpty &&
                          _nameTextEditingController.text.trim().isNotEmpty && _mobileNoTextEditingController.text.trim().isNotEmpty  ){

                            try{
                                UserCredential userCredential= await _firebaseAuth.createUserWithEmailAndPassword(
                                  email: _emailTextEditingController.text.trim(),
                                  password: _passwordTextEditingController.text.trim(),
                                  );
                                 
                                      Map<String,dynamic> data={
                                        'UserName':_nameTextEditingController.text.trim(),
                                        'UserEmail':_emailTextEditingController.text.trim(),
                                        'UserPassword':_passwordTextEditingController.text.trim(),
                                        'userMobileNo':_mobileNoTextEditingController.text.trim(),
                                      };
                    
                                      //add data to firebase
                                      FirebaseFirestore.instance.collection("RegisterUserInfo").add(data);
                                      print(data);

                                      _nameTextEditingController.clear();
                                      _emailTextEditingController.clear();
                                      _passwordTextEditingController.clear();
                                      _mobileNoTextEditingController.clear();

                                  CustomSnackbar.showCustomSnackbar(message: "register sucess", context: context);
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Data Added'), ), );
                                  
                                  Navigator.of(context).pop();

                            }on FirebaseAuthException  catch(error){

                                CustomSnackbar.showCustomSnackbar(message: error.message!, context: context);
                            }

                      }else{
                          CustomSnackbar.showCustomSnackbar(message: "Please Enter valid data", context: context);
                      }

                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                      ),
                  padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical:5.0),
                  child: const Text(
                      "Register User",
                      style: TextStyle(
                      fontSize: 25,
                      ),
                  ),
                ),
          ),
          const SizedBox(height: 40,),
       ],
     ),
  );
}
}
