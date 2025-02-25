import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

   // List of menu items
  final List<Map<String, dynamic>> _menuList = [
    {'title': 'Data Entry', 'icon': Icons.sd_storage_outlined},
    {'title': 'Collation', 'icon': Icons.directions_outlined},
    {'title': 'Report', 'icon': Icons.report_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SizedBox(
            height: 120,
            child: ListView.separated(
              itemCount: _menuList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Container(
                  width: 405,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow:const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.5,
                              blurRadius: 6
                            )
                          ]
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[300],
                        ),
                        child:  Icon(
                          _menuList[index]['icon'],
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        _menuList[index]['title'],
                        
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 15,);
              },
            ),
      ),
      
    );
  }
}