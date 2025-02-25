import 'package:expense_manager_app/categories_screen.dart';
import 'package:expense_manager_app/graph_screen.dart';
import 'package:expense_manager_app/transaction_screen.dart';
import 'package:expense_manager_app/trash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget{

  const MyDrawer({super.key});
  @override
 Widget build(BuildContext context){
    return Drawer(
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
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context){
                      return const GraphScreen();
                    }
                    )
                    );// Close the drawer
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
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context){
                      return const CategoriesScreen();
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
                    // Handle navigation here
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(builder: (context){
                      return const TrashScreen();
                    }
                    )
                    );
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
      );
 }

}

