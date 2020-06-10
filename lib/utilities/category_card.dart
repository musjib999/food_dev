import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/3,
      height: 148.0,
      margin: EdgeInsets.only(left: 13.0, top: 9.0, right: 9.0, bottom: 9.0),
      child: cardChild,
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
    );
  }
}
