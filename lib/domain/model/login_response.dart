// ignore_for_file: depend_on_referenced_packages


import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  String token;

  LoginResponse({this.token = ''});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}



