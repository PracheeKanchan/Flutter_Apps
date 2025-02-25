import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget{
  const DetailScreen({super.key});
  @override
  State createState()=> _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen>{

  List sizeList=['S','M','L','XL','XXL','XXXL'];
  int _currentIndex=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30, right: 30, top: 50,
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.navigate_before,
                    size: 30,
                  ),
                ),
                Text(
                  'Details',
                  style:GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Icon(
                  Icons.bookmark_outline_outlined,
                  size: 25,
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              height: 400,
              decoration: BoxDecoration(
                //color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              // child: Image.asset(
              //   'assets/grid_images/image1.png',
              //   fit: BoxFit.fill,
              // ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width-200,
                  child: Text(
                    'Premium Tagerine Shirt',
                    style: GoogleFonts.imprima(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(255,122,0,1),
                          width: 1
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(255,122,0,1),
                          width: 1
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(255,122,0,1),
                          width: 1
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Text(
              'Size',
              style: GoogleFonts.imprima(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 45,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: sizeList.length,
                itemBuilder:(context,index){
                    return GestureDetector(
                      onTap: (){
                        _currentIndex=index;
                        setState(() {
                          
                        });
                      },
                      child: Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: _currentIndex==index 
                            ? Colors.black
                            : Colors.transparent
                          ),
                          child: Center(
                            child: Text(
                              sizeList[index],
                              style: GoogleFonts.imprima(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: _currentIndex == index
                                  ? Colors.white
                                  : const Color.fromRGBO(121,119,128,1),
                              ),
                            ),
                          ),
                        ),
                    );
                } , 
                separatorBuilder: (context,index){
                  return const SizedBox(width: 20);
                }, 
                
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$257.85',
                  style: GoogleFonts.imprima(
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255,122,0,1),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Text(
                      'Add To Cart',
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}