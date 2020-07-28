import 'package:flutter/material.dart';
import 'package:food_dev/screens/home_screen.dart';
import 'package:food_dev/screens/signin.dart';
import 'package:food_dev/utilities/inputfield.dart';
import 'package:food_dev/utilities/authbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'signup';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  String cPassword;
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Sign up',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InputFeild(
                  onChanged: (value){
                    name = value;
                  },
                  hintText: 'Name',
                  secureText: false,
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InputFeild(
                  onChanged: (value){
                    email = value;
                  },
                  hintText: 'Email',
                  secureText: false,
                  prefixIcon: Icon(
                    Icons.mail,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InputFeild(
                  onChanged: (value){
                    password = value;
                  },
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
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InputFeild(
                  onChanged: (value){
                    cPassword = value;
                  },
                  hintText: 'Confirm Password',
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
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return HomePage();
                    }),
                  );
                },
                child: GestureDetector(child: AuthButtons(title: 'Register'), onTap: ()async{
                  try{
                    final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                    if(newUser!= null){
                      Navigator.pushNamed(context, HomePage.id);
                    }
                  }catch(e){
                    print(e);
                  }
                },),
              ),
              SizedBox(
                height: 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Have an account?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return SigInPage();
                        }),
                      );
                    },
                    child: Text(
                      'login',
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
