import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:sumiti_darpan_project/Common_Files/current_date_time.dart';
import 'package:sumiti_darpan_project/Common_Files/custom_snackbar.dart';
import 'package:sumiti_darpan_project/Model/admin_post_model.dart';


class AdminDarpanPost extends StatefulWidget{

  const AdminDarpanPost({super.key});
  @override
  State createState()=> _AdminDarpanPost();
}

class _AdminDarpanPost extends State{

  bool colorChange=false;

  TextEditingController searchController=TextEditingController();
  TextEditingController adminPostTitleController=TextEditingController();
  TextEditingController adminPostDescriptionController=TextEditingController();

  final ImagePicker imagePicker=ImagePicker();
  XFile? _selectedFile;

  List<AdminPostModel> adminPostList=[];
 
 void showMyModalBottomSheet(BuildContext context){
      showModalBottomSheet(context: context, builder: (context){

                      return Column(
                        children: [
                          const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextField(
                                controller: adminPostTitleController,
                                decoration: InputDecoration(
                                  hintText: "Title",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                ),
                                
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextField(
                                maxLines: 5,
                                controller: adminPostDescriptionController,
                                decoration: InputDecoration(
                                  hintText: "Description",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                ),
                                
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                if(adminPostTitleController.text.trim().isNotEmpty &&
                                    adminPostDescriptionController.text.trim().isNotEmpty){
                                    
                                    Map<String,dynamic> data={
                                      'AdminPostTitle':adminPostTitleController.text.trim(),
                                      'AdminPostDescription':adminPostDescriptionController.text.trim(),
                                      'timestamp':(DateFormat('dd-MMM HH-mm').format(DateTime.now())).toString(),
                                      'isLiked':false,
                                    };
                                    //Add data to FireStore
                                    FirebaseFirestore.instance.collection('AdminPost').add(data);
                                    
                                    //clear controller
                                    adminPostTitleController.clear();
                                    adminPostDescriptionController.clear();
                                    setState(() {
                                      fetchAdminPosts();
                                    });
                                    CustomSnackbar.showCustomSnackbar(message: "Post Add sucess", context: context);
                                    
                                    Navigator.of(context).pop();
                                }

                                
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 30,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Submit',
                                  style: GoogleFonts.inter(
                                    fontSize:18,
                                  ),
                                ),
                              ),
                            )
                        ],
                      );
                  },
                );
 }
@override
  void initState() {
    super.initState();
    fetchAdminPosts();
  }

  // Fetch data from Firestore
  Future<void> fetchAdminPosts() async {
    try {
   
      // Fetching documents from Firestore
      QuerySnapshot response = await FirebaseFirestore.instance
          .collection('AdminPost')
          .orderBy('timestamp',descending: true)
          .get();

      // Clear previous data before adding new ones
      adminPostList.clear();

      // Loop through the documents and add them to the list using the normal constructor
      for (int i = 0; i < response.docs.length; i++) {
        adminPostList.add(
          AdminPostModel(
            adminTitle: response.docs[i]['AdminPostTitle'], 
            adminPostDescription: response.docs[i]['AdminPostDescription'],
            timestamp: response.docs[i]['timestamp'] ,
            isLiked: response.docs[i]['isLiked'] ?? false,
          ),
        );
      }
      print(adminPostList);
      // Trigger UI update after data is fetched
      setState(() {});
    } catch (e) {
      // Handle any errors (e.g., no connection, query failure)
      print('Error fetching data: $e');
    }
  }

void toggleLike(int index)async{

  setState(() {
      adminPostList[index].isLiked=!adminPostList[index].isLiked;
  });
  // Update the like status in Firestore
  try {
    await FirebaseFirestore.instance
        .collection('AdminPost')
        .doc(adminPostList[index].timestamp)  // Use a unique identifier, e.g., the timestamp
        .update({
      'isLiked': adminPostList[index].isLiked, // Update the like status
    });
  } catch (e) {
    print('Error updating like status: $e');
  }
}
           
  @override
  Widget build(BuildContext context){

    //fetchData();
  
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
              
              Expanded(
                child: ListView.builder(
                  itemCount: adminPostList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        SizedBox(
                      //color: Colors.green,
                      width:MediaQuery.of(context).size.width,
                      height: 240,
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
                                      // if(colorChange==true){
                                      //               colorChange=false;
                                      // }else{
                                      //  colorChange=true;
                                      // }
                                      // setState(() {  });
                                      toggleLike(index);
                                  },
                                  child:adminPostList[index].isLiked? const Icon(
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
                            adminPostList[index].adminTitle,
                            style: GoogleFonts.inter(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                            ),
                            ),
                            const Spacer(),
                            Text(
                              //Define in separte class file calculate current date and time
                                
                                 //CurrentDateTime.updatedDateTime(),
                                 adminPostList[index].timestamp,
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
                     const SizedBox(height: 10,)
                      ],
                    ),
                  );
                  },
                  
                ),
              ),
              
            ],
            
          ),
          
          floatingActionButton:FloatingActionButton(
            backgroundColor: Colors.cyan,
            onPressed: (){
                showMyModalBottomSheet(context);
            },
            child:const Icon(Icons.add,color: Colors.white,),
          
          ),
    );
  }
}


















