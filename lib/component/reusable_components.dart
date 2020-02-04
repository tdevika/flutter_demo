import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;

  const ReusableTextField({this.icon, this.hintText});

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
          prefixIcon: Icon(icon, color: Colors.black)),
    );
  }
}



class ListDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('images/a.png',
                    height: 80.0,
                    width: 120.0,
                      fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Column(

               crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Title'),
                      SizedBox(height: 8.0),
                      Text('Secondary Text'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 2,),
      ),
    );
  }
}

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

