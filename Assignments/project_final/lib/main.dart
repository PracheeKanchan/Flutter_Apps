import 'dart:async'; // For Timer functionality
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // Page controller to manage PageView
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Timer to automatically change the page after a delay
  Timer? _pageTimer;

  // Method to build each page with background image, title, and description
  Widget buildPage(String imageAsset, String title, String description) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover, // Ensures the image covers the entire screen
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(blurRadius: 10, color: Colors.black, offset: Offset(2, 2))
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  shadows: [
                    Shadow(blurRadius: 10, color: Colors.black, offset: Offset(2, 2))
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to switch to the next page after a delay
  void _startAutoPageChange() {
    _pageTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  // Navigate to the login screen when skip button is pressed
  void _navigateToLoginScreen() {
    // For now, we're just pushing to a new login screen (replace this with actual login screen route)
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
    _startAutoPageChange(); // Start auto page change when screen is initialized
  }

  @override
  void dispose() {
    if (_pageTimer != null) {
      _pageTimer!.cancel(); // Dispose timer when widget is disposed
    }
    super.dispose();
  }

  // Method to build dot navigation indicator
  List<Widget> buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < 3; i++) {
      dots.add(
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          height: 10.0,
          width: _currentPage == i ? 20.0 : 10.0,
          decoration: BoxDecoration(
            color: _currentPage == i ? Colors.blueAccent : Colors.grey,
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      );
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView with multiple screens
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              // Page 1 with background image and text
              buildPage(
                'assets/first_image.jpg', // Background image for the first screen
                'Welcome to Our App',
                'This is the first screen description where we introduce the app.',
              ),
              // Page 2 with background image and text
              buildPage(
                'assets/second_image.jpg', // Background image for the second screen
                'Discover Features',
                'Learn more about the amazing features of our app in this page.',
              ),
              // Page 3 with background image and text
              buildPage(
                'assets/third_image.jpg', // Background image for the third screen
                'Get Started!',
                'Now, let’s sign you up and get you started with our app.',
              ),
            ],
          ),
          // Skip Button
          Positioned(
            //top: 250.0,
            right: 20.0,
            bottom: 10,
            child: ElevatedButton(
              onPressed: _navigateToLoginScreen,
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                side: BorderSide(color: Colors.white, width: 1.5),
              ),
            ),
          ),
          // Dots Navigation (to show current page)
          Positioned(
            bottom: 40.0,
            left: MediaQuery.of(context).size.width / 2 - 40,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: buildDots(),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: Center(child: Text("This is the login screen.")),
    );
  }
}
