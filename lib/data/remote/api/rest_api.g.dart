// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestApiClient implements RestApiClient {
  _RestApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://stephenkiendinh.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LoginResponse> postLoginUser({
    required username,
    required password,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'username',
      username,
    ));
    _data.fields.add(MapEntry(
      'password',
      password,
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LoginResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/account/login/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Movie>> getListMovie() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<Movie>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/movie/stream/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Movie.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Movie> createMovie({
    required title,
    required summary,
    required image,
    required showDate,
    required showTime,
    required closeDate,
    required closeTime,
    required active,
    notification,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'title',
      title,
    ));
    _data.fields.add(MapEntry(
      'description',
      summary,
    ));
    _data.files.add(MapEntry(
      'image',
      MultipartFile.fromFileSync(
        image.path,
        filename: image.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.fields.add(MapEntry(
      'show_date',
      showDate,
    ));
    _data.fields.add(MapEntry(
      'time_show_date',
      showTime,
    ));
    _data.fields.add(MapEntry(
      'close_date',
      closeDate,
    ));
    _data.fields.add(MapEntry(
      'time_close_date',
      closeTime,
    ));
    _data.fields.add(MapEntry(
      'active',
      active.toString(),
    ));
    if (notification != null) {
      _data.fields.add(MapEntry(
        'notification',
        notification,
      ));
    }
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Movie>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/movie/stream/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Movie.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Movie> updateMovie({
    required id,
    title,
    summary,
    image,
    showDate,
    showTime,
    closeDate,
    closeTime,
    active,
    notification,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (title != null) {
      _data.fields.add(MapEntry(
        'title',
        title,
      ));
    }
    if (summary != null) {
      _data.fields.add(MapEntry(
        'description',
        summary,
      ));
    }
    if (image != null) {
      _data.fields.add(MapEntry(
        'image',
        image,
      ));
    }
    if (showDate != null) {
      _data.fields.add(MapEntry(
        'show_date',
        showDate,
      ));
    }
    if (showTime != null) {
      _data.fields.add(MapEntry(
        'time_show_date',
        showTime,
      ));
    }
    if (closeDate != null) {
      _data.fields.add(MapEntry(
        'close_date',
        closeDate,
      ));
    }
    if (closeTime != null) {
      _data.fields.add(MapEntry(
        'time_close_date',
        closeTime,
      ));
    }
    if (active != null) {
      _data.fields.add(MapEntry(
        'active',
        active.toString(),
      ));
    }
    if (notification != null) {
      _data.fields.add(MapEntry(
        'notification',
        notification,
      ));
    }
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Movie>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/movie/stream/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Movie.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
