//TextField()
import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  TextInputWidget({Key key}) : super(key: key);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Texto'),
        TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: Color(0xffE5E5E5)),
        )
      ],
    );
  }
}
