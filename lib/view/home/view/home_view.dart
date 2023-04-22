import 'package:cryptocurrency_ranking_app/core/components/icon/error_icon.dart';
import 'package:cryptocurrency_ranking_app/core/components/text/black_normal_text.dart';
import 'package:cryptocurrency_ranking_app/core/constants/pads/pads_constants.dart';
import 'package:cryptocurrency_ranking_app/core/constants/string/string_constants.dart';
import 'package:cryptocurrency_ranking_app/core/init/cubit/crypto/crypto_cubit.dart';
import 'package:cryptocurrency_ranking_app/core/init/cubit/crypto/crypto_state.dart';
import 'package:cryptocurrency_ranking_app/product/enum/crypto/crypto_enums.dart';
import 'package:cryptocurrency_ranking_app/product/widget/lottie/loading_lottie.dart';
import 'package:cryptocurrency_ranking_app/view/_product/_widget/card/crypto_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CryptoCubit, CryptoState>(
        builder: (context, state) {
          switch (state.status) {
            case CryptoStatus.initial:
              return const SizedBox.shrink();
            case CryptoStatus.loading:
              return const LoadingLottie();
            case CryptoStatus.completed:
              return _listCrypto(state as CryptoCompleted);
            case CryptoStatus.error:
              return error(context);
          }
        },
        listener: (context, state) {
          if (state is CryptoError) {
            return;
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
      child: const BlackNormalText(text: StringConstants.tryAgain),
    );
  }

  ListView _listCrypto(CryptoCompleted state) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: state.response.length,
      itemBuilder: (BuildContext context, int index) {
        return CryptoCard(
          id: (index + 1).toString(),
          price: state.response[index].quote.uSD.price.toStringAsFixed(2),
          name: state.response[index].name,
          change: state.response[index].quote.uSD.percentChange1h.toString()[0],
        );
      },
    );
  }

  error(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ErrorcIcon(),
          PadsConstanst.spaceNormal,
          const Text('sww').tr(),
          _tryAgainButton(context),
        ],
      ),
    );
  }
}
