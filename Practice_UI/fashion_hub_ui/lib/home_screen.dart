import 'package:fashion_hub_ui/cart_screen.dart';
import 'package:fashion_hub_ui/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentSelectedIndex=0;

  List categoryList=['All','Men','Women','Kids','Others'];
  List svgImages=[
    'assets/grid_images/Rectangle 980.svg',
    'assets/grid_images/Rectangle 981.svg',
    'assets/grid_images/Rectangle 980 (1).svg',
    'assets/grid_images/Rectangle 981 (1).svg'
  ];

  void _onTappedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30, right: 30, top: 50,bottom: 25
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset("assets/svg/Menu.svg"),
                ),
                const Spacer(),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset("assets/svg/Profile.svg"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Explore",
              style: GoogleFonts.imprima(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(13, 13, 14, 1),
              ),
            ),
            Text(
              'Best trendy collection!',
              style: GoogleFonts.imprima(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(121, 119, 128, 1),
              ),
            ),
            const SizedBox(height: 20),
            // Category filter buttons
             SizedBox(
              height: 35,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder:(context,index){
                    return GestureDetector(
                      onTap: (){
                        _currentSelectedIndex=index;
                        setState(() {
                          
                        });
                      },
                      child: Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: _currentSelectedIndex==index 
                                  ?const Color.fromRGBO(255, 122, 0, 1)
                                  :Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              categoryList[index],
                              style: GoogleFonts.imprima(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: _currentSelectedIndex==index
                                    ? Colors.white
                                    : const Color.fromRGBO(13, 13, 14, 1)
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
            
            Expanded(
              child: SizedBox(
                child: MasonryGridView.count(
                crossAxisCount: 2,
                itemCount: svgImages.length,
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
                itemBuilder: (context, index) {
                  // Set dynamic height based on index
                  double height = (index % 2 == 0) ? 200 : 150;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context){
                                  return const DetailScreen();
                                })
                              );
                            },
                            child: SizedBox(
                                height: height,
                                width: 200,
                            child: SvgPicture.asset(
                              'assets/svg/Home.svg',
                              fit: BoxFit.cover,
                            ),
                            ),
                          ),
                      Positioned(
                        bottom: -15,
                        right: 20,
                        child:Container(
                          height: 36,
                          width: 36,
                          decoration:  BoxDecoration(
                            color: const Color.fromRGBO(32,14,50,1),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              width: 5),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/Bag.svg',
                            ),
                          ),
                        ),
                         ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        '\$240.32',
                        style:GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(13,13,14,1),
                        ),
                      ),
                      Text(
                        'Tagerine Shirt',
                        style:GoogleFonts.imprima(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(121,119,128,1),
                        ),
                      ),
                      //const SizedBox(height: 15,),
                    ],
                  );
                },
                )
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTappedIndex,
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromRGBO(255, 122, 0, 1),
        unselectedItemColor: const Color.fromRGBO(13, 13, 14, 1),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/Home.svg',
              color: _selectedIndex == 0 ?const Color.fromRGBO(255, 122, 0, 1) : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
         AssetImage("assets/grid_images/image1.png")
            ),
            label: 'Search',
          ),
          //BottomNavigationBarItem(icon: ImageIcon(co,))
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return const CartScreen();
                  })
                );
              },
              child: SvgPicture.asset(
                'assets/svg/Cart.svg',
                color: _selectedIndex == 2 ?const Color.fromRGBO(255, 122, 0, 1) : Colors.black,
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/Settings.svg',
              color: _selectedIndex == 3 ?const Color.fromRGBO(255, 122, 0, 1) : Colors.black,
            ),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
