import 'package:cryptocurrency_ranking_app/core/init/theme/color/color_constants.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/change-price/change_price_icons.dart';
import 'package:flutter/material.dart';

extension PriceChangeGetIconData on PriceChangeICons {
  IconData get getIconData {
    switch (this) {
      case PriceChangeICons.up:
        return Icons.arrow_drop_up_rounded;
      case PriceChangeICons.down:
        return Icons.arrow_drop_down_rounded;
      case PriceChangeICons.notFound:
        return Icons.not_interested_outlined;
    }
  }
}

extension PriceChangeIconColor on PriceChangeICons {
  Color get getColor {
    switch (this) {
      case PriceChangeICons.up:
        return ColorConstantsCommon.malachite;
      case PriceChangeICons.down:
        return ColorConstantsCommon.scarlet;
      case PriceChangeICons.notFound:
        return ColorConstantsCommon.dustyGrey;
    }
  }
}

extension PriceChangeIcon on PriceChangeICons {
  Icon get getIcon => Icon(getIconData, color: getColor);
}
