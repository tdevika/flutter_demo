import 'package:coding_challenge/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<List<VerticalListModel>> getVerticalList() async {
  return [
    VerticalListModel(
      title: 'Auto & Zweirad',
      total: 44.590,
      neighborhood: 39,
      imageURL: 'images/a.png',
    ),
    VerticalListModel(
      title: 'Gastronomie',
      total: 44.590,
      neighborhood: 39,
      imageURL: 'images/b.png',
    ),
    VerticalListModel(
      title: 'Ausgehen',
      total: 44.590,
      neighborhood: 39,
      imageURL: 'images/c.png',
    ),
  ];
}

Future<List<HorizontalListModel>> getHorizontalList() async {
  return [
    HorizontalListModel(
      label: 'Auto & Zweirad',
      iconData: FontAwesomeIcons.car,
    ),
    HorizontalListModel(
      label: 'Handwork',
      iconData: FontAwesomeIcons.wrench,
    ),
    HorizontalListModel(
      label: 'Geld & Recht',
      iconData: FontAwesomeIcons.creditCard,
    ),
    HorizontalListModel(
      label: 'Geld & Recht',
      iconData: FontAwesomeIcons.creditCard,
    ),
  ];
}
