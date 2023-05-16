import 'package:cryptocurrency_ranking_app/core/init/theme/build/build_material_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part '../../../constants/theme/light_constants.dart';

class LightThemeCustom {
  LightThemeCustom() {
    theme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: BuildColor().buildMaterialColor(LightThemeColors._primaryColor),
      primaryColor: LightThemeColors._primaryColor,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: LightThemeColors._primaryColor,
          statusBarIconBrightness: Brightness.dark,
        ),
        centerTitle: true,
        color: LightThemeColors._primaryColor,
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
        iconTheme: IconThemeData(),
      ),
      iconTheme: const IconThemeData(
        color: LightThemeIcon._iconColor,
      ),
    );
  }
  late ThemeData theme;
}
