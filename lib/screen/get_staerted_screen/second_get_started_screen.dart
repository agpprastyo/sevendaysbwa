import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/drawer_widget.dart';

class SecondGetStartedScreen extends StatelessWidget {
  const SecondGetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: EdgeInsets.all(height * 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              "Health First.",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 24),
            ),
            Gap(height * 16),
            AutoSizeText(
              "Exercise together with our best\ncommunity fit in the world",
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/galerry_one.png',
                    ),
                    Gap(height * 12),
                    Image.asset(
                      'assets/galerry_two.png',
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/galerry_three.png',
                    ),
                    Gap(height * 12),
                    Image.asset(
                      'assets/galerry_four.png',
                    ),
                  ],
                ),
              ],
            ),
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              height: height * 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: const Color(0xFFAFEA0D)),
                onPressed: () {},
                child: AutoSizeText(
                  "Shape My Body",
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Gap(height * 20),
            Center(
              child: AutoSizeText(
                "Terms & Conditions",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    color: const Color(0xFF757575)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
