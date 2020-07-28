import 'package:flutter/material.dart';
import 'package:food_dev/utilities/added_cart_item.dart';

class CartPage extends StatefulWidget {
  static const String id = 'cart';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(7.0),
                  width: 40.0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
            AddedCartItem(
              imagePath: 'images/cake.png',
              itemTitle: 'Chocolate cake',
              itemPrice: '\$10.99',
            ),
            AddedCartItem(
              imagePath: 'images/pizza.png',
              itemTitle: 'Primavet Pizza',
              itemPrice: '\$7.99',
            ),
            AddedCartItem(
              imagePath: 'images/fast.png',
              itemTitle: 'Snacks',
              itemPrice: '\$10.99',
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17.0,
                top: 20.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 7.0),
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Add More Items',
                    style: TextStyle(
                      fontSize: 19.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


