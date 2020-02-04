import 'package:coding_challenge/component/reusable_components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.close,
                  size: 35.0,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 5.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 38.0,
                        fontFamily: 'MontserratAlternates',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 25.0),
                  child: Text(
                    'Melde dich mit deiner Kennung an',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'SourceSansPro',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                  height: 48.0,
                  child:
                      ReusableTextField(icon: Icons.email, hintText: 'Email')),
              SizedBox(height: 20.0),
              Expanded(
                flex: 6,
                child: Container(
                    height: 48.0,
                    child: ReusableTextField(
                        icon: Icons.lock, hintText: 'Password')),
              ),
              Expanded(
                flex: 1,
                child: ButtonTheme(
                  height: 45.0,
                  child: RaisedButton(
                    color: Colors.black,
                    child: new Text(
                      "Einloggen",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 25.0),
                    child: Text(
                      'Melde dich mit deiner Kennung an',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'SourceSansPro',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
