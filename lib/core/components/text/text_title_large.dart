import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextTitleLarge extends StatelessWidget {
  const TextTitleLarge({
    required this.title,
    super.key,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    ).tr();
  }
}
