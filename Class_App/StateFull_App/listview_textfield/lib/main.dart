import "package:flutter/material.dart";

void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ListViewTextField(),
      );
  }
}
class ListViewTextField extends StatefulWidget{

    const ListViewTextField({super.key});
    @override
    State createState()=> _ListViewTextField();
}
class _ListViewTextField extends State{

    TextEditingController nameController=TextEditingController();

    List<String> nameList=[];

    String? name;

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: const Text("ListView textField"),
                backgroundColor: Colors.cyan,
                toolbarHeight: 70,
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
              child: Column(
                children: [
                  SizedBox(
                     
                      child: TextField(controller:nameController ,
                              style: const TextStyle(fontSize: 30),
                              decoration:const InputDecoration(
                                  hintText: "Enter name",
                                  hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  
                              ),
                      ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 50,bottom: 50),
                      child: GestureDetector(
                        onTap: (){
                            name=nameController.text.trim();
                            if(name != ""){
                                nameList.add(name!);
                                nameController.clear();
                                setState(() {});
                            }
                            
                        },
                        child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(child: Text("Add data",style: TextStyle(fontSize: 21),)),
                        ),
                      ),
                  ),

                   ListView.builder(
                    itemCount: nameList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {

                        return Text("Name : ${nameList[index]}",style: const TextStyle(fontSize: 20),);
                    },
                   ),
                ],
              ),
            ),
        );
    }
}