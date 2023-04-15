import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplashScreen extends StatelessWidget {
  const FirstSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;

    return Scaffold(
      backgroundColor: const Color(0xFF13131E),
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            height: height * 170,
            child: Image.asset("assets/sword_icon.png"),
          ),
          Gap(height * 170),
          AutoSizeText(
            "VENTURE",
            style:
                GoogleFonts.dmSerifDisplay(fontSize: 32, color: Colors.white),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
