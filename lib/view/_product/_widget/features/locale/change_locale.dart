import 'package:cryptocurrency_ranking_app/core/extensions/icon/get_setting_icons.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/setting/setting_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/components/lisstile/changer_listtile_with_dropdown.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants.dart/string/string_constants.dart';

class ChangeLocale extends StatelessWidget {
  const ChangeLocale({super.key, required this.dropdown});
  final Widget dropdown;

  @override
  Widget build(BuildContext context) {
    return ChangerListtileWithDropdown(
      icon: SettingIcons.localizationSettingIcon.getIcon,
      title: StringConstants.local.tr(),
      alertTitle: StringConstants.langChoose.tr(),
      child: dropdown,
    );
  }
}
