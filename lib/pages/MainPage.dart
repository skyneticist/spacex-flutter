import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget mainPage() {
  return Center(
    child: ListView(
      children: <Widget>[
        mainPageItem(Icons.radio_button_checked, 'Turtle'),
        mainPageItem(Icons.ac_unit, 'toc'),
        mainPageItem(Icons.terrain, 'terrain'),
      ],
    ),
  );
}

Widget mainPageItem(IconData icon, String text) {
  return Card(
    child: Padding(
      padding: EdgeInsets.all(25.0),
      child: Row(
        children: <Widget>[
          Icon(icon),
          Text(text),
        ],
      ),
    ),
  );
}
