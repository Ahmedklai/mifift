// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

// import 'api_constants.dart';
// import 'package:http/http.dart';

// class ApiClient {
//   final Client _client;

//   ApiClient(this._client);

//   dynamic post({@required String path, 
//   @required String body,
//   Map<dynamic, dynamic> params}) async {
//     try {
//       logger.w(body);
//       final dynamic response = await _client.post(
//       getPath(path, params),
//       body: body,
//       headers: {
//         'Content-Type': 'application/json',
//       },
//     );
//     if (response.statusCode == 200) {
//       logger.i(response.body);
//       return json.decode(response.body);
//     } else {
//       logger.e(response.reasonPhrase);
//       throw Exception(response.reasonPhrase);
//     }
//     } catch (e) {
//       logger.e(e);
//       throw Exception(e.toString());
//     }
    
//   }

//   dynamic get({@required String path}) async {
//     final response = await _client.get('${ApiConstants.BASE_URL}$path',
//         headers: {'Content-Type': 'application/json'});
//     if (response.statusCode == HttpStatus.ok) {
//       return json.decode(response.body);
//     } else {
//       throw Exception(response.reasonPhrase);
//     }
//   }

//   String getPath(String path, Map<dynamic, dynamic> params) {
//     var paramsString = '';
//     if (params?.isNotEmpty ?? false) {
//       params.forEach((dynamic key, dynamic value) {
//         paramsString += '&$key=$value';
//       });
//     }

//     // return '${ApiConstants.BASE_URL}$path?$paramsString';
//     logger.w('${ApiConstants.BASE_URL}$path');
//     return '${ApiConstants.BASE_URL}$path' ;
//   }
// }
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class ApiClient {
  final String baseUrl = "http://192.168.1.173:8080/";
   final logger = Logger();
   Dio _dio;

  final List<Interceptor> interceptors;

  ApiClient(
    Dio dio, {
    this.interceptors,
  }) {
    _dio = dio ?? Dio();
    _dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'};
    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors);
    }
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: false,
          responseHeader: false,
          request: false,
          requestBody: false));
    }
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  }) async {
    try {
      var response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      logger.i(response.data);
      return response.data;
    } on SocketException catch (e) {
      logger.e(e.toString(),"socket exception");
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      logger.e("unable to process data");
      throw FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> post(
    String uri, {
    data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    try {
      var response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      logger.i(response.data);
      return response.data;
    } on FormatException catch (_) {
      logger.e("unable to process data");
      throw FormatException("Unable to process the data");
    } catch (e) {
      logger.e(e);
      throw e;
    }
  }
}