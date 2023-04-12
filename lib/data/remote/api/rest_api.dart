import 'dart:io';

import 'package:admin_movie/data/remote/api/api_path.dart';
import 'package:admin_movie/domain/model/login_response.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../../../domain/model/movies_response.dart';
import '../data.dart';

part 'rest_api.g.dart';

@RestApi(baseUrl: baseApiUrl)
abstract class RestApiClient {
  factory RestApiClient(Dio dio, {String baseUrl}) = _RestApiClient;

  @POST(ApiPath.login)
  Future<LoginResponse> postLoginUser(
      {@Part(name: "username") required String username,
      @Part(name: "password") required String password});
  @GET(ApiPath.listMovie)
  Future<List<Movie>> getListMovie();

  @POST(ApiPath.movie)
  Future<Movie> createMovie({
    @Part(name: 'title') required String title,
    @Part(name: 'description') required String summary,
    @Part(name: 'image') required File image,
    @Part(name: 'show_date') required String showDate,
    @Part(name: 'time_show_date') required String showTime,
    @Part(name: 'close_date') required String closeDate,
    @Part(name: 'time_close_date') required String closeTime,
    @Part(name: 'active') required bool active,
    @Part(name: 'notification') String? notification,
  });
  @PUT(ApiPath.updateMovie)
  Future<Movie> updateMovie({
    @Path(ApiPath.id) required int id,
    @Part(name: 'title') String? title,
    @Part(name: 'description') String? summary,
    @Part(name: 'image') String? image,
    @Part(name: 'show_date') String? showDate,
    @Part(name: 'time_show_date') String? showTime,
    @Part(name: 'close_date') String? closeDate,
    @Part(name: 'time_close_date') String? closeTime,
    @Part(name: 'active') bool? active,
    @Part(name: 'notification') String? notification,
  });
}
