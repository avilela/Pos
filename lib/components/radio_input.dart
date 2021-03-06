import 'package:flutter/material.dart';
import 'text.dart';

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 50.0,
            width: 50.0,
            decoration: new BoxDecoration(
              color: _item.isSelected ? Color(0xff1684BA) : Colors.transparent,
              shape: BoxShape.circle,
              border: new Border.all(
                width: 1.0,
                color: _item.isSelected ? Color(0xff1684BA) : Colors.grey,
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: new TextWidget(_item.text),
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}
