import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendaysbwa/widgets/drawer_widget.dart';

class SecondPricingScreen extends StatelessWidget {
  const SecondPricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/linier_background.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 80.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/pricing_illustration.png',
                      width: width * 164,
                    ),
                  ),
                  SizedBox(height: height * 24),
                  AutoSizeText(
                    'Pro Features',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: height * 10),
                  AutoSizeText(
                    'Unlock the winner modules \nand get more insights',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff7F7FAD),
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 50.0,
                      left: height * 28,
                      right: height * 28,
                    ),
                    child: Column(
                      children: [
                        RowItem(
                          width: width,
                          height: height,
                          text: 'Unlock Our Top Charts',
                        ),
                        SizedBox(height: height * 26),
                        RowItem(
                            width: width,
                            height: height,
                            text: 'Save More than 1,000 Docs'),
                        SizedBox(height: height * 26),
                        RowItem(
                            width: width,
                            height: height,
                            text: '24/7 Customer Support'),
                        const SizedBox(height: 26),
                        RowItem(
                            width: width,
                            height: height,
                            text: 'Track Company’s Spending'),
                        const SizedBox(height: 58),
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shadowColor: const Color(0xffE57C73),
                              elevation: 20,
                              backgroundColor: const Color(0xffE57C73),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31),
                              ),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 80,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Subscribe Now',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/button_arrow.png',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 40),
                        AutoSizeText(
                          'Contact Support',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  const RowItem(
      {super.key,
      required this.width,
      required this.height,
      required this.text});

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/orange_check.png',
          width: width * 26,
        ),
        SizedBox(width: height * 12),
        Text(
          text,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
