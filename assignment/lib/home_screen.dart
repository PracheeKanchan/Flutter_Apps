import 'package:assignment/create_run_screen.dart';
import 'package:assignment/dashboard_screen.dart';
import 'package:assignment/data_entry_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 // Track the current selected screen index
  int _selectedIndex = 0;

  // List of screens to navigate to
  final List<Widget> _screens = [
    const DashboardScreen(),
    const DataEntryScreen(),
    const CreateRunScreen(),
  ];

  // List of menu items
  final List<Map<String, dynamic>> _menuItems = [
    {'title': 'Dashboard', 'icon': Icons.dashboard_outlined},
    {'title': 'Data Entry', 'icon': Icons.sd_storage_outlined},
    {'title': 'Create Run', 'icon': Icons.edit_note_outlined},
    {'title': 'Technician', 'icon': Icons.construction_outlined},
    {'title': 'Collation', 'icon': Icons.directions_outlined},
    {'title': 'Report', 'icon': Icons.report_outlined},
    {'title': 'History', 'icon': Icons.history},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.settings,
              color:Colors.grey ,
            ),
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.notifications_active,
              color:Colors.grey ,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              height: 35,
              width: 35,
              decoration:const  BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network('https://cdn-icons-png.flaticon.com/512/300/300221.png'),
            ),
             Text(
              'Google',
              style:GoogleFonts.imprima(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blue
              ) ,
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          // Menu items
                  
          Container(
            width: 250,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                for (int i = 0; i < _menuItems.length; i++)
                  Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: _selectedIndex == i ? Colors.blue[300]:Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: 
                        ListTile(
                          leading: Icon(_menuItems[i]['icon']),
                          title: Text(_menuItems[i]['title']),
                          iconColor: _selectedIndex == i ? Colors.white:Colors.black,
                          textColor: _selectedIndex == i ?Colors.white :Colors.black,
                          onTap: () {
                            _selectedIndex=i;
                            setState(() {
                              
                            });
                          },
                        ),
                    ),
                    
                  
                ],
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: _screens[_selectedIndex],
          )),
        ],
      ),
    );
  }
}


