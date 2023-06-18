import 'package:flutter/material.dart';

part '../../../constants/theme/light_constants.dart';

class LightThemeCustom {
  LightThemeCustom() {
    theme = ThemeData(
      brightness: Brightness.light,
      colorSchemeSeed: LightThemeColors._pictonBlue,
      useMaterial3: true,
    );
  }
  late ThemeData theme;
}
