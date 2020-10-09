//TextField()
import 'package:flutter/material.dart';
import 'package:pos/components/text.dart';
import '../themes/text_theme.dart';

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
        Padding(padding: EdgeInsets.only(top: 10)),
        TextWidget(),
        Padding(padding: EdgeInsets.all(5)),
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
