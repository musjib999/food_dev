import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget {
  AuthButtons({@required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19.0,
          ),
        ),
      ),
    );
  }
}