import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatefulWidget {
  PrimaryButtonWidget(this.textLabel, {Key key}) : super(key: key);

  final String textLabel;

  @override
  _PrimaryButtonWidgetState createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55.0,
      child: RaisedButton(
        color: Color(0xFF1684BA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {},
        child: Text(
          widget.textLabel,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
