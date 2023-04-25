import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  CustomTextFormFieldState createState() => CustomTextFormFieldState();
}

class CustomTextFormFieldState extends State<CustomTextFormField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 812;

    return Container(
      decoration: BoxDecoration(
          color: const Color(0x4adedede),
          borderRadius: BorderRadius.circular(height * 17)),
      height: height * 130,
      margin: EdgeInsets.symmetric(horizontal: height * 20),
      padding:
          EdgeInsets.symmetric(horizontal: height * 16, vertical: height * 6),
      child: TextFormField(
        maxLines: 5,
        controller: _controller,
        focusNode: _focusNode,
        decoration: InputDecoration(
          hintText: 'Your message',
          border: _isFocused
              ? const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                )
              : InputBorder.none,
        ),
      ),
    );
  }
}
