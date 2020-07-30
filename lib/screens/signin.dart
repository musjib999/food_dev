import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_dev/screens/home_screen.dart';
import 'package:food_dev/screens/signup.dart';
import 'package:food_dev/utilities/authbutton.dart';
import 'package:food_dev/utilities/inputfield.dart';
import 'package:food_dev/utilities/round_icon_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class SigInPage extends StatefulWidget {
  static const String id = 'login';
  @override
  _SigInPageState createState() => _SigInPageState();
}

class _SigInPageState extends State<SigInPage> {
  final _auth = FirebaseAuth.instance;
  bool spiner = false;

  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: spiner,
              child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 140.0,
                  padding: EdgeInsets.all(17.0),
                  margin: EdgeInsets.only(
                    top: 9.0,
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage('images/fast.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 43.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InputFeild(
                    hintText: 'Email',
                    secureText: false,
                    prefixIcon: Icon(
                      Icons.mail,
                    ),
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InputFeild(
                    hintText: 'Password',
                    secureText: true,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                      ),
                      onPressed: null,
                    ),
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () async{
                    setState(() {
                      spiner = true;
                    });
                    final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                    if(user != null){
                      Navigator.pushNamed(context, HomePage.id);
                    }
                    setState(() {
                      spiner = false;
                    });
                  },
                  child: AuthButtons(
                    title: 'LOGIN',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return SignUpPage();
                      }),
                    );
                  },
                  child: AuthButtons(
                    title: 'REGISTER',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: RoundIconButton(
                        icon: FontAwesomeIcons.google,
                        fillColor: Colors.red,
                        width: 50.0,
                        height: 50.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: RoundIconButton(
                        icon: FontAwesomeIcons.facebookF,
                        fillColor: Colors.blueAccent,
                        width: 50.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
