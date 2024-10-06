import "package:flutter/material.dart";

//create appbar with title,background color, 2 icons at last of appbar
class Statement1 extends StatelessWidget {
  const Statement1({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
            title: const Text("Statement 1",
                  style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600    
                  ),
            ),
            backgroundColor: Colors.blue,
            actions: const [Icon(Icons.download,size: 30,),Icon(Icons.search,size: 30,)],
        ),
      ),
    );
  }
}