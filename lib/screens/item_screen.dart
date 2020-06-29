import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_dev/utilities/authbutton.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int addToCart = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
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
                  Container(
                    margin: EdgeInsets.all(7.0),
                    width: 36.0,
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.yellow[700],
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Primavera Pizza',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    Text('Mixed pizza with cheese'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.pepperHot,
                          color: Colors.red,
                        ),
                        Text('78 calaries'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 49.0,
                  vertical: 8.0,
                ),
                child: Image(
                  image: AssetImage('images/pizza.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: FoodSizeButton(
                        size: 'S',
                      ),
                    ),
                    GestureDetector(
                      child: FoodSizeButton(
                        size: 'M',
                      ),
                    ),
                    GestureDetector(
                      child: FoodSizeButton(
                        size: 'L',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Price'),
                        Text(
                          '\$ 7.90',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Icon(
                        FontAwesomeIcons.shoppingBag,
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: AuthButtons(title: 'Add to cart'),
                onTap: () {
                  Navigator.pop(context, addToCart++);
                  print(addToCart);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
