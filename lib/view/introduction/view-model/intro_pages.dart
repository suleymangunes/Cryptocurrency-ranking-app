import 'package:cryptocurrency_ranking_app/product/enum/intro/intro_enums.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants.dart/string/string_constants.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/model/page_model.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/view/pages/first_page.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/view/pages/second_page.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/view/pages/third_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPages {
  const IntroPages._();

  static final Page firstPage = Page(
    path: IntroEnums.app.toJson,
    title: StringConstants.introTitleFirst.tr(),
    body: StringConstants.introDescriptionFirst.tr(),
  );
  static final Page secondPage = Page(
    path: IntroEnums.work.toJson,
    title: StringConstants.introTitleSecond.tr(),
    body: StringConstants.introDescriptionSecond.tr(),
  );
  static final Page thirdPage = Page(
    path: IntroEnums.commerce.toJson,
    title: StringConstants.introTitleThird.tr(),
    body: StringConstants.introDescriptionThird.tr(),
  );

  static List<PageViewModel> pageList = [
    FirstPage.page,
    SecondPage.page,
    ThirdPage.page,
  ];
}
