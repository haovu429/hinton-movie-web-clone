import 'package:dio/dio.dart' as dio;

extension RequestOptionsExt on dio.RequestOptions {
  dio.Options toOptions() {
    return dio.Options(
        method: method,
        headers: headers,
        maxRedirects: maxRedirects,
        receiveTimeout: receiveTimeout,
        contentType: contentType,
        extra: extra,
        followRedirects: followRedirects,
        listFormat: listFormat,
        receiveDataWhenStatusError: receiveDataWhenStatusError,
        responseType: responseType,
        sendTimeout: sendTimeout,
        validateStatus: validateStatus);
  }
}
