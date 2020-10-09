import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  TextWidget({Key key}) : super(key: key);

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Texto',
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
