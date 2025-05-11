import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 20, 22, 1),
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back Icon Button
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.64),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(111, 117, 128, 1),
                    Color.fromRGBO(31, 34, 37, 0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                border: Border.all(
                    width: 0.95,
                    color: const Color.fromRGBO(55, 73, 87, 0.2)),
              ),
              child: const Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.white,
              ),
            ),
            // Product Image
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Image.asset(
                  'assets/detailCamera.png',
                  height: screenHeight * 0.35, // Responsive height
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Product Detail Container
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color.fromRGBO(32, 32, 36, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Title
                    Text(
                      'SONY 200mm Zoom ',
                      style: GoogleFonts.dmSans(
                        fontSize: screenWidth * 0.05, // Responsive font size
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    // Price and Quantity Controls
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$6000',
                          style: GoogleFonts.dmSans(
                            fontSize: screenWidth * 0.06, // Responsive font size
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.4),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(97, 102, 113, 1),
                                    Color.fromRGBO(74, 78, 85, 0)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Text(
                              '01',
                              style: GoogleFonts.dmSans(
                                fontSize: screenWidth * 0.05, // Responsive font size
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.4),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(97, 102, 113, 1),
                                    Color.fromRGBO(74, 78, 85, 0)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Rating Row
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 197, 103, 1),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '4.5',
                          style: GoogleFonts.dmSans(
                            fontSize: screenWidth * 0.05, // Responsive font size
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          '(500 reviews)',
                          style: GoogleFonts.dmSans(
                            fontSize: screenWidth * 0.03, // Responsive font size
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(103, 105, 113, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    // Product Description
                    SizedBox(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.',
                        style: GoogleFonts.dmSans(
                          fontSize: screenWidth * 0.04, // Responsive font size
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 0.8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Action Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(57, 59, 66, 1),
                                Color.fromRGBO(35, 37, 41, 0),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                blurRadius: 41,
                                spreadRadius: 0,
                                offset: Offset(0, 20),
                              )
                            ],
                          ),
                          child: const Icon(
                            Icons.bookmark_outline,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.2, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(57, 59, 64, 1),
                                Color.fromRGBO(33, 35, 39, 0),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                            ),
                            border: Border.all(width: 0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                blurRadius: 41,
                                spreadRadius: 0,
                                offset: Offset(0, 30),
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Add to bag',
                              style: GoogleFonts.dmSans(
                                fontSize: screenWidth * 0.05, // Responsive font size
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
