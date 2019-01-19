import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  final String text;

  TextData(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}