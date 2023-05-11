import 'package:go_router/go_router.dart';
import 'package:cryptocurrency_ranking_app/core/init/cache/onboarding/intro_caching.dart';
import 'package:cryptocurrency_ranking_app/view/_product/enum/route_enum.dart';
import 'package:cryptocurrency_ranking_app/view/home/view/crypto_page.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/view/introduction_screen.dart';
import 'package:cryptocurrency_ranking_app/view/settings/view/setting_view.dart';

class NavigationRouters {
  const NavigationRouters._();

  static final GoRouter router = GoRouter(
    initialLocation: IntroCaching.initialIntro(),
    routes: [
      GoRoute(
        path: RouteEnum.home.rawValue,
        builder: (context, state) => const CryptoPage(),
      ),
      GoRoute(
        path: RouteEnum.intro.rawValue,
        builder: (context, state) => Introduction.intro,
      ),
      GoRoute(
        path: RouteEnum.setting.rawValue,
        builder: (context, state) => const SettingView(),
      ),
    ],
  );
}
