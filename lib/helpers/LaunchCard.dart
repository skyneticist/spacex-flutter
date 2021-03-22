import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oto/models/Launch.dart';

class LaunchCard extends StatefulWidget {
  final dynamic item;
  LaunchCard(key, this.item) : super(key: key);

  @override
  _LaunchCardState createState() => _LaunchCardState();
}

class _LaunchCardState extends State<LaunchCard> {
  String itemAsString;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 180.0,
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
      child: Stack(
        children: <Widget>[
          launchContent(widget.item),
          launchThumbnail(),
        ],
      ),
    );
  }

  Widget launchThumbnail() {
    return Container(
      height: 118.0,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      alignment: FractionalOffset.centerLeft,
      child: Image.asset("lib/images/spacef9.png"),
    );
  }

  Widget launchContent(dynamic item) {
    itemAsString = json.encode(item);

    dynamic rocketNames = {
      "5e9d0d95eda69955f709d1eb": "Falcon 1",
      "5e9d0d95eda69973a809d1ec": "Falcon 9",
      "5e9d0d95eda69974db09d1ed": "Falcon Heavy",
      "5e9d0d96eda699382d09d1ee": "Starship"
    };

    Launch launch = item as Launch;
    String id = launch.id;
    Object fairings = launch.fairings.toString();
    bool autoUpdate = launch.autoUpdate;
    String rocket = launch.rocket;
    bool success = launch.success;
    String details = launch.details;
    List<dynamic> capsules = launch.capsules;
    List<dynamic> cores = launch.cores.toList();
    List<dynamic> crew = launch.crew.toList();
    int flightNumber = launch.flightNumber;
    String localDate = launch.dateLocal;
    String preciseDate = launch.datePrecision.toString();
    String utcDate = launch.dateUtc;
    int staticFireDateUnix = launch.staticFireDateUnix;
    String staticFireDateUtc = launch.staticFireDateUtc;
    String launchpad = launch.launchpad;
    String launchLibraryId = launch.launchLibraryId;
    Object links = launch.links.toString();
    String name = launch.name;
    bool net = launch.net;
    List<dynamic> payloads = launch.payloads.toList();
    List<dynamic> ships = launch.ships.toList();
    bool tbd = launch.tbd;
    bool upcoming = launch.upcoming;
    int window = launch.window;

    Widget cardContent(Column column) {
      return Container(
        margin: EdgeInsets.fromLTRB(75.0, 16.0, 16.0, 0.0),
        constraints: BoxConstraints.expand(),
        child: column,
      );
    }

    return Container(
        height: 175.0,
        margin: EdgeInsets.only(left: 46.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(230, 211, 169, 45.0),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 20.0,
                offset: Offset(0.0, 20.0)),
          ],
        ),
        child: cardContent(
          Column(
            children: <Widget>[
              name != null
                  ? Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.hatCowboySide,
                            color: Color.fromRGBO(183, 61, 24, 5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text(
                              name,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(127, 80, 57, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0),
                height: 3.0,
                width: 100.0,
                color: Color.fromRGBO(56, 173, 169, 50.0),
              ),
              rocket != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.rocket,
                            color: Color.fromRGBO(74, 105, 189, 5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              rocketNames[rocket],
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(229, 80, 57, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(),
              staticFireDateUtc != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.calendarAlt,
                            color: Color.fromRGBO(74, 105, 189, 5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              formatDate(staticFireDateUtc),
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(229, 80, 57, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              success != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.handPeace,
                            color: Color.fromRGBO(74, 105, 189, 5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              '${success ? 'Successful' : 'Failure'}',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromRGBO(229, 80, 57, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ));
  }

  formatDate(String datetime) {
    var formattedDate = datetime.substring(0, 10);

    return formattedDate;
  }
}

// var contentColumn =
