// ignore_for_file: constant_identifier_names

import 'dart:async' show Future;
import 'package:shared_preferences/shared_preferences.dart';

// - Key for Shared Preferences
class SessionManagerKey {
  static const String TOKEN = 'TOKEN';
  static const String IS_FIRST_OPEN_APP = 'IS_FIRST_OPEN_APP';
  static const String USER_PROFILE = 'USER_PROFILE';
  static const String REGIONS = 'REGIONS';
  static const String ADDRESS = 'ADDRESS';
  static const String FIREBASE_TOKEN = 'FIREBASE_TOKEN';
  static const String MY_LOCATION = 'MY_LOCATION';
  static const String LANGUAGE_KEY = 'LANGUAGE';
}

class SessionManager {
  SessionManager._privateConstructor();

  static final SessionManager share = SessionManager._privateConstructor();

  // Check authentication
  Future<bool> isAuthentication() async {
    return await getToken() != null;
  }

  // Is First Open App
  Future<bool> isFirstOpenApp() async {
    return getIsFirstOpenApp();
  }

  // Save Token
  Future<bool> saveToken({required String token}) async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.setString(SessionManagerKey.TOKEN, token);
  }

  Future<String?> getToken() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(SessionManagerKey.TOKEN);
  }

  Future<bool> removeToken() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.remove(SessionManagerKey.TOKEN);
  }

  // Is first open App
  Future<bool> saveIsFirstOpenApp() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.setBool(SessionManagerKey.IS_FIRST_OPEN_APP, false);
  }

  Future<bool> getIsFirstOpenApp() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getBool(SessionManagerKey.IS_FIRST_OPEN_APP) ?? true;
  }

  Future<bool> removeIsFirstOpenApp() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.remove(SessionManagerKey.IS_FIRST_OPEN_APP);
  }

  
}
