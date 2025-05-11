import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(247,247,249,1),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,right: 20,
          top: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 37,
                          width: 37,
                          child: Image.asset(
                            'assets/profile.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          'Leonardo',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(width: 5,),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,width: 44,
                    padding: const EdgeInsets.all(5),
                    decoration:const  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/Notifications.png'),
                  ),
                 ],
               ),
               const SizedBox(height: 20,),
               SizedBox(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Explore the\n',
                        style: GoogleFonts.poppins(
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                        ),
                      ),
                      TextSpan(
                        text:'Beatiful ',
                        style: GoogleFonts.poppins(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                        )
                      ),
                      TextSpan(
                        text:'world!',
                        style: GoogleFonts.poppins(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(245,146,69,1)
                        )
                      ),
                    ]
                  ),
                ),
               ),
               const SizedBox(height: 25,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Destination',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27,30,40,1)
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13,110,253,1)
                    ),
                  ),
                ],
               ),
               const SizedBox(height: 20,),
              SizedBox(
                  height: 384,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder:(context,index){
                    return  Container(
                  width: 268,
                  height: 384,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: const[
                      BoxShadow(
                        color: Color.fromRGBO(180,188,201,0.12),
                        blurRadius: 16,
                        offset: Offset(0,6),
                        spreadRadius: 0,
                      ),
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Stack(
                          children: [
                            Image.asset('assets/home1.png',
                            fit: BoxFit.cover,),
                            Positioned(
                              right: 10,
                              top: 5,
                              child: Container(
                                height: 34,width: 34,
                                decoration:   BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color.fromRGBO(27,30,40,1).withOpacity(0.2),                              ),
                                child: const Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.white,
                                  weight: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Niladri Reservoir',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.45,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(255,211,54,1),
                                size: 20,
                              ),
                              Text(
                                '4.7',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.3
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/Location.png'),
                          const SizedBox(width: 4,),
                          Text(
                            'Tekergat, Sunamgnj',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(125,132,141,1),
                              letterSpacing: 0.26,
                            ),
                            ),
                            ],
                          ),
                          const SizedBox(width: 15,),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/avtar1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 14,
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration:const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                  'assets/avtar2.png',
                                  fit: BoxFit.cover,
                                ),
                                ),
                              ),
                              Positioned(
                                left: 28,
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                  'assets/avtar3.png',
                                  fit: BoxFit.cover,
                                ),
                                ),
                              ),
                              Positioned(
                                left: 42,
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(229,244,255,1),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+50',
                                      style: GoogleFonts.poppins(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
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
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 15,);
                  },
                 ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.amber,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(175, 184, 198, 0.12),
            blurRadius: 16,
            offset: Offset(-6, 0),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set the current index to highlight the active tab
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected tab
          });
        },
        backgroundColor: Colors.transparent,
        unselectedItemColor: const Color.fromRGBO(125, 132, 141, 1),
        selectedItemColor: const Color.fromRGBO(13, 110, 253, 1),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/home.png',
                  color: _selectedIndex == 0
                      ? const Color.fromRGBO(13, 110, 253, 1) // Selected color
                      : const Color.fromRGBO(125, 132, 141, 1), // Unselected color
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/Calendar.png',
                color: _selectedIndex == 1
                    ? const Color.fromRGBO(13, 110, 253, 1) // Selected color
                    : const Color.fromRGBO(125, 132, 141, 1), // Unselected color
              ),
            ),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(top: 15, right: 5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(13, 110, 253, 1),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(13, 110, 253, 0.17),
                    blurRadius: 19,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: const Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/message.png',
              color: _selectedIndex == 3
                  ? const Color.fromRGBO(13, 110, 253, 1) // Selected color
                  : const Color.fromRGBO(125, 132, 141, 1), // Unselected color
            ),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile_icon.png',
              color: _selectedIndex == 4
                  ? const Color.fromRGBO(13, 110, 253, 1) // Selected color
                  : const Color.fromRGBO(125, 132, 141, 1), // Unselected color
            ),
            label: "Profile",
          ),
        ],
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );

  }
}