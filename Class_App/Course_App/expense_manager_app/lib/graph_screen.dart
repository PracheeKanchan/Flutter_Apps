import 'package:expense_manager_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget{
  const GraphScreen({super.key});
  @override
  State createState()=> _GraphScreenState();
}
class _GraphScreenState extends State<GraphScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:  Text(
          'Graph',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              child: PieChart(
                dataMap: const{
                  "Food":5,
                  "Fuel":6,
                  "Medicine":3,
                  "Entertainment":7,
                  "Shopping":3
                },
                colorList: const[
                  Color.fromRGBO(214,3,3,0.7),
                  Color.fromRGBO(0,148,255,0.7),
                  Color.fromRGBO(0,174,91,0.7),
                  Color.fromRGBO(100,62,255,0.7),
                  Color.fromRGBO(241,38,196,0.7),
                ],
                
                centerWidget: Column(
                  children: [
                    const SizedBox(height: 60,),
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      "2550.00",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                         
                      ),
                    ),
                  ],
                ),
                chartType: ChartType.ring,
                chartValuesOptions: const ChartValuesOptions(
                  showChartValues: false,
                ),
                chartRadius: 150,
                ringStrokeWidth: 35,
                
              ),
            ),
            const SizedBox(height: 30,),
            const Divider(
              thickness: 0.2,
              color: Color.fromRGBO(0,0,0,0.5),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context ,index){
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(214,3,3,0.7),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset('assets/food.svg'),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          'Food',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '₹ 650.00',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 15,),
                        const Icon(
                          Icons.navigate_next,
                          color: Color.fromRGBO(0,0,0,0.5),
                          size: 15,
                        )
                      ],
                    ),
                  );
                }
              ),
            ),
            const Spacer(),
            const Divider(
              thickness: 0.2,
              color: Color.fromRGBO(0,0,0,0.5),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '₹ 2,550.00',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}