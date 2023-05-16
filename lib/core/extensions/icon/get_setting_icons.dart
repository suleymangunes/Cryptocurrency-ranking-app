import 'package:cryptocurrency_ranking_app/product/enum/icon/setting/setting_icons.dart';
import 'package:flutter/material.dart';

extension GetSettingIcons on SettingIcons {
  Icon get getIcon {
    switch (this) {
      case SettingIcons.themeSettingIcon:
        return const Icon(Icons.wb_twilight_rounded);
      case SettingIcons.localizationSettingIcon:
        return const Icon(Icons.language_rounded);
      case SettingIcons.settingIcon:
        return const Icon(Icons.settings);
    }
  }
}
