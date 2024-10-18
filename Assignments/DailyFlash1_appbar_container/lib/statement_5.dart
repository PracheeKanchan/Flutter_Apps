import "package:flutter/material.dart";

//show 3 network images of size(150,150)
class Statement5 extends StatelessWidget {
  const Statement5({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
            title: const Text("Statement 5",
                  style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600    
                  ),
            ),
            backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Container(
                      height: 150,
                      width: 150,
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg?cs=srgb&dl=pexels-8moments-1266810.jpg&fm=jpg",
                            fit: BoxFit.cover,
                      ),
                  ),
                  Container(
                      height: 150,
                      width: 150,
                      padding: const EdgeInsets.all(10),
                      child: Image.network("https://img.freepik.com/free-photo/photorealistic-view-tree-nature-with-branches-trunk_23-2151478040.jpg",
                        fit: BoxFit.cover,
                      ),
                  )
              ],
          ),
        ),
      ),
    );
  }
}