import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onpressed;
  Mybutton({super.key, required this.text, required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      child: Text(text),
      color: Colors.blue[300],
    );
  }
}
