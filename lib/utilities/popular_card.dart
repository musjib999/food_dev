import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  PopularCard({this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155.0,
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 7,
            spreadRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: cardChild,
    );
  }
}
