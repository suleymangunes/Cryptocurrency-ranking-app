import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_ranking_app/core/constants/lottie/lottie_constants.dart';

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        LottieConstants.loadingLottiePath,
        height: LottieConstants.loadingSize,
      ),
    );
  }
}
