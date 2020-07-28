import 'package:flutter/material.dart';
import 'package:food_dev/screens/cart_screen.dart';
import 'package:food_dev/screens/category_screen.dart';
import 'package:food_dev/screens/pizza_screen.dart';
import 'package:food_dev/screens/signin.dart';
import 'package:food_dev/screens/signup.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SigInPage(),
      initialRoute: SigInPage.id,
      routes: <String, WidgetBuilder>{
        CartPage.id:(BuildContext context) => CartPage(),
        CategoryPage.id: (BuildContext context) => CategoryPage(),
        SigInPage.id: (BuildContext context) => SigInPage(),
        SignUpPage.id: (BuildContext context)=> SignUpPage(),
        PizzaPage.id: (BuildContext context) => PizzaPage(),
        HomePage.id:(BuildContext context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
