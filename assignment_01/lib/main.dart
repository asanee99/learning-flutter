import 'package:flutter/material.dart';
import './text_control.dart';

void main() => runApp(MyAssignment());

class MyAssignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment')
        ),
        body: TextControl('Starting Text'),
      ),
    );
  }
}