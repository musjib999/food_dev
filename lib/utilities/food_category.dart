import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodCategory extends StatelessWidget {
  FoodCategory({this.svgPath, this.title});
  final String svgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 12.0, top: 15.0, bottom: 15.0, right: 12.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: SvgPicture.asset(
            svgPath,
            width: 40.0,
            height: 40.0,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
