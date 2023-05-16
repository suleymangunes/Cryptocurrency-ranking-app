import 'package:cryptocurrency_ranking_app/core/extensions/context/context_extension.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/exception/exception_icons.dart';
import 'package:flutter/material.dart';

extension ExceptionIconExtension on BuildContext {
  double get errorIconSize => width * 0.15;
  double get normalIconSize => width * 0.08;
}

extension GetExcepitonIcons on ExceptionIcons {
  IconData get getIcon {
    switch (this) {
      case ExceptionIcons.errorIcon:
        return Icons.error_outline_rounded;
      case ExceptionIcons.getCoinErrorIcon:
        return Icons.currency_bitcoin;
    }
  }
}
