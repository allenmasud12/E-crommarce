import 'package:ecommarce/pages/home_page.dart';
import 'package:go_router/go_router.dart';

import '../pages/login_page.dart';

class RouterManager {
  static final routeConfig = GoRouter(routes:[
    GoRoute(
        name: RouteNames.LOGIN,
        path: '/',
        builder: (context, stste) => const LoginPage(),
    ),
    GoRoute(
      name: RouteNames.HOME_PAge,
      path: "/${RouteNames.HOME_PAge}",
      builder: (context, stste) => const HomePage(),
    ),
  ],
  );
}

abstract class RouteNames {
 static String LOGIN = '/';
 static String HOME_PAge = 'homePage';

}