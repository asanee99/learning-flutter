import 'package:flutter/material.dart';
import './text_data.dart';

class TextControl extends StatefulWidget {
  final String startingText;

  TextControl(this.startingText);

  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _text = '';

  void initState() {
    super.initState();
    _text = widget.startingText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.00),
          child: RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              setState(() {
                _text == 'Text 01' ? _text = 'Text 02' : _text = 'Text 01' ;
              });
            },
            child: Text('Change Text'),
          ),
        ),
        TextData(_text)
      ],
    );
  }
}
