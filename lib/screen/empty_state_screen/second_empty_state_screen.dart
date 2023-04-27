import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/drawer_widget.dart';

class SecondEmptyStateScreen extends StatelessWidget {
  const SecondEmptyStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;

    return Scaffold(
      backgroundColor: const Color(0xFF1B1B33),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/chart_illustration.png"),
          ),
          Expanded(child: Container()),
          AutoSizeText(
            "Boost Profit!",
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Gap(height * 16),
          AutoSizeText(
            "Our tools are helping business\nto grow much faster",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Expanded(child: Container()),
          Container(
            width: height * 65,
            height: height * 65,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(height * 40),
                color: const Color(0xFF808ee0)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.rocket_launch_outlined,
                color: Colors.white,
                size: height * 32,
              ),
            ),
          ),
          Gap(height * 65),
        ],
      ),
    );
  }
}
