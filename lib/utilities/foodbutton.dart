import 'package:flutter/material.dart';

class FoodSizeButton extends StatelessWidget {
  FoodSizeButton({this.size});
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      width: 60.0,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}