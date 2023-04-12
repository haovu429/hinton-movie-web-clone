import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'api_path.dart';
import 'dio_provider.dart';
import 'error_from_server.dart';

enum MethodApi {
  get,
  post,
  put,
  delete }

@injectable
class APIDataStore {
  Dio dio = DioProvider.instance();

  APIDataStore();

  // Public Request API
  Future<dynamic> requestAPI(String apiURL,
      MethodApi method,
      {Map<String, dynamic>? params,
      Map<String, dynamic>? body,
      FormData? formData,
      String? customUrl}) async {
    dynamic bodyRequest;
    if (body != null) {
      bodyRequest = jsonEncode(body);
    } else if (formData != null) {
      bodyRequest = formData;
    }
    try {
      late Response response;
      switch (method) {
        case MethodApi.get:
          response =
              await dio.get(customUrl ?? apiURL, queryParameters: params);
          break;
        case MethodApi.post:
          response = await dio.post(apiURL,
              queryParameters: params, data: bodyRequest);
          break;
        case MethodApi.put:
          response = await dio.put(apiURL,
              queryParameters: params, data: bodyRequest);
          break;
        case MethodApi.delete:
          response = await dio.delete(apiURL,
              queryParameters: params, data: bodyRequest);
          break;
        default:
          break;
      }

      if (response.data['error'] == true) {
        // if (response.data['MessageCode'] == 1111) {
        //   throw ErrorFromServer.unAuthorize();
        // }
        throw ErrorFromServer.unknownError();
      }
      return response.data;
    } on SocketException catch (_) {
      throw ErrorFromServer.noInternetConnection();
    } on DioError catch (e) {
      if (e.response != null) {
        throw ErrorFromServer.fromJson(e.response!.data);
      } else {
        throw ErrorFromServer.unknownError();
      }
    }
  }
}
