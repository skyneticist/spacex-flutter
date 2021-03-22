// import 'Launch.dart';

// class LaunchResponse {
//   List<Launch> results;

//   LaunchResponse({this.results});

//   LaunchResponse.fromJson(Map<String, dynamic> json) {
//     if (json.length > 1) {
//       results = new List<Launch>();

//       results.add(new Launch(
//         autoUpdate: json['autoUpdate'],
//         capsules: json['capsules'],
//         cores: json['cores'],
//         crew: json['crew'],
//         dateLocal: json['dateLocal'],
//         datePrecision: json['datePrecision'],
//         dateUtc: json['dateUtc'],
//         details: json['details'],
//         failures: json['failures'],
//         fairings: json['fairings'],
//         flightNumber: json['flightNumber'],
//         id: json['id'],
//         launchLibraryId: json['launchLibraryId'],
//         launchpad: json['launchpad'],
//         links: json['links'],
//         name: json['name'],
//         net: json['net'],
//         payloads: json['payloads'],
//         rocket: json['rocket'],
//         ships: json['ships'],
//         staticFireDateUnix: json['staticFireDateUnix'],
//         staticFireDateUtc: json['staticFireDateUtc'],
//         success: json['success'],
//         tbd: json['tbd'],
//         upcoming: json['upcoming'],
//         window: json['window'],
//       ));
//     }
//   }

//   Map<String, dynamic> toJson() => {
//         'results': results,
//       };
// }
