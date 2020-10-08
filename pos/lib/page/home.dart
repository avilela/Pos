import 'package:flutter/material.dart';
import '../components/dropdown.dart';
import '../components/input_text.dart';
import '../components/input_password.dart';
import '../components/primary_button.dart';
import '../components/radio_input.dart';
import '../components/secondary_button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
              top: true,
              bottom: true,
              left: true,
              right: true,
              minimum: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    DropDownWidget(),
                    TextInputWidget(),
                    PasswordInputText(),
                    PrimaryButtonWidget(),
                    SecondaryButtonWidget(),
                    RadioButtonRow()
                  ],
                ),
              ),
            )));
  }
}
