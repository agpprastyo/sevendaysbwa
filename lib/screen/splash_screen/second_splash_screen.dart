import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

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
              "assets/background_image.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: height * 70,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/home.png",
                    width: width * 51,
                  ),
                ),
                Gap(width * 14),
                Text(
                  "HouseQu",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 32.3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
