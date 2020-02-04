import 'package:coding_challenge/component/reusable_components.dart';
import 'package:coding_challenge/home_page.dart';
import 'package:flutter/material.dart';

class LoginTwoPage extends StatefulWidget {
  @override
  _LoginTwoPageState createState() => _LoginTwoPageState();
}

class _LoginTwoPageState extends State<LoginTwoPage> {
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
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
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
              height: 45.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
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
                child: ReusableTextField(icon: Icons.email, hintText: 'Email')),
            SizedBox(
              height: 20.0,
            ),
            Container(
                height: 48.0,
                child:
                    ReusableTextField(icon: Icons.lock, hintText: 'Password')),
          ],
        ),
      );
}
