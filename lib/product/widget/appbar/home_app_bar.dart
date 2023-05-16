import 'package:cryptocurrency_ranking_app/core/components/text/text_title_large.dart';
import 'package:cryptocurrency_ranking_app/view/_product/_widget/icon-button/go_setting_button.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const TextTitleLarge(title: ProjectStrings.title),
      actions: const [GoSettingButton()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
