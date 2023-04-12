import 'package:flutter/material.dart';

import 'common/strings.dart';
import 'di/dependency_injection.dart';
import 'presentation/routes/routes.dart';
import 'presentation/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({Key? key, this.isLoggedIn = true}) : super(key: key);
  final bool isLoggedIn;
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppRouter get _router => getIt<AppRouter>();
  bool get isLoggedIn => widget.isLoggedIn;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1280, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: AppStrings.appName,
            debugShowCheckedModeBanner: false,
            routeInformationParser: _router.defaultRouteParser(),
            routerDelegate:
                _router.delegate(initialRoutes:  isLoggedIn ? [HomeRoute(idScreen: 0)] :[const LoginBlocRoute()]),
            theme: AppTheme.light,
          );
        });
  }
}
