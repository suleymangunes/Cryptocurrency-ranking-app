import 'package:go_router/go_router.dart';
import 'package:cryptocurrency_ranking_app/core/init/navigation/navigation_routers.dart';

class NavigationRoute {
  const NavigationRoute._();
  static final GoRouter router = NavigationRouters.router;

  static void goRouteNormal(String route) {
    router.push(route);
  }

  static void goRouteClear(String route) {
    router.pushReplacement(route);
  }

  static void goBack() {
    router.pop();
  }
}
