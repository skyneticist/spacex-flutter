// futureproof.dart

// name != null
//                   ? Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: <Widget>[
//                           Icon(
//                             FontAwesomeIcons.codiepie,
//                             color: Color.fromRGBO(74, 105, 189, 5),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 10.0),
//                             child: Text(
//                               name,
//                               textAlign: TextAlign.right,
//                               style: TextStyle(
//                                   color: Color.fromRGBO(229, 80, 57, 10)),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   : Container(),

//   success != null
//       ? Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: <Widget>[
//               Icon(
//                 Icons.update,
//                 color: Color.fromRGBO(120, 30, 89, 3),
//               ),
//               Text('Success: $success'),
//             ],
//           ),
//         )
//       : Container(),
//   flightNumber != null
//       ? Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: <Widget>[
//               Icon(
//                 Icons.airplanemode_active,
//                 color: Color.fromRGBO(120, 30, 89, 3),
//               ),
//               Text(flightNumber.toString()),
//             ],
//           ),
//         )
//       : Container(),
// details != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.details,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Expanded(
//               child: Text(
//                 details.toString(),
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 13.0,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             )
//           ],
//         ),
//       )
//     : Container(),
// capsules.length != 0
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.phonelink_lock,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Expanded(
//               child: Text(
//                 capsules.toString(),
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 13.0,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     : Container(),
// fairings != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.system_update_alt,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Expanded(
//               child: Text(
//                 fairings.toString(),
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 13.0,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     : Container(),
// autoUpdate != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.update,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Expanded(
//               child: Text(
//                 autoUpdate.toString(),
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 13.0,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     : Container(),
// cores != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.update,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Expanded(
//               child: Text(
//                 cores.toString(),
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 13.0,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     : Container(),
// crew.length != 0
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.camera,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(crew.toString()),
//           ],
//         ),
//       )
//     : Container(),
// staticFireDateUtc != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(Icons.date_range),
//             Text(staticFireDateUtc.toString()),
//           ],
//         ),
//       )
//     : Container(),
// // staticFireDateUnix != 0
// //     ? Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: Row(
// //           children: <Widget>[
// //             Icon(Icons.perm_data_setting),
// //             Text(staticFireDateUnix.toString()),
// //           ],
// //         ),
// //       )
// //     : Container(),

// launchLibraryId != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.pages,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(launchLibraryId.toString()),
//           ],
//         ),
//       )
//     : Container(),
// payloads != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             // Icon(
//             //   Icons.details,
//             //   color: Color.fromRGBO(120, 30, 89, 3),
//             // ),
//             Expanded(
//               child: Text(
//                 payloads.toString(),
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 13.0,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     : Container(),
// net != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.phonelink_lock,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(net.toString()),
//           ],
//         ),
//       )
//     : Container(),
// tbd != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.date_range,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(tbd.toString()),
//           ],
//         ),
//       )
//     : Container(),
// upcoming != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.perm_data_setting,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(upcoming.toString()),
//           ],
//         ),
//       )
//     : Container(),
// window != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.update,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(window.toString()),
//           ],
//         ),
//       )
//     : Container(),
// localDate != null
//     ? Row(
//         children: <Widget>[
//           Icon(
//             Icons.date_range,
//             color: Color.fromRGBO(120, 30, 89, 3),
//           ),
//           Text(localDate.toString()),
//         ],
//       )
//     : Container(),
// preciseDate != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.perm_data_setting,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(preciseDate),
//           ],
//         ),
//       )
//     : Container(),
// utcDate != null
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(Icons.update),
//             Text(utcDate.toString()),
//           ],
//         ),
//       )
//     : Container(),
// launchpad.length != 0
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.pages,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Text(launchpad),
//           ],
//         ),
//       )
//     : Container(),
// // links != null
// //     ? Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: Row(
// //           children: <Widget>[
// //             Icon(
// //               Icons.details,
// //               color: Color.fromRGBO(120, 30, 89, 3),
// //             ),
// //             Expanded(
// //               child: Text(
// //                 links,
// //                 overflow: TextOverflow.fade,
// //               ),
// //             ),
// //           ],
// //         ),
// //       )
// //     : Container(),
// ships.length != 0
//     ? Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.phonelink_lock,
//               color: Color.fromRGBO(120, 30, 89, 3),
//             ),
//             Expanded(
//               child: Text(
//                 ships.toString(),
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 13.0,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     : Container(),
