// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../domain/model/movies_response.dart' as _i6;
import '../screens/home/home_screen.dart' as _i2;
import '../screens/login/login_screen.dart' as _i1;
import 'routes.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginBlocRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginBlocScreen(),
        transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.HomeScreen(
          key: args.key,
          idScreen: args.idScreen,
          movie: args.movie,
        ),
        transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          LoginBlocRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
      ];
}

/// generated route for
/// [_i1.LoginBlocScreen]
class LoginBlocRoute extends _i3.PageRouteInfo<void> {
  const LoginBlocRoute()
      : super(
          LoginBlocRoute.name,
          path: '/',
        );

  static const String name = 'LoginBlocRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i4.Key? key,
    int idScreen = 0,
    _i6.Movie? movie,
  }) : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(
            key: key,
            idScreen: idScreen,
            movie: movie,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.idScreen = 0,
    this.movie,
  });

  final _i4.Key? key;

  final int idScreen;

  final _i6.Movie? movie;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, idScreen: $idScreen, movie: $movie}';
  }
}
