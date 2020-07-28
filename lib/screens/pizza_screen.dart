import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_dev/screens/cart_screen.dart';
// import 'package:food_dev/screens/item_screen.dart';
import 'package:food_dev/utilities/pizza_card.dart';

class PizzaPage extends StatefulWidget {
  static const String id = 'pizza';
  @override
  _PizzaPageState createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  int addToCart = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        // leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,), onPressed: (){
        //   Navigator.pop(context);
        // },),
        title: Text('Pizzas'),
        centerTitle: true,
        actions: <Widget>[
          Badge(
            position: BadgePosition.topRight(top: 0, right: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.scale,
            badgeContent: Text(
              '$addToCart',
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CartPage();
                  }));
                }),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  PizzaCard(imagePath: 'images/pizza.png', onPressed: (){
                    Navigator.pushNamed(context, 'cart');
                  },),
                  PizzaCard(imagePath: 'images/pizza1.png'),
                ],
              ),
              Row(
                children: <Widget>[
                  PizzaCard(imagePath: 'images/pizza2.png'),
                  PizzaCard(imagePath: 'images/pizza3.png'),
                ],
              ),
              Row(
                children: <Widget>[
                  PizzaCard(imagePath: 'images/pizza4.png'),
                  PizzaCard(imagePath: 'images/pizza5.png'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
