import 'package:coding_challenge/card_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CardList cardList = CardList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            /*Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'HOME',
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
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
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Schnellzugriff',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),*/
            Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                  color: Colors.indigo,
                  margin: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Icon(
                      FontAwesomeIcons.car,
                      size: 20.0,
                      color: Colors.black,
                    ),
                  )),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
                      child: Container(
                        width: 120.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 3.0),
                        child: HorizontalCardList(
                            cardChild: CardIcon(
                                FontAwesomeIcons.car, 'Auto & Zweired'),
                            color: Color(0xFFF4F4F4)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
                      child: Container(
                        width: 120.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 3.0),
                        child: HorizontalCardList(
                            cardChild: CardIcon(
                                FontAwesomeIcons.car, 'Auto & Zweired'),
                            color: Color(0xFFF4F4F4)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
                      child: Container(
                        width: 120.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 3.0),
                        child: HorizontalCardList(
                            cardChild: CardIcon(
                                FontAwesomeIcons.car, 'Auto & Zweired'),
                            color: Color(0xFFF4F4F4)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
                      child: Container(
                        width: 120.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 3.0),
                        child: HorizontalCardList(
                            cardChild: CardIcon(
                                FontAwesomeIcons.car, 'Auto & Zweired'),
                            color: Color(0xFFF4F4F4)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 120.0,
                margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 3.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        width: 3,
                        color: Colors.green,
                        style: BorderStyle.solid)),
                child: Icon(
                  FontAwesomeIcons.car,
                  size: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        /* Align(
                alignment: Alignment.bottomLeft,

                child: Text(
                  'Häufig aufgerufen',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),
        ),*/
      ),
    );
  }
}

class HorizontalCardList extends StatelessWidget {
  final Widget cardChild;
  final Color color;

  HorizontalCardList({this.cardChild, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class CardIcon extends StatelessWidget {
  final IconData iconData;
  final String label;

  CardIcon(this.iconData, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 20.0,
          color: Colors.black,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 10.0, color: Color(0xFF90909A)),
        )
      ],
    );
  }
}
