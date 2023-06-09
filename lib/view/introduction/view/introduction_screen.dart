import 'package:cryptocurrency_ranking_app/core/components/dots/dots_decoration.dart';
import 'package:cryptocurrency_ranking_app/core/components/text/text_title_medium.dart';
import 'package:cryptocurrency_ranking_app/core/constants/onboarding/dots_constants.dart';
import 'package:cryptocurrency_ranking_app/core/init/cache/onboarding/intro_caching.dart';
import 'package:cryptocurrency_ranking_app/core/init/navigation/navigation_route.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:cryptocurrency_ranking_app/view/_product/enum/route_enum.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/view-model/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction {
  const Introduction._();
  static final intro = IntroductionScreen(
    pages: IntroPages.pageList,
    showSkipButton: true,
    showNextButton: false,
    skip: const TextTitleMedium(text: ProjectStrings.skip),
    done: const TextTitleMedium(text: ProjectStrings.done),
    onDone: () {
      IntroCaching.watchIntro();
      NavigationRoute.goRouteClear(RouteEnum.home.rawValue);
    },
    dotsDecorator: DotsDecoration.decoration,
    baseBtnStyle: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: DotsConstants().buttonBorderCircular,
      ),
    ),
  );
}
