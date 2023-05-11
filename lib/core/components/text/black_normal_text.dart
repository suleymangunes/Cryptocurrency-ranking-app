import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BlackNormalText extends StatelessWidget {
  const BlackNormalText({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // TODO textstyle olmaz rengi ve degeri typografiyden al
      style: const TextStyle(color: Colors.black),
    ).tr();
  }
}
