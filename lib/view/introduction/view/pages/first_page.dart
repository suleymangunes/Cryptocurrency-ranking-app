import 'package:cryptocurrency_ranking_app/core/constants/lottie/lottie_constants.dart';
import 'package:cryptocurrency_ranking_app/core/constants/pads/pads_constants.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/view-model/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class FirstPage {
  const FirstPage._();
  static final PageViewModel page = PageViewModel(
    titleWidget: const PageContent(),
    body: IntroPages.firstPage.body,
  );
}

class PageContent extends StatelessWidget {
  const PageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PadsConstanst.introBig,
        Lottie.asset(IntroPages.firstPage.path, height: LottieConstants.introSize),
        PadsConstanst.introSmall,
        Text(
          IntroPages.firstPage.title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
