enum RouteEnum {
  home,
  intro,
  setting,
}

extension RouteEnumString on RouteEnum {
  String get rawValue {
    switch (this) {
      case RouteEnum.intro:
        return '/intro';
      case RouteEnum.setting:
        return '/setting';
      case RouteEnum.home:
        return '/home';
    }
  }
}
