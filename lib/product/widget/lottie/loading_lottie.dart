import 'package:cryptocurrency_ranking_app/core/extensions/lottie/lottie_extension.dart';
import 'package:cryptocurrency_ranking_app/product/enum/lottie/lottie_files.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        Lottiefiles.loading.path,
        height: context.lottieLoadingSize,
      ),
    );
  }
}
