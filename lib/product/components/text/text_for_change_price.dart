import 'package:cryptocurrency_ranking_app/core/extensions/icon/change_price_icon_extension.dart';
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
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _changeIcon(),
          Text(text),
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
