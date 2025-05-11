import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:readmore/readmore.dart';
import 'package:sumiti_darpan_project/Common_Files/current_date_time.dart';

class AdminPalyaPalak extends StatefulWidget{

  const AdminPalyaPalak({super.key});
  @override
  State createState()=> _AdminPalyaPalakState();
}

class _AdminPalyaPalakState extends State{

//Dialogue Box Function

 
void _showImagePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // Allow tapping outside to dismiss the dialog
      builder: (BuildContext context) {
        return Stack(
          children: [
            // The dialog itself
            Positioned(
              top: 250, 
              left: 30,// Adjust vertical position
              child: Dialog(
                backgroundColor: const Color.fromARGB(255, 246, 237, 240),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  padding:const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Container(
                         width: 60,
                         height: 60,
                         decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                         ),
                         child: GestureDetector(
                            onTap: () async{
                                _selectedFile = await imagePicker.pickImage(source: ImageSource.gallery);
                            if(_selectedFile != null){
                                  print('File = ${_selectedFile!.path}');
                            }
                             setState(() {});
                            },
                            child: ClipOval(
                              child: Image.asset('assets/gallery.png'),
                            ),
                         ),
                         
                      ),
                      const SizedBox(width: 15,),
                      Container(
                         width: 60,
                         height: 60,
                         decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                         ),
                         child: GestureDetector(
                            onTap: () async{
                                _selectedFile = await imagePicker.pickImage(source: ImageSource.camera);
                            if(_selectedFile != null){
                                  print('File = ${_selectedFile!.path}');
                            }
                             setState(() {});
                            },
                            child: ClipOval(child: Center(child: Image.asset('assets/camera.jpg'))),
                         ),
                         
                      ),
                       GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                         child: Container(
                                    margin:const EdgeInsets.only(left: 60,top: 15),
                                    padding: const EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.blue,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        style: GoogleFonts.inter(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                       ),
                              
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  } 

 bool colorChange=false;
 final ImagePicker imagePicker=ImagePicker();
 XFile? _selectedFile;
 
  @override
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){},
            icon:const Icon(
                  Icons.navigate_before_rounded,
                  size: 38,
                  color: Colors.black,
                  
                ),
          ),
          title: Text('Review',
                style: GoogleFonts.inter(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                ),
            ),
            
           centerTitle: true,
           backgroundColor:  Colors.white,
           toolbarHeight: 100,
        ),
        body:Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Color.fromRGBO(67, 50, 139, 1)],
      )),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  
                  GestureDetector(
                    onTap:()  {
                        
                        _showImagePickerDialog(context);
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child:(_selectedFile == null)?  ClipOval(child: Image.asset('assets/profile_image.png',fit:BoxFit.cover))
                            :ClipOval(child: Image.file(File(_selectedFile!.path),fit: BoxFit.cover,)),
                     ),
                  ),
                   GestureDetector(
                    onTap:(){
                       
                    },
                     child: Text(
                      'Username',
                      style: GoogleFonts.inter(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 6, 106, 187),
                      ),
                     ),
                   ),
                  const SizedBox(height: 10,),
                  
          
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              color:Colors.white,
                              border: Border.all(color: Colors.black,width: 0.4),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow:  [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(5, 5),
                                      blurRadius: 10,
                                      spreadRadius: 4,
                                    ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:15,right:15,top:7),
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children:[
                                      Text(
                                        "Title",
                                         style: GoogleFonts.inter(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      ),
                                      const SizedBox(height:5),
                                      
                                      ReadMoreText(
                                          'Vidyarthi Sahayyak Samiti (SAMITI) is a non-Government charitable organization set up in 1955 at Pune (Maharashtra state / India) by Dr. Achyutrao Apte and his colleagues and provides lodging, boarding facilities at a nominal cost to students (boys and girls) from economically weaker section of society coming to Pune to pursue higher education.SAMITI also conducts various educational and other programmes aimed at personality development and character building for the benefit of the students.Vidyarthi Sahayyak Samiti (Popularly knows as ‘Samiti’) is a public charitable trust located in Pune, Maharashtra state, India. Registration No : E 219 under section 50 A (3) of the Public Trusts Act 1950.',
                                          style: GoogleFonts.inter(
                                          fontSize: 14, 
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          ),
                                          trimLines: 4,
                                          colorClickableText: Colors.blue,
                                          trimExpandedText: '...Read Less',
                                          trimCollapsedText: '...Read More',
                                          trimMode: TrimMode.Line,
                                      ),
                                      
                                        Row(
                                          children: [
                                              Container(
                                                padding: const EdgeInsets.all(12),
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                ),
                                                child:  GestureDetector(
                                                  onTap: (){
                                                      if(colorChange==true){
                                                          colorChange=false;
                                                      }else{
                                                      colorChange=true;
                                                      }
                                                      setState(() {  });
                                                  },
                                                  child:colorChange? const Icon(
                                                      Icons.favorite,size: 25,
                                                      color: Colors.red,
                                                    ): const Icon(Icons.favorite_outline,size: 25,),
                                                  
                                                ),
                                              ),
                                              const Spacer(),
                                              Text(
                                                 //Define in separte class file calculate current date and time
                                                  CurrentDateTime.updatedDateTime(),
                                                  style: GoogleFonts.inter(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400
                                                  ),
                                              )
                                          ],
                                        ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
        
    );
  }
}


















