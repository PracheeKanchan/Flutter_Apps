import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.arrow_back,
                  size: 20,
                ),
              ),
              Image.asset('assets/verify.png')
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              'Verification',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5
              ),
            ),
            const SizedBox(height: 10,),
                SizedBox(
                  child: Text(
                    'Enter the OTP code from the phone we just sent you.',
                     style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0,0,0,0.6)
                     ),
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                    List.generate(4, (index){
                      return Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color.fromRGBO(204,211,196,1)),
                        boxShadow: const[
                          BoxShadow(
                            color: Color.fromRGBO(0,0,0,0.03),
                            blurRadius: 20,
                            offset: Offset(0,12),
                          )
                        ]
                      ),
                     );
                     }
                    )
                ),
                const SizedBox(height: 20,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t receive OTP code! ',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      TextSpan(
                        text: 'Resend',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        )
                      )
                    ]

                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(124,180,70,1),
                      Color.fromRGBO(62,102,24,1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  ),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
           ),
              ],
            ),
          )

        ],
      ),
    );
  }
}