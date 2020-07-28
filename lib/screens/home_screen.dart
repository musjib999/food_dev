import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_dev/screens/cart_screen.dart';
import 'package:food_dev/screens/category_screen.dart';
import 'package:food_dev/utilities/category_card.dart';
import 'package:food_dev/utilities/card_body.dart';
import 'package:food_dev/utilities/constants.dart';
import 'package:food_dev/utilities/popular_card.dart';
import 'package:food_dev/utilities/popular_card_content.dart';
import 'package:food_dev/utilities/round_icon_button.dart';
import 'package:badges/badges.dart';
import 'package:food_dev/utilities/meun_list_title.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  int counter = 2;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

    void getCurrentUser() async{
    final user = await _auth.currentUser();
    try {
      if (user != null) {
        loggedInUser = user;
        loggedInUser.email;
      }
    } catch (e) {
      print(e);
    }
  }

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
            animationType: BadgeAnimationType.scale,
            badgeContent: Text(
              '$counter',
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
                          onPressed: () {
                            Navigator.pushNamed(context, 'pizza');
                          },
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
                        elevation: 6.0,
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
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                  ),
                ),
                PopularCard(
                  cardChild: PopularCardContent(
                    foodImagePath: 'images/cake.png',
                    cardTitle: 'Chocolate cake',
                    starRate: '4.9',
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                  ),
                ),
                PopularCard(
                  cardChild: PopularCardContent(
                    foodImagePath: 'images/dish.png',
                    cardTitle: 'biryani dish',
                    starRate: '4.8',
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
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
