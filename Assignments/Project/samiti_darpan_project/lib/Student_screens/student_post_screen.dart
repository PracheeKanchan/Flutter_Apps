import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:readmore/readmore.dart';
import 'package:sumiti_darpan_project/Common_Files/current_date_time.dart';


class DarpanPost extends StatefulWidget{

  const DarpanPost({super.key});
  @override
  State createState()=> _DarpanPost();
}

class _DarpanPost extends State{

  bool colorChange=false;
  TextEditingController searchController=TextEditingController();
  final ImagePicker imagePicker=ImagePicker();
  XFile? _selectedFile;
 

  @override
  Widget build(BuildContext context){

    
    return Scaffold(
       backgroundColor: const Color.fromRGBO(245, 249, 255, 1.0),
        body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: const TextStyle( color: Colors.black,),
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color.fromARGB(255, 61, 60, 60),width: 1.0),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color.fromARGB(255, 61, 60, 60),width: 1.0),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        
                        prefixIcon: const Icon(Icons.search,color: Color.fromARGB(255, 61, 60, 60),),
                      ),
                      style: const TextStyle(color: Colors.black),
                ),
              ),
              //const SizedBox(height: 40,),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        SizedBox(
                      //color: Colors.green,
                      width:MediaQuery.of(context).size.width,
                      height: 250,
                      child:  Stack(
                          //alignment: Alignment.center,
                          children: [
                            GestureDetector(
                              onTap: ()async{
                                _selectedFile = await imagePicker.pickImage(source: ImageSource.gallery);
                            if(_selectedFile != null){
                                  print('File = ${_selectedFile!.path}');
                            }
                             setState(() {});
                              },
                              child: Container(
                              padding:const EdgeInsets.symmetric(horizontal:15), 
                              width:MediaQuery.of(context).size.width,
                              height: 230,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child:(_selectedFile == null)? Image.asset('assets/dummy.jpg',fit: BoxFit.cover,)
                                    :Image.file(File(_selectedFile!.path),fit: BoxFit.cover,),
                                  ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 15,
                              child: Container(
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
                                    Icons.favorite,size: 26,
                                    color: Colors.red,
                                    
                                    ): const Icon(Icons.favorite_outline,size: 26,),
                                  
                                ),
                              ),
                            ),
                          ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 20),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Text(
                            "Title",
                            style: GoogleFonts.inter(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
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
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 18,right: 20,top: 5 ),
                       child:ReadMoreText(
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
                     ),
                     
                      ],
                    ),
                  );
                  },
                  
                ),
              ),
              
            ],
            
          ),

    );
  }
}


















