
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sumiti_darpan_project/Admin/admin_post_screen.dart';
import 'package:sumiti_darpan_project/login_screen.dart';
import 'package:sumiti_darpan_project/Common_Files/session_data.dart';

class SplashScreen extends StatelessWidget {

              const SplashScreen({super.key});

              void navigate(BuildContext context) {
                    Future.delayed(const Duration(seconds: 3),
                    ()async{
                          //bool status = false;

                              await SessionData.getSessionData();
                              print("IS LOGIN : ${SessionData.isLogin}");
                              if (SessionData.isLogin!) {
                                  print("NAVIGATE TO HOME");
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                      builder: (context) {
                                        return const AdminDarpanPost(
                                      );
                                      },
                                    ),
                                  );
                              } else {
                              print("NAVIGATE TO LOGIN");
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) {
                                    return const LoginScreen();
                                  },
                              ),
                              );
                              }


                    }
                  );
            }
            @override
            Widget build(BuildContext context) {
                
              navigate(context);
              return Scaffold(
                
                  body: Container(
                    decoration:const BoxDecoration(
                  gradient: LinearGradient(
                    begin:Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Color.fromRGBO(67,50,139,1),
                    ],
                  ),
                ),
                    child: Center(
                    child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset('assets/samiti_logo.png'),
                    
                    ),
                    ),
                 ),
                  
          );
    }
}

