import 'package:cryptocurrency_ranking_app/core/components/text/centered_text.dart';
import 'package:cryptocurrency_ranking_app/core/components/text/text_title_medium.dart';
import 'package:flutter/material.dart';

class ChangerListtileWithDropdown extends StatelessWidget {
  const ChangerListtileWithDropdown({
    required this.icon,
    required this.title,
    required this.alertTitle,
    required this.child,
    super.key,
  });

  final Icon icon;
  final String title;
  final String alertTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showDialog(context);
      },
      child: ListTile(
        leading: icon,
        title: TextTitleMedium(text: title),
      ),
    );
  }

  Future<dynamic> _showDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: CenteredText(title: title),
        content: child,
      ),
    );
  }
}
