import 'package:flutter/material.dart';
import 'package:sevendaysbwa/screen/splash_screen/firstSplashScreen.dart';

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
      home: const FirstSplashScreen(),
    );
  }
}


