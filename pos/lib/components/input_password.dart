import 'package:flutter/material.dart';
import 'package:pos/components/text.dart';

class PasswordInputText extends StatefulWidget {
  const PasswordInputText(this.labelText,
      {Key key, this.hintText, this.onChange})
      : super(key: key);
  final String hintText;
  final String labelText;
  final void Function(String value) onChange;

  @override
  _PasswordInputTextState createState() => _PasswordInputTextState();
}

class _PasswordInputTextState extends State<PasswordInputText> {
  bool showPassword = false;
  TextEditingController controller = TextEditingController();

  void _onChange(String value) {
    controller.text = value;
    if (widget.onChange != null) {
      widget.onChange(value);
    }
  }

  void _changePwdType() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 10)),
        TextWidget(widget.labelText),
        Padding(padding: EdgeInsets.all(5)),
        TextField(
          obscureText: showPassword,
          controller: controller,
          onChanged: (value) => _onChange,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffE5E5E5),
            border: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.0, color: Color(0xffE5E5E5)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.0, color: Color(0xffE5E5E5)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 0.0, color: Color(0xffE5E5E5)),
            ),
            suffixIcon: IconButton(
                icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off),
                onPressed: _changePwdType,
                color: Color(0xff303030)),
          ),
        )
      ],
    );
  }
}
