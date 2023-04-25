import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPricingScreen extends StatefulWidget {
  const FirstPricingScreen({super.key});

  @override
  FirstPricingScreenState createState() => FirstPricingScreenState();
}

class FirstPricingScreenState extends State<FirstPricingScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    Widget header() {
      return Padding(
        padding: EdgeInsets.only(
          top: height * 100.0,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/crown.png',
                width: height * 100,
              ),
            ),
            SizedBox(height: height * 48),
            AutoSizeText(
              'Which one you wish \nto Upgrade',
              style: GoogleFonts.poppins(
                color: const Color(0xff191919),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String title,
      String description,
      String subDescription,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: width * 315,
          height: height * 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(height * 60),
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0xff6050E7)
                  : const Color(0xffD9DEEA),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                top: height * 16.0,
                left: height * 17,
                bottom: height * 23,
                right: height * 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imageUrl,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 10.0,
                    left: height * 7,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        title,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          AutoSizeText(
                            description,
                            style: GoogleFonts.poppins(
                              color: const Color(0xffA3A8B8),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(width: height * 6),
                          Text(
                            subDescription,
                            style: GoogleFonts.poppins(
                              color: const Color(0xff5343C2),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: height * 41.0, top: height * 10),
                  child: selectedIndex == index
                      ? Image.asset(
                          'assets/purple_check.png',
                          width: height * 26,
                        )
                      : SizedBox(width: height * 26),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: height * 50.0),
          child: Column(
            children: [
              header(),
              SizedBox(height: height * 50),
              option(0, 'assets/pig_icon.png', 'Money Security', 'support',
                  '24/7'),
              const SizedBox(height: 24),
              option(1, 'assets/paper_illustration.png', 'Automation',
                  'we provide', 'Invoice'),
              const SizedBox(height: 24),
              option(2, 'assets/dollar_icon.png', 'Balance Report', 'can up to',
                  '10k'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff6050E7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: height * 15.0,
                left: height * 30,
              ),
              child: AutoSizeText(
                'Upgrade Now',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: height * 15.0,
              ),
              child: Image.asset(
                'assets/right_arrow.png',
                width: height * 28,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
