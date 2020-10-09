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
      height: 60.0,
      child: RaisedButton(
        color: Color(0xFF1684BA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {},
        child: const Text('Primary Button',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal)),
      ),
    );
  }
}
