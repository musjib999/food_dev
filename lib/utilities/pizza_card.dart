import 'package:flutter/material.dart';
import 'package:food_dev/utilities/round_icon_button.dart';

class PizzaCard extends StatelessWidget {
  PizzaCard({this.cardChild, this.onPressed, this.imagePath});
  final Widget cardChild;
  final Function onPressed;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 160.0,
        margin: EdgeInsets.only(left: 13.0, top: 9.0, right: 9.0, bottom: 9.0),
        padding: EdgeInsets.only(top: 6.0, right: 8.0, left: 6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 80.0,
              child: Image.asset(imagePath),
            ),
            Text(
              'Pizza Hot',
              style: TextStyle(
                fontSize: 19.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: null),
                RoundIconButton(
                  icon: Icons.add_shopping_cart,
                  fillColor: Colors.orangeAccent,
                  width: 40.0,
                  height: 40.0,
                  onPressed: onPressed,
                ),
                Text('\$2.99', style: TextStyle(color: Colors.red, fontSize: 16.0,),),
              ],
            ),
          ],
        ),
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
      ),
    );
  }
}
