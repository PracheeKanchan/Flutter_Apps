import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sumiti_darpan_project/Student_screens/student_palya_palak.dart';
import 'package:sumiti_darpan_project/Student_screens/student_post_screen.dart';

// Function to get the Curved Navigation Bar
Widget getCurvedNavigationBar(int selectedIndex, Function(int) onTapCallback) {
  return CurvedNavigationBar(
    index: selectedIndex,
    height: 60.0,
    items:const <Widget>[
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home, size: 30),
        Text('Home', style: TextStyle(fontSize: 12)),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.post_add_outlined, size: 30),
        Text('Post', style: TextStyle(fontSize: 12)),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.notifications, size: 30),
        Text('Notification', style: TextStyle(fontSize: 12)),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.account_circle, size: 30),
        Text('Profile', style: TextStyle(fontSize: 12)),
      ],
    ),
    ],
    color: const Color.fromRGBO(67,50,139,1),
    buttonBackgroundColor: Colors.white,
    backgroundColor: Colors.transparent,
    animationCurve: Curves.easeInOut,
    animationDuration: const Duration(milliseconds: 300),
    onTap: onTapCallback,
  );
}


class CurvedNavBarScreen extends StatefulWidget {

  const CurvedNavBarScreen({super.key});
  @override
 State createState() => _CurvedNavBarScreenState();
}

class _CurvedNavBarScreenState extends State<CurvedNavBarScreen> {
  int _selectedIndex = 0;

   final List _pageOptions = [
    const PalyaPalak(),
    const DarpanPost(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pageOptions[_selectedIndex], // Display selected page
      bottomNavigationBar: getCurvedNavigationBar(
        _selectedIndex,
        (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
