import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/drawer_widget.dart';
import '../../widgets/emoji_row.dart';

class FirstRatingScreen extends StatelessWidget {
  const FirstRatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      backgroundColor: const Color(0xFF181925),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: height * 80),
                  height: height * 200,
                  width: height * 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * 100)),
                  child: Image.asset("assets/pizza.png"),
                ),
                Gap(height * 20),
                AutoSizeText(
                  "Pizza Ballado",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white),
                ),
                Gap(height * 5),
                AutoSizeText(
                  "\$90.00",
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                ),
              ],
            )),
            Gap(height * 90),
            AutoSizeText(
              "Was it delicious?",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
            ),
            Gap(height * 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const EmojiRow(),
                Gap(height * 90),
                SizedBox(
                  height: height * 55,
                  width: height * 211,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF34d186)),
                    child: AutoSizeText(
                      'Rate Now',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
