import 'package:cryptocurrency_ranking_app/core/extensions/icon/exception/exception_icon_extension.dart';
import 'package:cryptocurrency_ranking_app/core/init/theme/color/color_constants.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/exception/exception_icons.dart';
import 'package:flutter/material.dart';

class ErrorcIcon extends StatelessWidget {
  const ErrorcIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      ExceptionIcons.errorIcon.getIcon,
      size: context.errorIconSize,
      color: ColorConstantsCommon.errorColor,
    );
  }
}
