import 'package:cryptocurrency_ranking_app/core/components/text/text_body_medium.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/context/context_extension.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/icon/chage-price/change_price_icon_extension.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/change-price/change_price_icons.dart';
import 'package:flutter/material.dart';

class TextForChangePrice extends StatelessWidget {
  const TextForChangePrice({
    required this.text,
    required this.change,
    super.key,
  });

  final String text;
  final String change;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.priceArea,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _changeIcon(),
          TextBodyMedium(text: text),
        ],
      ),
    );
  }

  Icon _changeIcon() {
    if (change == '-') {
      return PriceChangeICons.down.getIcon;
    } else if (change == 'x') {
      return PriceChangeICons.notFound.getIcon;
    } else {
      return PriceChangeICons.up.getIcon;
    }
  }
}
