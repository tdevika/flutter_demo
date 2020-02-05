import 'package:coding_challenge/component/reusable_components.dart';
import 'package:coding_challenge/home/home_screen.dart';
import 'package:coding_challenge/utilities/constants.dart';
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
        child: loginBody(),
      ),
    );
  }

  loginBody() => Container(
        margin: EdgeInsets.only(left: kBorderMargin, right: kBorderMargin),
        child: Column(
          children: <Widget>[
            loginFields(),
            loginFooter(),
          ],
        ),
      );

  loginFooter() => Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              height: kButtonHeight,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                },
                color: Colors.black,
                child: new Text(
                  "Einloggen",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 25.0),
                child: Text(
                  'Registrieren',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SourceSansPro',
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      );

  loginFields() => Expanded(
        flex: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.close,
                color: Colors.black,
                size: 35.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Login',
              style: TextStyle(
                  fontSize: 38.0,
                  fontFamily: 'MontserratAlternates',
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Melde dich mit deiner Kennung an',
              style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'SourceSansPro',
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
                height: 48.0,
                child: ReusableTextField(
                  icon: Icons.email,
                  hintText: 'Email',
                  iconColor: Colors.black,
                )),
            SizedBox(
              height: 20.0,
            ),
            Container(
                height: 48.0,
                child: ReusableTextField(
                  icon: Icons.lock,
                  hintText: 'Password',
                  iconColor: Colors.black,
                )),
          ],
        ),
      );
}
