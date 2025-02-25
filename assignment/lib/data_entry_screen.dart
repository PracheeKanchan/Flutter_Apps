import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DataEntryScreen extends StatefulWidget {
  const DataEntryScreen({super.key});

  @override
  State<DataEntryScreen> createState() => _DataEntryScreenState();
}

class _DataEntryScreenState extends State<DataEntryScreen> {

  TextEditingController refController=TextEditingController();
  TextEditingController todaysDateController=TextEditingController();
  TextEditingController idNameController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  TextEditingController addressContoller=TextEditingController();
  TextEditingController sequenceIdController=TextEditingController();
  TextEditingController nationalIdController=TextEditingController();

  // Initial selected value for ID and Gender
  String? selectedId;
  String? selectedGender;
  String? selectedMobile;
  String? selectedAadhar;

  // List of IDs
  List<String> ids = ['ID',];
  List<String> genderList=['Male','Female','Other'];
  List<String> mobileList=['Mobile'];
  List<String> nationalIdList=['Aadhar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue[300],
            ),
            child: Center(
              child: Text(
                'Data Entry',
                 style: GoogleFonts.imprima(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                 ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: refController,
                          decoration:const InputDecoration(
                            labelText: "Ref.",
                            //hintText: "Ref."
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: todaysDateController,
                          decoration:const InputDecoration(
                            labelText: "Today's Date",
                            //hintText: "Ref."
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: idNameController,
                          decoration:const InputDecoration(
                            labelText: "ID Name",
                            hintText: "Enter ID Name"
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 180,
                        margin:const EdgeInsets.only(top: 18),
                        child: DropdownButton<String>(
                          hint: const Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Text('ID',style: TextStyle(color: Colors.black),),
                          ),
                          value: selectedId,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedId = newValue;
                            });
                          }, 
                          items: ids.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                          isExpanded: true,  // Ensure the dropdown fills the container width
                          icon:const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 180,
                        margin:const EdgeInsets.only(top: 18),
                        child: DropdownButton<String>(
                          hint: const Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Text('Gender',style: TextStyle(color: Colors.black),),
                          ),
                          value: selectedGender,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedGender = newValue;
                            });
                          },
                          items: genderList.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                          isExpanded: true,
                          icon:const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: dateController,
                          decoration:const InputDecoration(
                            labelText: "DOB",
                            hintText: "DOB",
                            suffixIcon: Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.grey,
                              )
                          ),
                          onTap: () async {
                             DateTime? pickedDate = await showDatePicker(
                             context: context,
                             firstDate: DateTime(2024),
                             lastDate: DateTime(2025),
                          );
                            String formattedDate = DateFormat.yMMMd().format(pickedDate!);

                           setState(() {
                              dateController.text = formattedDate;
                           });
                          }
                        ),
                      ),
                      const SizedBox(width: 20,),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: ageController,
                          decoration:const InputDecoration(
                            labelText: "Age",
                            //hintText: "Ref."
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 180,
                        margin:const EdgeInsets.only(top: 18),
                        child: DropdownButton<String>(
                          hint: const Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Text('Mobile',style: TextStyle(color: Colors.black),),
                          ),
                          value: selectedMobile,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedMobile = newValue;
                            });
                          },
                          items: mobileList.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                          isExpanded: true,  // Ensure the dropdown fills the container width
                          icon:const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: addressContoller,
                          decoration:const InputDecoration(
                            labelText: "Address",
                            //hintText: "Ref."
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 180,
                        margin:const EdgeInsets.only(top: 18),
                        child: DropdownButton<String>(
                          hint: const Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Text('Aadhar',style: TextStyle(color: Colors.black),),
                          ),
                          value: selectedAadhar,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedAadhar = newValue;
                            });
                          },
                          items: nationalIdList.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                          isExpanded: true,
                          icon:const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: nationalIdController,
                          decoration:const InputDecoration(
                            labelText: "National ID",
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                      width: 180,
                        //color: Colors.amber,
                        child: TextField(
                          controller: sequenceIdController,
                          decoration:const InputDecoration(
                            labelText: "Auto Sequence id",
                            hintText: "Auto Sequence id",
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            height: 300,
            //color: Colors.amber,
            child: Row(
              children: [
                    SingleChildScrollView(
                      child: Table(
                        border: TableBorder.all(
                          color: Colors.grey, width: 0.5,
                          borderRadius: BorderRadius.circular(10)
                          ),
                        columnWidths: const {
                          0: FixedColumnWidth(300),
                        },
                        children: [
                          // Table Header
                            TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent[100],
                                    borderRadius:const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)
                                    )
                                  ),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Center(
                                              child: Text(
                                                'Work Prof',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(Icons.arrow_drop_down)
                                        ],
                                      ),
                                    ),
                                  ],
                              ),
                              // Table Rows
                              for (int i = 0; i < 10; i++)
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(child: Text("Profession ${i + 1}")),
                                    ),
                                  ],
                                ),
                                      ],
                           ),
                       ),
                       const SizedBox(width:20),
                       SingleChildScrollView(
                      child: Table(
                        border: TableBorder.all(
                          color: Colors.grey, width: 0.5,
                          borderRadius: BorderRadius.circular(10)
                          ),
                        columnWidths: const {
                          0: FixedColumnWidth(300),
                          
                        },
                        children: [
                          // Table Header
                            TableRow(
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent[100],
                                    borderRadius:const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)
                                    )
                                  ),
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Center(
                                              child: Text(
                                                'Work Prof',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(Icons.arrow_drop_down)
                                        ],
                                      ),
                                    ),
                                  ],
                              ),
                             
                              // Table Rows
                              for (int i = 0; i < 10; i++)
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Center(child: Row(
                                        children: [
                                          Text("Profession ${i + 1}"),
                                         
                                        ],
                                      )),
                                    ),
                                  ],
                                ),
                                      ],
                           ),
                       ),
                ],
            ),
          ),
          const SizedBox(height: 15,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[300],
                ),
                child: const Center(
                  child:Text(
                    'Verify',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}