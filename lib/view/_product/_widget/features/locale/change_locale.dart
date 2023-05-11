import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/components/lisstile/changer_listtile_with_dropdown.dart';
import 'package:cryptocurrency_ranking_app/core/constants/icon/icon_constants.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants.dart/string/string_constants.dart';

class ChangeLocale extends StatelessWidget {
  const ChangeLocale({super.key, required this.dropdown});
  final Widget dropdown;

  @override
  Widget build(BuildContext context) {
    return ChangerListtileWithDropdown(
      icon: IconConstants.localizationIcon,
      title: StringConstants.local.tr(),
      alertTitle: StringConstants.langChoose.tr(),
      child: dropdown,
    );
  }
}
