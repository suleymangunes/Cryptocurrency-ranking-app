import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BlackNormalText extends StatelessWidget {
  const BlackNormalText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.black),
    ).tr();
  }
}
