import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatefulWidget {
  SecondaryButtonWidget({Key key}) : super(key: key);

  @override
  _SecondaryButtonWidgetState createState() => _SecondaryButtonWidgetState();
}

class _SecondaryButtonWidgetState extends State<SecondaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        child: const Text('Secondary Button', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
