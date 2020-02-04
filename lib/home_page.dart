import 'package:flutter/material.dart';

import 'home/home_screen.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: HomeScreen(),
     ),
    );
  }
}
