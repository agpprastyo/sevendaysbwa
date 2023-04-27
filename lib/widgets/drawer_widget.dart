import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text('My App'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text('First Splash Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'splashScreen1');
            },
          ),
          ListTile(
            title: const Text('Second Splash Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'splashScreen2');
            },
          ),
          ListTile(
            title: const Text('First Get Started'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'getStarted1');
            },
          ),
          ListTile(
            title: const Text('Second Get Started'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'getStarted2');
            },
          ),
          ListTile(
            title: const Text('First Signin'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'signIn1');
            },
          ),
          ListTile(
            title: const Text('Second Signin'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'signIn2');
            },
          ),
          ListTile(
            title: const Text('First Empty State'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'emptyState1');
            },
          ),
          ListTile(
            title: const Text('Second Empty State'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'emptyState2');
            },
          ),
          ListTile(
            title: const Text('First Rating Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'ratingScreen1');
            },
          ),
          ListTile(
            title: const Text('Second Rating Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'ratingScreen2');
            },
          ),
          ListTile(
            title: const Text('First Pricing Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'pricingScreen1');
            },
          ),
          ListTile(
            title: const Text('Second Pricing Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'pricingScreen2');
            },
          ),
          ListTile(
            title: const Text('First Random Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'randomScreen1');
            },
          ),
          ListTile(
            title: const Text('Second Random Screen'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, 'randomScreen2');
            },
          ),
          // Add the remaining screens here
        ],
      ),
    );
  }
}
