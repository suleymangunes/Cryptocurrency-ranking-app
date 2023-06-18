import 'package:cryptocurrency_ranking_app/product/enum/intro/caching_intro_enums.dart';
import 'package:cryptocurrency_ranking_app/view/_product/enum/route_enum.dart';
import 'package:hive_flutter/hive_flutter.dart';

class IntroCaching {
  static final IntroCaching _introCaching = IntroCaching._internal();

  factory IntroCaching() {
    return _introCaching;
  }

  IntroCaching._internal();

  static final Box<dynamic> _intro = Hive.box(CachingIntroEnum.intro.name);

  static Future<void> init() async {
    await Hive.openBox(CachingIntroEnum.intro.name);
  }

  static String initialIntro() {
    switch (_intro.get(CachingIntroEnum.introWatched.name)) {
      case true:
        return RouteEnum.home.rawValue;
      default:
        return RouteEnum.intro.rawValue;
    }
  }

  static void watchIntro() {
    _intro.put(CachingIntroEnum.introWatched.name, true);
  }
}
