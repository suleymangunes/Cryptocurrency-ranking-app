import 'package:cryptocurrency_ranking_app/core/constants/icon/icon_constants.dart';
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
      return IconConstants.priceDown;
    } else if (change == 'x') {
      return IconConstants.notFound;
    } else {
      return IconConstants.priceUp;
    }
  }
}
