import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatefulWidget {
  PrimaryButtonWidget({Key key}) : super(key: key);

  @override
  _PrimaryButtonWidgetState createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        child: const Text('Primary Button', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
