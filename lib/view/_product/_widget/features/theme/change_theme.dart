import 'package:cryptocurrency_ranking_app/core/components/dropdown/theme_change_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/components/lisstile/changer_listtile_with_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/icon/setting/get_setting_icons.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/setting/setting_icons.dart';
import 'package:flutter/material.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({
    required this.themeChoose,
    required this.theme,
    super.key,
  });
  final String theme;
  final String themeChoose;

  @override
  Widget build(BuildContext context) {
    return ChangerListtileWithDropdown(
      icon: SettingIcons.themeSettingIcon.getIcon,
      title: theme,
      alertTitle: themeChoose,
      child: const ThemeChangeDropdown(),
    );
  }
}
