import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstEmptyStateScreen extends StatelessWidget {
  const FirstEmptyStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: height * 148, left: width * 70, right: width * 70),
            child: Image.asset("assets/empty_illustration.png"),
          ),
          Gap(height * 100),
          AutoSizeText(
            "Success Order",
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0e1954)),
          ),
          Gap(height * 16),
          AutoSizeText(
            "We will delivery your package\nas soon as possible",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF0e1954),
            ),
          ),
          Gap(height * 50),
          Container(
            width: width * 200,
            height: height * 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 17),
                color: const Color(0xFFf94593)),
            child: TextButton(
              onPressed: () {},
              child: AutoSizeText(
                "Done",
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
          Gap(height * 100)
        ],
      ),
    );
  }
}
