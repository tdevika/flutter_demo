import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home/home_screen.dart';
class CardList{
  List<Widget> cardWigets=[
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
  ];
}
