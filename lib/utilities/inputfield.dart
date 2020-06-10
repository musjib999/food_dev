import 'package:flutter/material.dart';

class InputFeild extends StatelessWidget {
  InputFeild({@required this.hintText, this.secureText, this.prefixIcon, this.suffixIcon});

  final String hintText;
  final bool secureText;
  final Icon prefixIcon;
  final IconButton suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      obscureText: secureText,
    );
  }
}
