import 'package:flutter/material.dart';
import 'package:food_dev/screens/cart_screen.dart';
import 'package:food_dev/screens/category_screen.dart';
import 'package:food_dev/screens/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SigInPage(),
      routes: <String, WidgetBuilder>{
        'cart':(BuildContext context) => CartPage(),
        'category': (BuildContext context) => CategoryPage(),
        'login': (BuildContext context) => SigInPage(),
      },
    );
  }
}
