import 'package:flutter/material.dart';
import 'package:sevendaysbwa/screen/splash_screen/first_splash_screen.dart';

import '../widgets/drawer_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerWidget(),
      // Add the body of your app here
      body: FirstSplashScreen(),
    );
  }
}
