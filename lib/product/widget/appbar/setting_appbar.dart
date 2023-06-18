import 'package:cryptocurrency_ranking_app/core/components/text/text_title_large.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:flutter/material.dart';

class SettingAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SettingAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const TextTitleLarge(title: ProjectStrings.appTitle));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
