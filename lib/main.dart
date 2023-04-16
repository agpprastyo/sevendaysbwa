import 'package:flutter/material.dart';
import 'package:sevendaysbwa/screen/empty_state_screen/first_empty_state_screen.dart';
import 'package:sevendaysbwa/screen/get_staerted_screen/first_get_started_screen.dart';
import 'package:sevendaysbwa/screen/get_staerted_screen/second_get_started_screen.dart';
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
      home: const FirstEmptyStateScreen(),
    );
  }
}
