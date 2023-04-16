import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSignInScreen extends StatefulWidget {
  const FirstSignInScreen({Key? key}) : super(key: key);

  @override
  State<FirstSignInScreen> createState() => _FirstSignInScreenState();
}

class _FirstSignInScreenState extends State<FirstSignInScreen> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;

    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: Padding(
        padding: EdgeInsets.only(
            left: width * 40, right: width * 40, top: height * 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon Euro
            Container(
              height: height * 50,
              width: height * 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 40),
                  color: const Color(0xFFFCAC15)),
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: height * 4),
                      child: const Icon(
                        Icons.euro_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: height * 32,
                      width: height * 32,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: height * 3.2, color: Colors.white),
                          borderRadius: BorderRadius.circular(height * 18)),
                    ),
                  )
                ],
              ),
            ),
            Gap(height * 70),
            AutoSizeText(
              "Welcome back.\nLet’s make money.",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white),
            ),
            Gap(height * 70),
            // Email
            Container(
              width: double.infinity,
              height: height * 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 17),
                  color: const Color(0xFF262a34)),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                maxLines: 1,
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_rounded,
                      color: Color(0xFF6f7075),
                    ),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'E-mail',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xFF6f7075))),
              ),
            ),
            Gap(height * 20),
            // Password
            Container(
              width: double.infinity,
              height: height * 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 17),
                  color: const Color(0xFF262a34)),
              child: TextFormField(
                obscureText: !passwordVisible,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                maxLines: 1,
                style: GoogleFonts.openSans(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password_rounded,
                      color: Color(0xFF6f7075),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: const Color(0xFF6f7075),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Password',
                    hintStyle:
                        GoogleFonts.openSans(color: const Color(0xFF6f7075))),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot My Password",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF6a6b70),
                        ),
                      )),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: height * 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 17),
                  color: const Color(0xFFfcac15)),
              child: TextButton(
                onPressed: () {},
                child: AutoSizeText(
                  "Sign In",
                  style: GoogleFonts.openSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF6b4909)),
                ),
              ),
            ),
            Gap(height * 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  "Don’t have account?",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                Gap(width * 2),
                TextButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            Gap(height * 100),
          ],
        ),
      ),
    );
  }
}
