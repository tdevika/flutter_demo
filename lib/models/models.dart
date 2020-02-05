import 'package:flutter/cupertino.dart';

class VerticalListModel {
  final String imageURL;
  final String title;
  final double total;
  final double neighborhood;

  VerticalListModel({this.imageURL, this.title, this.total, this.neighborhood});
}

class HorizontalListModel {
  final IconData iconData;
  final String label;

  HorizontalListModel({this.label, this.iconData});
}
