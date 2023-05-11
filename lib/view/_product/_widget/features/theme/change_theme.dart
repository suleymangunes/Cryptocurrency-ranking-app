import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/components/dropdown/theme_change_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/components/lisstile/changer_listtile_with_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/constants/icon/icon_constants.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key, required this.theme, required this.themeChoose});
  final String theme;
  final String themeChoose;

  @override
  Widget build(BuildContext context) {
    return ChangerListtileWithDropdown(
      icon: IconConstants.themeIcon,
      title: theme,
      alertTitle: themeChoose,
      child: const ThemeChangeDropdown(),
    );
  }
}
