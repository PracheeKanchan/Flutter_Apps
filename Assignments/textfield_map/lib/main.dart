import "package:flutter/material.dart";

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

 const  MyApp({super.key});

 @override
 Widget build(BuildContext context){
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TextFieldMap(),
    );
 }
}
class TextFieldMap extends StatefulWidget{
    
    const TextFieldMap({super.key});

    @override
    State createState()=>_TextFieldMapState();
}
class _TextFieldMapState extends State{

    List<Map<String,String>> myList=[];

  @override
  Widget build(BuildContext context ){

      TextEditingController nameController=TextEditingController();
      TextEditingController companyController=TextEditingController();

      String? myName;
      String? companyName;

  
      return Scaffold(

          appBar: AppBar(
              title: const Text("Info"),
              backgroundColor: Colors.cyan,
              centerTitle: true,
              //toolbarHeight: 10,
          ),
          body: Column(
              children: [
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextField(
                      controller: nameController,  
                      style:const TextStyle(
                          fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          hintText: "Name",
                          suffixIcon: const Icon(Icons.people_alt_outlined),
                          hintStyle: const TextStyle(
                              fontSize: 12,
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          
                      ),                 
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextField(
                      controller: companyController,  
                      style:const TextStyle(
                          fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          hintText: "Dream Company",
                          hintStyle: const TextStyle(
                              fontSize: 12,
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),                 
                  ),
                ),
                const SizedBox(height: 40,),
                GestureDetector(
                  onTap: () {
     
                    if(nameController.text != "" && companyController.text != ""){

                          myList.add({
                              'Name':nameController.text,
                              'DreamCompany': companyController.text
                            });
                            print(myList);
                            nameController.clear();
                            companyController.clear;
                            setState(() {});
                    }
                    
                  },
                  child: Container(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.cyan,
                      ),
                      child: const Text("Submit",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                  ),
                ),

                const SizedBox(height: 30,),
                 Expanded(
                   child: ListView.builder(
                    shrinkWrap: true,
                     itemCount: myList.length,
                     itemBuilder: (BuildContext context,int index){
                        
                        return Padding(
                          padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                          child: Container(
                            padding:const  EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 188, 249, 249),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                          
                                  Text("Name          :  ${myList[index]['Name']}",
                                        style:const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text("Company    :  ${myList[index]['DreamCompany']}",
                                        style:const TextStyle(
                                            fontSize: 15,
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
              ],
          ),
      );
  }
}