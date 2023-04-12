import 'dart:io';

import 'package:admin_movie/data/remote/api/rest_api.dart';
import 'package:admin_movie/data/remote/data.dart';
import 'package:admin_movie/data/remote/data_provider/data_provider.dart';
import 'package:admin_movie/domain/model/login_response.dart';
import 'package:admin_movie/domain/model/movies_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:fimber_io/fimber_io.dart';

import '../interceptor/api_interceptor.dart';

@Singleton(as: DataProvider)
class DataProviderImpl extends DataProvider {
  late Dio dio;
  final Connectivity connectivity = Connectivity();
  late RestApiClient api;

  DataProviderImpl() {
    dio = Dio();
    dio.interceptors.add(ApiInterceptor());
    api = RestApiClient(dio, baseUrl: baseApiUrl);
     dio.interceptors
        .add(PrettyDioLogger(requestBody: true, requestHeader: true));

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          logPrint: (msg) =>
              Fimber.withTag("API", (log) => log.i(msg.toString()))));
    }
  }

  @override
  Future<LoginResponse> loginHandlerApi(String username, String password) {
    return api
        .postLoginUser(username: username, password: password)
        .then((value) => value);
  }

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getListMovie() {
    return api.getListMovie().then((value) => value);
  }

  @override
  Future<Movie> createMovie(
      {required String title,
      required String summary,
      required String showDate,
      required String showTime,
      required File image,
      required String closeDate,
      required String closeTime,
      required bool active}) {
    return api.createMovie(
        title: title,
        image: image,
        summary: summary,
        showDate: showDate,
        showTime: showTime,
        closeDate: closeDate,
        closeTime: closeTime,
        active: active);
  }

  @override
  Future<Movie> updateMovie(
      {required int id,
      String? title,
      String? summary,
      String? image,
      String? showDate,
      String? showTime,
      String? closeDate,
      String? closeTime,
      bool? active}) {
    return api.updateMovie(
        id: id,
        title: title,
        image: image,
        summary: summary,
        showDate: showDate,
        showTime: showTime,
        closeDate: closeDate,
        closeTime: closeTime,
        active: active);
  }
}
