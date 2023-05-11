import 'package:hive_flutter/hive_flutter.dart';
import 'package:cryptocurrency_ranking_app/view/_product/enum/route_enum.dart';

class IntroCaching {
  const IntroCaching._();

  static final Box<dynamic> _intro = Hive.box('intro');

  static Future<void> init() async {
    await Hive.openBox('intro');
  }

  static String initialIntro() {
    switch (_intro.get('introWatched')) {
      case true:
        return RouteEnum.home.rawValue;
      default:
        return RouteEnum.intro.rawValue;
    }
  }

  static void watchIntro() {
    _intro.put('introWatched', true);
  }
}
