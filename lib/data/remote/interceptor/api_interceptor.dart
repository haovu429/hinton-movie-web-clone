import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../extension/session_manager.dart';

class ApiInterceptor extends InterceptorsWrapper {
  ApiInterceptor();
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll({
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods':
          'GET, POST, PUT, DELETE',
      'Access-Control-Allow-Headers':
          'X-Requested-With,Content-Type,Authorization',
      'Access-Control-Allow-Credentials': true
    });
    final token = await SessionManager.share.getToken();
    if (token != null) {
      options.headers.putIfAbsent('Authorization', () => 'Token $token');
    }
    if (kDebugMode) {
      log('Authorization token = $token');
      log('onRequest: ${options.uri}\n'
          'data=${options.data}\n'
          'method=${options.method}\n'
          'headers=${options.headers}\n'
          'queryParameters=${options.queryParameters}');
    }
    return handler.next(options);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (kDebugMode) {
      log('onRequest: ${response.realUri}');
      log('onResponse: $response');
    }
    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (kDebugMode) {
      log('onError: $err\n'
          'Response: ${err.response}');
    }
    return super.onError(err, handler);
  }
}
