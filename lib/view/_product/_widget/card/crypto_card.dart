import 'package:cryptocurrency_ranking_app/core/components/text/text_title_medium.dart';
import 'package:cryptocurrency_ranking_app/product/components/text/text_for_change_price.dart';
import 'package:cryptocurrency_ranking_app/view/_product/_widget/leading/id_and_icon.dart';
import 'package:flutter/material.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    required this.id,
    required this.price,
    required this.name,
    required this.change,
    super.key,
  });
  final String id;
  final String price;
  final String name;
  final String change;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IdAndIcon(id: id),
        title: TextTitleMedium(text: name),
        trailing: TextForChangePrice(text: price, change: change),
      ),
    );
  }
}
