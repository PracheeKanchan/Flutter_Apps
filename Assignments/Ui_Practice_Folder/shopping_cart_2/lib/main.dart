import "package:flutter/material.dart";

void main(){
    runApp(const ShoppingCart());
}
class ShoppingCart extends StatelessWidget{

    const ShoppingCart({super.key});

    @override
    Widget build(BuildContext context){

      return MaterialApp(

        debugShowCheckedModeBanner:false,
        home: Scaffold(
             appBar:AppBar(
                   title: const Padding(
                   padding: EdgeInsets.only(top: 10),
                   child:  Text(
                       "My Cart",
                        style:TextStyle(
                              fontSize:25,
                              color:Colors.deepPurple,
                              fontWeight:FontWeight.w600,
                          ),
                      ),
                    ),
                    leading: const Padding(
                      padding:  EdgeInsets.only(top: 10),
                      child:  Icon(Icons.arrow_back_ios_new_sharp),
                    ),
                    centerTitle: true,
                    toolbarHeight: 80,
                    flexibleSpace:Container(decoration: BoxDecoration(border:Border.all(color: Colors.grey)),) ,
             ),
             body:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      SizedBox(
                        height: 530,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                    children: [
                                        const SizedBox(height: 30,),
                                        Padding(
                                              padding: const EdgeInsets.only(left: 15,right: 15),
                                              child: Container(
                                                  height: 150,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Colors.grey[200],
                                                  ),
                                                  child: Row(
                                                    children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(10),
                                                          child: Image.asset("assets/shoes.jpg"),
                                                        ),
                                                        //const SizedBox(width: 10,),
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                const Padding(
                                                                    padding: EdgeInsets.only(left: 10,top: 10),
                                                                    child: SizedBox(
                                                                           child: Text("Nike Shoes",
                                                                              style: TextStyle(
                                                                                  fontSize: 23,
                                                                                  fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                    ),
                                                                ),
                                                                const Padding(
                                                                    padding: EdgeInsets.only(left: 10,bottom: 10),
                                                                    child: SizedBox(
                                                                        child: Text(
                                                                              "With iconic style and legendary comfort, on repeat.",
                                                                              style: TextStyle(
                                                                                  fontSize: 14,
                                                                                  color: Colors.grey,
                                                                              ),
                                                                        ),
                                                                    ),
                                                                  ),
                                                            Row(
                                                                children: [
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(left: 10),
                                                                    child: const Text(
                                                                          "\$570.00",
                                                                          style:TextStyle(
                                                                              fontSize: 23,
                                                                              fontWeight: FontWeight.w500,
                                                                          ),
                                                                      ),
                                                                  ),
                                                                  const SizedBox(width: 25,),
                                                                  const Icon(Icons.remove),
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(left: 7,right: 7),
                                                                    child: Container(
                                                                        height: 25,
                                                                        width: 35,
                                                                        decoration: BoxDecoration(
                                                                            border: Border.all(color: Colors.deepPurple),
                                                                            borderRadius: BorderRadius.circular(5),
                                                                        ),
                                                                        child: const Center(child: Text("1"),),
                                                                    ),
                                                                  ),
                                                                  const Icon(Icons.add),
                                                                ],
                                                            )
                                                ],
                                            ),
                                          ),
                                      ],
                                  ),
                              ),
                            ),
                              ],
                          );
                          },
                           
                        ),
                      ),
                        
                      const SizedBox(height: 30,),
                        Column(
                            children: [
                                const Padding(
                          padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                    "Subtotal :",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 19,
                                    ),
                              ),
                              Text(
                                    "\$800.00",
                                    style: TextStyle(
                                        //color: Colors.grey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                    "Delivery Fee :",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 19,
                                    ),
                              ),
                              Text(
                                    "\$5.00",
                                    style: TextStyle(
                                        //color: Colors.grey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                    "Discount :",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 19,
                                    ),
                              ),
                              Text(
                                    "40%",
                                    style: TextStyle(
                                        //color: Colors.grey,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                        "Checkout for ₹480.00",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                        ),
                                  ),
                                ),
                            ),
                          ),
                        ),
                            ],
                        ),
                    ],
                ),

            ),
        );
    }
}