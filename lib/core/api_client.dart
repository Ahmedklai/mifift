import 'dart:convert';
import 'dart:html';
import 'api_constants.dart';
import 'package:http/http.dart';

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  dynamic post(String path, Map<String, dynamic> body,
      {Map<dynamic, dynamic> params}) async {
    final dynamic response = await _client.post(
      getPath(path, params),
      body: body,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  dynamic get(String path) async {
    final response = await _client.get('${ApiConstants.BASE_URL}$path',
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == HttpStatus.ok) {
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  String getPath(String path, Map<dynamic, dynamic> params) {
    var paramsString = '';
    if (params?.isNotEmpty ?? false) {
      params.forEach((dynamic key, dynamic value) {
        paramsString += '&$key=$value';
      });
    }

    return '${ApiConstants.BASE_URL}$path?$paramsString';
  }
}
