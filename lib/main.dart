import 'package:flutter/material.dart';
import 'package:sevendaysbwa/screen/empty_state_screen/first_empty_state_screen.dart';
import 'package:sevendaysbwa/screen/empty_state_screen/second_empty_state_screen.dart';
import 'package:sevendaysbwa/screen/get_staerted_screen/first_get_started_screen.dart';
import 'package:sevendaysbwa/screen/get_staerted_screen/second_get_started_screen.dart';
import 'package:sevendaysbwa/screen/my_home_page.dart';
import 'package:sevendaysbwa/screen/pricing_screen/first_pricing_screen.dart';
import 'package:sevendaysbwa/screen/pricing_screen/second_pricing_screen.dart';
import 'package:sevendaysbwa/screen/random_screen/first_random_screen.dart';
import 'package:sevendaysbwa/screen/random_screen/second_random_screen.dart';
import 'package:sevendaysbwa/screen/rating_screen/first_rating_screen.dart';
import 'package:sevendaysbwa/screen/rating_screen/second_rating_screen.dart';
import 'package:sevendaysbwa/screen/sign_in_screen/first_sign_in_screen.dart';
import 'package:sevendaysbwa/screen/sign_in_screen/second_sign_in_screen.dart';
import 'package:sevendaysbwa/screen/splash_screen/first_splash_screen.dart';
import 'package:sevendaysbwa/screen/splash_screen/second_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seven Days BWA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define your initial route
      initialRoute: '/',
      // Define your routes
      routes: {
        '/': (context) => const MyHomePage(),
        'splashScreen1': (context) => const FirstSplashScreen(),
        'splashScreen2': (context) => const SecondSplashScreen(),
        'getStarted1': (context) => const FirstGetStartedScreen(),
        'getStarted2': (context) => const SecondGetStartedScreen(),
        'signIn1': (context) => const FirstSignInScreen(),
        'signIn2': (context) => const SecondSignInScreen(),
        'emptyState1': (context) => const FirstEmptyStateScreen(),
        'emptyState2': (context) => const SecondEmptyStateScreen(),
        'ratingScreen1': (context) => const FirstRatingScreen(),
        'ratingScreen2': (context) => const SecondRatingScreen(),
        'pricingScreen1': (context) => const FirstPricingScreen(),
        'pricingScreen2': (context) => const SecondPricingScreen(),
        'randomScreen1': (context) => const FirstRandomScreen(),
        'randomScreen2': (context) => const SecondRandomScreen(),
        // Add the remaining screens here
      },
    );
  }
}
