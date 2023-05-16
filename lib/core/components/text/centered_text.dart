import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  const CenteredText({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
    );
  }
}
