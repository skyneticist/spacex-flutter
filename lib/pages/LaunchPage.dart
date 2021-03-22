import 'package:flutter/material.dart';
import 'package:oto/models/Launch.dart';
import 'package:oto/repositories/LaunchRepository.dart';
import 'package:oto/Helpers/LaunchCard.dart';

class LaunchPage extends StatefulWidget {
  LaunchPage({
    key,
  }) : super(key: key);

  final LaunchRepository _launchRepository = new LaunchRepository();

  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  Future<List<Launch>> launchResponse;
  dynamic itemAsJson;
  dynamic launchCard;

  @override
  void initState() {
    super.initState();
    launchResponse = widget._launchRepository.fetchLaunches();
  }

  @override
  Widget build(BuildContext context) {
    return launchPage(launchResponse);
  }

  Widget launchPage(Future<List<Launch>> launches) {
    return Center(
        child: FutureBuilder<List<dynamic>>(
      future: launches,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  // var item = snapshot.data.atElement(index);
                  var item = snapshot.hasData
                      ? snapshot.data[index]
                      : 'NO DATA FROM SNAPSHOT $snapshot[$index]';

                  return LaunchCard(null, item);
                },
              )
            : Center(
                child: launchLoadingPage(),
              );
      },
    ));
  }
}

launchLoadingPage() {
  return Center(
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 20.0),
          child: Image.network(
              'https://media0.giphy.com/media/l4pTldWDec8WamJUc/giphy.gif'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 15.0),
          child: CircularProgressIndicator(),
        ),
      ],
    ),
  );
}
