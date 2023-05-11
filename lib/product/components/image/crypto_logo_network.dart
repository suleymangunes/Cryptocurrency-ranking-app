import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/constants/icon/icon_constants.dart';

class CryptoLogoNetwork extends StatelessWidget {
  const CryptoLogoNetwork({
    required this.id,
    super.key,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://s2.coinmarketcap.com/static/img/coins/64x64/$id.png',
      height: 25,
      errorBuilder: (context, error, stackTrace) {
        return IconConstants.bitcoin;
      },
    );
  }
}
