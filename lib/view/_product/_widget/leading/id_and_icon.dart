import 'package:cryptocurrency_ranking_app/product/components/image/crypto_logo_network.dart';
import 'package:flutter/material.dart';

class IdAndIcon extends StatelessWidget {
  const IdAndIcon({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(id),
          CryptoLogoNetwork(id: id),
        ],
      ),
    );
  }
}
