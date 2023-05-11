import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/components/text/text_title_large_bold.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/context/context_extension.dart';
import 'package:cryptocurrency_ranking_app/view/introduction/view-model/intro_pages.dart';

class SecondPage {
  const SecondPage._();
  static final PageViewModel page = PageViewModel(
    titleWidget: const PageContent(),
    body: IntroPages.secondPage.body,
  );
}

class PageContent extends StatelessWidget {
  const PageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.introImageTitle,
      child: Column(
        children: [
          context.normalSpace,
          Expanded(child: Lottie.asset(IntroPages.secondPage.path)),
          context.normalSpace,
          TextTitleLargerBold(text: IntroPages.secondPage.title),
        ],
      ),
    );
  }
}
