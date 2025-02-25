import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/login_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  
  // _currentPageIndex should be static because it's related to the state
  int _currentPageIndex = 0;
  final PageController _pageController = PageController();

  // Update the current page index whenever the page changes
  void _onPageChanged(int page) {
    setState(() {
      _currentPageIndex = page;
    });
  }

  // Method to build the dot indicator
  Widget _buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: _currentPageIndex == index ? Colors.blue : Colors.grey,
        shape: _currentPageIndex== index? BoxShape.rectangle :BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // PageView for onboarding screens
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                _buildOnboardingPage(
                  "assets/onboard1.png", // Image for onboarding screen 1
                  "Life is short and the world is",
                  "wide",
                  "At Friends tours and travel, we\t\t customize reliable and trustworthy educational tours to destinations",
                ),
                _buildOnboardingPage(
                  "assets/onboard2.png", // Image for onboarding screen 2
                  "It’s a big world out there go ",
                  "explore",
                  "To get the best of your adventure you just need to leave and go where you like. we are waiting for you.",
                ),
                _buildOnboardingPage(
                  "assets/onboard3.png", // Image for onboarding screen 3
                  "People don’t take trips, trips take ",
                  "people",
                  "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
                ),
              ],
            ),
          ),
          
          // Dot indicator at the bottom
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return _buildDot(index);
            }),
          ),

          // "Get Started" button at the bottom
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context){
                  return const LoginScreen();
                })
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(13, 110, 252, 1),
              ),
              child: Center(
                child: Text(
                  _currentPageIndex== 0 
                  ?'Get Started'
                  :'Next',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to build each onboarding page
  Widget _buildOnboardingPage(String image, String text1, String text2, String description) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 33),
          child: SizedBox(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: text1,
                        style: GoogleFonts.aclonica(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: text2,
                        style: GoogleFonts.aclonica(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(125, 132, 141, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                //const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
