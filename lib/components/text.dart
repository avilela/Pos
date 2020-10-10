import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  TextWidget(this.text);

  final String text;

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
