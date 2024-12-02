import 'package:expense_manager_app/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionScreen extends StatefulWidget{

  const TransactionScreen({super.key});
  @override
  State createState()=>_TransactionScreenState();
}
class _TransactionScreenState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'November 2024  ',
                style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                ),    
              ),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: SvgPicture.asset('assets/down_arrow.svg',
                  ),
                ),
              ),
              
            ],
          ),
        ),
      
      ),
      drawer: Drawer(
        semanticLabel: 'Expense Manager',
        width: (MediaQuery.of(context).size.width) / 2 + 30,
        child: ListView(
          children: <Widget>[
            // Drawer Header
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Expense Manager',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Text(
                'Saves all your Transaction',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0,0,0,0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                margin: const EdgeInsets.only(top: 10,),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                  ),
                  color: Color.fromRGBO(14,161,125,0.15),
                ),
                child: ListTile(
                  minVerticalPadding: 10,
                  minTileHeight: 40,
                  leading: const Icon(
                    Icons.payment,
                    color: Color.fromRGBO(14,161,125,1),
                  ),
                  title: Text(
                    'Transaction',
                     style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(14,161,125,1),
                     ),  
                  ),
                  onTap: () {
                    // Handle navigation here
                    //Navigator.pop(context);
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context){
                      return const TransactionScreen();
                    }
                    )
                    );
                    // Close the drawer
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                  ),
                //  color: Color.fromRGBO(14,161,125,0.15),
                ),
                child: ListTile(
                  minVerticalPadding: 10,
                  minTileHeight: 40,
                  leading: const Icon(
                    Icons.auto_graph,
                    color: Color.fromRGBO(14,161,125,1),
                  ),
                  title: Text(
                    'Graphs',
                     style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                     ),  
                  ),
                  onTap: () {
                    // Handle navigation here
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                  ),
                  //color: Color.fromRGBO(14,161,125,0.15),
                ),
                child: ListTile(
                  minVerticalPadding: 10,
                  minTileHeight: 40,
                  leading: const Icon(
                    Icons.category_sharp,
                    color: Color.fromRGBO(14,161,125,1),
                  ),
                  title: Text(
                    'Category',
                     style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                     ),  
                  ),
                  onTap: () {
                    // Handle navigation here
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                  ),
                  //color: Color.fromRGBO(14,161,125,0.15),
                ),
                child: ListTile(
                  minTileHeight: 40,
                  minVerticalPadding: 10,
                  leading: const Icon(
                    Icons.delete,
                    color: Color.fromRGBO(14,161,125,1),
                  ),
                  title: Text(
                    'Trash',
                     style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                     ),  
                  ),
                  onTap: () {
                    // Handle navigation here
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                  ),
                  //color: Color.fromRGBO(14,161,125,0.15),
                ),
                child: ListTile(
                  minTileHeight: 40,
                  minVerticalPadding: 10,
                  leading: const Icon(
                    Icons.person,
                    color: Color.fromRGBO(14,161,125,1),
                  ),
                  title: Text(
                    'About us',
                     style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                     ),  
                  ),
                  onTap: () {
                    // Handle navigation here
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ),
                ],
              ),
            ),
            
            
          ],
        ),
      ),
     
      body: ListView(
        children: [
          const SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(0,174,91,0.7),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/Medicine.svg',
                             fit: BoxFit.cover,
                          )),
                      ),
                      Container(
                        //color: Colors.red,
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             SizedBox(
                              width: 315,
                               child: Row(
                                 children: [
                                   Text(
                                     'Medicine',
                                     style:GoogleFonts.poppins(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w400
                                     ),
                                   ),
                                   const Spacer(),
                                   //const SizedBox(width: 60,),
                                   Row(
                                     children: [
                                       Container(
                                     decoration: const BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.orange,
                                     ),
                                     child: const Center(
                                       child: Icon(
                                         Icons.remove,
                                         color: Colors.white,
                                         size: 17,
                                     ),
                                     ),
                                   ),
                                   Text(
                                     ' 500',
                                     style: GoogleFonts.poppins(
                                       fontSize: 15,
                                       fontWeight: FontWeight.w400,
                                     ),
                                   ),
                                     ],
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(
                               child: Text(
                                 'Lorem Ipsum is simply dummy text of the ',
                                 style: GoogleFonts.poppins(
                                   fontSize: 10,
                                   fontWeight: FontWeight.w400,
                                   color: const Color.fromRGBO(0,0,0,0.8),
                                 ),
                               ),
                             ),
                           ],
                         ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '3 June | 11:50AM',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0,0,0,0.6),
                  )
                ),
              ],
            ),
          ),
          const Divider(height: 5,),
        ],
      ),
    );
  }
}