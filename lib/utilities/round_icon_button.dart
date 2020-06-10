import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.fillColor, this.width, this.height, this.onPressed, this.elevation});
  final IconData icon;
  final Color fillColor;
  final double width;
  final double height;
  final Function onPressed;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20.0,
      ),
      shape: CircleBorder(),
      fillColor: fillColor,
      elevation: 0.0,
    );
  }
}
