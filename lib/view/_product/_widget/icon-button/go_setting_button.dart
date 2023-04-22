import 'package:cryptocurrency_ranking_app/core/components/icon-button/icon_button_navigator.dart';
import 'package:cryptocurrency_ranking_app/core/constants/icon/icon_constants.dart';
import 'package:cryptocurrency_ranking_app/view/_product/enum/route_enum.dart';
import 'package:flutter/material.dart';

class GoSettingButton extends StatelessWidget {
  const GoSettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButtonNavigatorNormal(
      icon: IconConstants.settingIcon,
      page: RouteEnum.setting.rawValue,
    );
  }
}
