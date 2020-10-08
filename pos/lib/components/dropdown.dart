import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  DropDownWidget({Key key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue = 'One';
  final Color contentColor = Color(0xff303030);
  final Color borderColor = Color(0xffE5E5E5);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Combo'),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                  color: borderColor, style: BorderStyle.solid, width: 1.80),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 40,
              elevation: 16,
              style: TextStyle(color: contentColor),
              underline: Container(height: 0),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ))
      ],
    );
  }
}
