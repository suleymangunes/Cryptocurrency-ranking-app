import 'package:cryptocurrency_ranking_app/core/init/theme/build/build_material_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part '../../../constants/theme/dark_constants.dart';

class DarkThemeCustom {
  DarkThemeCustom() {
    theme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: BuildColor().buildMaterialColor(DarkThemeColors._appBarBackground),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: DarkThemeColors._appBarBackground,
          statusBarIconBrightness: Brightness.light,
        ),
        centerTitle: true,
        color: DarkThemeColors._appBarBackground,
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
        iconTheme: IconThemeData(),
      ),
      iconTheme: const IconThemeData(
        color: DarkThemeIcon._iconColor,
      ),
    );
  }
  late ThemeData theme;
}
