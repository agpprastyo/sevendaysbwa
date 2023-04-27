import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/cart_list.dart';
import '../../widgets/drawer_widget.dart';

class FirstRandomScreen extends StatelessWidget {
  const FirstRandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: EdgeInsets.only(
            top: height * 60.0, left: height * 30, right: height * 30),
        child: Column(
          children: [
            Center(
              child: AutoSizeText(
                'My Shopping Cart',
                style: GoogleFonts.poppins(
                  color: const Color(0xff191919),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: height * 30),
            CartList(
              imageUrl: 'assets/burger.png',
              iconOne: 'assets/min_icon.png',
              amount: '2',
              iconTwo: 'assets/plus_icon.png',
              food: 'Burger Malleta',
              place: 'McTheone',
              pricing: '\$90.000',
            ),
            SizedBox(height: height * 26),
            CartList(
              imageUrl: 'assets/flower.png',
              iconOne: 'assets/min_icon.png',
              amount: '5',
              iconTwo: 'assets/plus_icon.png',
              food: 'Mojito Orange',
              place: 'The Bar',
              pricing: '\$510.000',
            ),
            SizedBox(height: height * 26),
            Container(
              width: double.infinity,
              height: height * 161,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(height * 20),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: height * 16.0, left: height * 16, right: height * 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Informations',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff191919),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: height * 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Sub total',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: height * 10),
                            Text(
                              'Delivery',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: height * 10),
                            AutoSizeText(
                              'Total',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              '\$600.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: height * 10),
                            AutoSizeText(
                              '\$80.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: height * 10),
                            AutoSizeText(
                              '\$680.00',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff191919),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              height: height * 60,
              child: TextButton(
                style: TextButton.styleFrom(
                    shadowColor: const Color(0xffFFC532),
                    elevation: 8,
                    backgroundColor: const Color(0xffFFC532),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 53),
                    )),
                onPressed: () {},
                child: AutoSizeText(
                  'Checkout Now',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff2E221B),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 16),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 53),
                    )),
                onPressed: () {},
                child: AutoSizeText(
                  'Save to Wishlist',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Gap(height * 24)
          ],
        ),
      ),
    );
  }
}
