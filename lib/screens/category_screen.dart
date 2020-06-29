import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
              child: Text(
                'What do you like?',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
              child: Text('Choose a category'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  FoodCategory(
                    svgPath: 'images/pizza.svg',
                    title: 'Pizza',
                  ),
                  FoodCategory(
                    svgPath: 'images/salad.svg',
                    title: 'Veg',
                  ),
                  FoodCategory(
                    svgPath: 'images/chicken-leg.svg',
                    title: 'Non veg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: <Widget>[
                  FoodCategory(
                    svgPath: 'images/french-fries.svg',
                    title: 'Snacks',
                  ),
                  FoodCategory(
                    svgPath: 'images/burger.svg',
                    title: 'Burger',
                  ),
                  FoodCategory(
                    svgPath: 'images/popsicle.svg',
                    title: 'Ice-cream',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: <Widget>[
                  FoodCategory(
                    svgPath: 'images/cocktail.svg',
                    title: 'Cool drinks',
                  ),
                  FoodCategory(
                    svgPath: 'images/ramen.svg',
                    title: 'Fast food',
                  ),
                  FoodCategory(
                    svgPath: 'images/seafood.svg',
                    title: 'Sea food',
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

class FoodCategory extends StatelessWidget {
  FoodCategory({this.svgPath, this.title});
  final String svgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
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
      ),
    );
  }
}
