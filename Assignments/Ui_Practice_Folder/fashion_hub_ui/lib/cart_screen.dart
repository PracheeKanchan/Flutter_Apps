import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  @override
  Widget build(BuildContext context) {
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
                const SizedBox(
                  width: 135
                  ,
                ),
                Text(
                  'Cart',
                  style:GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               
              ],
            ),
            //const SizedBox(height: 30,),
           

SizedBox(
  height: 390,
  child: ListView.builder(
    itemCount: 10,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.only(bottom: 35),
        child: Row(
          children: [
            Container(
              height: 145,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SvgPicture.asset(
                'assets/cart_image.svg',
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    'Premium Tagerine Shirt',
                    style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        'Yellow',
                        style: GoogleFonts.imprima(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      Text(
                        'Size 8',
                        style: GoogleFonts.imprima(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$257.85',
                      style: GoogleFonts.imprima(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 80),
                    Text(
                      '1x',
                      style: GoogleFonts.imprima(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    },
  ),
),

            const Divider(
              color: Color.fromRGBO(227,227,227,1),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  'Total Items(3)',
                  style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121,119,128,1),
                  ),
                ),
                const Spacer(),
                Text(
                  '\$116.00',
                  style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Text(
                  'Standard Delivery',
                  style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121,119,128,1),
                  ),
                ),
                const Spacer(),
                Text(
                  '\$12.00',
                  style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Text(
                  'Total Payment',
                  style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121,119,128,1),
                  ),
                ),
                const Spacer(),
                Text(
                  '\$126.00',
                  style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(vertical: 20,),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255,122,0,1),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Text(
                      'Checkout Now',
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
          ]
        ),
      ),
    );
  }
}