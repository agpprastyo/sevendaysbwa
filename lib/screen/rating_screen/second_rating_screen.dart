import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendaysbwa/widgets/custom_text_form_field.dart';

import '../../widgets/drawer_widget.dart';

class SecondRatingScreen extends StatelessWidget {
  const SecondRatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    return Scaffold(
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: height * 80),
              width: height * 295,
              child: Image.asset("assets/office_illustration.png"),
            ),
          ),
          Expanded(child: Container()),
          AutoSizeText(
            "Enjoy Your Meal",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Gap(height * 4),
          AutoSizeText(
            "Please rate our experience",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Expanded(child: Container()),
          RatingBar.builder(
            itemSize: height * 60,
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Gap(height * 36),
          const CustomTextFormField(),
          Gap(height * 30),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: height * 22),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, height * 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height * 13)),
                  backgroundColor: const Color((0xFF4074e6))),
              onPressed: () {},
              child: const Text('Submit Review'),
            ),
          ),
          Gap(height * 61)
        ],
      ),
    );
  }
}
