import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/init/navigation/navigation_route.dart';
import 'package:cryptocurrency_ranking_app/main.dart';
import 'package:cryptocurrency_ranking_app/product/widget/appbar/setting_appbar.dart';
import 'package:cryptocurrency_ranking_app/view/_product/_widget/features/locale/change_locale.dart';
import 'package:cryptocurrency_ranking_app/view/_product/_widget/features/theme/change_theme.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants.dart/string/string_constants.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SettingAppbar(),
      body: Column(
        children: [
          ChangeTheme(
            theme: StringConstants.theme.tr(),
            themeChoose: StringConstants.themeChoose.tr(),
          ),
          ChangeLocale(dropdown: _changeLocalWithDropdown(context)),
        ],
      ),
    );
  }

  DropdownButton<dynamic> _changeLocalWithDropdown(BuildContext context) {
    return DropdownButton(
      value: context.locale,
      items: LocaleVariables.localItems(),
      onChanged: (value) {
        context.setLocale(value as Locale);
        NavigationRoute.goBack();
      },
    );
  }
}
