import 'package:flutter/material.dart';
import 'package:welcome_login_sipnup/components/text_field_container.dart';
import 'package:welcome_login_sipnup/constants.dart';

class RoundInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundInputField({
    Key key,
    this.hintText,
    this.icon = (Icons.person),
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
            hintText: hintText),
      ),
    );
  }
}
