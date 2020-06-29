import 'package:flutter/material.dart';
import 'package:food_dev/utilities/round_icon_button.dart';

class CardBody extends StatelessWidget {
  CardBody({
    this.icon,
    this.cardTitle,
    this.onPressed
  });
  final Widget icon;
  final String cardTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(margin: EdgeInsets.only(top: 8.0), child: icon),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cardTitle,
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
        ),
        RoundIconButton(
          icon: Icons.arrow_right,
          fillColor: Colors.orange,
          width: 36.0,
          height: 36.0,
          onPressed: onPressed,
        ),
      ],
    );
  }
}

