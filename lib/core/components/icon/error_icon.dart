import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/constants/icon/icon_constants.dart';

class ErrorcIcon extends StatelessWidget {
  const ErrorcIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      IconConstants.errorIcon,
      size: IconConstants.errorIconSize,
      color: IconConstants.errorColor,
    );
  }
}
