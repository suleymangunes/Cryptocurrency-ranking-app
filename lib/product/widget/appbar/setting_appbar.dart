import 'package:cryptocurrency_ranking_app/core/components/text/app_bar_title.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants.dart/string/string_constants.dart';
import 'package:flutter/material.dart';

class SettingAppbar extends StatelessWidget with PreferredSizeWidget {
  const SettingAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const AppBarTitle(title: StringConstants.appTitle));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
