import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatefulWidget {
  SecondaryButtonWidget({Key key}) : super(key: key);

  @override
  _SecondaryButtonWidgetState createState() => _SecondaryButtonWidgetState();
}

class _SecondaryButtonWidgetState extends State<SecondaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: double.infinity,
      height: 60.0,
      child: FlatButton(
        child: new Text(
          "Button text",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFF1684BA),
              fontWeight: FontWeight.normal),
        ),
        onPressed: null,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(6.0),
          side: BorderSide(
            color: Color(0xFF1684BA),
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
