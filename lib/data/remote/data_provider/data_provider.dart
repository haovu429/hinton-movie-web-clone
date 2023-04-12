import 'dart:io';

import 'package:admin_movie/domain/model/login_response.dart';

import '../../../domain/model/movies_response.dart';

abstract class DataProvider {
  Future<void> init();
  Future<LoginResponse> loginHandlerApi(String username, String password);
  Future<List<Movie>> getListMovie();
  Future<Movie> createMovie(
      {required String title,
      required String summary,
      required File image,
      required String showDate,
      required String showTime,
      required String closeDate,
      required String closeTime,
      required bool active});
  Future<Movie> updateMovie(
      {required int id,
      String? title,
      String? summary,
      String? image,
      String? showDate,
      String? showTime,
      String? closeDate,
      String? closeTime,
      bool? active});
}
