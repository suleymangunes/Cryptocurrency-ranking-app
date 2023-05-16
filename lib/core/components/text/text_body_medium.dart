import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextBodyMedium extends StatelessWidget {
  const TextBodyMedium({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    ).tr();
  }
}
