import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSignInScreen extends StatelessWidget {
  const SecondSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;

    return Scaffold(
      backgroundColor: const Color(0xFFf8f8f8),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width * 28, right: width * 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // logo paper
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: height * 38),
                  child: Image.asset(
                    "assets/paper_icon.png",
                    width: width * 245,
                    height: height * 279,
                  ),
                ),
              ),
              Gap(height * 53),
              Padding(
                padding: EdgeInsets.only(left: width * 5),
                child: AutoSizeText(
                  "E-mail Address",
                  style: GoogleFonts.poppins(),
                ),
              ),
              Gap(height * 6),
              Container(
                width: double.infinity,
                height: height * 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 71),
                    color: const Color(0xFFf3f3f3)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 8),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    style: GoogleFonts.openSans(color: const Color(0xFF17171a)),
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'E-mail',
                        hintStyle: GoogleFonts.openSans(
                            color: const Color(0xFF6f7075))),
                  ),
                ),
              ),
              Gap(height * 20),
              Padding(
                padding: EdgeInsets.only(left: width * 5),
                child: AutoSizeText(
                  "Password",
                  style: GoogleFonts.poppins(),
                ),
              ),
              Gap(height * 6),
              Container(
                width: double.infinity,
                height: height * 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 71),
                    color: const Color(0xFFf3f3f3)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 8),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    style: GoogleFonts.openSans(color: const Color(0xFF17171a)),
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.openSans(
                            color: const Color(0xFF6f7075))),
                  ),
                ),
              ),
              Gap(height * 80),
              Container(
                width: double.infinity,
                height: height * 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 60),
                    color: const Color(0xFF5468ff)),
                child: TextButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    "Sign In",
                    style: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              Gap(height * 16),
              Container(
                width: double.infinity,
                height: height * 55,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFFd3d3d3), width: width * 1),
                    borderRadius: BorderRadius.circular(height * 60),
                    color: Colors.transparent),
                child: TextButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    "Create New Account",
                    style: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFcfcfcf)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
