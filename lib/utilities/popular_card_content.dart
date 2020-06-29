import 'package:flutter/material.dart';
import 'package:food_dev/utilities/round_icon_button.dart';

class PopularCardContent extends StatelessWidget {
  PopularCardContent({this.foodImagePath, this.cardTitle, this.starRate, this.onPressed});
  final String foodImagePath;
  final String cardTitle;
  final String starRate;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text('Top of the week'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: RoundIconButton(
                    onPressed: onPressed,
                    icon: Icons.add_shopping_cart,
                    fillColor: Colors.orange,
                    width: 46.0,
                    height: 46.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 15.0,
                      ),
                      Text(starRate),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: 100.0,
          child: Image(
            image: AssetImage(foodImagePath),
          ),
        ),
      ],
    );
  }
}
