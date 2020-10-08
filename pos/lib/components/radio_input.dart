import 'package:flutter/material.dart';

enum SingingCharacter { sim, nao }
SingingCharacter _character = SingingCharacter.sim;

class RadioButtonRow extends StatefulWidget {
  @override
  _RadioButtonRowState createState() => _RadioButtonRowState();
}

class _RadioButtonRowState extends State<RadioButtonRow> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              title: const Text('Sim'),
              leading: Radio(
                value: SingingCharacter.sim,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: const Text('Não'),
              leading: Radio(
                value: SingingCharacter.nao,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
