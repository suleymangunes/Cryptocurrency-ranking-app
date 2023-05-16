import 'package:cryptocurrency_ranking_app/core/components/text/text_body_medium.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/context/context_extension.dart';
import 'package:cryptocurrency_ranking_app/product/components/image/crypto_logo_network.dart';
import 'package:flutter/material.dart';

class IdAndIcon extends StatelessWidget {
  const IdAndIcon({
    required this.id,
    super.key,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.idArea,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextBodyMedium(text: id),
          CryptoLogoNetwork(id: id),
        ],
      ),
    );
  }
}
