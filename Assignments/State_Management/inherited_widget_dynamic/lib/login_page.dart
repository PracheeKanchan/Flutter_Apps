import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widget_dynamic/firebase_user_list.dart';
import 'package:inherited_widget_dynamic/userinfo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Enter Email',
                ),
              ),
              const SizedBox(height: 15,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Enter Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () async{
                  if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
                    Map<String,dynamic> data={
                      'Email':emailController.text.trim(),
                      'Password':passwordController.text.trim()
                    };
                    Userinfo.of(context).email=emailController.text;
                    Userinfo.of(context).password=passwordController.text;

                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailController.text, 
                      password: passwordController.text
                    );
                    await FirebaseFirestore.instance.collection("SignUpData").add(data);
                  }
                  emailController.clear();
                  passwordController.clear();
                  
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan,
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Sign Up"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return const FirebaseUserList();
                    })
                  );
      },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}