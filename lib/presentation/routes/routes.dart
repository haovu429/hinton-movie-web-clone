
import 'package:auto_route/auto_route.dart';

import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';

export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginBlocScreen, initial: true),
    AutoRoute(path: '/home', page: HomeScreen),
  ],
)
class $AppRouter {}
