import 'package:flutter/material.dart';
// import 'package:oto/repositories/LaunchRepository.dart';

class LaunchDetailsPage extends StatefulWidget {
  // new up repository to access its methods
  // LaunchRepository _launchRepository = new LaunchRepository();
  dynamic detailsResponse;

  @override
  _LaunchDetailsPageState createState() => _LaunchDetailsPageState();
}

class _LaunchDetailsPageState extends State<LaunchDetailsPage> {
  // final detailsResponse = _launchRepository.getDetails();
  // @override
  // void initState() {
  //   // widget.detailsResponse = widget._launchRepository.fetchLaunchDetails();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(widget.detailsResponse),
          )
        ],
      ),
    );
  }
}
