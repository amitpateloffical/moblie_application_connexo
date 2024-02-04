import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../helpers/db_helper.dart';
import '../routes/navigation_service.dart';
import 'api_request.dart';
import 'app_exceptions.dart';

class BaseClient {
  static BuildContext? context = NavigationService.navigatorKey.currentContext;
  static final Dio _dio = Dio();

  static Future<dynamic> handleRequest(ApiRequest apiRequest) async {
    _dio.options.followRedirects = false;
    _dio.options.connectTimeout = const Duration(seconds: 20);
    _dio.interceptors.clear();
    _dio.interceptors.add(AppExceptions());

/*    bool isOnline = await hasNetwork();
    if (!isOnline) {
       DialogHelper.showToast(message: 'No Internet, Please try later!');
       Navigator.push(context!, MaterialPageRoute(builder: (context) => NoInternetPage(
         callBack: (apiRequest) {
           handleRequest(apiRequest);
         },
         apiRequest: apiRequest,
       )));

      return;
    }*/

    Map<String, dynamic> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    if (apiRequest.headers != null) {
      headers.addAll(apiRequest.headers!);
    }

    if (DbHelper.getToken() != null) {
      headers.putIfAbsent("auth_key", () => '${DbHelper.getToken()}');
    }

    switch (apiRequest.requestType) {
      case RequestType.POST:
        var res = await _dio.post(apiRequest.url,
            data: FormData.fromMap(apiRequest.body ?? {}),
            options: Options(
              headers: headers,
            ));
        return res.data;
      case RequestType.GET:
        var response = await _dio.get(apiRequest.url,
            options: Options(
              headers: headers,
            ));

        return response.data;
      case RequestType.DELETE:
        var response = await _dio.delete(apiRequest.url,
            data: apiRequest.body,
            options: Options(
              headers: headers,
            ));
        return response.data;

      case RequestType.PUT:
        var response = await _dio.put(apiRequest.url,
            data: apiRequest.body,
            options: Options(
              headers: headers,
            ));
        if (kDebugMode) {
          print(response.data);
        }
        return response.data;
    }
  }

  static Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  static Future<MultipartFile> getMultipartImage({required String path}) async {
    return await MultipartFile.fromFile(path, filename: path.split('/').last);
  }

  static Future<MultipartFile> getMultipartWeb(
      {required Uint8List path}) async {
    return await MultipartFile.fromBytes(path, filename: "profile_pic");
  }
}
