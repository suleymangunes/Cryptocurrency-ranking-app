import 'package:cryptocurrency_ranking_app/core/extensions/icon/exception/exception_icon_extension.dart';
import 'package:cryptocurrency_ranking_app/product/enum/icon/exception/exception_icons.dart';
import 'package:cryptocurrency_ranking_app/view/home/service/icon/icon_network.dart';
import 'package:flutter/material.dart';

class CryptoLogoNetwork extends StatelessWidget {
  const CryptoLogoNetwork({
    required this.id,
    super.key,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      IconNetwork().getIconToNetwork(id),
      height: context.normalIconSize,
      errorBuilder: _errorIcon,
    );
  }

  Widget _errorIcon(context, error, stackTrace) {
    return Icon(ExceptionIcons.getCoinErrorIcon.getIcon);
  }
}
