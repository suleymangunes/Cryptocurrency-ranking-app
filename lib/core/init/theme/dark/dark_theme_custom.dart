import 'package:flutter/material.dart';

part '../../../constants/theme/dark_constants.dart';

class DarkThemeCustom {
  DarkThemeCustom() {
    theme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorSchemeSeed: DarkThemeColors._appBarBackground,
    );
  }
  late ThemeData theme;
}
