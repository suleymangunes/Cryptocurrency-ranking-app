import 'package:flutter/material.dart';

class IconConstants {
  const IconConstants._();

  static const double errorIconSize = 40;

  static const Color errorColor = Colors.red;

  static const Icon themeIcon = Icon(Icons.wb_twilight_rounded);
  static const Icon localizationIcon = Icon(Icons.language_rounded);
  static const Icon settingIcon = Icon(Icons.settings);
  static const IconData errorIcon = Icons.error_outline_rounded;
  static const Icon bitcoin = Icon(Icons.currency_bitcoin);

  static const Icon notFound = Icon(Icons.not_interested_outlined);

  static const Icon priceUp = Icon(
    Icons.arrow_drop_up_rounded,
    color: Colors.green,
  );
  static const Icon priceDown = Icon(
    Icons.arrow_drop_down_rounded,
    color: Colors.red,
  );
}
