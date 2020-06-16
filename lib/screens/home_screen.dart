import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_dev/screens/category_screen.dart';
import 'package:food_dev/utilities/category_card.dart';
import 'package:food_dev/utilities/card_body.dart';
import 'package:food_dev/utilities/constants.dart';
import 'package:food_dev/utilities/popular_card.dart';
import 'package:food_dev/utilities/popular_card_content.dart';
import 'package:food_dev/utilities/round_icon_button.dart';
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food dev'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        actions: <Widget>[
          Badge(
            position: BadgePosition.topRight(top: 0, right: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child:
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Mubarak na Mairo'),
              accountEmail: Text('namairo123@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/weeknd.jpg'),
              ),
              decoration: BoxDecoration(color: Colors.orangeAccent),
            ),
            MenuListTitle(
              title: 'My cart',
              icon: Icons.shopping_cart,
              onTap: () {
                Navigator.pushNamed(context, 'cart');
              },
            ),
            MenuListTitle(
              title: 'Category',
              icon: Icons.arrow_right,
              onTap: () {
                Navigator.pushNamed(context, 'category');
              },
            ),
            MenuListTitle(
              title: 'Profile',
              icon: Icons.person,
            ),
            MenuListTitle(
                title: 'Logout',
                icon: Icons.exit_to_app,
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                }),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 8.0,
                  ),
                  child: Text(
                    'Food',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Delivery',
                    style: deliveryTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 10.0,
                    top: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                        ),
                        onPressed: null,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 26.0,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CategoryCard(
                        cardChild: CardBody(
                          icon: SvgPicture.asset(
                            'images/pizza.svg',
                            width: 40.0,
                            height: 40.0,
                          ),
                          cardTitle: 'Pizza',
                        ),
                      ),
                      CategoryCard(
                        cardChild: CardBody(
                          icon: SvgPicture.asset(
                            'images/seafood.svg',
                            width: 40.0,
                            height: 40.0,
                          ),
                          cardTitle: 'Sea food',
                        ),
                      ),
                      CategoryCard(
                        cardChild: CardBody(
                          icon: SvgPicture.asset(
                            'images/burger.svg',
                            width: 40.0,
                            height: 40.0,
                          ),
                          cardTitle: 'Hamburger',
                        ),
                      ),
                      CategoryCard(
                        cardChild: CardBody(
                          icon: SvgPicture.asset(
                            'images/ramen.svg',
                            width: 40.0,
                            height: 40.0,
                          ),
                          cardTitle: 'Fast food',
                        ),
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.arrowRight,
                        width: 46.0,
                        height: 46.0,
                        fillColor: Colors.blueGrey,
                        elevation: 0.6,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CategoryPage();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 20.0,
                  ),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopularCard(
                  cardChild: PopularCardContent(
                    foodImagePath: 'images/pizza.png',
                    cardTitle: 'Primavera Pizza',
                    starRate: '5.0',
                  ),
                ),
                PopularCard(
                  cardChild: PopularCardContent(
                    foodImagePath: 'images/cake.png',
                    cardTitle: 'Chocolate cake',
                    starRate: '4.9',
                  ),
                ),
                PopularCard(
                  cardChild: PopularCardContent(
                    foodImagePath: 'images/dish.png',
                    cardTitle: 'biryani dish',
                    starRate: '4.8',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuListTitle extends StatelessWidget {
  MenuListTitle({this.title, this.icon, this.onTap});
  final IconData icon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(
        icon,
      ),
      onTap: onTap,
    );
  }
}
