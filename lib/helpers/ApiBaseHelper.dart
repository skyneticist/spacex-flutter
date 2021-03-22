import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ApiBaseHelper {
  final String _baseUrl = 'api.spacexdata.com';

  Future<List<dynamic>> get(String url) async {
    print('Api Get, url $url');
    var responseJson;
    try {
      final response = await http.get(Uri.https(_baseUrl, 'v4/' + url));
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw Exception(responseJson);
    }
    print('api get success!');
    return responseJson;
  }

  List<dynamic> _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        List<dynamic> responseJson = json.decode(response.body);
        print(responseJson);
        return responseJson;
      case 400:
        throw Exception(response);
      case 401:
        throw Exception(response.statusCode);
      case 403:
        throw Exception('unauthorized');
      case 500:
      default:
        throw Exception(response);
    }
  }
}
