import 'package:cryptocurrency_ranking_app/core/components/lisstile/changer_listtile_with_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/icon/setting/get_setting_icons.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/setting/setting_icons.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangeLocale extends StatelessWidget {
  const ChangeLocale({
    required this.dropdown,
    super.key,
  });
  final Widget dropdown;

  @override
  Widget build(BuildContext context) {
    return ChangerListtileWithDropdown(
      icon: SettingIcons.localizationSettingIcon.getIcon,
      title: ProjectStrings.local.tr(),
      alertTitle: ProjectStrings.langChoose.tr(),
      child: dropdown,
    );
  }
}
