import 'package:expense_manager_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionScreen extends StatefulWidget{

  const TransactionScreen({super.key});
  @override
  State createState()=>_TransactionScreenState();
}
class _TransactionScreenState extends State{

TextEditingController dateController=TextEditingController();
TextEditingController amountController=TextEditingController();
TextEditingController categoryController=TextEditingController();
TextEditingController descriptionController=TextEditingController();

List<Map<String,dynamic>> transactionList=[];

void clearController(){
  dateController.clear();
  amountController.clear();
  categoryController.clear();
  descriptionController.clear();
}
void showMyBottomModalSheet(BuildContext context){
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    "Date",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33,33,33,1),
                    ),
                  ),
                ),
                TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      hintText: 'Enter Date',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0,0,0,0.5),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                ),
                const SizedBox(height: 20,),
                    
                //Amount TextField
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Text(
                    "Amount",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33,33,33,1),
                    ),
                  ),
                ),
                TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      hintText: 'Enter amount',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0,0,0,0.5),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                ),
                const SizedBox(height: 20,),
                    
                //Category TextField
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
                    controller: categoryController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      hintText: 'Enter category',
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
                    "Description",
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
                      hintText: 'Enter description',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0,0,0,0.5),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                ),
                const SizedBox(height: 30,),
                    
                Padding(
                  padding: const EdgeInsets.only(left: 120,right: 120),
                  child: GestureDetector(
                    onTap: (){
                      if(dateController.text.isNotEmpty &&
                               amountController.text.isNotEmpty &&
                               categoryController.text.isNotEmpty &&
                               descriptionController.text.isNotEmpty
                            ){
                                transactionList.add({
                                  'date':dateController.text,
                                  'amount':amountController.text,
                                  'category':categoryController.text,
                                  'description':descriptionController.text,
                                });
                            }
                            clearController();
                            setState(() {
                              
                            });
                    },
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
                ),
                const SizedBox(height: 30,),
            ],
          ),
        );
     }
     
     );
}
  @override
  Widget build(BuildContext context){
    // Get the screen height using MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.672;  // Set the Container height to 60% of screen height

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
        surfaceTintColor: Colors.white,
      ),
      drawer: const MyDrawer(),
     
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            //color: Colors.amber,
            height: containerHeight ,
            child: ListView.builder(
              //itemCount:transactionList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
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
                                                GestureDetector(
                                                  onTap: () {
                                                    transactionList.removeAt(index);
                                                  },
                                                  child:Container(
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
                                                ) ,
                                            ),
                                              const SizedBox(width: 10,),   
                                             Text(
                                                '500',
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
                                           'Loreum Ipsum is simply dummy text',
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
                            '3 June | 11:50 AM',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0,0,0,0.6),
                            )
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 5,color: Color.fromRGBO(206,206,206,1),),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 120),
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
                            showMyBottomModalSheet(context);
                        },
                        child: Container(
                          //height: 40,
                          //width: 30,
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
                        'Add Transaction',
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
            ),
          ),
        ],
        
      ),
      
      
      
    );
  }
}