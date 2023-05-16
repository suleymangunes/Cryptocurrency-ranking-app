import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/constants/onboarding/dots_constants.dart';

class DotsDecoration {
  const DotsDecoration._();
  static final decoration = DotsDecorator(
    size: DotsConstants().dotSquare,
    activeSize: DotsConstants().dotSize,
    spacing: DotsConstants().dotSpacing,
    activeShape: RoundedRectangleBorder(
      borderRadius: DotsConstants().dotsBorderCircular,
    ),
  );
}
