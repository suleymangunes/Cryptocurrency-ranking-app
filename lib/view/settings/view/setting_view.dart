import 'package:cryptocurrency_ranking_app/core/components/lisstile/changer_listtile_with_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/components/dropdown/theme_change_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/constants/icon/icon_constants.dart';
import 'package:cryptocurrency_ranking_app/core/constants/string/string_constants.dart';
import 'package:cryptocurrency_ranking_app/main.dart';
import 'package:cryptocurrency_ranking_app/product/widget/appbar/setting_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SettingAppbar(),
      body: Column(
        children: [
          // theme listtile
          ChangerListtileWithDropdown(
            icon: IconConstants.themeIcon,
            title: StringConstants.theme.tr(),
            alertTitle: StringConstants.themeChoose.tr(),
            child: const ThemeChangeDropdown(),
          ),
          // localiziton listtile
          ChangerListtileWithDropdown(
            icon: IconConstants.localizationIcon,
            title: StringConstants.local.tr(),
            alertTitle: StringConstants.langChoose.tr(),
            child: changeLocalWithDropdown(context),
          ),
        ],
      ),
    );
  }

  DropdownButton<dynamic> changeLocalWithDropdown(BuildContext context) {
    return DropdownButton(
      value: context.locale,
      items: LocaleVariables.localItems(),
      onChanged: (value) {
        context.setLocale(value);
        Navigator.pop(context);
      },
    );
  }
}
