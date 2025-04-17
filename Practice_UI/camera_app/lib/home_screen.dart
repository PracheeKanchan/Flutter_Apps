import 'package:camera_app/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 33, 37, 1),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.05,  // 5% from top
          left: screenWidth * 0.05,  // 5% from left
          right: screenWidth * 0.05,  // 5% from right
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Cart Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'PixelsCo.',
                  style: GoogleFonts.dmSans(
                    fontSize: screenWidth * 0.06,  // Responsive font size
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                    height: screenHeight * 0.03,  // 3% height
                    width: screenWidth * 0.07,  // 7% width
                    child: Image.asset('assets/bag.png')),
              ],
            ),
            const SizedBox(height: 20),
            // New Vintage Collection Section
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.06,  // 6% horizontal padding
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(72, 76, 87, 1),
                    Color.fromRGBO(29, 31, 35, 1),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    blurRadius: 40,
                    spreadRadius: 0,
                    offset: Offset(0, 30),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Left Section: Text + Button
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          'New Vintage Collection',
                          style: GoogleFonts.dmSans(
                            fontSize: screenWidth * 0.05,  // Responsive font size
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Explore Now Button
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(50, 52, 59, 1),
                                Color.fromRGBO(114, 117, 129, 0),
                              ],
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                blurRadius: 21.33,
                                offset: Offset(0, 10.41),
                                spreadRadius: 0,
                              ),
                            ],
                            border: Border.all(width: 1.04),
                          ),
                          child: Center(
                            child: Text(
                              'Explore now',
                              style: GoogleFonts.dmSans(
                                fontSize: screenWidth * 0.04,  // Responsive font size
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Right Section: Image
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 53.89,
                            spreadRadius: 0,
                            offset: Offset(4.49, -13.47),
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 29,
                            spreadRadius: 0,
                            offset: Offset(0, 20),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        'assets/camera1.png',
                        fit: BoxFit.contain,
                        height: screenHeight * 0.2,  // Responsive height
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Popular Section Title
            Text(
              'Popular',
              style: GoogleFonts.dmSans(
                fontSize: screenWidth * 0.05,  // Responsive font size
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            // Grid View of Items
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.6,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 60,
                          offset: Offset(0, 20),
                          spreadRadius: 0,
                        ),
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(54, 57, 65, 1),
                          Color.fromRGBO(62, 66, 75, 0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Rating
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Color.fromRGBO(255, 197, 103, 1),
                            ),
                            Text(
                              ' 4.5',
                              style: GoogleFonts.dmSans(
                                fontSize: screenWidth * 0.03,  // Responsive font size
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // Image of Camera
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 32.66,
                                spreadRadius: 0,
                                offset: Offset(0, 16.89),
                              ),
                            ],
                          ),
                          child: Image.asset('assets/camera2.png'),
                        ),
                        // Camera Name
                        Text(
                          'Canon EOS 30D',
                          style: GoogleFonts.dmSans(
                            fontSize: screenWidth * 0.04,  // Responsive font size
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Price and Navigation Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$16000',
                              style: GoogleFonts.dmSans(
                                fontSize: screenWidth * 0.04,  // Responsive font size
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return const DetailScreen();
                                  }),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.04),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(111, 117, 128, 1),
                                      Color.fromRGBO(31, 34, 37, 0),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 23,
                                      spreadRadius: 0,
                                      offset: Offset(0, 10),
                                    ),
                                  ],
                                  border: Border.all(
                                    width: 0.63,
                                    color: const Color.fromRGBO(55, 73, 87, 0.2),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
