import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextTitleLargerBold extends StatelessWidget {
  const TextTitleLargerBold({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
    ).tr();
  }
}
