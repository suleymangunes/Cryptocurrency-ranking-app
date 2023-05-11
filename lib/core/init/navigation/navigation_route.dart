import 'package:cryptocurrency_ranking_app/core/init/navigation/navigation_routers.dart';
import 'package:go_router/go_router.dart';

class NavigationRoute {
  const NavigationRoute._();
  static final GoRouter router = NavigationRouters.router;

  static void goRouteNormal(String route) {
    router.push(route);
  }

  static void goRouteClear(String route) {
    router.pushReplacement(route);
  }
}
