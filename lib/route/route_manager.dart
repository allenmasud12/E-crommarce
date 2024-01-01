import 'package:ecommarce/pages/home_page.dart';
import 'package:go_router/go_router.dart';

import '../pages/login_page.dart';

class RouterManager {
  static final routeConfig = GoRouter(routes:[
    GoRoute(
      name: RouteNames.HOME_PAGE,
      path: "/${RouteNames.HOME_PAGE}",
      builder: (context, stste) => const HomePage(),
    ),
    GoRoute(
        name: RouteNames.LOGIN,
        path: '/',
        builder: (context, stste) => const LoginPage(),
    ),
  ],
  );
}

abstract class RouteNames {
 static String HOME_PAGE = '/';
 static String LOGIN = 'homePage';

}