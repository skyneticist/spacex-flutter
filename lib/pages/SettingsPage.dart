import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return settingsPage();
  }

  Widget settingsPage() {
    return Center(
        child: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
          child: Card(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  settingsParameterCard(FontAwesomeIcons.audible, 'About'),
                  settingsParameterCard(Icons.archive, 'Download Data'),
                  settingsParameterCard(Icons.visibility, 'Theme'),
                  settingsParameterCard(
                      FontAwesomeIcons.githubAlt, 'Github page'),
                  settingsParameterCard(Icons.add_location, 'Location'),
                  settingsParameterCard(Icons.add_location, 'Location'),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget settingsParameterCard(IconData icon, String iconText) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 15.0, 15.0),
          child: Row(children: <Widget>[
            Icon(
              icon,
              size: 25.0,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Text(iconText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black)),
            )
          ]),
        ),
      ],
    );
  }
}
