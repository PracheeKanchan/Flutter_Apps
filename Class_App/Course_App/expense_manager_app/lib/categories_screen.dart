import 'package:expense_manager_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget{

  const CategoriesScreen({super.key});
  @override
  State createState()=>_CategoriesScreenState();
}
class _CategoriesScreenState extends State{

TextEditingController categoryController=TextEditingController();
TextEditingController descriptionController=TextEditingController();

void showCategoryBottomModalSheet(BuildContext context){
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
     builder: (BuildContext context){
        return Padding(
          padding:  EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
                  left: 20,
                  right: 20,              
                  top: 20    
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
                const SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(140,128,128,0.2),
                  ),
                  child: const Icon(
                    Icons.image,
                    color: Color.fromRGBO(125,125,125,1),
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 15),
                  child: Text(
                    'Add',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                //Category TextField
                SizedBox(
                  //color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    "Image URL",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33,33,33,1),
                    ),
                  ),
                ),
                TextField(
                    controller: categoryController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      hintText: 'Enter URL',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0,0,0,0.5),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                ),
                const SizedBox(height: 20,),
                    
                //Description TextField
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    "Category",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33,33,33,1),
                    ),
                  ),
                ),
                TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      hintText: 'Enter category name',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0,0,0,0.5),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                ),
                
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                    
                Padding(
                  padding: const EdgeInsets.only(left: 120,right: 120),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(67),
                      color: const Color.fromRGBO(14,161,125,1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          'Add',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
            ],
          ),
        );
     }
     
     );
}

  
void showCustomDialogBox(){
    showDialog(
      context: context, 
      builder:(context){
          return AlertDialog(
            actions: [
              Column(
                children: [
                  const SizedBox(height: 20,),
                  Text(
                    'Delete category',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    'Are you sure you want to delete the selected category?',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(14,161,125,1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          child: Text(
                            'Delete',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(140,128,128,0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
      }
      
    );
}

  @override
  Widget build(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.672; 

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Categories',
                style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(33,33,33,1),
                ),    
              ),
            ],
          ),
        ),
      
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(
              height: containerHeight,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ), 
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      showCustomDialogBox();
                    },
                    child: Container(
                      height: 170,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            offset: Offset(1,2),
                            blurRadius: 8,
                            spreadRadius: 0
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 30,),
                          Container(
                            height: 75,
                            width: 75,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(214,3,3,0.7),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0), 
                              child: SvgPicture.asset(
                                'assets/food.svg',
                                ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Text(
                            'Food',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              ),
            ),
           const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(67),
                  color: Colors.white,
                  boxShadow: const[
                     BoxShadow(
                      color:Color.fromRGBO(0, 0, 0, 0.25),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                          showCategoryBottomModalSheet(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        decoration:const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(14,161,125,1),
                        ),
                        child:const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                          ),
                        ),
                    ),
                    Text(
                      '  Add Category',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(37,37,37,1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}