import 'package:cryptocurrency_ranking_app/core/components/text/app_bar_title.dart';
import 'package:cryptocurrency_ranking_app/core/constants/string/string_constants.dart';
import 'package:cryptocurrency_ranking_app/view/_product/_widget/icon-button/go_setting_button.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const AppBarTitle(title: StringConstants.title),
      actions: const [GoSettingButton()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
