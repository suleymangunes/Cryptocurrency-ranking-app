import 'package:cryptocurrency_ranking_app/core/init/navigation/navigation_route.dart';
import 'package:flutter/material.dart';

class IconButtonNavigatorNormal extends StatelessWidget {
  const IconButtonNavigatorNormal({super.key, required this.icon, required this.page});

  final Icon icon;
  final String page;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        NavigationRoute.goRouteNormal(page);
      },
      icon: icon,
    );
  }
}
