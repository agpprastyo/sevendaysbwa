import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstGetStartedScreen extends StatelessWidget {
  const FirstGetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/background_started.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 55),
            child: Column(
              children: [
                Expanded(child: Container()),
                AutoSizeText(
                  "Maximize Revenue",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white),
                ),
                Gap(height * 16),
                AutoSizeText(
                  textAlign: TextAlign.center,
                  "Gain more profit from cryptocurrency\nwithout any risk involved",
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                ),
                Gap(height * 50),
                Container(
                    width: height * 80,
                    height: height * 80,
                    decoration: BoxDecoration(
                        color: Color(0xFF877BFB),
                        borderRadius: BorderRadius.circular(height * 40)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.login,
                          size: height * 36,
                          color: Colors.white,
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
