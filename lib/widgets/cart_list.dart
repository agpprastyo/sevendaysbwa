import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartList extends StatefulWidget {
  String imageUrl;
  String iconOne;
  String amount;
  String iconTwo;
  String food;
  String place;
  String pricing;

  CartList(
      {super.key,
      required this.imageUrl,
      required this.iconOne,
      required this.amount,
      required this.iconTwo,
      required this.food,
      required this.place,
      required this.pricing});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Container(
      width: double.infinity,
      height: height * 140,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(height * 20),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 10.0, left: height * 10),
            child: Column(
              children: [
                Image.asset(
                  widget.imageUrl,
                  width: height * 80,
                ),
                SizedBox(height: height * 13),
                Row(
                  children: [
                    Image.asset(
                      widget.iconOne,
                      width: height * 22,
                    ),
                    SizedBox(width: height * 10),
                    AutoSizeText(
                      widget.amount,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff191919),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: height * 10),
                    Image.asset(
                      widget.iconTwo,
                      width: width * 22,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 26, left: height * 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  widget.food,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff191919),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                AutoSizeText(
                  widget.place,
                  style: GoogleFonts.poppins(
                    color: const Color(0xffA3A8B8),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 95.0, right: height * 10),
            child: Text(
              widget.pricing,
              style: GoogleFonts.poppins(
                color: const Color(0xff191919),
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
