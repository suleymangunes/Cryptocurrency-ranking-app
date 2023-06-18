import 'package:cryptocurrency_ranking_app/core/components/icon/error_icon.dart';
import 'package:cryptocurrency_ranking_app/core/components/text/text_body_medium.dart';
import 'package:cryptocurrency_ranking_app/core/extensions/sizedbox/sized_box.dart';
import 'package:cryptocurrency_ranking_app/product/enum/crypto/crypto_enums.dart';
import 'package:cryptocurrency_ranking_app/product/widget/lottie/loading_lottie.dart';
import 'package:cryptocurrency_ranking_app/view/_product/_widget/card/crypto_card.dart';
import 'package:cryptocurrency_ranking_app/view/_product/constants/string/project_strings.dart';
import 'package:cryptocurrency_ranking_app/view/home/model/crypto.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto_cubit.dart';
import 'package:cryptocurrency_ranking_app/view/home/view_model/crypto_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CryptoCubit, CryptoState>(
        builder: (context, state) {
          switch (state.status) {
            case CryptoStatus.initial:
              return const SizedBox.shrink();
            case CryptoStatus.loading:
              return const LoadingLottie();
            case CryptoStatus.completed:
              return _listCrypto(state as CryptoCompleted);
            case CryptoStatus.error:
              return _error(context);
          }
        },
      ),
    );
  }

  TextButton _tryAgainButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<CryptoCubit>().ranking();
      },
      child: const TextBodyMedium(text: ProjectStrings.tryAgain),
    );
  }

  ListView _listCrypto(CryptoCompleted state) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: state.response.length,
      itemBuilder: (BuildContext context, int index) {
        final model = state.response[index];
        if (model != null && model is Crypto) {
          return CryptoCard(
            id: (index + 1).toString(),
            price: model.quote?.uSD?.price?.toStringAsFixed(2) ?? ProjectStrings.notFound,
            name: model.name.toString(),
            change: model.quote?.uSD?.percentChange1h.toString()[0] ?? ProjectStrings.notFound,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Center _error(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ErrorcIcon(),
          context.normalSizedBox,
          const TextBodyMedium(text: ProjectStrings.error),
          _tryAgainButton(context),
        ],
      ),
    );
  }
}
