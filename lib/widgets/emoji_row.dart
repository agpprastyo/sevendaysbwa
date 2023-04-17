import 'package:flutter/material.dart';

class EmojiRow extends StatefulWidget {
  const EmojiRow({
    Key? key,
  }) : super(key: key);

  @override
  EmojiRowState createState() => EmojiRowState();
}

class EmojiRowState extends State<EmojiRow> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('You clicked ${index + 1} emoji');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTabItem(0, '😡'),
        _buildTabItem(1, '😔'),
        _buildTabItem(2, '😁'),
        _buildTabItem(3, '😍'),
      ],
    );
  }

  Widget _buildTabItem(int index, String text) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;
    double size = MediaQuery.of(context).size.aspectRatio * 2.165;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        width: height * 60.0,
        height: height * 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              _selectedIndex == index ? Colors.white : const Color(0xFF37394d),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: size * 30),
          ),
        ),
      ),
    );
  }
}
