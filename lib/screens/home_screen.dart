import 'package:coding_challenge/component/components.dart';
import 'package:coding_challenge/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var isHomeTabPressed;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'HOME',
                    style: kHomeTextStyle,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profilepic.jpeg'),
                    radius: 24.0,
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 48.0,
                child: ReusableTextField(
                  icon: Icons.search,
                  hintText: 'Was suchst du?',
                  iconColor: Colors.grey,
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Schnellzugriff',
                    style: kHeaderTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: HorizontalListContainer(),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Häufig aufgerufen',
                    style: kHeaderTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: VerticalListContainer(),
              ),
              Expanded(
                child: Scaffold(
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerDocked,
                  floatingActionButton: FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  bottomNavigationBar: BottomAppBar(
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.home,
                              ),
                              color: Colors.black,
                              onPressed: () {},
                            ),
                            Text('Home',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.menu,
                              ),
                              color: Colors.grey,
                              onPressed: () {},
                            ),
                            Text('Gewerke',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.favorite,
                              ),
                              color: Colors.grey,
                              onPressed: () {},
                            ),
                            Text('Favoriten',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                size: 24,
                              ),
                              color: Colors.grey,
                              onPressed: () {},
                            ),
                            Text('Chat', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    shape: CircularNotchedRectangle(),
                    color: Colors.transparent,
                    notchMargin: 4.0,
                    elevation: 0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
