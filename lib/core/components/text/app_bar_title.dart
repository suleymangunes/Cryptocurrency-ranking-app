import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    required this.title,
    super.key,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      // TODO title degerieriniln tamamını material typography den al
      style: Theme.of(context).textTheme.titleLarge,
    ).tr();
  }
}
