import 'package:coding_challenge/models/models.dart';
import 'package:coding_challenge/services/networking.dart';
import 'package:coding_challenge/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final Color iconColor;

  const ReusableTextField({this.icon, this.hintText, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(16),
          prefixIcon: Icon(icon, color: iconColor)),
    );
  }
}

class VerticalListContainer extends StatefulWidget {
  @override
  _VerticalListContainerState createState() => _VerticalListContainerState();
}

class _VerticalListContainerState extends State<VerticalListContainer> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VerticalListModel>>(
      future: getVerticalModelData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);

        return snapshot.hasData
            ? VerticalList(demoModel: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}

class VerticalList extends StatefulWidget {
  final List<VerticalListModel> demoModel;

  VerticalList({Key key, this.demoModel}) : super(key: key);

  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.demoModel.length,
      itemBuilder: (BuildContext context, int index) {
        VerticalListModel model = widget.demoModel[index];
        return Container(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    model.imageURL,
                    height: 80.0,
                    width: 120.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(model.title, style: kLabelTextStyle),
                    SizedBox(height: 10),
                    Text('${model.total} insgesamt', style: kNumberTextStyle),
                    SizedBox(height: 2),
                    Text('${model.neighborhood} in deiner Nahe',
                        style: kNumberTextStyle),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        thickness: 2,
      ),
    );
  }
}

class HorizontalListContainer extends StatefulWidget {
  @override
  _HorizontalListContainerState createState() =>
      _HorizontalListContainerState();
}

class _HorizontalListContainerState extends State<HorizontalListContainer> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HorizontalListModel>>(
      future: getHorizontalModelData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);

        return snapshot.hasData
            ? HorizontalList(demoModel: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}

class HorizontalList extends StatefulWidget {
  final List<HorizontalListModel> demoModel;

  HorizontalList({Key key, this.demoModel}) : super(key: key);

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(top: 4, bottom: 4),
        itemCount: widget.demoModel.length,
        itemBuilder: (BuildContext context, int index) {
          HorizontalListModel model = widget.demoModel[index];
          return IconChip(
            cardChild: CardIcon(model.iconData, model.label),
            color: Color(0xFFF4F4F4),
          );
        });
  }
}

class IconChip extends StatelessWidget {
  final Widget cardChild;
  final Color color;

  IconChip({this.cardChild, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: cardChild,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: .5, color: Color(0xFFB7B7B7)),
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
    return Container(
      width: 105,
      child: Column(
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
      ),
    );
  }
}
