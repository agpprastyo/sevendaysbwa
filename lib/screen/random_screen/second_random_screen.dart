import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/drawer_widget.dart';

class SecondRandomScreen extends StatelessWidget {
  const SecondRandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          Image.asset(
            'assets/cover_random.png',
          ),
          SizedBox(height: height * 20),
          AutoSizeText(
            'Arrina La',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          AutoSizeText(
            'Bali, Dekat Bandung',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: height * 37),
          Padding(
            padding: EdgeInsets.only(left: height * 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'About',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                AutoSizeText(
                  'Pantai Pandawa adalah salah satu para \nkawasan wisata di area Kuta selatan sana \nKabupaten Dekat Bandung, Bali.',
                  style: GoogleFonts.poppins(
                    color: const Color(0XFF2F323A),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: height * 26),
                AutoSizeText(
                  'Booking Now',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/date_one.png',
                        width: height * 80,
                        height: height * 100,
                      ),
                      SizedBox(width: height * 20),
                      Image.asset(
                        'assets/date_two.png',
                        width: height * 80,
                        height: height * 100,
                      ),
                      SizedBox(width: height * 20),
                      Image.asset(
                        'assets/date_three.png',
                        width: height * 80,
                        height: height * 100,
                      ),
                      SizedBox(width: height * 20),
                      Image.asset(
                        'assets/date_four.png',
                        width: height * 80,
                        height: height * 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: height * 20.0, right: height * 20),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '\$22,800',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff3F6DF6),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  AutoSizeText(
                    '/night',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: height * 220,
                height: height * 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff3F6DF6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 19),
                    ),
                  ),
                  onPressed: () {},
                  child: AutoSizeText(
                    'Continue',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFAFAFAff),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
