//TextField()
import 'package:flutter/material.dart';
import 'package:pos/components/text.dart';
import '../themes/text_theme.dart';

class TextInputWidget extends StatefulWidget {
  TextInputWidget(this.labelText);

  final String labelText;

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 10)),
        TextWidget(widget.labelText),
        Padding(padding: EdgeInsets.all(5)),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffE5E5E5),
            border: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.0, color: Color(0xffE5E5E5)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.0, color: Color(0xffE5E5E5)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.0, color: Color(0xffE5E5E5)),
            ),
          ),
        )
      ],
    );
  }
}
