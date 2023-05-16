import 'package:cryptocurrency_ranking_app/core/components/icon-button/icon_button_navigator.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/icon/setting/get_setting_icons.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/setting/setting_icons.dart';
import 'package:cryptocurrency_ranking_app/view/_product/enum/route_enum.dart';
import 'package:flutter/material.dart';

class GoSettingButton extends StatelessWidget {
  const GoSettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButtonNavigatorNormal(
      icon: SettingIcons.settingIcon.getIcon,
      page: RouteEnum.setting.rawValue,
    );
  }
}
