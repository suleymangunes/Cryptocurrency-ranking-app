import 'package:cryptocurrency_ranking_app/product/enum/theme/caching_theme_enum.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeCaching {
  const ThemeCaching._();
  static final Box<dynamic> _theme = Hive.box(CachingThemeEnum.theme.name);

  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(CachingThemeEnum.theme.name);
  }

  static String initialRadio() {
    switch (_theme.get(CachingThemeEnum.isLight.name)) {
      case true:
        return ProjectStrings.lightRadio;
      case false:
        return ProjectStrings.darkRadio;
      default:
        return ProjectStrings.sysRadio;
    }
  }

  static ThemeMode initialTheme() {
    switch (_theme.get(CachingThemeEnum.isLight.name)) {
      case true:
        return ThemeMode.light;
      case false:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  static void makelight() {
    _theme.put(CachingThemeEnum.isLight.name, true);
  }

  static void makeDark() {
    _theme.put(CachingThemeEnum.isLight.name, false);
  }

  static void makeSystem() {
    _theme.put(CachingThemeEnum.isLight.name, null);
  }
}
