import 'package:coding_challenge/component/reusable_components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: HorizontalCardList(
                    cardChild: CardIcon(FontAwesomeIcons.car, 'Auto & Zweired'),
                    color: Color(0xFFF4F4F4)),
              ),
              Expanded(
                child: HorizontalCardList(
                    cardChild: CardIcon(FontAwesomeIcons.car, 'male'),
                    color: Color(0xFFF4F4F4)),
              ),
              Expanded(
                child: HorizontalCardList(
                    cardChild: CardIcon(FontAwesomeIcons.car, 'male'),
                    color: Color(0xFFF4F4F4)),
              ),
            ],
          ),
        ],
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
      height: 100,
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
