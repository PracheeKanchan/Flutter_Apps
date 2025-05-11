import 'package:api_binding_demo/device_detail_screen.dart';
import 'package:flutter/material.dart';

class GetAllDataScreen extends StatefulWidget{

  List<dynamic> devicedata;

   GetAllDataScreen({super.key,required this.devicedata});
  @override
  State createState()=> _GetAllDataScreen();
}

class _GetAllDataScreen extends State<GetAllDataScreen>{

  List<String> imageURL=[
    'https://m.media-amazon.com/images/I/71YJ2QMIM6L.jpg',
    'https://rukminim2.flixcart.com/image/750/900/kg8avm80/mobile/n/2/u/apple-iphone-12-mini-dummyapplefsn-original-imafwgbfxuhswfgj.jpeg?q=20&crop=false',
    'https://images.squarespace-cdn.com/content/v1/5864d96703596e675552b72c/1614184413031-8VBGSRK74UMXQ5ZTKGTZ/apple+iphone-12-pro-max-blue-hero.jpg',
    'https://m.media-amazon.com/images/I/41EI83jj87L.jpg',
    'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-z-fold2-5g.jpg',
    'https://i.pcmag.com/imagery/roundups/05jwogOdvDP6fhvzGNqwJh7-4.fit_lim.size_850x490.v1727804927.webp',
    'https://techcrunch.com/wp-content/uploads/2024/11/CMC_8144.jpg',
    'https://m.media-amazon.com/images/I/41Tiqr+--6L._AC_.jpg',
    'https://m.media-amazon.com/images/I/618aVzbPMjL._AC_UF1000,1000_QL80_.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtexRODcbfIXpgqCQLO_m1DU00QiaqBKYtNA&s',
    'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111904_ipad-mini-2019.jpg',
    'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/ipad-air-model-unselect-gallery-2-202405_FMT_WHH?wid=1280&hei=720&fmt=p-jpg&qlt=80&.v=azZtTlRzREZ3NzhWaHRDQW5YeUV0UEs0TkxxOFYxN2dtSHJMdW5sNDFVOUlhVTFOeW83YW5oSmZSbkJQUVFVdFBTRzhFbXhrSlpyaVYxRTU4VUZ2NXlaSE1Qa0haZTFvMWVJTkxjaWwxSnhVaWV0MngrSm1qUU9yRGpSUGRKRFBiZGNxdlVhUVQ1T2lKZVdKL04ySU5B&traceId=1',
    'https://m.media-amazon.com/images/I/71CAKit3DcL._AC_UF1000,1000_QL80_.jpg',
  ];
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'All Device data',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: widget.devicedata.length,
          itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context){
                            return DeviceDetailScreen(urlImage: imageURL[index],deviceInfo:widget.devicedata[index],);
                          })
                        );
                      },
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow:const  [
                            BoxShadow(
                              color: Color.fromRGBO(0,0,0,0.2),
                              offset: Offset(0,2),
                              blurRadius: 10,
                            )
                          ],
                        ),
                        child: Image.network(imageURL[index]),
                      ),
                    ),
                     Padding(
                      padding: const  EdgeInsets.only(top: 15,left: 5),
                      child: Text(
                           widget.devicedata[index]['name'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    ),
                  ],
                ),
              );
          },
        ),
      );
  }
}